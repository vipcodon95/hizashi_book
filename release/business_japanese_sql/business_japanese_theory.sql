-- Hizashi Business Japanese — Lý thuyết MD
-- curriculum_id = 8016 (hidden), 5 nodes
-- link vào module 8011..8015 qua resource_media
-- KHÔNG sửa thủ công — chạy lại build_sql_business_japanese_theory.py

BEGIN;

-- 1) Curriculum hidden
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at, created_by) VALUES (8016, NULL, 'markdown_book', 'business', 'Tiếng Nhật Thương Mại — Lý thuyết Kính ngữ', 'Bộ lý thuyết hỗ trợ khoá học Business Japanese — Kính ngữ (course 8010).', 'system', TRUE, FALSE, TRUE, FALSE, 5, 'published', NOW(), 'system') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes (lý thuyết)
-- module 8011 ← 2.1.0_Phan_loai_Kinh_ngu.md
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8016001, 8016, NULL, 'markdown_book', 'Phân loại Kính ngữ — Tổng quan', '# 2.1 Phân Loại Kính Ngữ (敬語 - Keigo)
> **Mục tiêu BJT:** Nắm vững hệ thống kính ngữ là yếu tố then chốt để vượt qua kỳ thi BJT, đặc biệt ở cấp độ J2 trở lên. Kính ngữ xuất hiện trong hầu hết các tình huống giao tiếp thương mại.

---

## Tổng quan hệ thống Kính ngữ
Tiếng Nhật có hệ thống kính ngữ (敬語 - Keigo) phức tạp, phản ánh cấu trúc xã hội và mối quan hệ giữa các cá nhân. Keigo được chia làm **3 loại chính**:

**敬語 (Keigo)** gồm:

- **尊敬語 (Sonkeigo)** — Tôn kính ngữ
- **謙譲語 (Kenjougo)** — Khiêm nhường ngữ
- **丁寧語 (Teineigo)** — Lịch sự ngữ

---

## 1. 尊敬語 (Sonkeigo) — Tôn Kính Ngữ
### Định nghĩa
Sonkeigo dùng để **nâng cao hành động, trạng thái của người khác** (khách hàng, cấp trên, người bề trên). Người nói thể hiện sự kính trọng bằng cách "đặt đối phương lên cao".

> **Công thức tư duy:** "Người đó làm gì? → Dùng Sonkeigo để mô tả hành động của họ."

### 1.1 Động từ Sonkeigo đặc biệt (phải thuộc lòng)
| Động từ thường | Nghĩa | Dạng Sonkeigo | Ghi chú |
|---|---|---|---|
| いる (iru) | ở, tồn tại | いらっしゃる (irassharu) | Rất phổ biến |
| 行く (iku) | đi | いらっしゃる (irassharu) | Cùng dạng với "ở" |
| 来る (kuru) | đến | いらっしゃる (irassharu) | Cùng dạng với "đi/ở" |
| 言う (iu) | nói | おっしゃる (ossharu) | |
| 食べる (taberu) | ăn | 召し上がる (meshiagaru) | |
| 飲む (nomu) | uống | 召し上がる (meshiagaru) | Cùng với "ăn" |
| する (suru) | làm | なさる (nasaru) | |
| もらう (morau) | nhận | お受け取りになる | Ít dùng |
| 知る (shiru) | biết | ご存知 (gozonji) | Dạng danh từ |
| 見る (miru) | xem | ご覧になる (gorannisuru) | |
| 読む (yomu) | đọc | お読みになる | Dạng công thức |
| 聞く (kiku) | nghe/hỏi | お聞きになる | Dạng công thức |
| くれる (kureru) | cho (mình) | くださる (kudasaru) | |
| いる (iru) | có (đồ vật) | おありになる | Ít dùng |

### 1.2 Cấu trúc tạo Sonkeigo thông thường
**Cấu trúc 1: お〜になる (O~ni naru)**
> Dùng cho hầu hết động từ nhóm 1, 2 (Wa-go - từ Nhật thuần túy)

```
[お] + [Thân động từ (masu-form)] + [になる]
```

| Ví dụ | Nghĩa |
|---|---|
| お読みになる | (Ngài/Quý vị) đọc |
| お書きになる | (Ngài/Quý vị) viết |
| お使いになる | (Ngài/Quý vị) sử dụng |
| お帰りになる | (Ngài/Quý vị) trở về |
| お待ちになる | (Ngài/Quý vị) đợi |

**Cấu trúc 2: ご〜になる (Go~ni naru)**
> Dùng cho động từ gốc Hán (Kango - từ Hán-Nhật)

```
[ご] + [Danh từ Hán-Nhật] + [になる]
```

| Ví dụ | Nghĩa |
|---|---|
| ご利用になる | (Ngài/Quý vị) sử dụng (dịch vụ) |
| ご確認になる | (Ngài/Quý vị) xác nhận |
| ご連絡になる | (Ngài/Quý vị) liên lạc |

**Cấu trúc 3: 〜れる / 〜られる**
> Dạng passive nhưng dùng như kính ngữ. Mức độ kính trọng thấp hơn 2 cấu trúc trên.

```
[Động từ] + [れる / られる]
```

| Ví dụ | Nghĩa |
|---|---|
| 読まれる | (Ngài) đọc |
| 来られる | (Ngài) đến |
| 帰られる | (Ngài) trở về |

### 1.3 Danh từ & Tính từ Sonkeigo
| Từ thông thường | Dạng Sonkeigo | Nghĩa |
|---|---|---|
| 家 (ie) | お宅 (otaku) | nhà của ngài |
| 名前 (namae) | お名前 (onamae) | tên của ngài |
| 会社 (kaisha) | 御社 (onsha) | công ty của ngài (nói) |
| 会社 (kaisha) | 貴社 (kisha) | công ty của ngài (viết) |
| 体 (karada) | お体 (okarada) | sức khỏe của ngài |
| 誕生日 (tanjoubi) | お誕生日 (otanjoubi) | sinh nhật của ngài |

---

## 2. 謙譲語 (Kenjougo) — Khiêm Nhường Ngữ
### Định nghĩa
Kenjougo dùng để **hạ thấp hành động của bản thân (hoặc người trong nhóm)** nhằm gián tiếp tôn trọng đối phương. Người nói "tự đặt mình xuống thấp".

> **Công thức tư duy:** "Mình (hoặc nhóm mình) làm gì? → Dùng Kenjougo để mô tả hành động của mình."

### 2.1 Động từ Kenjougo đặc biệt (phải thuộc lòng)
| Động từ thường | Nghĩa | Dạng Kenjougo | Ghi chú |
|---|---|---|---|
| いる (iru) | ở, tồn tại | おる (oru) | |
| 行く (iku) | đi | 参る (mairu) | |
| 来る (kuru) | đến | 参る (mairu) | Cùng với "đi" |
| 言う (iu) | nói | 申す (mousu) | |
| 食べる (taberu) | ăn | いただく (itadaku) | |
| 飲む (nomu) | uống | いただく (itadaku) | Cùng với "ăn" |
| もらう (morau) | nhận | いただく (itadaku) | Cùng với "ăn/uống" |
| する (suru) | làm | いたす (itasu) | |
| あげる (ageru) | cho | 差し上げる (sashiageru) | |
| もらう (morau) | nhận | いただく (itadaku) | |
| 知る (shiru) | biết | 存じる (zonjiru) | |
| 見る (miru) | xem | 拝見する (haiken suru) | |
| 聞く (kiku) | nghe/hỏi | 伺う (ukagau) | |
| 訪ねる (tazuneru) | thăm | 伺う (ukagau) | Cùng với "hỏi" |
| 借りる (kariru) | mượn | 拝借する (haishaku suru) | |
| 読む (yomu) | đọc | 拝読する (haidoku suru) | |
| もらう (morau) | nhận | 頂戴する (choudai suru) | Trang trọng hơn |
| 思う (omou) | nghĩ | 存じる (zonjiru) | |

### 2.2 Cấu trúc tạo Kenjougo thông thường
**Cấu trúc 1: お〜する (O~suru)**
> Dùng cho hầu hết động từ Nhật thuần túy

```
[お] + [Thân động từ (masu-form)] + [する / いたす]
```

| Ví dụ | Nghĩa |
|---|---|
| お送りする | Tôi gửi (cho ngài) |
| お届けする | Tôi giao (cho ngài) |
| お伝えする | Tôi truyền đạt (cho ngài) |
| お持ちする | Tôi mang (cho ngài) |
| お手伝いする | Tôi giúp đỡ |

**Cấu trúc 2: ご〜する (Go~suru)**
> Dùng cho động từ gốc Hán

```
[ご] + [Danh từ Hán-Nhật] + [する / いたす]
```

| Ví dụ | Nghĩa |
|---|---|
| ご連絡する | Tôi liên lạc |
| ご説明する | Tôi giải thích |
| ご案内する | Tôi hướng dẫn |
| ご確認する | Tôi xác nhận |
| ご報告する | Tôi báo cáo |

### 2.3 Danh từ & Cách diễn đạt Kenjougo
| Từ thông thường | Dạng Kenjougo | Nghĩa |
|---|---|---|
| 私 (watashi) | わたくし (watakushi) | tôi (trang trọng hơn) |
| 会社 (kaisha) | 弊社 (heisha) / 当社 (tousha) | công ty tôi |
| 名前 (namae) | 名前 (namae) | → dùng như thường, không đổi |

---

## 3. 丁寧語 (Teineigo) — Lịch Sự Ngữ
### Định nghĩa
Teineigo là **ngôn ngữ lịch sự tiêu chuẩn**, thể hiện thái độ lịch thiệp trong giao tiếp hàng ngày. Đây là nền tảng của mọi cuộc hội thoại trang trọng.

> **Công thức tư duy:** Câu kết thúc bằng **です (desu)** hoặc **ます (masu)** là Teineigo.

### 3.1 Đặc điểm
- Động từ chia theo dạng **〜ます (masu)**
- Tính từ/danh từ kết thúc bằng **〜です (desu)**
- Thêm tiền tố **お〜** hoặc **ご〜** trước danh từ để tăng mức lịch sự

### 3.2 Ví dụ so sánh
| Thông thường (Thân mật) | Teineigo (Lịch sự) |
|---|---|
| 食べる | 食べます |
| 行く | 行きます |
| きれい | きれいです |
| 本だ | 本です |

### 3.3 お/ご thêm vào danh từ trong Teineigo
Thêm お/ご vào một số danh từ để tỏ ra lịch sự hơn:

| Ví dụ | Nghĩa |
|---|---|
| お茶 (ocha) | trà |
| お名前 (onamae) | tên |
| ご飯 (gohan) | cơm/bữa ăn |
| お電話 (odenwa) | điện thoại |
| ご住所 (gojuusho) | địa chỉ |

---

## 4. ⚠️ Quy Tắc Uchi/Soto — Điểm Quan Trọng Nhất Trong BJT
### 4.1 Khái niệm Uchi (内) và Soto (外)
| SOTO (外) — Người ngoài nhóm | UCHI (内) — Người trong nhóm |
|---|---|
| Khách hàng | Bản thân |
| Đối tác công ty khác | Đồng nghiệp |
| Người ngoài tổ chức | Cấp trên trong cùng công ty |
|  | Giám đốc của mình |

> **Quy tắc vàng:** Khi nói chuyện với **khách hàng (Soto)** về **người trong công ty mình (Uchi)** — dù là giám đốc — bạn **PHẢI dùng Kenjougo** (khiêm nhường ngữ), **KHÔNG dùng Sonkeigo**.

### 4.2 Ví dụ thực tế điển hình trong BJT
**Tình huống:** Khách hàng hỏi về giám đốc của bạn.

| ❌ SAI (Dùng Sonkeigo cho người trong nhóm) | ✅ ĐÚNG (Dùng Kenjougo) |
|---|---|
| 部長はいらっしゃいます。 | 部長はおります。 |
| (Trưởng phòng đang có ở đây ạ.) | (Trưởng phòng đang có mặt.) |
| 部長がおっしゃいました。 | 部長が申しました。 |
| (Trưởng phòng đã nói ạ.) | (Trưởng phòng đã nói.) |
| 社長がいらっしゃいます。 | 社長はおります。 |

**Tình huống:** Nói về hành động của mình với khách hàng.

| Ngữ cảnh | Câu đúng |
|---|---|
| Tôi sẽ đến thăm (khách hàng) | 伺います (ukagaimasu) |
| Tôi sẽ gọi điện lại | 折り返しお電話いたします |
| Tôi sẽ hỏi (cấp trên) | 確認いたします |
| Tôi đã nhận được | 受け取りました → いただきました |

