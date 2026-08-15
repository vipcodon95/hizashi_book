# Phụ lục D — Bộ mẫu / テンプレート集

*Các mẫu sẵn để in từ các rule có trường `templates`.*

---

## Rule 33 — Memory bank — ghi nhớ chi tiết cụ thể với khách JP / 雑談メモバンク

### Thẻ Khách Hàng (Bộ nhớ cá nhân)

```markdown
# 顧客名: [名前] [役職]

## 基本情報 (Cố định)
- **会社**:
- **役職**:
- **出身地**: 県/市/区 — 特産・方言メモ
- **誕生月**: (nếu quy định công ty cho phép)
- **入社/赴任年**:

## 家族 (Chỉ cập nhật khi khách kể)
- **配偶者**: 職業・趣味 (chỉ khi khách chia sẻ)
- **子供**: 学年・部活・趣味 (chỉ khi khách chia sẻ)
- **ペット**:

## 嗜好
- **好物**:
- **苦手な食べ物**:
- **アレルギー**:
- **酒の好み**: 日本酒/焼酎/ワイン/ビール brand
- **タバコ**: 吸う/吸わない

## 趣味・関心
- **応援スポーツチーム**:
- **趣味**: ゴルフ/釣り/カラオケ/読書
- **好きな旅行先**:

## 会話ログ (Cập nhật liên tục)
| 日付 | 場所 | トピック | Thông tin mới | Không khí | Câu mở lần sau |
|------|------|---------|----------|------|----------------|
| YYYY-MM-DD | dinner @ XX | 出身地ライラック | 娘さん北大2年 | ấm áp | 3ヶ月後に留学進捗 |

## Nhắc việc theo dõi
- [ ] 2027-06-15 — 娘さんの留学進捗を聞く
- [ ] 2027-08-01 — お子様の野球部最後の夏応援メッセージ
- [ ] 2027-12-25 — 年末挨拶メール

## NG / Nhạy cảm
- 触れてはいけない話題 (vd: 政治・前職・家族トラブル) — trong phạm vi khách đã ngầm ý
```

### Ghi nhanh sau cuộc gặp

```markdown
**NGÀY**: YYYY-MM-DD
**NGƯỜI**: [tên + vai trò]
**NƠI**: [văn phòng / nhà hàng / sự kiện]
**CHỦ ĐỀ** (3-5 từ khóa):
**THÔNG TIN MỚI**:
**HỨA HẸN** (mình hứa làm gì):
**KHÔNG KHÍ** (ấm/bình thường/lạnh/căng thẳng):
**CÂU MỞ LẦN SAU** (3ヶ月後):
**VIỆC TIẾP THEO** (Salesforce / Notion):
```

### Danh sách kiểm tra 3 phút trước cuộc gặp

```markdown
## Trước cuộc gặp — 3 phút mở Notion/Salesforce

- [ ] **Tên + công ty + vai trò** — đúng không
- [ ] **Lần gần nhất gặp**: ngày + nơi + chủ đề đã nói
- [ ] **5 điểm**: 出身地 / 食 / Đội thể thao / Gia đình / 前回話題
- [ ] **Promise outstanding** — mình có hứa gửi gì chưa làm?
- [ ] **Tin nóng** — đội bóng chày/sumo của khách thắng/thua tuần này?
- [ ] **Câu mở** chuẩn bị — 1 câu mở thiên về 雑談 dựa thông tin cũ
- [ ] **Nhắc chủ đề NG** — chủ đề cần tránh
```

### Mẫu email theo dõi 3 tháng

```markdown
件名: [前回トピック] その後いかがでしょうか?

[役職] [姓]様

お世話になっております。
ティエンファットの[自分名]でございます。

[YYYY年M月]に[場所]でお会いさせていただきました際、
[具体的なトピック — 例: お嬢様のスウェーデン留学のご準備]についてお話を伺いました。

その後、いかがお進みでしょうか?

[Bridge to current — 例: 春の[出身地]、桜の季節になりましたね]。
[次回会いたい trigger — 例: 5月にそちら方面に出張の予定がございます]。

もしご都合よろしければ、ぜひ近況をお伺いしたく、
お茶でもご一緒できれば嬉しく存じます。

何卒よろしくお願いいたします。

[自分名]
ティエンファット
```

---

## Rule 50 — Memory bank — duy trì lâu dài / 関係維持の記憶バンク

### Mẫu 5
*Sau mỗi cuộc gặp / dinner. 5-7 facts mới + tagged với date.*

```markdown
# [Tên khách] — [社名]

## Tags
- 性別 / 年齢層:
- 出身: [Prefecture] / [区/市]
- 役職:
- 入社年: (nếu biết)

## 食 — Preferences
- 好き:
- 苦手: (vd: 生牡蠣)
- アレルギー:
- お気に入り酒: (vd: 獺祭, 麦焼酎)

## Thể thao / Sở thích
- 応援チーム: (vd: 阪神タイガース)
- 趣味: (vd: ゴルフ、登山)
- ホームコース / 山域:

## ‍‍‍ Family
- 配偶者:
- お子さん: (年齢 / 学年)
- お孫さん:
- 親の状況: (健在 / 介護中 — sensitive)

## Ngày quan trọng
- 誕生日: (NG hỏi nhưng nếu họ kể, ghi)
- 入社記念日:
- お子さん受験年:

## 過去の会話 — Conversation Log
- YYYY-MM-DD [場所]: [topic + chi tiết quan trọng]
  - 例: 2026-03-15 銀座ベルトラム: お嬢様の共通テスト来年1月、最近スランプ気味と心配。長女は東京の大学希望。
  - 例: 2026-04-10 Zoom: 桂米朝の落語ファン、特に『地獄八景』が好き。

## NG/Nhạy cảm
- 触れない話題: (vd: 元配偶者、亡くなった親、特定の歴史トピック)
- 過去の地雷: (mình lỡ chạm gì, ghi để không lặp)

## Việc cần làm
- [ ] [約束したこと、リンク送る、本紹介する etc]
- [ ] 次回会う時referenceする話題:

## Cập nhật lần cuối: YYYY-MM-DD
```

