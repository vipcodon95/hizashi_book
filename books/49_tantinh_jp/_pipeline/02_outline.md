# Outline v2 — Sách Tán Tỉnh Bằng Tiếng Nhật

> Stage 2 — main Claude (rewrite per user direction 2026-06-27)
> Cấu trúc MỚI: **Sách CHUNG dạy theo KỸ NĂNG**, không phải narrative arc theo thời gian.

## Quyết định cấu trúc

Anh chốt:
1. Không phải narrative arc "tháng 1 → tháng 11 → 告白 Aoi". Thay vào là **sách tuyển tập kỹ năng**.
2. Cast: **5 cô cố định** (Yui/Mika/Saki/Rina/Aoi), mỗi cô xuất hiện ở nhiều chương kỹ năng. Mỗi chương = 1 kỹ năng × 4-5 mini-scene × cast khác nhau cho từng scene.
3. **15-18 chương**, chi tiết theo setting.

## Constraints kế thừa

- KHÔNG nội tâm tiếng Việt
- KHÔNG cảnh VN giữa 2 người Việt
- KHÔNG furigana
- Cột bảng = `Vai`
- Format: `<câu JP><br>*(dịch VN)*`
- Stage direction ≤ 5 từ

## Cast

| Nhân vật | Tuổi | Setting hay gặp | Type | Tone tiếng Nhật |
|---|---|---|---|---|
| **Cường (クオン)** | 26 | IT dev Shibuya, sống Nakano, 3 năm Nhật | Tự trào duyên dáng | Keigo nền + chuyển タメ口 mượt |
| **結衣 Yui** | 24 | Pairs / Nakano / OL kế toán | Pure, mê パン | Keigo dịu, dễ thẹn |
| **美香 Mika** | 26 | 合コン / IG / freelance designer | Gal lite, push-pull đỉnh | Hỗn hợp keigo + slang |
| **沙希 Saki** | 27 | Cty (UI design), Ghibli mania | OL trầm, kính mèo | Keigo công sở chuẩn |
| **莉奈 Rina** | 29 | 立ち飲み / hospital, sake mania | Y tá độc lập, sake | Business-casual, lạnh đầu |
| **葵 Aoi** | 22 | 早稲田 sinh viên 文学部 | Quiet, witty | Keigo nhẹ, văn chương |

Bonus (cameo 1-2 lần):
- **花 Hana** (28, café staff Shimokita) — cho scene quán café 1-shot
- **メイ Mei** (25, kohai cty) — cho scene 先輩-後輩 khó xử

## 16 chương

| # | Folder | Title (VN) | Title (JP) | Skill chính | Cast scene 1 | Cast scene 2 | Cast scene 3 | Cast scene 4 | Cast scene 5 |
|---|---|---|---|---|---|---|---|---|---|
| 1 | `t01_app_first_message` | First message trên app hẹn hò | アプリの初メッセージ | Mở câu chuyện trên Pairs/Tapple/Omiai/with | Yui (Pairs) | Mika (Tapple) | Rina (with) | Aoi (Omiai) | — |
| 2 | `t02_irl_makequen` | Làm quen ngoài đời (合コン/quán/sự kiện) | リアルでの出会い | Mở câu chuyện offline | Mika (合コン) | Rina (立ち飲み) | Aoi (sự kiện văn hoá) | Hana (café) | Saki (cty intro) |
| 3 | `t03_smalltalk_weather` | Smalltalk thời tiết · mùa · ngày trong tuần | 天気・季節・曜日 | Khởi động chat không nhạt | Yui | Mika | Saki | Rina | Aoi |
| 4 | `t04_smalltalk_hobby` | Smalltalk hobby · âm nhạc · phim · sách | 趣味の話 | Đào sâu sở thích | Yui (パン) | Mika (cà phê specialty) | Saki (Ghibli) | Rina (日本酒) | Aoi (văn học) |
| 5 | `t05_smalltalk_work` | Smalltalk công việc · cuối tuần · stress | 仕事と週末 | Chuyện công việc không khô | Saki (cùng cty) | Yui (kế toán) | Rina (y tá ER) | Mei (kohai) | Mika (freelance) |
| 6 | `t06_compliment` | Khen không sến | 上手な褒め方 | Compliment tinh tế (style/giọng nói/chọn quán) | Mika (style) | Aoi (giọng nói) | Yui (chọn quán) | Rina (chọn rượu) | Saki (làm việc) |
| 7 | `t07_chat_pushpull` | Đẩy-kéo qua chat (LINE) | LINEでの駆け引き | Push-pull: rep chậm có chủ đích, tự trào, lệch nhịp | Mika (3 ngày 既読スルー) | Aoi (chậm rep văn chương) | Rina (lạnh chuyên nghiệp) | Yui (warm + bashful) | — |
| 8 | `t08_invite_date1` | Rủ đi date lần 1 | デートに誘う | Cách invite từ chat → IRL | Yui (café パン) | Mika (gallery) | Saki (event ngoài cty) | Aoi (museum) | Rina (sake tasting) |
| 9 | `t09_date_cafe` | Date café — order, smalltalk, exit | カフェデート | Date café 1-on-1 | Yui (Nakano) | Aoi (Shimokita) | Saki (Daikanyama) | Hana (Aoyama) | — |
| 10 | `t10_date_izakaya` | Date izakaya · 立ち飲み | 居酒屋デート | Date có rượu | Mika (Shibuya) | Rina (Yurakucho 立ち飲み) | Saki (gần cty) | Aoi (Shinjuku Kabukicho) | — |
| 11 | `t11_date_outdoor` | Date công viên · museum · 水族館 | お出かけデート | Date ban ngày ngoài trời / culture | Aoi (Shinjuku Gyoen) | Yui (Inokashira) | Saki (森美術館) | Mika (Sumida 川 walk) | — |
| 12 | `t12_handle_kidoku` | Khi bị 既読スルー / rep chậm | 既読スルー対応 | Xử lý lúc thua | Rina (lạnh dần) | Mika (test push-pull) | Yui (busy → quay lại) | Aoi (gia đình can) | — |
| 13 | `t13_keigo_to_tameguchi` | Chuyển 敬語 → タメ口 | 敬語からタメ口へ | Đề nghị chuyển cách xưng | Saki (sempai) | Aoi (younger) | Mika (cùng tuổi) | Rina (lớn hơn) | — |
| 14 | `t14_flirt_signals` | Tín hiệu thích · skinship verbal | 好意のサイン | Đọc tín hiệu + tăng tone | Mika (chủ động) | Yui (e thẹn) | Aoi (văn chương ẩn ý) | Rina (thẳng business) | — |
| 15 | `t15_kokuhaku` | 告白 — chính thức xin hẹn hò | 告白する | Câu 告白 chuẩn + biến thể | Aoi (success) | Yui (từ chối khéo) | Mika (chuyển bạn) | Saki (社内恋愛 refuse) | — |
| 16 | `t16_after_tsukiau` | Sau khi 付き合う — thoả thuận đầu | 付き合った後 | Pet name, tần suất gặp, IG public | Aoi | — | — | — | — |
| 17 | `t17_glossary` | Phụ lục — Từ điển văn hoá hẹn hò | 付録 | 60 thuật ngữ + 200 câu chìa khoá | — | — | — | — | — |