### 4.3 Bảng quyết định chọn loại kính ngữ
**Chủ thể hành động là ai?**

- **NGƯỜI KHÁC** (khách hàng, đối tác, cấp trên) → Dùng **SONKEIGO** (尊敬語)
- **BẢN THÂN** hoặc **NGƯỜI TRONG NHÓM** (Uchi) → Dùng **KENJOUGO** (謙譲語)

**Giao tiếp trang trọng cơ bản?** → Dùng **TEINEIGO** (丁寧語) làm nền

---

## 5. Bảng So Sánh Tổng Hợp 3 Loại Kính Ngữ
| Tiêu chí | 尊敬語 Sonkeigo | 謙譲語 Kenjougo | 丁寧語 Teineigo |
|---|---|---|---|
| **Mục đích** | Tôn kính đối phương | Hạ thấp bản thân | Lịch sự tiêu chuẩn |
| **Áp dụng cho** | Hành động của người khác | Hành động của bản thân/Uchi | Mọi câu trang trọng |
| **"Đi"** | いらっしゃる | 参る (mairu) | 行きます |
| **"Đến"** | いらっしゃる | 参る (mairu) | 来ます |
| **"Ở"** | いらっしゃる | おる | います |
| **"Nói"** | おっしゃる | 申す (mousu) | 言います |
| **"Ăn/Uống"** | 召し上がる | いただく | 食べます/飲みます |
| **"Làm"** | なさる | いたす | します |
| **"Biết"** | ご存知 | 存じる | 知っています |
| **"Xem"** | ご覧になる | 拝見する | 見ます |
| **"Hỏi/Thăm"** | — | 伺う (ukagau) | 聞きます/訪ねます |
| **"Công ty"** | 御社/貴社 | 弊社/当社 | 会社 |

---

## 6. Các Cụm Từ Kính Ngữ Hay Gặp Trong BJT
### 6.1 Mở đầu cuộc hội thoại kinh doanh
| Tiếng Nhật | Nghĩa |
|---|---|
| いつもお世話になっております。 | Cảm ơn quý vị đã luôn quan tâm. (Khai mào chuẩn) |
| 先日はありがとうございました。 | Cảm ơn về lần trước. |
| お忙しいところ失礼いたします。 | Xin lỗi vì đã làm phiền khi ngài đang bận. |

### 6.2 Yêu cầu, đề nghị
| Tiếng Nhật | Nghĩa | Mức độ |
|---|---|---|
| 〜ていただけますか | Liệu ngài có thể... | Lịch sự |
| 〜ていただけないでしょうか | Không biết ngài có thể... | Rất lịch sự |
| 〜くださいませんか | Ngài có thể... không ạ | Rất lịch sự |
| お願いいたします | Tôi xin nhờ ngài | Trang trọng |

### 6.3 Từ chối lịch sự
| Tiếng Nhật | Nghĩa |
|---|---|
| あいにく〜 | Tiếc là... (mở đầu từ chối) |
| ただいま〜しております | Hiện tại chúng tôi đang... (bận) |
| 〜いたしかねます | Tôi e rằng khó có thể... (từ chối khéo) |
| 〜でございません | Không phải... (phủ định lịch sự) |

### 6.4 Điện thoại kinh doanh — trọng điểm BJT
| Tình huống | Câu nói |
|---|---|
| Tiếp nhận cuộc gọi | はい、〇〇株式会社でございます。 |
| Người được hỏi không có mặt | ただいま席を外しております。 |
| Nhờ nhắn lại | 折り返しお電話させていただきます。 |
| Hỏi tên người gọi | 失礼ですが、お名前をお聞かせいただけますか。 |
| Kết thúc cuộc gọi | 失礼いたします。 |

---

## 7. Lỗi Thường Gặp & Cách Tránh
### Lỗi 1: Dùng Sonkeigo cho người trong nhóm khi nói với khách
**Sai:** 「部長の田中はいらっしゃいません。」  
**Đúng:** 「部長の田中はおりません。」

> Khi nói với khách về sếp/đồng nghiệp của mình → LUÔN dùng Kenjougo.

### Lỗi 2: Dùng Kenjougo cho hành động của khách hàng
**Sai:** 「お客様が参りました。」  
**Đúng:** 「お客様がいらっしゃいました。」

> Hành động của khách hàng → LUÔN dùng Sonkeigo.

### Lỗi 3: Nhầm 御社 và 弊社
**Sai:** 「弊社の製品をご利用いただき...」（khi nói về công ty đối phương）  
**Đúng:**
- **御社/貴社** → công ty của ĐỐI PHƯƠNG
- **弊社/当社** → công ty của MÌNH

### Lỗi 4: Dùng いただく và くださる sai chủ ngữ
- **〜てくださる**: Chủ ngữ là đối phương (đối phương làm ơn cho mình)  
  → 「ご確認くださり、ありがとうございます。」
- **〜ていただく**: Chủ ngữ là bản thân (mình được phép làm / mình nhờ đối phương)  
  → 「ご確認いただき、ありがとうございます。」

---

## 8. Bài Tập Luyện Tập
### Bài tập 1: Chọn đúng kính ngữ
Điền vào chỗ trống bằng từ kính ngữ phù hợp:

1. 社長は今、席を（　　）ます。(いる → Kenjougo vì nói với khách)
2. お客様がすでに（　　）ました。(来る → Sonkeigo vì chủ ngữ là khách)
3. こちらの資料を（　　）ください。(見る → Sonkeigo dạng yêu cầu)
4. 後ほどご連絡（　　）します。(する → Kenjougo vì mình làm)
5. 部長がそのようにおっしゃいまし...  → **Sai!** Phải đổi thành gì?

> **Đáp án:**  
> 1. おり　2. いらっしゃい　3. ご覧（になって）　4. いたし　5. 申しました

### Bài tập 2: Phân loại câu
Xác định câu sau dùng loại kính ngữ nào:

| Câu | Loại kính ngữ |
|---|---|
| 社長はただいま外出されております。 | ? |
| 資料を拝見いたします。 | ? |
| お名前をお聞かせいただけますか。 | ? |
| 後ほど参ります。 | ? |

> **Đáp án:** Sonkeigo / Kenjougo / Kenjougo+Sonkeigo kết hợp / Kenjougo

---

## 9. Mẹo Ghi Nhớ Nhanh
| Mẹo | Nội dung |
|---|---|
| 🔺 **Sonkeigo = Nâng người khác lên** | Hành động của người khác → いらっしゃる, おっしゃる, 召し上がる |
| 🔻 **Kenjougo = Hạ mình xuống** | Hành động của mình → 参る, 申す, いただく, 伺う |
| 🔄 **Uchi/Soto = Quan trọng nhất** | Sếp mình + khách hàng → PHẢI dùng Kenjougo cho sếp mình |
| 📱 **御社 vs 弊社** | 御社 = công ty BẠN / 弊社 = công ty TÔI |
| 📖 **いただく = 3 in 1** | Ăn + Uống + Nhận → đều là いただく |
| 🚶 **いらっしゃる = 3 in 1** | Đi + Đến + Ở → đều là いらっしゃる |

---

*Tài liệu thuộc dự án nghiên cứu sách ôn thi BJT — Phần 2.1*
', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

-- module 8012 ← 2.1.4_JuzuDoushi_LyThuyet.md
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8016002, 8016, NULL, 'markdown_book', 'Động từ cho/nhận (授受動詞)', '# 授受動詞（じゅじゅどうし）— Lý Thuyết Chi Tiết
> **Cấp độ:** BJT N2–N1 / Kinh ngữ nâng cao  
> **Mục tiêu:** Nắm vững toàn bộ hệ thống cho–nhận trong tiếng Nhật kinh doanh, bao gồm chiều hướng, cấp bậc, và cấu trúc nâng cao như させていただく

---

## 1. Tổng Quan Hệ Thống 授受動詞
Tiếng Nhật không có một động từ "give" hay "receive" trung tính như tiếng Anh hay tiếng Việt. Động từ nào được dùng phụ thuộc vào **3 yếu tố đồng thời**:

1. **Chiều hướng của hành động** — ai cho ai?
2. **Vị trí của người nói** — tôi đứng ở phe nào?
3. **Cấp bậc xã hội** — mối quan hệ giữa các bên là gì?

Thiếu bất kỳ thông tin nào trong 3 yếu tố trên đều có thể dẫn đến lựa chọn sai động từ.

---

## 2. Bảng Tổng Hợp Đầy Đủ
| Động từ | Cấp độ | Chiều hướng hành động | Ai là chủ thể |
|--------|--------|----------------------|---------------|
| **あげる** | Thông thường | Tôi/người trong nhóm → người khác | Người cho (speaker side) |
| **やる** | Thấp hơn (cho cây, thú) | Tôi → vật/sinh vật cấp thấp hơn | Người cho |
| **くれる** | Thông thường | Người khác → Tôi/nhóm tôi | Người cho (từ phía ngoài) |
| **もらう** | Thông thường | Tôi nhận từ người khác | Người nhận (tôi) |
| **さしあげる** | Khiêm tốn ngữ (謙譲語) | Tôi → người trên | Người cho (khiêm tốn hóa) |
| **いただく** | Khiêm tốn ngữ (謙譲語) | Tôi nhận từ người trên | Người nhận (khiêm tốn hóa) |
| **くださる** | Tôn kính ngữ (尊敬語) | Người trên → Tôi/nhóm tôi | Người cho (tôn kính hóa) |
| **賜る（たまわる）** | Kính ngữ tối cao | Người trên cùng → Tôi | Người cho (cực kỳ trang trọng) |

> ⚠️ **Lưu ý quan trọng:** あげる **không dùng** khi người nhận là khách hàng (お客様). Phải dùng さしあげる. Đây là lỗi phổ biến nhất trong BJT.

> **Phân biệt Khiêm tốn ngữ vs Tôn kính ngữ:**
> - **Khiêm tốn ngữ (謙譲語):** Hạ thấp **bản thân hoặc hành động của tôi** (さしあげる, いただく)
> - **Tôn kính ngữ (尊敬語):** Nâng cao **người đối tượng** (くださる, おっしゃる, etc.)

---

## 3. Phân Tích Chiều Hướng Chi Tiết
### 3.1 あげる vs くれる — Cùng nghĩa "cho" nhưng khác góc nhìn
```
あげる: [A] ──give──→ [B]   (A là trung tâm góc nhìn, A cho đi)
くれる: [A] ──give──→ [Tôi/nhóm tôi]  (người nhận là trung tâm)
```

**Ví dụ:**
- 田中さんに本を**あげた**。(Tôi cho anh Tanaka cuốn sách)
- 田中さんが本を**くれた**。(Anh Tanaka cho tôi cuốn sách) ← 田中さん là subject

**Sai phổ biến:**
- ❌ 田中さんが私に本をあげた。(Không tự nhiên — あげる dùng khi speaker cho đi, không phải nhận)
- ✅ 田中さんが私に本をくれた。

### 3.2 もらう — Nhận (chủ thể là người nhận)
```
[Tôi] ←receive── [A]  (Tôi là chủ thể, nhận từ A)
```

Trợ từ đi kèm với nguồn: **に** hoặc **から**
- Người: **に** (田中さんに～をもらった)
- Tổ chức/vật trừu tượng: **から** (会社から～をもらった)

---

## 4. Cặp Kính Ngữ Chi Tiết
### 4.1 あげる → さしあげる（謙譲語）
Dùng khi người cho là **tôi/người trong nhóm mình**, người nhận là **người trên/khách hàng**.

| Tình huống | Câu |
|-----------|-----|
| Tặng quà cho sếp | 部長にお土産を**さしあげました**。|
| Mang đồ cho khách | お客様に資料を**さしあげます**。|
| Giải thích cho người cao cấp | ご説明を**さしあげましょうか**。|

> ⚠️ **Không dùng** さしあげる với người ngang hàng hoặc cấp dưới — cảm giác quá cứng nhắc, thậm chí nghe sarkastic.

### 4.2 くれる → くださる（尊敬語）
Dùng khi người cho là **người trên/khách hàng**, họ cho **tôi/nhóm tôi**.

| Tình huống | Câu |
|-----------|-----|
| Sếp tặng quà | 部長がお土産を**くださいました**。|
| Khách hàng gửi tài liệu | お客様が資料を**くださいました**。|
| Yêu cầu lịch sự | ご確認**いただけますでしょうか**。/ ご確認**ください**。|

