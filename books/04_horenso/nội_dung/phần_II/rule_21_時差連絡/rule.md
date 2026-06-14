# Rule 21 — Liên lạc cross-timezone (VN-JP) / 海外チームへの時差連絡

> **Luận điểm.** VN-JP cách 2 giờ (mùa hè), 4 giờ (Hokkaido). Khi chia sẻ thông tin với team Nhật, không nói "明日10時" mà nói "**10:00 JST (08:00 ICT)**". Quy tắc: **Luôn ghi giờ UTC/JST kèm, ưu tiên async, bàn giao cuối ngày**.
>
> 海外チームへの時差連絡3原則：①時刻は必ず UTC または『JST (ICT)』併記、②async 前提（即返信を期待しない）、③ daily handoff message（VN PM 18時 → JP AM 9時の引き継ぎ）。
>
> **Liên quan:** rule 14 (broadcast), rule 16 (Slack), rule 20 (出張).

---

## Bối cảnh / 場面

Em Dũng cộng tác với anh Tanaka PMO ở Hakuō. Lần đầu Dũng dùng "明日" mơ hồ và mong anh Tanaka phản hồi trong 5 phút. Lần 2 áp dụng mốc giờ UTC + async + bàn giao cuối ngày (daily handoff).

---

## ❌ Hội thoại XẤU — không có mốc UTC + đòi phản hồi đồng bộ ngay

*VN 16h thứ Hai, Slack · JP 18h, đã offline · VN 17h · JP 翌朝 9h*

| Vai | Câu |
|---------|-----|
| **ズン** | 「田中さん、明日10時から<ruby>会議<rt>かいぎ</rt></ruby>できますか？」 |
|  | *Anh Tanaka, mai 10h họp được không ạ?* |
| **田中PMO** | (không reply) |
|  | *(không phản hồi)* |
| **ズン** | 「田中さん？<ruby>返信<rt>へんしん</rt></ruby>お待ちしています。」 |
|  | *Anh Tanaka? Em đợi anh phản hồi ạ.* |
| **田中PMO** | 「ズンさん、おはようございます。『**明日10時**』が JP の明日 (火 10時 JST) なのか、VN の明日 (月翌日 10時 ICT = 火 12時 JST) なのか分からないです…」 |
|  | *Dũng, chào buổi sáng. 'Mai 10h' là mai theo JP (10h JST thứ Ba) hay theo VN (10h ICT của ngày sau hôm thứ Hai = 12h JST thứ Ba) tôi không biết...* |

**Vì sao xấu:** L1 「明日」 mơ hồ vì 2 nước cùng đêm khác. L3 sai kỳ vọng — anh Tanaka đã offline. L4 lại mơ hồ thêm: "10時" của VN hay JP?

---

## ✅ Hội thoại TỐT — UTC anchor + async + handoff

| Vai | Câu |
|---------|-----|
| **L1** | **ズン** *(VN 16h thứ Hai, Slack)* | 「田中さん、お疲れ様です。<ruby>下記<rt>かき</rt></ruby>の<ruby>時間帯<rt>じかんたい</rt></ruby>で会議はいかがでしょうか？  
  - **2026/4/22 (火) 10:00-11:00 JST (= 08:00-09:00 ICT)**【1】  
  - **2026/4/22 (火) 14:00-15:00 JST (= 12:00-13:00 ICT)**  
  ご<ruby>都合<rt>つごう</rt></ruby>が合う方を、明日の朝 (JST) までにお<ruby>返事<rt>へんじ</rt></ruby>いただければ<ruby>幸<rt>さいわ</rt></ruby>いです【2】。」 |
