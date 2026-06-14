# Rule 38 — Self-diagnostic Hou-Ren-Sou / 自己診断

> **Luận điểm.** Hou-Ren-Sou là **kỹ năng**, không phải nhân cách — phải **đo định kỳ** mới biết tiến hay lùi. Checklist tự chẩn đoán 15 mục, chia 3 nhóm × 5 mục: **(1) 報告 5 mục** (kết luận trước, fact/opinion, kịp thời, deadline, cấu trúc), **(2) 連絡 5 mục** (即時, chọn đúng kênh, đúng đối tượng, gửi chung vs DM, EOD log), **(3) 相談 5 mục** (準備, 仮説, 複数案, 客先 tone, DR化). Chấm tự A/B/C/D mỗi cuối tháng. C-D dưới 3 = OK; ≥ 3 = kích hoạt buổi 1-on-1 với mentor + action plan.
>
> 自己診断15項目: 報告5・連絡5・相談5。月末A〜D評価、C-D が3以上で mentor 1-on-1。3ヶ月毎に推移をグラフ化。
>
> **Liên quan:** rule 12 (報告漏れ防止), rule 39 (チーム文化), rule 40 (振り返り).

---

## Bối cảnh / 場面

Cuối tháng 4. Em Dũng tự chấm mình lần đầu. Lần 1 toàn A "tốt cả thôi" (self-bias). Lần 2 chị Hương review → đánh giá khách quan + action plan.

---

## ❌ Hội thoại XẤU — toàn A self-bias

*月末1-on-1*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、4月の<ruby>自己診断<rt>じこしんだん</rt></ruby>やりました。15<ruby>項目<rt>こうもく</rt></ruby>中、A<ruby>評価<rt>ひょうか</rt></ruby>12個、B評価3個、C-D ゼロです。」 |
|  | *Chị Hương, em đã tự chấm tháng 4. 15 mục: A 12, B 3, C-D 0 ạ.* |
| **フオン** | 「うん、見せて。」 *(đọc lướt)* 「ズン、③タイムリー報告 A?今月 Phase 2 <ruby>障害<rt>しょうがい</rt></ruby>で<ruby>第一報<rt>だいいっぽう</rt></ruby>を1時間遅らせたよね。⑦客先 tone は B?<ruby>大垣<rt>おおがき</rt></ruby>様クレームで『そんなはずない』と言ったの忘れた?C-Dゼロは self-bias ね。」 |
|  | *Ừ, đưa chị xem. Dũng, [3] Báo cáo kịp thời mà A? Phase 2 sự cố tháng này em chậm báo cáo đầu 1 giờ đó. [7] Giọng với khách B? Lúc anh Ōgaki phàn nàn em nói 「そんなはずない」 (không thể nào) quên rồi à? C-D zero là self-bias rồi.* |
| **ズン** | 「あ…」 |
|  | *À...* |
| **フオン** | 「**自己診断は厳しめが正解**。A 多すぎる時は recalibration が必要。1ヶ月の Slack <ruby>履歴<rt>りれき</rt></ruby>と<ruby>照合<rt>しょうごう</rt></ruby>してやり直し。」 |
|  | *Tự chấm phải khắt khe mới đúng. A nhiều quá là phải hiệu chỉnh lại. Em đối chiếu Slack history 1 tháng rồi làm lại.* |

**Vì sao xấu:** L1 self-bias toàn A — không nhớ những lúc sót. L4 chỉ ra: phải đối chiếu với bằng chứng (Slack history, luồng trao đổi với khách, DR), không chấm theo cảm giác.

---

## ✅ Hội thoại TỐT — chấm khách quan + action plan

*再診断後*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、<ruby>再診断<rt>さいしんだん</rt></ruby>しました。Slack 履歴と DR を照合した<ruby>結果<rt>けっか</rt></ruby>: **A 7個、B 5個、C 3個、D ゼロ**【1】です。」 |
|  | *Chị Hương, em đã chấm lại. Đối chiếu Slack history + DR: A 7, B 5, C 3, D 0 ạ.* |
| **ズン** | 「**C評価 3 件**: ③ タイムリー報告 (Phase 2 障害で第一報1時間<ruby>遅延<rt>ちえん</rt></ruby>)、⑦ 客先 tone (大垣様クレーム時の defensive)、⑪ <ruby>複数案<rt>ふくすうあん</rt></ruby><ruby>持参<rt>じさん</rt></ruby> (Redis 追加で1案<ruby>提案<rt>ていあん</rt></ruby>で<ruby>叱<rt>しか</rt></ruby>られた件)。【2】」 |
|  | *C 3 cái: [3] Báo cáo kịp thời (Phase 2 sự cố em chậm 1 giờ) / [7] Giọng với khách (phòng thủ lúc anh Ōgaki phàn nàn) / [11] Mang nhiều phương án (vụ Redis em đề xuất 1 option bị anh Tuấn nhắc).* |
| **フオン** | 「正直な評価ね。Action plan は?」 |
|  | *Đánh giá thật rồi. Action plan thế nào?* |
| **ズン** | 「**Action plan**: **③ → rule 31 SLA を Slack pinned で<ruby>常時可視<rt>じょうじかし</rt></ruby>**, **⑦ → rule 32 4ステップを<ruby>暗記<rt>あんき</rt></ruby>、<ruby>機械的<rt>きかいてき</rt></ruby>に運用**, **⑪ → 相談前に最低3案 + matrix を<ruby>必須化<rt>ひっすか</rt></ruby>**。5月末に再診断、C 1 件以下を<ruby>目標<rt>もくひょう</rt></ruby>とします【3】。」 |
|  | *Action plan: [3] → pin SLA rule 31 lên Slack để luôn nhìn thấy / [7] → thuộc 4 bước rule 32, áp dụng cơ học / [11] → bắt buộc 3 option + matrix trước khi tham vấn. Cuối tháng 5 chấm lại, target C ≤1 ạ.* |
| **フオン** | 「素晴らしい。再診断は5月最終金曜、Decision Register に登録しておいて。」 |
|  | *Tuyệt. Diagnostic lại thứ Sáu cuối tháng 5, em log vào Decision Register nhé.* |

📝 **Ghi chú:**
- 【1】**「Slack 履歴と DR を照合した結果」** — chấm dựa trên bằng chứng, không cảm giác.
- 【2】**C 評価 3 件 nêu cụ thể từng trường hợp** — không chung chung. Có thể hành động.
- 【3】**Action plan với target số (C 1 件以下) + deadline (5月末)** — đo lường được.

---

## 🎯 Câu chốt

> **「自己診断は月末・15項目・evidence ベース。A 多すぎる時は recalibration。C-D は具体的 case + Action plan + 次回 target が必須。」**

---

## ⚠ Tránh

- 自己診断 mà chỉ nhớ chuyện tốt → thiên vị bản thân (self-bias).
- C-D 0 mà không hiệu chỉnh lại — sếp sẽ nghi ngờ.
- Action plan 「次から気をつけます」 — không đo lường được.
- Bỏ diagnostic 2 tháng trở lên → không có mốc nền để theo dõi tiến bộ.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 自己診断 | じこしんだん | Self-diagnostic |
| 評価 | ひょうか | Đánh giá |
| 客観 | きゃっかん | Khách quan |
| 主観 | しゅかん | Chủ quan |
| 履歴 | りれき | Lịch sử |
| 照合 | しょうごう | Đối chiếu |
| 改善計画 | かいぜんけいかく | Kế hoạch cải thiện |
| 目標 | もくひょう | Mục tiêu |
| 推移 | すいい | Diễn biến / xu hướng |