**Chia động từ くださる:**

| Thể | Dạng |
|-----|------|
| Thể ます | くださいます |
| Mệnh lệnh lịch sự | ください |
| Thể て | くださって |
| Dạng phủ định | くださいません |

> ⚠️ くださる chia như động từ nhóm 1 NGOẠI TRỪ thể mệnh lệnh → **ください** (không phải くださる→くだされ)

### 4.3 もらう → いただく（謙譲語）
Dùng khi **tôi** nhận từ **người trên/khách hàng**.

| Tình huống | Câu |
|-----------|-----|
| Nhận quà từ sếp | 部長にお土産を**いただきました**。|
| Nhận sự giúp đỡ | ご支援を**いただき、誠にありがとうございます**。|
| Nhận phép từ người trên | 休みを**いただいております**。|

**Khi nào chọn もらう vs いただく?**

| Tình huống | もらう | いただく | Lựa chọn tốt hơn |
|-----------|--------|----------|-----------------|
| Nhận tiền lương từ công ty | Có | Có | **いただいた** (tôn kính công ty là cấp trên) |
| Nhận sự giúp đỡ từ sếp | Có (nhưng thô) | Có | **いただいた** (chính thức hơn) |
| Nhận món quà từ bạn thân | Có | Không | **もらった** (tự nhiên hơn) |
| Nhận ơn từ khách hàng | Không | Có | **いただいた** (chính thức) |

> **Quy tắc:** Càng cấp trên/khách/chính thức → dùng いただく. Càng bình thường/ngang hàng → dùng もらう

### 4.4 賜る（たまわる）— Cấp độ tối cao
Dùng trong **văn bản chính thức, thư từ kinh doanh, diễn văn**. Không dùng trong hội thoại bình thường.

- ご支援を**賜り**、厚く御礼申し上げます。(Kính cảm ơn sự hỗ trợ quý báu)
- ご愛顧を**賜りますよう**、お願い申し上げます。(Kính mong tiếp tục được quan tâm)
- ご来臨を**賜り**、光栄でございます。(Vô cùng vinh dự được đón tiếp)

Cấu trúc cố định: **〜を賜り、～申し上げます**

---

## 5. Cấu Trúc て-Form (Hành Động Thay Thay Cho Vật)
Đây là ứng dụng quan trọng nhất — thay vì cho/nhận **vật**, ta cho/nhận **hành động**.

### 5.1 Bảng Cấu Trúc て-Form
| Cấu trúc | Nghĩa | Góc nhìn |
|----------|-------|----------|
| 〜て**あげる** | Tôi làm [hành động] cho người khác | Người làm là trung tâm |
| 〜て**やる** | Tôi làm cho người/vật cấp thấp hơn | Từ trên xuống |
| 〜て**くれる** | Người khác làm [hành động] cho tôi | Người nhận là trung tâm |
| 〜て**もらう** | Tôi nhận [hành động] từ người khác | Tôi là chủ thể nhận |
| 〜て**さしあげる** | Tôi làm cho người trên (khiêm tốn) | Kính ngữ của てあげる |
| 〜て**いただく** | Tôi nhận [hành động] từ người trên | Kính ngữ của てもらう |
| 〜て**くださる** | Người trên làm [hành động] cho tôi | Kính ngữ của てくれる |

### 5.2 Ví Dụ So Sánh Trong Tình Huống Kinh Doanh
**Tình huống:** Anh Tanaka giải thích cho tôi về dự án

| Cách nói | Câu | Sắc thái |
|---------|-----|----------|
| Bình thường (tôi nhận) | 田中さんが説明して**くれた**。| Trung tính, tự nhiên |
| Bình thường (tôi là chủ) | 田中さんに説明して**もらった**。| Nhấn mạnh tôi được lợi |
| Kính ngữ (người trên) | 田中部長が説明して**くださった**。| Tôn kính 田中部長 |
| Kính ngữ (tôi khiêm tốn) | 田中部長に説明して**いただいた**。| Khiêm tốn hóa bản thân |

### 5.3 Lựa Chọn Phù Hợp Theo Ngữ Cảnh
```
Khi nói với người ngoài về việc người trong công ty (sếp của mình) làm gì đó:
→ Dùng いただく (khiêm tốn hóa cả sếp vì sếp là "phía mình")

Khi nói về việc khách hàng làm gì đó:
→ Dùng くださる (tôn kính khách hàng)

Khi nói về việc mình làm cho khách hàng:
→ Dùng さしあげる (khiêm tốn hóa hành động của mình)
```

---

## 6. させていただく — Phân Tích Chuyên Sâu
### 6.1 Cấu trúc và nguồn gốc
```
動詞 使役形 + いただく
= させる (sai khiến) + いただく (nhận lịch sự)
= "Nhận phép làm [hành động]" (được phép làm)
```

Cấu trúc này về mặt kỹ thuật có nghĩa là **"Tôi hèn mọn này xin phép được làm..."** — vừa khiêm tốn vừa xin phép.

### 6.2 Khi nào dùng させていただく
| Tình huống | Câu | Đúng/Sai |
|-----------|-----|---------|
| Xin phép nghỉ phép | 来週、休ませていただいてよろしいでしょうか。| ✅ Đúng |
| Thông báo hành động | お電話させていただきます。| ✅ Đúng |
| Giới thiệu bản thân | 田中と申させていただきます。| ✅ Chuẩn (tự giới thiệu) |
| Thở | 息をさせていただきます。| ❌ Sai (không liên quan đến phép) |

### 6.3 Điều kiện để dùng させていただく (theo ngữ pháp chuẩn)
Hai điều kiện cần có **đồng thời**:
1. **Có sự cho phép** từ phía người khác (明示的または暗示的な許可)
2. **Hành động mang lại lợi ích** cho người nói

Trong thực tế thương mại, điều kiện này đã được nới lỏng — させていただく được dùng như công thức lịch sự chung.

### 6.4 So sánh させていただく vs させられる
| | させていただく | させられる |
|--|--------------|-----------|
| Cảm xúc | Tự nguyện, lịch sự | Bị ép buộc, bất đắc dĩ |
| Chủ thể | Tôi (với sự cho phép) | Tôi (bị người khác bắt) |
| Ví dụ | 説明させていただきます。| 残業させられました。|
| Sắc thái | Trang trọng, tích cực | Tiêu cực, phàn nàn |

---

## 7. Trường Hợp Đặc Biệt Và Bẫy Trong BJT
### 7.1 Lỗi あげる với お客様
❌ お客様に資料を**あげます**。(Sai — あげる nghe như ngang hàng)  
✅ お客様に資料を**さしあげます**。(Đúng — khiêm tốn hóa)  
✅ お客様に資料を**お持ちします**。(Cũng đúng — cách nói khác)

### 7.2 Lỗi さしあげる khi hỏi ý kiến người trên
❌ 部長、説明して**さしあげましょうか**。(Nghe rất kỳ — mình đang "ban ơn" cho sếp?)  
✅ 部長、ご説明し**ましょうか**。(Tự nhiên hơn)  
✅ ご説明いたし**ましょうか**。(Dùng いたす — khiêm tốn ngữ của する)

### 7.3 いただく với nghĩa "ăn/uống" vs "nhận"
| Câu | Nghĩa |
|-----|-------|
| お茶を**いただきます**。| Tôi uống trà (謙譲語 của 飲む) |
| ご意見を**いただきたい**。| Muốn nhận ý kiến (của bạn) |
| お時間を**いただけますか**？| Xin được dành thời gian (của bạn) cho tôi không? |

→ Khi いただく dùng với **vật cụ thể (uống/ăn)** = 謙譲語 của 食べる/飲む  
→ Khi いただく dùng với **hành động (てform)** = nhận hành động từ người trên

### 7.4 Tình Huống 3 Bên (Ba Người)
```
Khách A → Yêu cầu → Bạn (nhân viên) → Chuyển → Bộ phận B
```

Khi báo cáo với bộ phận B:
- お客様から資料をお預かりしました。→ Tôi giữ tài liệu từ khách (お預かりする = khiêm tốn ngữ của 預かる)
- お客様がこちらをお持ちくださいました。→ Khách đã mang đến cho chúng tôi

Khi báo cáo với khách hàng:
- 担当者がご確認させていただきます。→ Người phụ trách sẽ xác nhận (có xin phép ngầm)

### 7.5 やる — Khi nào và khi nào không dùng
**Dùng được:**
- 犬にエサを**やる**。(Cho chó ăn)
- 植木に水を**やる**。(Tưới cây)
- 子供にお小遣いを**やる**。(Cho tiền tiêu vặt cho con) ← có thể nghe hơi thô với một số người

**Tuyệt đối không dùng:**
- ❌ 部下に仕事を**やる**。→ Dùng あげる hoặc お願いする
- ❌ Với bất kỳ người lớn nào trong môi trường kinh doanh

---

## 8. Ứng Dụng Trong Email Kinh Doanh
### 8.1 Cụm từ mở đầu email
| Cụm từ | Nghĩa | Ghi chú |
|-------|-------|--------|
| お世話になっております。| Cảm ơn sự quan tâm thường xuyên | Standard opener |
| ご連絡**いただき**ありがとうございます。| Cảm ơn đã liên hệ | いただく - nhận từ đối phương |
| ご確認**くださいまして**ありがとうございます。| Cảm ơn đã xác nhận | くださる - đối phương cho mình |
| ご支援**賜り**、厚く御礼申し上げます。| Kính cảm ơn sự hỗ trợ | 賜る - rất trang trọng |

### 8.2 Cụm từ yêu cầu/đề nghị
| Cụm từ | Sắc thái |
|-------|---------|
| ご確認**いただけますでしょうか**。| Lịch sự nhất (xin được nhận xác nhận) |
| ご確認**いただけますか**。| Lịch sự |
| ご確認**ください**。| Trực tiếp, dùng với nội bộ hoặc cấp dưới |
| ご確認**くださいますよう**お願い申し上げます。| Văn bản formal |

### 8.3 Cụm từ khi thông báo hành động của mình
| Cụm từ | Nghĩa |
|-------|-------|
| ご報告**させていただきます**。| Xin phép được báo cáo |
| お送り**させていただきました**。| Đã gửi (xin phép) |
| 確認**いたしました**。| Đã xác nhận (いたす = 謙譲語 của する) |
| ご連絡**申し上げます**。| Xin thông báo (申し上げる = 謙譲語 của 言う) |

---

## 9. Sơ Đồ Quyết Định Chọn Động Từ
**Hành động "cho" hay "nhận"?**

- **CHO:**
  - Người cho là TÔI/nhóm tôi?
    - Người nhận là người trên/khách? → **さしあげる**
    - Người nhận là ngang hàng/cấp dưới? → **あげる**
  - Người cho là NGƯỜI KHÁC (cho tôi/nhóm tôi)?
    - Người cho là người trên? → **くださる**
    - Người cho là ngang hàng? → **くれる**

- **NHẬN:**
  - Nguồn là người trên/khách? → **いただく**
  - Nguồn là ngang hàng/cấp dưới? → **もらう**

**Nếu cần cấp độ tối cao** (văn bản trang trọng): → **賜る** (cho "cho", thay cho さしあげる/くださる)

---

## 10. Danh Sách Lỗi Thường Gặp Trong BJT
| Lỗi | Câu sai | Câu đúng | Lý do |
|-----|---------|---------|-------|
| あげる với khách | お客様に渡して**あげます**。| さしあげます。| Khách là người trên |
| さしあげる hỏi sếp | 説明して**さしあげましょうか**。| ご説明しましょうか。| Nghe như ban ơn |
| くれる với người trên | 部長が手伝って**くれた**。| くださった。| Thiếu tôn kính |
| もらう với người trên | 部長に教えて**もらった**。| いただいた。| Thiếu tôn kính |
| やる với người | 新人に資料を**やった**。| あげた。| やる chỉ dùng với vật/sinh vật thấp hơn |
| させていただく quá mức | 歩かせていただきます。| 歩きます。| Không cần xin phép để đi bộ |

---

## 11. Bài Tập Tự Kiểm Tra
**Điền vào chỗ trống:**

1. 田中部長がプロジェクトを説明して（　　）。(Bộ trưởng Tanaka đã giải thích dự án cho tôi)
   → **くださった**

2. 来週、早退（　　）てもよろしいでしょうか。(Xin phép được về sớm tuần tới)
   → **させていただいて**

3. 客様にパンフレットを（　　）。(Tôi sẽ đưa tờ rơi cho khách)
   → **さしあげます**