→ **17 modules** (16 chương kỹ năng + 1 glossary).

## Cấu trúc mỗi chương

```markdown
# Sách Tán Tỉnh Bằng Tiếng Nhật · T[N]. [Title VN] ([Title JP])

> **Mục tiêu:** [1 dòng — kỹ năng gì, áp dụng tình huống nào]

---

## Bối cảnh chương

[≤4 dòng VN. Giải thích chương dạy KỸ NĂNG gì, sẽ minh hoạ qua 4-5 mini-scene với cast khác nhau.]

---

## Scene 1 · [Cast] · [Setting + giờ]

[1-2 dòng VN setup ngắn về scene cụ thể, in nghiêng]

| Vai | Lời thoại |
|---|---|
| Cường | [JP]<br>*([VN])* |
| Yui | [JP]<br>*([VN])* |

(6-12 lượt thoại)

---

## Scene 2 · [Cast khác] · [Setting khác]

...

(4-5 scene/chương)

---

## Mẫu câu cốt lõi chương

| Mẫu câu JP | Cách đọc | Nghĩa VN | Khi dùng |
|---|---|---|---|
| 〇〇さんのプロフィール拝見しました | — | Anh đã đọc profile em | First message |
| ... | ... | ... | ... |

(8-12 mẫu câu chốt mỗi chương)

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa VN |
|---|---|---|---|
| ... | ... | ... | ... |

(20-30 từ)
```

## Số scene / chương (ước tính)

| # | Chương | Scene |
|---|---|---|
| 1 | First message app | 4 |
| 2 | Làm quen offline | 5 |
| 3 | Smalltalk weather | 5 |
| 4 | Smalltalk hobby | 5 |
| 5 | Smalltalk work | 5 |
| 6 | Compliment | 5 |
| 7 | Push-pull chat | 4 |
| 8 | Rủ date 1 | 5 |
| 9 | Date café | 4 |
| 10 | Date izakaya | 4 |
| 11 | Date outdoor | 4 |
| 12 | Bị 既読スルー | 4 |
| 13 | 敬語→タメ口 | 4 |
| 14 | Tín hiệu / flirt | 4 |
| 15 | 告白 | 4 |
| 16 | Sau 付き合う | 1 (1 cô Aoi — vì đây là end-state với 1 người) |
| **Tổng** | | **~67 scene** |

## So với outline v1

- v1: 11 chương narrative arc Yui→Mika→Saki→Rina→Aoi theo thời gian
- v2: 16 chương kỹ năng độc lập, cast 5 cô xuất hiện ngang nhau ở nhiều chương
- v2 dạy nhiều mẫu câu hơn × density cao hơn, không bị giới hạn bởi "phải chia cô theo chapter"
- Chương 16 (sau 付き合う) cố tình chỉ 1 cô = Aoi, vì đây là 1-on-1 state — không thể demo với nhiều cô
- 告白 (Ch15) có 4 case: thành công, từ chối khéo, chuyển friend zone, từ chối vì 社内恋愛 — dạy đủ outcome

## Tham khảo & ràng buộc nội dung

- T07 (push-pull) và T12 (xử 既読スルー) phải khác nhau:
  - T07 = push-pull khi quan hệ còn tiến triển
  - T12 = xử lý khi bị thua / cô không hứng thú
- T13 (タメ口) là kỹ năng riêng vì chuyển xưng hô là moment quyết định — phải có cả case bị từ chối (vẫn giữ keigo)
- T15 (告白) phải có scene Cường BỊ từ chối — sách tán tỉnh không thể chỉ vẽ thành công
- T16 (sau 付き合う): nội dung dừng ở "thoả thuận tuần đầu" (tần suất gặp, gọi tên thế nào, public IG hay chưa). KHÔNG sang chuyện gia đình.