### Mẫu 6
*Trước mỗi họp / call / dinner. 3 phút xem lại CRM.*

```markdown
# Ôn 3 phút trước cuộc gặp — [Khách] — [Ngày]

## ⏱ 0:00-1:00 — Nhận diện khách
- [ ] Tên đầy đủ + 役職:
- [ ] 出身:
- [ ] 入社/lịch sử quan hệ với 弊社:

## ⏱ 1:00-2:00 — Ôn lại cuộc gặp trước
- [ ] 前回いつ・どこで会った?
- [ ] 前回 các chủ đề 雑談 đã nói:
- [ ] 前回 自分が約束したこと → 履行状況:
  - [ ] (tick nếu đã làm — nếu chưa, làm trước cuộc gặp này)

## ⏱ 2:00-3:00 — Chủ đề hôm nay
- [ ] 今日 mở topic gì để start ấm áp?
  - 例: 「お嬢様の受験、いかがですか?」
  - 例: 「広島カープのドラフト、見られました?」
- [ ] Mention được 1 fact mới (NHK / 47News / Tabelog) liên quan quê khách?
- [ ] 避けるべき topic 今日:

## SẴN SÀNG — bắt đầu

---

 **Note:** Đầu tiên thử 1 tuần — sau 30 ngày sẽ thấy người cấp cao có cảm nhận khác hẳn về mình.
```

---

## Rule 51 — Tự đánh giá + luyện tập / 振り返りと練習

### Mẫu 7
*15 phút sau bữa tối / cuộc gọi / 会食. Lưu vào hệ thống ghi chú cá nhân.*

```markdown
# Tự đánh giá — [YYYY-MM-DD] — [Tên buổi]

## Bối cảnh
- 場所:
- 参加者:
- Vai trò của mình: (chủ / gọi món / chỉ tham dự)
- 時間: 一次? 二次? 締め?
- Tổng thời gian: ~Xh

## 3 THẮNG — Cái mình làm ĐÚNG
1.
2.
3.

(Mẹo: phải cụ thể — câu mẫu nào, hành động nào, phản ứng khách ra sao)

## 3 LỠ — Cái mình LỠ
1. ...
   **TIẾP THEO:** [việc cụ thể cần làm]
2. ...
   **TIẾP THEO:** [...]
3. ...
   **TIẾP THEO:** [...]

## 3 THEO DÕI — Cần làm sau buổi này
- [ ] [Hứa gì với khách?] — đến khi nào?
- [ ] [Cập nhật bộ nhớ khách hàng] — xong chưa?
- [ ] [Chia sẻ nội bộ với nhóm mình?] — đến khi nào?

## Tự chấm điểm
- 全体: __/10
- Điểm cải thiện chính:
- 1 câu mẫu mới học hôm nay:

---

## Kiểu mẫu ghi nhận (để cập nhật vào sổ tay cá nhân)
- (vd: 'お酌 + nhãn chai hướng senior = gật đầu ấm' → xác nhận kiểu mẫu hoạt động)
```

### Mẫu 8
*Chiều Chủ Nhật. Chọn 1 rule sách 08 / tuần. 1 năm = 51 rules.*

```markdown
# Luyện tập tuần — Tuần [N] / [YYYY]

## Rule tuần này: [Rule N — tên tắt]
- Tham chiếu sách 08:

## ⏱ 30 phút luyện

### 0:00-5:00 — Chọn + đọc
- [ ] Mở rule.md
- [ ] Đọc lại 'Tâm lý JP' + 'Câu vàng sao chép'

### 5:00-10:00 — Xem hội thoại
- [ ] Đọc qua 3-4 tình huống
- [ ] Gạch dưới 1 câu mẫu mới chưa quen

### 10:00-20:00 — Luyện giọng
- [ ] Ghi âm giọng (điện thoại) mình thử nói 3 tình huống với nhịp JP
- [ ] Nghe lại, ghi 1 từ phát âm yếu

### 20:00-25:00 — So sánh + sửa
- [ ] (Nếu có âm TTS) so sánh với mẫu gốc
- [ ] Chọn 1 câu lặp 5 lần đúng ngữ điệu

### 25:00-30:00 — Kế hoạch áp dụng
- [ ] Tuần này, câu mẫu nào áp dụng trong cuộc gọi thực?
- [ ] Nhắc mình bằng lịch / ghi chú dán

## Hoàn thành
- [ ] Đã lưu phiếu này
- [ ] Đã đặt nhắc nhở cho rule tuần tới

---

## Theo dõi tiến độ
- Tuần đã hoàn thành: [N] / 51
- Rule đã thuần thục (áp dụng 3 lần thực tế OK): [danh sách]
- Rule còn yếu: [danh sách]
```

---

## Rule 10 — Quê quán — đào sâu / 出身地の話題

### Mẫu 9

```markdown

```

---