4. お客様からご注文を（　　）。(Nhận đơn đặt hàng từ khách hàng)
   → **いただきました**

5. 部長から重要な資料を（　　）。(Nhận tài liệu quan trọng từ trưởng phòng — thể bình thường)
   → **いただいた** / **もらった** (もらった cũng được nếu context không trang trọng)

---

*File lý thuyết này đi kèm với: **2.1.4_JuzuDoushi_BaiTap.json** (40 bài tập)*
', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

-- module 8013 ← 2.1.5_UchiSoto_LyThuyet.md
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8016003, 8016, NULL, 'markdown_book', 'Uchi/Soto — In-group / Out-group', '# 内/外ルール（うち/そとルール）— Lý Thuyết Chi Tiết
> **Cấp độ:** BJT N2–N1 / Kinh ngữ nâng cao  
> **Mục tiêu:** Hiểu sâu nguyên tắc Uchi/Soto — nền tảng xác định khi nào dùng kính ngữ và kiểu kính ngữ nào trong mọi tình huống kinh doanh

---

## 1. Khái Niệm Cốt Lõi
**Uchi (内 = bên trong)** và **Soto (外 = bên ngoài)** là một trong những khái niệm quan trọng nhất trong hệ thống kính ngữ tiếng Nhật. Đây không chỉ là quy tắc ngôn ngữ mà phản ánh **thế giới quan về nhóm và ranh giới xã hội** của người Nhật.

### Nguyên tắc cơ bản:
> **Khi nói chuyện với người ngoài nhóm (Soto), hạ thấp nhóm mình (Uchi) và tôn vinh nhóm kia (Soto)**

Điều này nghĩa là:
- **Người trong nhóm mình** (kể cả sếp, cấp trên) → Dùng **謙譲語 (khiêm tốn ngữ)** khi đề cập họ với người ngoài
- **Người ngoài nhóm** → Dùng **尊敬語 (tôn kính ngữ)** khi đề cập hoặc nói chuyện với họ

---

## 2. Xác Định "Uchi" và "Soto"
### 2.1 Cấu trúc phân tầng nhóm
Uchi/Soto không phải là ranh giới cứng nhắc — nó thay đổi tùy theo **ngữ cảnh và người đang nói chuyện**:

```
[Tôi] → [Nhóm nhỏ nhất: Bộ phận của tôi] → [Công ty tôi] → [Ngành của tôi] → [Xã hội]
```

| Đang nói chuyện với | Uchi (nhóm mình) | Soto (nhóm kia) |
|--------------------|-------------------|-----------------|
| Người ngoài công ty | Toàn bộ công ty mình (kể cả sếp) | Công ty kia + nhân viên của họ |
| Người công ty khác cùng ngành | Công ty mình | Công ty kia |
| Người trong phòng ban khác | Phòng ban mình | Phòng ban kia |
| Người trong phòng ban cùng | Nhóm nhỏ trong phòng | Những người khác trong phòng |

### 2.2 Quy tắc vàng
**Khi bên ngoài nhìn vào → Tất cả mọi người trong công ty mình = Uchi, kể cả 社長 (giám đốc)**

Ví dụ: Khi gọi điện cho khách hàng và đề cập đến giám đốc công ty mình:
- ❌ ~~社長の田中様は~~ (Không dùng 様 với người trong nhóm mình khi nói với người ngoài)
- ✅ 社長の田中は... / 弊社の田中は... (Bỏ kính ngữ với người trong nhóm mình)

---

## 3. Từ Vựng Chỉ Tổ Chức Theo Uchi/Soto
### 3.1 Cách gọi công ty
| | Khi nói về công ty MÌNH | Khi nói về công ty NGƯỜI KHÁC |
|--|--------------------------|-------------------------------|
| **Trang trọng cao** | 弊社（へいしゃ）| 貴社（きしゃ）— văn viết |
| **Trang trọng thường** | 当社（とうしゃ）| 御社（おんしゃ）— văn nói |
| **Bình thường** | うちの会社 | そちらの会社 / 御社 |

> ⚠️ **Bẫy BJT phổ biến:**
> - **貴社** dùng trong **văn viết** (email, thư từ)
> - **御社** dùng trong **hội thoại, điện thoại**
> - Nhầm 2 cái này là sai phổ biến trong BJT

### 3.2 Cách gọi bộ phận/chi nhánh
| | Công ty mình | Công ty người khác |
|--|--------------|---------------------|
| Bộ phận | 営業部 / 弊社営業部 | 御社営業部 / 貴部 |
| Chi nhánh | 弊社大阪支店 | 御社大阪支店 / 貴支店 |
| Văn phòng | 弊社 | 御社 |

### 3.3 Cách gọi người theo vai trò
| Vai trò | Nói về người trong công ty mình (với người ngoài) | Nói về/với người công ty khác |
|---------|--------------------------------------------------|-------------------------------|
| Giám đốc | 社長の田中 / 弊社社長 | 社長様 / 御社社長様 |
| Trưởng phòng | 部長の山田 | 部長様 / 山田部長様 |
| Nhân viên | 田中 / 担当の田中 | 田中様 / ご担当者様 |
| Bản thân | 私（わたくし）| — |

---

## 4. Ứng Dụng Trong Điện Thoại Kinh Doanh
Điện thoại là tình huống Uchi/Soto điển hình nhất — bạn đang nói với **người ngoài** về **người trong công ty mình**.

### 4.1 Nhận điện thoại — cấu trúc chuẩn
```
[Điện thoại đổ]
「はい、○○会社○○部、田中でございます。」
(Vâng, đây là công ty ABC, phòng XYZ, tôi là Tanaka.)

[Khách hỏi gặp đồng nghiệp 山田]
「山田でございますね。少々お待ちいただけますでしょうか。」
(Anh Yamada phải không ạ? Xin vui lòng chờ một chút.)
→ Không nói: 山田さんでございますね (sai — không được dùng さん với người trong nhóm mình)
```

### 4.2 Khi người được hỏi vắng mặt
| Tình huống | Cách nói (đúng) | Lỗi thường gặp |
|-----------|----------------|----------------|
| Đang họp | 山田はただいま会議中でございます。| ❌ 山田さんは会議中です。|
| Đang ra ngoài | 山田はただいま外出しております。| ❌ 山田さんは外出されています。|
| Đã về | 山田はただいま退勤いたしております。| ❌ 山田さんはお帰りになりました。|
| Hôm nay nghỉ | 山田は本日休みをいただいております。| ❌ 山田さんは休んでいます。|

> ⚠️ **Giải thích lỗi:** 外出**されています** dùng れる (尊敬語) — tôn vinh người trong nhóm mình khi nói với người ngoài là SAI theo quy tắc Uchi/Soto. 外出**しております** mới đúng (謙譲語 của する → おります).

### 4.3 Nhận lời nhắn
```
「よろしければ、ご伝言を承りましょうか。」
(Nếu cần, tôi có thể nhận lời nhắn cho anh/chị không?)

「折り返しお電話差し上げるよう申し伝えましょうか。」
(Tôi có thể nhắn lại để [anh Yamada] gọi lại cho anh/chị không?)
```

- 申し伝える = khiêm tốn ngữ của 伝える (nói lại với người trong nhóm mình)
- 差し上げる ở đây = khiêm tốn ngữ (công ty mình gọi cho khách)

### 4.4 Gọi điện cho đối tác
```
「いつもお世話になっております。○○会社の田中と申します。
○○の件でお電話差し上げました。
山田部長はいらっしゃいますでしょうか。」
```

- **いつもお世話になっております** — câu mở đầu bắt buộc (cảm ơn sự quan tâm thường xuyên)
- **と申します** — 謙譲語 của という/です (tự giới thiệu khiêm tốn)
- **お電話差し上げました** — gọi điện cho (đối phương = Soto)
- **いらっしゃいますか** — 尊敬語 của います (hỏi về người Soto)

---

## 5. Ứng Dụng Trong Email Kinh Doanh
### 5.1 Format email chuẩn
```
件名（Subject）: 【件名を簡潔に】

○○株式会社 ○○部
○○様

お世話になっております。
△△株式会社の田中でございます。

[Nội dung chính]

何卒よろしくお願い申し上げます。

△△株式会社 営業部
田中太郎
TEL: 03-XXXX-XXXX
```

### 5.2 Phân tích Uchi/Soto trong email
| Phần email | Uchi/Soto | Cách dùng |
|-----------|-----------|-----------|
| 宛先 (người nhận) | Soto | ○○様、御社、貴社 |
| Người viết email | Uchi | 田中 (không có さん/様) |
| Sếp/đồng nghiệp được đề cập | Uchi (từ góc nhìn người nhận là Soto) | Bỏ kính ngữ, chỉ gọi tên |
| Yêu cầu đối phương | Soto → mình nhận | いただく、くださる |
| Mình thực hiện hành động | Uchi thực hiện | いたす、申し上げる、させていただく |

### 5.3 Ví dụ email và phân tích
```
弊社の山田から、資料をお送りいたしましたが、ご確認いただけましたでしょうか。
```

Phân tích:
- **弊社の山田** = nói về đồng nghiệp trong nhóm mình → không có さん, không có kính ngữ
- **お送りいたしました** = 謙譲語 hợp lệ (hành động của nhóm mình)
- **ご確認いただけましたでしょうか** = いただく (xin được nhận [hành động xác nhận] từ đối phương = Soto)

---

## 6. Tình Huống 3 Bên (三者関係)
Đây là tình huống phức tạp nhất và xuất hiện thường xuyên trong BJT.

### 6.1 Sơ đồ tình huống
```
[Công ty A] ←→ [Bạn / Công ty B] ←→ [Công ty C]
```

Khi bạn (Công ty B) nói chuyện với Công ty A về Công ty C:
- Công ty A = Soto → Tôn kính
- Công ty C = Soto (với B) → Tôn kính khi đề cập
- Công ty B = Uchi → Khiêm tốn

### 6.2 Ví dụ tình huống cụ thể
**Tình huống:** Bạn đang điện thoại với khách hàng (Công ty A), và đề cập đến đối tác (Công ty C) của bạn.

```
「先日、○○社様（Công ty C）よりご連絡をいただきまして、
弊社（Công ty B = mình）でご確認いたしましたところ、
○○様（Công ty A）のご要望に対応できると確認が取れました。」
```

Phân tích:
- **○○社様** = Công ty C (Soto) → 様
- **よりご連絡をいただきまして** = Công ty C (Soto) liên hệ mình → いただく (mình nhận từ Soto)
- **弊社でご確認いたしました** = Công ty B (mình = Uchi) xác nhận → いたす (謙譲語)
- **○○様のご要望** = yêu cầu của Công ty A (Soto) → 様 + ご-

### 6.3 Trường hợp sếp của mình nói chuyện với khách
Khi gặp sếp đang nói chuyện với khách → Bạn phải nói về sếp mình bằng ngôn ngữ Uchi (hạ thấp sếp trước mặt khách):

❌ Sai: 「山田部長さんがいらっしゃいます。」(Tôn kính sếp trước khách — vi phạm Uchi/Soto)  
✅ Đúng: 「山田が参ります。」(Hạ thấp sếp trước Soto — đúng quy tắc)

---

## 7. Trường Hợp Đặc Biệt — Cùng Công Ty Nhưng Khác Phòng Ban
Khi nói chuyện với **đồng nghiệp cùng công ty nhưng khác phòng**, Uchi/Soto thay đổi:

| Ngữ cảnh | Uchi | Soto |
|---------|------|------|
| Nói với người khác phòng về sếp của mình | Sếp mình = Uchi → không kính ngữ | — |
| Nói với người khác phòng về sếp của họ | — | Sếp của họ = Soto → kính ngữ |
| Nội bộ phòng với nhau | Mọi người trong phòng = Uchi | — |

**Ví dụ thực tế:**

Nhân viên phòng Kinh doanh nói chuyện với nhân viên phòng Kế toán:

- Về sếp của Kinh doanh: 「山田は今、外出中です。」(Bình thường, không cần kính ngữ quá mức)
- Về sếp của Kế toán: 「鈴木部長はいらっしゃいますか。」(Có thể dùng kính ngữ vì họ là phòng khác)

> ⚠️ Trong thực tế, nội bộ công ty thường linh hoạt hơn — không bắt buộc hoàn toàn nghiêm ngặt như với Soto thực sự. Nhưng trong BJT, tình huống điện thoại với người ngoài luôn yêu cầu Uchi/Soto nghiêm ngặt.

