# Rule 02 — Format báo cáo tiến độ daily/weekly / 進捗報告のフォーマット

> **Luận điểm.** Báo cáo tiến độ phải có format cố định để sếp/khách lướt mắt là nắm: **Done / Doing / Blocked / Next**. Daily ngắn gọn 4-5 dòng, weekly có thêm số liệu và risk. Không format = mỗi ngày sếp phải hỏi lại "hôm qua làm gì, hôm nay làm gì".
>
> 進捗報告は形式を固定する：**Done / Doing / Blocked / Next** の4ブロック。Daily は 4-5 行、Weekly は数字とリスクを追加。形式が無いと毎日「昨日何をした？今日は？」と聞かれる。
>
> **Liên quan:** rule 01 (3 nguyên tắc), rule 04 (interim), rule 06 (số liệu), rule 10 (朝礼).
> Sách 03 (Họp) Rule 16 — chia sẻ tiến độ trong meeting.

---

## Bối cảnh / 場面

Sáng thứ Hai 9h. Em Dũng cần báo cáo tiến độ Phase 2 của tuần trước cho chị Hương qua Slack. Lần đầu Dũng viết "tự do" — chị Hương phải hỏi lại 3 lần. Tuần thứ hai Dũng dùng format DDBN và 1 phút sau đã có feedback.

---

## ❌ Hội thoại XẤU — viết tự do, không format

*Slack 9:05*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、おはようございます。先週は色々ありました。API の修正と、それから松本様からの指摘対応もして、今週は画面遷移のテストを進めたいと思います。」 |
| **フオン** | 「具体的に何が完了？何が残ってる？ブロックは？」 |
| **ズン** | 「あ、API は完了です。指摘対応は半分くらい…画面遷移はまだ手をつけていません。」 |
| **フオン** | 「形式を決めて。Done / Doing / Blocked / Next で書いて。毎日聞き返したくない。」 |

**Vì sao xấu:** L1 viết văn xuôi, không bóc tách item — chị Hương không biết item nào xong, item nào pending. "色々ありました" (có nhiều việc) là expression NG trong báo cáo. L3 mới hé ra trạng thái thực sự.

---

## ✅ Hội thoại TỐT — DDBN format chuẩn

*Slack 9:00, gửi theo template · Slack 9:02*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「【Daily 4/22】**Done**: API 修正完了、松本様指摘 3/5 対応【1】 / **Doing**: 残り指摘 2件、画面遷移テスト準備 / **Blocked**: なし / **Next (今日)**: 画面遷移テスト着手、トゥアンと環境同期【2】」 |
| **フオン** | 「了解。指摘の残り2件、内容は？」 |
| **ズン** | 「画面遷移スピードと、エラーメッセージの日本語表現の2件です。両方とも今日中に対応見込みです【3】。」 |
| **フオン** | 「OK、進めてください。」 |

📝 **Ghi chú:**
- 【1】**「3/5 対応」** — định lượng tiến độ. Không viết "ほぼ完了" mơ hồ.
- 【2】**「Next (今日)」** — daily thì Next chỉ trong ngày; weekly thì Next sẽ là tuần sau. Phải rõ scope thời gian.
- 【3】**「対応見込みです」** — nói deadline ước tính. Có deadline mới gọi là Next thực sự.

---

## 🎯 Câu chốt

> **「Done: 〇〇 / Doing: 〇〇 / Blocked: 〇〇 / Next: 〇〇までに〇〇」**
>
> *4 block cố định. Sếp lướt 5 giây nắm full tình hình.*

---

## ⚠ Tránh

- 「色々」「だいたい」「ほぼ」 — không định lượng = sếp phải hỏi lại.
- Daily mà viết Next của cả tuần / Weekly mà chỉ viết Next của 1 ngày — sai scope.
- Bỏ field "Blocked" khi không có blocker — vẫn ghi 「なし」 để sếp biết bạn đã check.
- Báo cáo bằng câu chuyện thay vì bullet — Nhật business chuộng list, không chuộng narrative.

---

## 📐 Template box

Xem `templates[0]` của file conversation: **Daily standup (Slack)** + **Weekly report (Mail)**.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 進捗 | しんちょく | Tiến độ |
| 完了 | かんりょう | Hoàn thành |
| 着手 | ちゃくしゅ | Bắt đầu (việc) |
| 対応 | たいおう | Xử lý |
| 見込み | みこみ | Dự kiến / triển vọng |
| 指摘 | してき | Comment / chỉ ra điểm cần sửa |
| 同期 | どうき | Đồng bộ |
| ブロック | burokku | Blocker (vật cản) |