|  |  | *Anh Tanaka, em chào anh ạ. Khung giờ dưới đây họp được không ạ? 22/4/2026 (T3) 10:00-11:00 JST (= 08:00-09:00 ICT), hoặc 22/4/2026 (T3) 14:00-15:00 JST (= 12:00-13:00 ICT). Phiền anh chọn giúp em và phản hồi trước sáng mai (JST) ạ.* |
| **L2** | **田中PMO** *(JP 翌朝 9:30)* | 「おはようございます。10:00 JST で<ruby>確定<rt>かくてい</rt></ruby>でお願いします。」 |
|  |  | *Chào buổi sáng. Chốt 10:00 JST giúp tôi nhé.* |
| **L3** | **ズン** *(VN 18h thứ Hai, EOD handoff Slack #phase3)* | 「**【EOD Handoff VN→JP】**【3】  
  - Done today: 〇〇  
  - Pending JP review: 〇〇 (PR link)  
  - JP team が朝確認: ① 〇〇 ② 〇〇  
  - <ruby>緊急時<rt>きんきゅうじ</rt></ruby>: トゥアン (+84-...) または ズン (24h reachable)」 |
|  |  | *[EOD Handoff VN→JP] Done today: sửa API xong / Chờ JP review: PR #234 / JP team sáng check: ① spec v3 section 3, ② link video demo / Khẩn: anh Tuấn (+84-...) hoặc Dũng (24h reachable).* |
| **L4** | **田中PMO** *(JP 9:00 翌朝)* | 「Handoff <ruby>受領<rt>じゅりょう</rt></ruby>。① と ② を朝のうちに review します。」 |
|  |  | *Tôi đã nhận handoff. ① và ② tôi review trong sáng nay.* |

📝 **Ghi chú:**
- 【1】**「JST (= 〇 ICT)」** — luôn ghi cả 2 timezone. Tránh "明日" / "明後日" mơ hồ.
- 【2】**「明日の朝 (JST) までに」** — kỳ vọng kiểu async: "trước khi nào" chứ không phải "ngay lập tức".
- 【3】**「EOD Handoff」** — VN end-of-day (18h ICT = 20h JST) là start-of-day JP hôm sau (9h JST). Bàn giao 1 message — JP team sáng đọc là biết tình hình.

---

## Time format chuẩn cross-timezone

✅ **Đúng:**
- 「2026/4/22 (火) 10:00 JST (= 08:00 ICT)」
- 「明日朝 9:00 JST」
- 「来週月曜午後 (JST 14時)」

❌ **Sai:**
- 「明日10時」 (明日 của ai? 10 giờ của ai?)
- 「夕方」 (5pm VN ≠ 5pm JP)
- 「お昼」

---

## Daily handoff routine

```
VN 18:00 ICT (= JP 20:00 JST) — VN team posts EOD handoff
  ↓
JP 09:00 JST (= VN 07:00 ICT) — JP team reads handoff, posts SOD reply
  ↓
JP 18:00 JST (= VN 16:00 ICT) — JP team posts EOD handoff
  ↓
VN 09:00 ICT (= JP 11:00 JST) — VN team reads
```

---

## 🎯 Câu chốt

> **「JST (ICT) <ruby>併記<rt>へいき</rt></ruby> / async <ruby>前提<rt>ぜんてい</rt></ruby> / EOD Handoff message」 = cross-timezone 3 trụ cột。**

---

## ⚠ Tránh

- 「明日」「来週」「夕方」 — giờ tương đối, mơ hồ khi khác múi giờ.
- Mong đối phương phản hồi Slack trong 5 phút khi họ đã hết giờ làm (EOD).
- Schedule họp 8h JST (= 6h ICT) — VN chưa làm việc.
- Bỏ daily handoff — JP team sáng dậy không biết VN team đã làm gì 12 giờ qua.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 時差 | じさ | Múi giờ |
| 海外チーム | かいがいチーム | Team nước ngoài |
| 引き継ぎ | ひきつぎ | Bàn giao |
| 併記 | へいき | Ghi cả hai |
| 終業時 | しゅうぎょうじ | End of day |
| 始業時 | しぎょうじ | Start of day |
| 同期的 | どうきてき | Sync (đồng bộ) |
| 非同期 | ひどうき | Async |