---

## 8. Tình Huống Đặc Biệt Trong BJT
### 8.1 Giới thiệu sếp với khách hàng (対面紹介)
**Sai phổ biến:**
❌ 「弊社の山田部長をご紹介いたします。山田部長、こちらが○○社の鈴木様でいらっしゃいます。」

**Đúng — khi giới thiệu sếp mình với khách:**
✅ 「弊社の山田でございます。」(Đơn giản, hạ thấp sếp theo quy tắc Uchi)

**Khi giới thiệu khách với sếp mình:**
✅ 「○○社の鈴木様でいらっしゃいます。」(Tôn kính khách = Soto)

### 8.2 Khi bị hỏi về phạm vi quyết định của sếp
❌ 「部長がそのように決めました。」→ Thiếu kính ngữ  
✅ 「部長がそのように決定いたしました。」→ Dùng いたす thay する  
✅ 「上の者がそのように判断いたしました。」→ "Người trên" — khiêm tốn

### 8.3 Khi tiếp nhận lời khen về công ty
Khách khen: 「御社はとても対応が良いですね。」  
Đúng: 「恐縮でございます。今後ともよろしくお願いいたします。」  
Sai: ~~「ありがとうございます、そうなんです！」~~ (Quá tự nhiên, không phù hợp)

---

## 9. Bảng Tổng Hợp Từ Vựng Uchi/Soto
### 9.1 Động từ theo Uchi/Soto
| Hành động | Nhóm mình làm (謙譲語) | Nhóm kia làm (尊敬語) |
|---------|----------------------|---------------------|
| Đi | 参る（まいる）| いらっしゃる |
| Ở/Có mặt | おる | いらっしゃる |
| Nói | 申し上げる（もうしあげる）| おっしゃる |
| Biết | 存じる（ぞんじる）| ご存知（ごぞんじ）|
| Ăn/Uống | 食べます / いただきます* | 召し上がる（めしあがる）|
| Xem/Đọc | 拝見する（はいけんする）| ご覧になる（ごらんになる）|
| Nhận | いただく | お受け取りになる |
| Làm | いたす | なさる |
| Hỏi | — | ご質問になられる / ご質問でしょうか |
| Ghé thăm | うかがう | いらっしゃる |
| Gửi | お送りいたします | お送りいただく / お送りになる |

### 9.2 Danh từ chỉ người theo Uchi/Soto
| Người | Nhóm mình (khi nói với Soto) | Nhóm kia |
|------|-------------------------------|---------|
| Tôi | 私（わたくし）| — |
| Công ty mình | 弊社 / 当社 | 御社 / 貴社 |
| Người kia (chung) | — | 〜様、〜さん |
| Sếp của mình | [Tên] / 上の者 | 〜様 |
| Khách hàng | — | お客様 |

---

## 10. Sơ Đồ Quyết Định Uchi/Soto
**Đang nói chuyện với ai?**

- **Người NGOÀI công ty** (khách hàng, đối tác):
  - Đề cập người TRONG công ty mình → **謙譲語** hoặc bình thường (KHÔNG kính ngữ)
    - Ví dụ: 山田は外出中です / 弊社では〜いたします
  - Đề cập/nói với người NGOÀI công ty → **尊敬語**
    - Ví dụ: 山田様はいらっしゃいますか / ご確認いただけますか

- **Người TRONG công ty:**
  - Cùng phòng ban → Có thể dùng bình thường (linh hoạt)
  - Khác phòng ban → Semi-formal: kính ngữ vừa phải với cấp trên của họ

---

## 11. Lỗi Điển Hình Trong BJT
| Tình huống | Câu sai | Câu đúng | Lỗi vi phạm |
|-----------|---------|---------|-------------|
| Điện thoại, sếp đang họp | 部長さんはただいまご会議中でいらっしゃいます。| 部長はただいま会議中でございます。| Dùng さん và いらっしゃる với Uchi |
| Giới thiệu đồng nghiệp với khách | 田中さんをご紹介します。| 田中をご紹介いたします。| さん với Uchi |
| Email về sếp mình | 弊社山田部長様より… | 弊社山田より… | 様 với Uchi |
| Hỏi khách về sếp của họ | 貴社の田中部長はいますか。| 田中部長はいらっしゃいますでしょうか。| Thiếu 尊敬語 với Soto |
| Xác nhận lại email | 確認してください。| ご確認くださいますよう… / ご確認いただけますでしょうか。| Thiếu kính ngữ với Soto |
| Nhận lời nhắn | 電話があったことを山田さんに言います。| 山田に申し伝えます。| さん với Uchi + thiếu 謙譲語 |

---

## 12. Bài Tập Tự Kiểm Tra
**Xác định đúng/sai và sửa lại nếu sai:**

1. [Điện thoại với khách] 「部長の山田様は現在会議中です。」  
   → ❌ **Sai.** 様 không dùng với người trong nhóm mình.  
   → ✅ 「部長の山田はただいま会議中でございます。」

2. [Email gửi đối tác] 「弊社の田中より、ご連絡申し上げます。」  
   → ✅ **Đúng.** 弊社の田中 (Uchi, không có様) + 申し上げます (謙譲語).

3. [Điện thoại] 「御社は今、お忙しいですか。」  
   → ⚠️ **Không tự nhiên.** Không hỏi cả công ty bận không. → 「ただいまお時間よろしいでしょうか。」

4. [Đến văn phòng đối tác] 「田中部長はいらっしゃいますか。」  
   → ✅ **Đúng.** Hỏi về người Soto → いらっしゃる (尊敬語).

5. [Nói với khách về hành động của công ty] 「弊社でご確認されました。」  
   → ❌ **Sai.** される là 尊敬語, không dùng với hành động của Uchi.  
   → ✅ 「弊社でご確認いたしました。」

---

*File lý thuyết này đi kèm với: **2.1.5_UchiSoto_BaiTap.json** (40 bài tập)*
', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

-- module 8014 ← 2.1.6_UkemiShieki_LyThuyet.md
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8016004, 8016, NULL, 'markdown_book', 'Bị động & Sai khiến (受動・使役)', '# 受動形・使役形・使役受動形 — Lý Thuyết Chi Tiết
> **Cấp độ:** BJT N2–N1 / Ngữ pháp nâng cao  
> **Mục tiêu:** Nắm vững hoàn toàn 3 thể động từ phức tạp nhất trong tiếng Nhật — cách chia, hệ thống trợ từ, sắc thái ngữ nghĩa, và ứng dụng kinh doanh

---

## 1. Tổng Quan Ba Thể
| Thể | Tên | Cấu trúc cơ bản | Ngữ nghĩa cốt lõi |
|-----|-----|-----------------|-------------------|
| 受動形 | Thể bị động | Vてstem + れる/られる | "Được/bị làm" |
| 使役形 | Thể sai khiến | Vてstem + させる/せる | "Khiến ai làm" hoặc "Cho phép ai làm" |
| 使役受動形 | Thể sai khiến bị động | Vstem + させられる | "Bị bắt buộc phải làm" |

---

## 2. 受動形（うけみけい）— Thể Bị Động
### 2.1 Quy tắc chia động từ
**Nhóm 1 (五段動詞 / U-verbs):** Âm cuối [u] → [a] + れる

| Nguyên thể | Cột a | Bị động |
|-----------|-------|---------|
| 書く (kaku) | 書か (kaka) | 書かれる |
| 飲む (nomu) | 飲ま (noma) | 飲まれる |
| 話す (hanasu) | 話さ (hanasa) | 話される |
| 待つ (matsu) | 待た (mata) | 待たれる |
| 売る (uru) | 売ら (ura) | 売られる |
| 呼ぶ (yobu) | 呼ば (yoba) | 呼ばれる |
| 急ぐ (isogu) | 急が (isoga) | 急がれる |
| 死ぬ (shinu) | 死な (shina) | 死なれる |
| 買う (kau) | 買わ (kawa) | 買われる |

> ⚠️ **Chú ý:** う âm khi chuyển sang cột a → わ (không phải a)  
> 買う → 買わ → 買われる (không phải 買あれる)

**Nhóm 2 (一段動詞 / RU-verbs):** Bỏ る + られる

| Nguyên thể | Bị động |
|-----------|---------|
| 食べる (taberu) | 食べられる |
| 見る (miru) | 見られる |
| 起きる (okiru) | 起きられる |
| 教える (oshieru) | 教えられる |

**Nhóm 3 (不規則動詞 / Irregular):**

| Nguyên thể | Bị động |
|-----------|---------|
| する | される |
| くる | こられる |

### 2.2 Chuyển đổi trợ từ khi dùng thể bị động
Đây là điểm quan trọng nhất và hay bị nhầm nhất.

**Câu chủ động → Câu bị động:**

```
[A] が [B] を 動詞
     ↓ chuyển sang bị động
[B] が [A] に 動詞受動形
```

Ví dụ:
- 先生が学生を叱った。→ 学生が先生**に**叱られた。
- 部長が田中を褒めた。→ 田中が部長**に**褒められた。

**Trợ từ の → も/が trong bị động:**

Khi を → が (object trở thành subject):
- 犬が足を噛んだ。→ 足が犬**に**噛まれた。

**Khi câu có 2 object (に + を):**
- 部長は私にレポートを書かせた。→ 私は部長にレポートを書かせられた。
  (を remains, chỉ thêm bị động vào cuối)

### 2.3 Hệ Thống Trợ Từ Trong Câu Bị Động
| Trợ từ | Dùng khi nào | Ví dụ |
|--------|-------------|-------|
| **に** | Tác nhân cụ thể là người/sinh vật | 犯人に財布を盗まれた。|
| **によって** | Tác nhân là người/tổ chức trong văn bản trang trọng; nguyên nhân trừu tượng; tác phẩm do ai tạo ra | この法律は国会によって制定された。|
| **で** | Nguyên nhân/phương tiện (không phải người gây ra) | 台風でたくさんの家が壊された。|
| **から** | Nguồn gốc (hành động xuất phát từ đâu — thường với động từ xuất phát: 与える、送る) | 上司から命令を受けた。|

**Phân biệt に vs によって chi tiết:**

| | に | によって |
|--|---|---------|
| Loại tác nhân | Người/sinh vật cụ thể | Người, tổ chức, luật lệ, hiện tượng trừu tượng |
| Văn phong | Hội thoại + văn viết | Văn viết trang trọng hơn |
| Dùng với | Hành động tác động trực tiếp | Sáng tạo, lập pháp, quyết định, nguyên nhân |
| Ví dụ | 先生に叱られた | 新法によって規制された |

**Ví dụ phân biệt:**

✅ この絵は**ピカソによって**描かれた。(Tác phẩm do Picasso vẽ — によって vì là tác giả)  
✅ 犯人**に**財布を盗まれた。(Tên tội phạm cụ thể — に vì hành động trực tiếp)  
✅ 台風**で**家が壊れた。(Nguyên nhân thiên nhiên — で)  
✅ 会社**から**通達が出された。(Phát xuất từ — から)  

### 2.4 Bốn Nghĩa Của れる/られる
Đây là điểm phức tạp — れる/られる không chỉ là thể bị động:

| Nghĩa | Tên | Ví dụ | Dấu hiệu nhận biết |
|-------|-----|-------|-------------------|
| ① Bị động | 受動 (ukemi) | 先生に叱られた。| Có tác nhân gây ra |
| ② Khả năng | 可能 (kanou) | 漢字が読める。| Không có tác nhân; khả năng làm được |
| ③ Tự phát | 自発 (jihatsu) | 昔のことが思い出される。| Cảm xúc, ký ức; không cố ý |
| ④ Kính ngữ | 尊敬 (sonkei) | 先生が来られた。| Chủ thể là người đáng kính |

> ⚠️ **Bẫy:** られる của Nhóm 2 có thể là BẤT KỲ nghĩa nào trong 4 nghĩa trên. Phải dựa vào ngữ cảnh để xác định.

**Ví dụ 食べられる:**
- 野菜が食べられる。→ Nghĩa ①: Rau bị ăn? Hoặc nghĩa ②: Có thể ăn rau được?
- Ngữ cảnh quyết định: Không có tác nhân + ý chủ ý → Nghĩa ② (khả năng)

### 2.5 迷惑の受身 (Bị Động Phiền Hà)
Loại bị động đặc biệt: chủ thể không phải object trực tiếp nhưng bị ảnh hưởng xấu.

**Cấu trúc:**
```
[Người bị ảnh hưởng] が [Tác nhân] に [Object] を 動詞受動形
```

