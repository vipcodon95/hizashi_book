# Rule 14 — Cấu trúc liên lạc toàn nhóm / 全員に届く連絡

> **Luận điểm.** Khi gửi thông tin cho cả team (thông báo đại trà), người Việt thường mặc định "ai cũng đọc hết". Sai. Thực tế: 30% chỉ lướt tiêu đề, 50% đọc 3 dòng đầu, 20% đọc kỹ. Cấu trúc: **Tóm tắt ngắn (1-2 dòng) → Chi tiết → Việc cần làm rõ ràng cho từng vai trò**.
>
> 全員向けの連絡は **概要 → Chi tiết → Việc cần làm theo người phụ trách** で構成。subject line だけ読む人、最初3行だけ読む人を想定する。
>
> **Liên quan:** rule 13 (即時性), rule 16 (Slack), rule 21 (lệch múi giờ).

---

## Bối cảnh / 場面

Sau họp với khách, em Dũng cần thông báo 5 quyết định quan trọng cho nhóm Phase 2 (8 người). Lần đầu Dũng viết 1 mail dài 1500 chữ → có 2 người làm sai vì bỏ sót việc của mình.

---

## Hội thoại XẤU — văn xuôi 1500 chữ

*mail to team@, "今日の打ち合わせ報告" · 2 ngày sau*

| Vai | Câu |
|---------|-----|
| **ズン** | Mail dạng văn xuôi 1500 chữ kể lại buổi họp 90 phút. Việc cần làm lẫn trong văn. <br/>*Mail dạng văn xuôi 1500 chữ kể lại buổi họp 90 phút. Việc cần làm nằm rải rác trong văn.* |
| **ハイ** | 「ズン、デプロイの件、私の<ruby>担当<rt>たんとう</rt></ruby>だったの？メールに書いてあった？」 <br/>*Dũng, vụ deploy là việc của anh hả? Mail có viết không?* |
| **ズン** | 「あ、3パラグラフ目に書きました…」 <br/>*À, em viết ở đoạn 3 ạ...* |
| **ハイ** | 「3パラグラフ目までに3分かかる。**自分の action だけ<ruby>抜<rt>ぬ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>せる<ruby>構造<rt>こうぞう</rt></ruby>**にしてくれないと miss する。」 <br/>*Đến đoạn 3 mất 3 phút. Phải có cấu trúc tách được việc cần làm của mình thì mới không bị sót.* |

**Vì sao xấu:** Việc cần làm lẫn trong văn xuôi → người đọc phải lướt 1500 chữ để tìm "việc của tôi". Hải bị sót → triển khai trễ.

---

## Hội thoại TỐT — Tóm tắt ngắn + Việc theo người phụ trách

*mail subject: "【決定事項5件】4/22 松本様打ち合わせ - Phase 3 移行" · reply 30 giây sau*

| Vai | Câu |
|---------|-----|
| **ズン** | (Phần thân mail theo mẫu — xem khung mẫu bên dưới) <br/>*(Phần thân mail soạn theo mẫu — xem khung mẫu bên dưới)* |
| **ハイ** | 「ズン、自分の<ruby>担当<rt>たんとう</rt></ruby>2件 (デプロイ<ruby>準備<rt>じゅんび</rt></ruby>・CI<ruby>設定<rt>せってい</rt></ruby>) <ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>期日<rt>きじつ</rt></ruby> 4/26 までに<ruby>完了<rt>かんりょう</rt></ruby>します。」 <br/>*Dũng, anh xem 2 việc của anh (chuẩn bị triển khai, cài đặt CI) rồi. Anh sẽ xong trước 26/4.* |
| **トゥアン** | 「私の担当3件、<ruby>了解<rt>りょうかい</rt></ruby>。<ruby>優先順位<rt>ゆうせんじゅんい</rt></ruby>は (1)→(3) で<ruby>進<rt>すす</rt></ruby>めます。」 <br/>*3 việc của anh OK. Anh làm theo thứ tự (1) → (3).* |
| **ズン** | 「了解。**4/24 <ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>進捗確認<rt>しんちょくかくにん</rt></ruby>**します。」 <br/>*OK ạ. Em sẽ xác nhận tiến độ trong buổi họp sáng (朝礼) 24/4 ạ.* |

 **Ghi chú:**
- Dòng tiêu đề đã có 「決定事項5件」 — người chưa mở mail cũng nắm được mức ưu tiên.
- Tóm tắt ngắn (3 dòng đầu): tóm 5 quyết định.
- Việc cần làm chia theo **người phụ trách** với hạn chót rõ — không chia theo chủ đề.
- Cuối: hẹn sẵn buổi rà tiến độ tiếp theo (「4/24 朝礼で」).

---

## Cấu trúc thông báo toàn nhóm chuẩn

```
Tiêu đề: 【〇〇〇】〇〇 - 〇〇 (nhãn rõ ràng)

[Tóm tắt ngắn]
本日の決定: ① 〇〇 ② 〇〇 ③ 〇〇

[Detail]
1. 〇〇 → 〇〇に決定（理由：〇〇）
2. 〇〇 → ...

[Việc cần làm theo người phụ trách]
@トゥアン:
  - 〇〇（期日 〇/〇）
  - 〇〇（期日 〇/〇）
@ハイ:
  - 〇〇（期日 〇/〇）
@リン:
  - 〇〇（期日 〇/〇）

[Lần rà tiến độ tiếp theo]
〇/〇 朝礼で進捗確認
```

---

## Câu chốt

> **「Tóm tắt ngắn → Chi tiết → Việc cần làm theo người phụ trách → Lần rà tiến độ tiếp theo」**
>
> *Mỗi dòng có người phụ trách. Không có "誰か" (ai đó).*

---

## Tránh

- 「皆さんで対応お願いします」 — không có người phụ trách = không ai làm.
- Việc cần làm lẫn trong văn xuôi — phải tách phần riêng có @người phụ trách.
- Subject mơ hồ "今日の打ち合わせ" — phải có gợi ý mức ưu tiên + chủ đề.
- Không có buổi rà tiến độ tiếp theo — sếp/lead không biết khi nào nắm lại tình hình.

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|-------|-------|
| 全員 | ぜんいん | TOÀN VIÊN | Toàn thể |
| 決定事項 | けっていじこう | QUYẾT ĐỊNH SỰ HẠNG | Hạng mục đã quyết |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Người phụ trách |
| 期日 | きじつ | KỲ NHẬT | Hạn chót |
| 優先順位 | ゆうせんじゅんい | ƯU TIÊN THUẬN VỊ | Thứ tự ưu tiên |
| 進捗確認 | しんちょくかくにん | TIẾN TIỆP XÁC NHẬN | Xác nhận tiến độ |
| 抜き出す | ぬきだす | BẠT | Trích ra |
| 構造 | こうぞう | CẤU TẠO | Cấu trúc |