Ví dụ:
- 私は雨に降られた。(Tôi bị mưa rơi xuống — mưa không "tác động" trực tiếp vào tôi nhưng ảnh hưởng xấu)
- 電車の中で子供に泣かれた。(Trên tàu, tôi bị đứa trẻ khóc — đứa trẻ không làm gì trực tiếp cho tôi)
- 隣の人にタバコを吸われた。(Người bên cạnh hút thuốc và [tôi bị ảnh hưởng])

**Đặc điểm:**
- Sắc thái tiêu cực, phiền hà
- Tác nhân (に) thực hiện hành động của **họ**, không phải hành động tác động trực tiếp vào chủ thể
- Phổ biến trong tiếng Nhật hội thoại và văn học

---

## 3. 使役形（しえきけい）— Thể Sai Khiến
### 3.1 Quy tắc chia động từ
**Nhóm 1:** Âm cuối [u] → [a] + せる

| Nguyên thể | Sai khiến |
|-----------|-----------|
| 書く | 書かせる |
| 飲む | 飲ませる |
| 話す | 話させる |
| 買う | 買わせる |

**Nhóm 2:** Bỏ る + させる

| Nguyên thể | Sai khiến |
|-----------|-----------|
| 食べる | 食べさせる |
| 見る | 見させる |
| 起きる | 起きさせる |

**Nhóm 3:**

| Nguyên thể | Sai khiến |
|-----------|-----------|
| する | させる |
| くる | こさせる |

### 3.2 Hệ Thống Trợ Từ Trong Câu Sai Khiến — Điểm Quan Trọng Nhất
Đây là điểm KHÁC BIỆT cốt lõi và hay bị nhầm nhất:

#### Với 他動詞 (Ngoại động từ — có object):
```
[Người sai khiến] が [Người bị sai] に [Object] を 動詞使役形
```

Ví dụ:
- 部長は田中**に**報告書**を**書かせた。(Trưởng phòng bắt Tanaka viết báo cáo)
- 先生は学生**に**本**を**読ませた。(Giáo viên cho/bắt học sinh đọc sách)

#### Với 自動詞 (Nội động từ — không có object):
Có 2 trường hợp tùy theo **ý nghĩa**:

```
[Người sai khiến] が [Người bị sai] を 動詞使役形  ← BẮT BUỘC (強制)
[Người sai khiến] が [Người bị sai] に 動詞使役形  ← CHO PHÉP (許可)
```

Ví dụ:
- 社長は田中**を**辞めさせた。(Giám đốc sa thải Tanaka — bắt buộc, ép)
- 社長は田中**に**辞めさせた。(Giám đốc để Tanaka từ chức — cho phép)

| Trợ từ | Nghĩa | Ví dụ | Ghi chú |
|--------|-------|-------|--------|
| **を** + 自動詞使役 | Ép buộc mạnh (force) | 子供を泣かせた。| Không có ý muốn của người bị sai |
| **に** + 自動詞使役 | Cho phép/để (permit/let) | 子供に泣かせた。| Người bị sai muốn/đồng ý |

> ⚠️ **Với 他動詞**: **LUÔN** dùng **に** cho người bị sai (không dùng を cho người, chỉ を cho object)

### 3.3 Hai Nghĩa Chính Của Thể Sai Khiến
| Nghĩa | Tên | Ví dụ | Dấu hiệu |
|-------|-----|-------|---------|
| Ép buộc | 強制 (kyousei) | 部長は田中を残業させた。| を + 自動詞 hoặc ngữ cảnh ép buộc |
| Cho phép | 許可 (kyoka) | 部長は田中に帰らせた。| に + 自動詞 hoặc ngữ cảnh đồng ý |

**Phân biệt qua ví dụ:**
- 子供を泣かせてしまった。→ Tôi đã khiến đứa trẻ khóc (vô ý, ép buộc)
- 子供に泣かせてあげた。→ Tôi để đứa trẻ khóc (cho phép, đồng cảm)

> ⚠️ **Lưu ý:** Quy tắc を/に với 自動詞 không linh hoạt — nó phụ thuộc **hoàn toàn vào ý định của người sai khiến**, không phải tùy chọn. を luôn = bắt buộc mạnh, に luôn = cho phép/để. Không có ngoại lệ.

### 3.4 Sai Khiến Trong Kinh Doanh
**Phân công công việc:**
- 担当者**に**資料を準備させます。(Để nhân viên phụ trách chuẩn bị tài liệu — に vì 準備する là 他動詞)
- 新人**に**先に帰らせます。(Để nhân viên mới về trước — に vì 帰る là 自動詞 + cho phép)

**Trách nhiệm:**
- 部下のミスで、お客様を**待たせてしまいました**。(Để khách hàng chờ — gây phiền, xin lỗi)
- ご不便を**おかけして**申し訳ありません。(Cách nói lịch sự hơn về việc gây phiền)

---

## 4. 使役受動形（しえきうけみけい）— Thể Sai Khiến Bị Động
### 4.1 Ý nghĩa cốt lõi
```
させる (sai khiến: bị bắt làm) + られる (bị động: bị ảnh hưởng)
= "Bị bắt buộc phải làm [điều mình không muốn]"
```

Đây là thể bày tỏ **sự bất đắc dĩ, bị ép buộc từ bên ngoài, không tự nguyện**.

### 4.2 Quy tắc chia động từ — ĐẦY ĐỦ
**Nhóm 1:** [a-stem] + させられる

| Nguyên thể | Sai khiến | Sai khiến bị động |
|-----------|-----------|------------------|
| 書く | 書かせる | 書かせられる |
| 飲む | 飲ませる | 飲まされる ← **Dạng rút gọn** |
| 待つ | 待たせる | 待たされる ← **Dạng rút gọn** |

> ⚠️ **Dạng rút gọn (短縮形):** Chỉ áp dụng cho Nhóm 1, KHÔNG áp dụng cho Nhóm 2  
> - ～せられる → ～される (rút gọn)
> - 飲ませられる → 飲まされる ✅  
> - 食べさせられる → ~~食べされる~~ ❌ (Nhóm 2, không được rút gọn)

**Bảng rút gọn đầy đủ Nhóm 1:**

| Nguyên thể | Đầy đủ | Rút gọn |
|-----------|--------|--------|
| 飲む | 飲ませられる | 飲まされる |
| 書く | 書かせられる | 書かされる |
| 待つ | 待たせられる | 待たされる |
| 話す | 話させられる | **Không rút gọn được** (tránh 話さされる) |
| 買う | 買わせられる | 買わされる |
| 死ぬ | 死なせられる | 死なされる |

> 話す → 話させられる không rút gọn vì dạng rút gọn 話さされる gây nhầm lẫn với bị động của 話す (話される), khiến câu trở nên không rõ ràng.

**Nhóm 2:** Không rút gọn

| Nguyên thể | Sai khiến bị động |
|-----------|------------------|
| 食べる | 食べさせられる |
| 見る | 見させられる |
| 起きる | 起きさせられる |

**Nhóm 3:**

| Nguyên thể | Sai khiến bị động |
|-----------|------------------|
| する | させられる |
| くる | こさせられる |

### 4.3 Sắc Thái Và Cảm Xúc
Thể sai khiến bị động luôn mang sắc thái **tiêu cực hoặc trung lập tiêu cực**:

| Câu | Nghĩa | Sắc thái |
|-----|-------|---------|
| 毎日残業させられる。| Mỗi ngày đều bị bắt làm thêm giờ | Phàn nàn, bất đắc dĩ |
| 上司に謝らせられた。| Bị sếp bắt phải xin lỗi | Không tự nguyện, khó chịu |
| 子供の頃、野菜を食べさせられた。| Hồi nhỏ bị bắt ăn rau | Ký ức không tự nguyện |
| 接待でお酒を飲まされた。| Bị ép uống rượu trong tiệc tiếp khách | Bất đắc dĩ, xã hội Nhật |

### 4.4 させていただく vs させられる — Đối Lập Hoàn Toàn
| | させていただく | させられる |
|--|--------------|-----------|
| Nguồn gốc | させる + いただく | させる + られる |
| Ý chí | Tự nguyện, xin phép | Bị ép buộc từ bên ngoài |
| Cảm xúc | Lịch sự, trân trọng | Bất đắc dĩ, phàn nàn |
| Ai là trung tâm | Người nói chủ động | Người nói bị động |
| Dùng khi | Thông báo hành động lịch sự | Nói về việc bị ép |
| Ví dụ | 説明させていただきます。| 長時間残業させられた。|

---

## 5. Chuyển Đổi Ba Thể — Bảng Tổng Hợp
### 5.1 Ví dụ chuyển đổi với 書く (viết)
| Thể | Câu | Nghĩa |
|-----|-----|-------|
| Chủ động | 部長が田中に報告書を書かせた。| Sếp bắt Tanaka viết báo cáo |
| Bị động đơn | 田中が部長に報告書を書かされた。| Tanaka bị bắt viết báo cáo (bởi sếp) |
| Bị động (sản phẩm làm subject) | 報告書が田中によって書かれた。| Báo cáo được viết bởi Tanaka |

### 5.2 Ví dụ với 辞める (từ chức — 自動詞)
| Thể | Câu | Nghĩa |
|-----|-----|-------|
| Chủ động (ép) | 社長が田中を辞めさせた。| Giám đốc sa thải Tanaka |
| Chủ động (cho phép) | 社長が田中に辞めさせた。| GĐ để Tanaka từ chức |
| Sai khiến bị động | 田中は辞めさせられた。| Tanaka bị sa thải (bất đắc dĩ) |

---

## 6. Ứng Dụng Trong Văn Bản Kinh Doanh
### 6.1 Bị động trong thông báo trang trọng
Thể bị động được dùng nhiều trong văn bản kinh doanh để:
- Tránh nêu rõ chủ thể (tạo cảm giác khách quan)
- Trang trọng hóa

Ví dụ:
- 「本件については、慎重に検討**された**結果、以下の通り決定いたしました。」(Kết quả được cân nhắc kỹ lưỡng về vấn đề này...)
- 「ご注文の商品は、本日発送**させていただきました**。」(Hàng đặt hàng đã được gửi đi hôm nay)
- 「規定により、ご返品は受け付け**られません**。」(Theo quy định, không thể chấp nhận trả hàng)

### 6.2 によって trong văn bản pháp lý/trang trọng
- 「当該契約は、双方の合意**によって**締結された。」(Hợp đồng được ký kết theo thỏa thuận đôi bên)
- 「新制度は委員会の決議**によって**定められた。」(Chế độ mới được quy định theo nghị quyết của ủy ban)

### 6.3 Thể sai khiến trong quản lý
- 「新人に資料の整理をさせましょう。」(Hãy để nhân viên mới sắp xếp tài liệu)
- 「担当者に確認させてから、ご返答いたします。」(Sau khi để người phụ trách xác nhận, tôi sẽ trả lời)

---

## 7. Bảng Tổng Hợp Trợ Từ Toàn Diện
| Thể | Người/vật | Trợ từ | Ghi chú |
|-----|---------|--------|--------|
| **受動形** | Tác nhân (người) | **に** | Phổ biến nhất |
| **受動形** | Tác nhân (trang trọng/trừu tượng) | **によって** | Văn bản, tác phẩm, luật |
| **受動形** | Nguyên nhân/phương tiện | **で** | Không phải người |
| **受動形** | Nguồn phát xuất | **から** | Hành động từ đây phát ra |
| **使役形** 他動詞 | Người bị sai | **に** | Luôn luôn |
| **使役形** 自動詞 (ép) | Người bị sai | **を** | Ép buộc, không tự nguyện |
| **使役形** 自動詞 (cho phép) | Người bị sai | **に** | Đồng ý, cho phép |
| **使役受動形** | Người sai khiến (nguồn gốc) | **に** | Ai bắt tôi làm |

---

## 8. Lỗi Điển Hình Và Phân Tích
| Lỗi | Câu sai | Câu đúng | Lý do |
|-----|---------|---------|-------|
| によって với người cụ thể | 先生**によって**叱られた。| 先生**に**叱られた。| に cho người, によって cho văn bản/trừu tượng |
| に với 自動詞 ép buộc | 社長が田中**に**辞めさせた。| 社長が田中**を**辞めさせた。| を cho ép buộc mạnh |
| を với 他動詞 người | 田中**を**報告書を書かせた。| 田中**に**報告書**を**書かせた。| に cho người bị sai với 他動詞 |
| Rút gọn Nhóm 2 | 食べさせ**られる**→食べ**される** | 食べさせられる (không rút gọn) | Rút gọn chỉ cho Nhóm 1 |
| Nhầm nghĩa られる | この魚は食べ**られる**。→ Cá này bị ăn? | Cá này có thể ăn được | Cần xem ngữ cảnh xác định nghĩa |
| されます thay bị động | このシステムは改善**されます**。| Đây là bị động của する — đúng trong trường hợp này | Cần kiểm tra される = bị động của する |

---

## 9. Sơ Đồ Quyết Định
**Muốn diễn đạt điều gì?**

- **"Bị/được [ai đó] làm [gì]"** → **受動形**
  - Tác nhân là ai?
    - Người cụ thể → **に**
    - Trang trọng/tổ chức/trừu tượng → **によって**
    - Nguyên nhân/phương tiện → **で**
    - Nguồn phát xuất → **から**

- **"Khiến/để [ai] làm [gì]"** → **使役形**
  - Động từ là gì?
    - **他動詞** (có object) → [người bị sai] に [object] を
    - **自動詞** (không object):
      - Ép buộc → [người bị sai] を
      - Cho phép → [người bị sai] に

- **"Bị bắt buộc phải làm [gì] một cách bất đắc dĩ"** → **使役受動形**
  - Ai bắt? → **に**
  - Nhóm 1? → Có thể rút gọn
  - Nhóm 2? → Không được rút gọn

---

## 10. Bài Tập Tự Kiểm Tra
**Điền trợ từ thích hợp vào (　):**

1. この商品はベトナム（　）輸入された。  
   → **から** (nguồn gốc, hàng nhập khẩu từ VN)

2. 社員が社長（　）怒られた。  
   → **に** (sếp = người cụ thể gây ra)

3. この規則は法律（　）定められた。  
   → **によって** (luật = trừu tượng, trang trọng)

4. 部長は田中（　）資料を整理させた。  
   → **に** (資料を整理する = 他動詞)

5. 社長は田中（　）退職させた。  
   → **を** (退職する = 自動詞 + ép buộc)

6. 毎日残業（　）させられてうんざりだ。  
   → なし (させられる = sai khiến bị động, 残業する + させられる; tác nhân ngầm hiểu hoặc có thể thêm "上司に" để rõ ràng)

**Xác định nghĩa của られる:**

7. 先生が教室に来られた。  
   → **尊敬語** (先生 = người đáng kính, không có ai gây ra)

8. 昔が思い出される。  
   → **自発** (tự nhiên nhớ lại, không cố ý)

9. 日本の文学作品がベトナムで広く読まれている。  
   → **受動** (Tác phẩm văn học Nhật được đọc rộng rãi ở Việt Nam)

10. 一日に10個のリンゴが食べられる。  
    → **可能** (có thể ăn được 10 quả táo một ngày)

---

*File lý thuyết này đi kèm với: **2.1.6_UkemiShieki_BaiTap.json** (40 bài tập)*
', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

-- module 8015 ← 2.1.7_TongHop_SoSanh_LyThuyet.md
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8016005, 8016, NULL, 'markdown_book', 'Tổng hợp & So sánh', '# 授受動詞 vs 受動形・使役形 — Điểm Dễ Nhầm Lẫn: Lý Thuyết Phân Biệt Chi Tiết
> **Cấp độ:** BJT N1 / Kinh ngữ nâng cao  
> **Mục tiêu:** Phân biệt dứt khoát các cấu trúc có hình thức gần giống nhau nhưng nghĩa và sắc thái hoàn toàn khác nhau — đây là vùng xám thường xuyên xuất hiện trong đề thi BJT cấp độ cao

---

## 1. Tại Sao Dễ Nhầm?
Các cấu trúc sau đây có hình thức trùng lặp hoặc tương tự:

| Cặp dễ nhầm | Cấu trúc 1 | Cấu trúc 2 |
|------------|-----------|-----------|
| て + もらう vs て + られる | してもらう | される / られる |
| させて + もらう vs させ + られる | させてもらう | させられる |
| て + あげる vs させる | してあげる | させる |
| させてもらえますか vs してもらえますか | させてもらえますか | してもらえますか |
| いただく (vật) vs いただく (hành động) | お菓子をいただく | 説明していただく |

Cốt lõi vấn đề: **hình thức chỉ khác nhau 1-2 âm tiết nhưng nghĩa và sắc thái đối lập hoàn toàn.**

---

## 2. てもらう vs られる（受動形）
### 2.1 Hình thức so sánh
| | てもらう | られる (受動) |
|--|---------|------------|
| Cấu trúc | 動詞て形 + もらう | 動詞受動形 |
| Chủ thể | Tôi (người nhận lợi ích) | Tôi (người bị tác động) |
| Nguồn | から/に (người làm hành động) | に/によって (tác nhân) |
| Ý nghĩa | Tôi nhận lợi ích từ hành động của người khác | Tôi bị tác động bởi hành động của người khác |
| Sắc thái | **Cảm kích, tích cực, chủ động nhận** | **Trung tính hoặc tiêu cực** |

### 2.2 Phân tích sâu
**Câu A:** 田中さんに説明して**もらった**。  
→ Tôi (chủ thể) nhận sự giải thích từ Tanaka → Tôi được lợi → Cảm ơn, trân trọng  
→ **Tâm lý:** Tôi chủ động yêu cầu (hoặc ít nhất cảm thấy được lợi) → Cảm giác biết ơn, tích cực

**Câu B:** 田中さんに説明**された**。  
→ Tôi bị giải thích bởi Tanaka → Trung tính, thậm chí hơi khó chịu (bị giải thích không cần)  
→ **Tâm lý:** Tôi không chủ động yêu cầu, không có kiểm soát → Cảm giác bị động lực bên ngoài điều khiển

**Sự khác biệt trong đời thực:**

| Tình huống | Câu đúng | Lý do |
|-----------|---------|-------|
| Khách hàng giải thích cho bạn và bạn thấy hữu ích | 丁寧に説明して**いただきました**。| Cảm kích |
| Bị ai đó giải thích dài dòng không cần thiết | 長々と説明**された**。| Tiêu cực |
| Bạn nhờ sếp hỗ trợ và sếp giúp | 上司に手伝って**いただいた**。| Biết ơn |
| Bị sếp "giúp đỡ" khi không cần | 上司に口を出**された**。| Khó chịu |

### 2.3 Lỗi thường gặp trong BJT
❌ 「お客様に商品を返品**された**。」  
→ Nghe như "bị khách hàng trả hàng lại (và tôi không muốn)" — không phù hợp nếu muốn nói trung tính  
✅ 「お客様から商品の返品を**いただいた**。」(Nhận hàng trả từ khách — trung tính hơn)  
hoặc: 「お客様が商品をご返品になった。」(Khách hàng trả hàng — kính ngữ trung tính)

---

## 3. させてもらう vs させられる
### 3.1 Đây là cặp quan trọng nhất trong BJT
| | させてもらう | させられる |
|--|------------|-----------|
| Nguồn gốc | させる + てもらう | させる + られる (受動) |
| Ai là chủ thể ý chí | **Tôi** muốn làm | **Người khác** muốn tôi làm |
| Cảm xúc người nói | Tự nguyện, lịch sự, biết ơn vì được phép | Bị ép, bất đắc dĩ, không tự nguyện |
| Kết quả | Tôi thực hiện hành động (với sự đồng ý của người khác) | Tôi thực hiện hành động (vì bị buộc) |
| Sắc thái | **Tích cực/trung tính tích cực** | **Tiêu cực/phàn nàn** |

### 3.2 Phân tích qua ví dụ cụ thể
**Tình huống: Tanaka ở lại làm thêm giờ**

| Câu | Ai quyết định | Sắc thái |
|-----|--------------|---------|
| 田中は残業させてもらった。| Tanaka tự nguyện xin ở lại | Biết ơn vì được phép ở lại |
| 田中は残業させられた。| Sếp bắt Tanaka ở lại | Tanaka không muốn nhưng phải làm |

**Thêm ví dụ đối lập:**

| させてもらう | させられる |
|------------|-----------|
| 早退させてもらいました。(Xin về sớm — tự nguyện, cảm ơn vì được phép) | 早退させられました。(Bị buộc về sớm — bất thường, tiêu cực) |
| 担当させてもらえますか？(Tôi có thể phụ trách không? — xin được làm) | 担当させられた。(Bị ép phụ trách — không muốn) |
| 説明させていただきます。(Xin phép được giải thích — lịch sự) | 延々と説明させられた。(Bị bắt giải thích mãi — mệt mỏi) |

### 3.3 Dạng kính ngữ
| Bình thường | Kính ngữ |
|------------|---------|
| させてもらう | させていただく |
| させてもらえますか | させていただけますでしょうか |

> **させていただく** là dạng kính ngữ của させてもらう, KHÔNG phải kính ngữ của させられる.  
> Không có dạng kính ngữ của させられる — bởi vì bạn không dùng thể kính ngữ để phàn nàn về việc bị ép buộc.

---

## 4. てあげる vs させる
### 4.1 So sánh cơ bản
| | てあげる | させる |
|--|---------|-------|
| Chủ thể hành động | **Tôi** làm | **Người khác** làm |
| Người hưởng lợi/thực hiện | Người khác hưởng lợi | Người khác thực hiện |
| Quyền kiểm soát | Tôi chủ động làm cho | Tôi điều khiển người khác |
| Sắc thái | Tôi làm hơi vì người khác | Tôi sai người khác làm |

### 4.2 Ví dụ phân biệt
| | てあげる | させる |
|--|---------|-------|
| Giải thích | 新人に説明して**あげた**。(Tôi tự giải thích cho nhân viên mới) | 新人に説明させた。(Tôi bắt/để nhân viên mới giải thích) |
| Giúp đỡ | 荷物を運んで**あげた**。(Tôi tự mang đồ cho) | 荷物を運ばせた。(Tôi sai ai đó mang đồ) |
| Chờ | 待って**あげた**。(Tôi chờ cho — tôi là người chờ) | 待たせた。(Tôi để ai đó chờ — họ là người chờ) |

### 4.3 Lỗi phổ biến
❌ 「お客様に資料を説明してあげました。」  
→ てあげる với khách nghe như "ban ơn" — sai về mặt kính ngữ  
✅ 「お客様に資料をご説明いたしました。」(いたす = 謙譲語 của する)  
✅ 「お客様に資料をご説明させていただきました。」(xin phép được giải thích)

---

## 5. させてもらえますか vs してもらえますか
### 5.1 Đây là bẫy hình thức gần giống nhau
| | させてもらえますか | してもらえますか |
|--|-----------------|---------------|
| Ai thực hiện hành động | **Tôi** | **Người được hỏi** |
| Ý nghĩa | Tôi xin phép được làm X | Tôi nhờ bạn làm X |
| Hướng lợi ích | Tôi làm, nhờ sự cho phép của bạn | Tôi nhận lợi ích từ hành động của bạn |
| Ví dụ | 確認させてもらえますか？= Tôi có thể kiểm tra không? | 確認してもらえますか？= Bạn có thể kiểm tra cho tôi không? |

### 5.2 Bảng so sánh đầy đủ dạng thể hỏi
| Cấu trúc | Ai làm | Ví dụ | Nghĩa |
|---------|-------|-------|-------|
| させてもらえますか | Tôi | 参加させてもらえますか？| Tôi có thể tham gia không? |
| させていただけますか | Tôi (kính ngữ) | 参加させていただけますか？| Tôi có thể tham dự không ạ? |
| してもらえますか | Người khác | 参加してもらえますか？| Bạn có thể tham gia không? |
| していただけますか | Người khác (kính ngữ) | ご参加いただけますか？| Anh/Chị có thể tham dự không ạ? |

### 5.3 Ví dụ trong tình huống thực tế
**Tình huống: Muốn xem tài liệu**

- 「資料を**見させてもらえますか**？」→ Tôi có thể xem tài liệu không?
- 「資料を**見ていただけますか**？」→ Anh/chị có thể xem tài liệu này (cho tôi) không?

**Tình huống: Muốn giải thích**

- 「ご説明**させていただけますでしょうか**。」→ Tôi có thể giải thích không ạ? (Tôi làm)
- 「ご説明**していただけますでしょうか**。」→ Anh/chị có thể giải thích không ạ? (Người khác làm)

---

## 6. いただく — Hai Nghĩa Dễ Nhầm
### 6.1 いただく với vật vs いただく với hành động
| | いただく + Vật | いただく + て形 |
|--|-------------|--------------|
| Cấu trúc | [Vật]をいただく | 動詞て形 + いただく |
| Nghĩa gốc | Nhận [vật] từ người trên | Nhận [hành động] từ người trên |
| Gốc của | 食べる/飲む/受け取る (謙譲語) | もらう (謙譲語) |
| Ví dụ | お茶をいただく (uống trà) | 説明していただく (được giải thích) |

### 6.2 Ví dụ phân biệt chi tiết
| Câu | Cấu trúc | Nghĩa |
|-----|---------|-------|
| お菓子をいただきました。| Vật + いただく | Tôi nhận/ăn bánh (謙譲語 của 食べる/もらう) |
| ご説明いただきました。| て形 + いただく | Tôi được nhận giải thích (từ người trên) |
| お時間をいただけますか？| Vật + いただく | Tôi có thể nhận thời gian của anh không? |
| ご確認いただけますか？| て形 + いただく | Anh có thể xác nhận không? (Tôi nhận hành động xác nhận) |

### 6.3 Điểm tinh tế: お時間をいただく
Câu 「お時間をいただけますか？」 dùng **vật (時間)** với **いただく** nhưng thực chất mang nghĩa:
- "Tôi có thể được nhận thời gian của bạn không?" = "Bạn có thể dành thời gian cho tôi không?"

Đây là cách nói lịch sự đặc biệt — **vật (時間) được nhân cách hóa như thứ bạn "nhận" từ người khác**.

---

## 7. Bảng Tổng Hợp Tất Cả Cặp Nhầm Lẫn
### 7.1 Tổng hợp 6 cấu trúc cốt lõi
| Cấu trúc | Ký hiệu | Ai làm | Ai nhận lợi | Sắc thái |
|---------|--------|-------|------------|---------|
| **Vてもらう** | A ← hành động ← B | B làm | **A** (tôi) nhận lợi | Biết ơn, tích cực |
| **Vられる** (受動) | A ← hành động ← B | B làm | Không ai nhận lợi rõ ràng | Trung tính đến tiêu cực |
| **Vさせてもらう** | A làm (do B cho phép) | **A** (tôi) làm | A hưởng lợi từ việc được phép | Tự nguyện, biết ơn |
| **Vさせられる** | A bị buộc làm (bởi B) | A làm (bị ép) | B đạt được mục đích | Bị ép, bất đắc dĩ |
| **Vてあげる** | A → làm → B | **A** (tôi) làm | B hưởng lợi | A chủ động làm cho B |
| **Vさせる** | A → sai → B → làm | B làm | A đạt mục đích | A điều khiển B |

### 7.2 Sơ đồ phân tích
**Ai thực hiện hành động?**

- **NGƯỜI KHÁC** thực hiện hành động:
  - TÔI nhận lợi ích → **てもらう / ていただく**
  - TÔI không nhận lợi / bị ảnh hưởng → **られる (受動)**

- **TÔI** thực hiện hành động:
  - Tự nguyện, được phép → **させてもらう / させていただく**
  - Bị ép buộc → **させられる**
  - Tự mình làm cho người khác → **てあげる / てさしあげる**

- **TÔI khiến người khác** thực hiện:
  - **させる** (sai khiến)

---

## 8. Phân Tích Tình Huống Phức Tạp
### 8.1 Tình huống: Cuộc họp kéo dài
| Câu | Phân tích | Ai là trung tâm |
|-----|----------|----------------|
| 長い会議に付き合って**もらった**。| Người khác ngồi họp cùng tôi → tôi nhận lợi | Tôi |
| 長い会議に付き合**わされた**。| Tôi bị bắt ngồi họp → bị ép | Tôi bị ép |
| 長い会議に**させてもらえた**。| Tôi được phép tham gia (xin được dự) | Tôi chủ động |
| 長い会議を**させた**。| Tôi khiến người khác phải họp dài | Tôi điều khiển |

### 8.2 Tình huống: Báo cáo với sếp
| Câu | Nghĩa | Đúng/Sai trong kinh doanh |
|-----|-------|--------------------------|
| 部長に報告させていただきます。| Tôi xin phép được báo cáo | ✅ Lịch sự, phù hợp |
| 部長に報告させられます。| Tôi bị bắt báo cáo | ⚠️ Đúng ngữ pháp nhưng nghe như phàn nàn |
| 部長に報告していただきます。| Sếp sẽ báo cáo cho tôi | ✅ Đúng nếu sếp là người báo cáo |
| 部長に報告してもらいます。| Sếp báo cáo cho tôi (informal) | ⚠️ Đúng nhưng thiếu kính ngữ |

### 8.3 Tình huống: Nhận tài liệu từ khách hàng
| Câu | Phân tích |
|-----|----------|
| お客様に資料を**いただいた**。| Tôi nhận tài liệu từ khách (tốt) |
| お客様から資料を**もらった**。| Tôi nhận từ khách (thiếu kính ngữ — không phù hợp) |
| お客様に資料を**くださった**。| Khách (chủ thể) đưa tài liệu cho tôi (tôn kính khách) |
| お客様に資料を**いただいた**。| Tôi nhận từ khách (kính ngữ — người cho là trên) |

---

## 9. Điểm Thi Quan Trọng — Cấp N1/BJT
### 9.1 Phân biệt させていただく vs させられる trong văn kinh doanh
**させていただく** — dùng trong:
- Thông báo hành động của mình với người ngoài
- Xin phép làm gì đó
- Văn email, điện thoại

**させられる** — KHÔNG dùng trong:
- Giao tiếp chính thức kinh doanh (trừ khi đang mô tả tình huống bị ép)
- Email kinh doanh với đối tác/khách hàng

### 9.2 Dạng câu hỏi BJT điển hình
**Dạng 1: Chọn từ đúng**
```
「来月から○○プロジェクトを（　）こととなりました。」
A. 担当させていただく  B. 担当させられる  C. 担当してもらう  D. 担当される
```
→ **A** (担当させていただく — thông báo chính thức, tự nguyện, lịch sự)

**Dạng 2: Tìm câu sai**
```
「毎週土曜日も出勤させていただいて、本当に大変です。」
→ Sai: させていただく = tự nguyện, không thể dùng khi phàn nàn
→ Đúng: 出勤させられて
```

**Dạng 3: Phân tích email**
```
「このたびは弊社までお越しいただき、誠にありがとうございます。」
→ いただき = nhận hành động (đến thăm) từ người ngoài → đúng
```

### 9.3 Checklist phân biệt nhanh
Khi gặp cấu trúc させ + X, hỏi:

1. X là **てもらう/ていただく**? → **Tôi làm + được phép** (させてもらう/させていただく)
2. X là **られる (受動)**? → **Tôi bị ép làm** (させられる)
3. Câu có **cảm xúc tích cực / lịch sự**? → させていただく
4. Câu có **cảm xúc tiêu cực / phàn nàn**? → させられる

---

## 10. Lỗi Điển Hình Phân Theo Cặp
| Cặp | Câu sai | Câu đúng | Lý do |
|-----|---------|---------|-------|
| てもらう vs られる | 部長に褒め**られて**うれしいです。| 部長に褒めて**いただいて**うれしい。| られる = trung tính; もらう/いただく = biết ơn |
| させてもらう vs させられる | 出張させて**もらって**大変でした。| 出張させ**られて**大変でした。| もらう = tự nguyện + biết ơn → không thể phàn nàn; られる = bị ép → mâu thuẫn sắc thái |
| させてもらえますか vs してもらえますか | 確認させてもらえますか＝相手に頼む? | させてもらえますか = TÔI làm | Nhầm chủ thể hành động |
| てあげる vs させる | 新人に説明して**あげた**（tôi giải thích）vs させた（nhân viên giải thích）| Xác định rõ ai là người thực hiện | Chủ thể hành động khác nhau |
| いただく (vật) vs (hành動) | ご意見いただいた? hay ご意見を聞かせていただいた? | Cả hai đúng, nghĩa khác nhau | いただく+て形 = nhận hành động |

---

## 11. Bài Tập Tổng Hợp Tự Kiểm Tra
**Chọn câu đúng về mặt ngữ nghĩa và sắc thái:**

1. [Email thông báo bản thân sẽ tham dự buổi họp]  
   A. 会議に参加させていただきます。  
   B. 会議に参加させられます。  
   → **A** (thông báo lịch sự, tự nguyện)

2. [Phàn nàn với bạn bè: mỗi tuần phải làm thêm giờ]  
   A. 毎週残業させていただいています。  
   B. 毎週残業させられています。  
   → **B** (phàn nàn, bị ép)

3. [Hỏi đồng nghiệp: "Bạn có thể kiểm tra tài liệu này cho tôi không?"]  
   A. 資料を確認させてもらえますか。  
   B. 資料を確認してもらえますか。  
   → **B** (nhờ người khác làm)

4. [Hỏi đồng nghiệp: "Tôi có thể kiểm tra tài liệu này không?"]  
   A. 資料を確認させてもらえますか。  
   B. 資料を確認してもらえますか。  
   → **A** (tôi là người làm, xin phép)

5. [Khách hàng giải thích tình huống và tôi thấy rất hữu ích]  
   A. お客様に詳しくご説明いただきました。  
   B. お客様に詳しくご説明されました。  
   → **A** (いただく = biết ơn; される = trung tính/tiêu cực)

6. [Tôi tự nguyện ở lại làm thêm và được phép làm vậy]  
   A. 残業させていただきました。  
   B. 残業させられました。  
   → **A** (tự nguyện + được phép)

7. [Phân tích: 「弊社田中に確認させていただきます」]  
   → Đúng hay Sai?  
   → **Đúng** (nhân viên phụ trách = Uchi sẽ xác nhận, cách nói lịch sự xin phép được làm)

8. [Phân tích: 「上司に長時間説明させていただいて、本当に疲れました」]  
   → Đúng hay Sai?  
   → **Sai** (させていただく = tự nguyện, không phù hợp với 疲れた)  
   → Sửa: 「上司に長時間説明させられて、本当に疲れました。」

---

*File lý thuyết này đi kèm với: **2.1.7_TongHop_SoSanh_BaiTap.json** (40 bài tập)*
', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

-- 3) Resource media — link module ↔ curriculum_node
DELETE FROM resource_media WHERE resource_type='module' AND resource_id=8011 AND media_type='curriculum_node' AND media_id='8016001';
INSERT INTO resource_media (resource_type, resource_id, media_type, media_id, in_table, order_index, context, is_active, created_at) VALUES ('module', 8011, 'curriculum_node', '8016001', 'curriculum_node', 0, '{"label": "Lý thuyết", "node_type": "markdown_book"}'::jsonb, TRUE, NOW());

DELETE FROM resource_media WHERE resource_type='module' AND resource_id=8012 AND media_type='curriculum_node' AND media_id='8016002';
INSERT INTO resource_media (resource_type, resource_id, media_type, media_id, in_table, order_index, context, is_active, created_at) VALUES ('module', 8012, 'curriculum_node', '8016002', 'curriculum_node', 0, '{"label": "Lý thuyết", "node_type": "markdown_book"}'::jsonb, TRUE, NOW());

DELETE FROM resource_media WHERE resource_type='module' AND resource_id=8013 AND media_type='curriculum_node' AND media_id='8016003';
INSERT INTO resource_media (resource_type, resource_id, media_type, media_id, in_table, order_index, context, is_active, created_at) VALUES ('module', 8013, 'curriculum_node', '8016003', 'curriculum_node', 0, '{"label": "Lý thuyết", "node_type": "markdown_book"}'::jsonb, TRUE, NOW());

DELETE FROM resource_media WHERE resource_type='module' AND resource_id=8014 AND media_type='curriculum_node' AND media_id='8016004';
INSERT INTO resource_media (resource_type, resource_id, media_type, media_id, in_table, order_index, context, is_active, created_at) VALUES ('module', 8014, 'curriculum_node', '8016004', 'curriculum_node', 0, '{"label": "Lý thuyết", "node_type": "markdown_book"}'::jsonb, TRUE, NOW());

DELETE FROM resource_media WHERE resource_type='module' AND resource_id=8015 AND media_type='curriculum_node' AND media_id='8016005';
INSERT INTO resource_media (resource_type, resource_id, media_type, media_id, in_table, order_index, context, is_active, created_at) VALUES ('module', 8015, 'curriculum_node', '8016005', 'curriculum_node', 0, '{"label": "Lý thuyết", "node_type": "markdown_book"}'::jsonb, TRUE, NOW());

COMMIT;
