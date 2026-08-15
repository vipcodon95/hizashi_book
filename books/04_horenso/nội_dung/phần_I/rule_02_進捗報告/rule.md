# Rule 02 — Khuôn báo cáo tiến độ hằng ngày/hằng tuần / 進捗報告のフォーマット

> **Luận điểm.** Báo cáo tiến độ phải có khuôn cố định để sếp/khách lướt mắt là nắm: **Done / Doing / Blocked / Next**. Daily ngắn gọn 4-5 dòng, hằng tuần có thêm số liệu và risk. Không khuôn = mỗi ngày sếp phải hỏi lại "hôm qua làm gì, hôm nay làm gì".
>
> 進捗報告は形式を固定する：**Done / Doing / Blocked / Next** の4ブロック。Daily は 4-5 行、Weekly は数字とリスクを追加。形式が無いと毎日「昨日何をした？今日は？」と聞かれる。
>
> **Liên quan:** rule 01 (3 nguyên tắc), rule 04 (interim), rule 06 (số liệu), rule 10 (朝礼).
> Sách 03 (Họp) Rule 16 — chia sẻ tiến độ trong meeting.

---

## Bối cảnh / 場面

Sáng thứ Hai 9h. Em Dũng cần báo cáo tiến độ Phase 2 của tuần trước cho chị Hương qua Slack. Lần đầu Dũng viết "tự do" — chị Hương phải hỏi lại 3 lần. Tuần thứ hai Dũng dùng khuôn DDBN và 1 phút sau đã có phản hồi.

---

## Hội thoại XẤU — viết tự do, không khuôn

*Slack 9:05*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、おはようございます。<ruby>先週<rt>せんしゅう</rt></ruby>は<ruby>色々<rt>いろいろ</rt></ruby>ありました。API の<ruby>修正<rt>しゅうせい</rt></ruby>と、それから<ruby>松本<rt>まつもと</rt></ruby>様からの<ruby>指摘<rt>してき</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>もして、<ruby>今週<rt>こんしゅう</rt></ruby>は<ruby>画面遷移<rt>がめんせんい</rt></ruby>のテストを<ruby>進<rt>すす</rt></ruby>めたいと<ruby>思<rt>おも</rt></ruby>います。」 <br/>*Chị Hương, chào buổi sáng ạ. Tuần rồi có nhiều việc. Em sửa API, rồi xử lý các comment của anh Matsumoto, tuần này em định tiến hành test luồng chuyển màn ạ.* |
| **フオン** | 「<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>？<ruby>何<rt>なに</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>ってる？ブロックは？」 <br/>*Cụ thể cái gì xong? Cái gì còn? Có blocker không?* |
| **ズン** | 「あ、API は完了です。指摘対応は<ruby>半分<rt>はんぶん</rt></ruby>くらい…画面遷移はまだ<ruby>手<rt>て</rt></ruby>をつけていません。」 <br/>*À, API thì xong rồi. Xử lý comment được khoảng nửa... luồng chuyển màn thì chưa bắt đầu ạ.* |
| **フオン** | 「<ruby>形式<rt>けいしき</rt></ruby>を<ruby>決<rt>き</rt></ruby>めて。Done / Doing / Blocked / Next で<ruby>書<rt>か</rt></ruby>いて。<ruby>毎日<rt>まいにち</rt></ruby><ruby>聞<rt>き</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>したくない。」 <br/>*Định khuôn đi. Viết theo Done / Doing / Blocked / Next. Chị không muốn ngày nào cũng phải hỏi lại.* |

**Vì sao xấu:** L1 viết văn xuôi, không bóc tách item — chị Hương không biết item nào xong, item nào pending. "色々ありました" (có nhiều việc) là expression NG trong báo cáo. L3 mới hé ra trạng thái thực sự.

---

## Hội thoại TỐT — DDBN khuôn chuẩn

*Slack 9:00, gửi theo mẫu · Slack 9:02*

| Vai | Câu |
|---------|-----|
| **ズン** | 「【Daily 4/22】**Done**: API 修正<ruby>完了<rt>かんりょう</rt></ruby>、松本様指摘 3/5 対応【1】 / **Doing**: <ruby>残<rt>のこ</rt></ruby>り指摘 2<ruby>件<rt>けん</rt></ruby>、画面遷移テスト<ruby>準備<rt>じゅんび</rt></ruby> / **Blocked**: なし / **Next (今日)**: 画面遷移テスト<ruby>着手<rt>ちゃくしゅ</rt></ruby>、トゥアンと<ruby>環境<rt>かんきょう</rt></ruby><ruby>同期<rt>どうき</rt></ruby>【2】」 <br/>*[Daily 22/4] Done: Sửa API xong, comment anh Matsumoto đã xử 3/5 / Doing: 2 comment còn lại, chuẩn bị test luồng màn / Blocked: không / Next (hôm nay): Bắt tay test luồng màn, đồng bộ môi trường với anh Tuấn.* |
| **フオン** | 「<ruby>了解<rt>りょうかい</rt></ruby>。指摘の残り2件、<ruby>内容<rt>ないよう</rt></ruby>は？」 <br/>*Hiểu rồi. 2 comment còn lại nội dung gì em?* |
| **ズン** | 「画面遷移スピードと、エラーメッセージの<ruby>日本語<rt>にほんご</rt></ruby><ruby>表現<rt>ひょうげん</rt></ruby>の2件です。<ruby>両方<rt>りょうほう</rt></ruby>とも<ruby>今日中<rt>きょうじゅう</rt></ruby>に対応<ruby>見込<rt>みこ</rt></ruby>みです【3】。」 <br/>*Là tốc độ luồng chuyển màn và cách diễn đạt tiếng Nhật của thông báo lỗi ạ. Cả hai dự kiến xử trong hôm nay ạ.* |
| **フオン** | 「OK、<ruby>進<rt>すす</rt></ruby>めてください。」 <br/>*OK, em làm tiếp đi.* |

📝 **Ghi chú:**
- 【1】**「3/5 対応」** — định lượng tiến độ. Không viết "ほぼ完了" mơ hồ.
- 【2】**「Next (今日)」** — daily thì Next chỉ trong ngày; weekly thì Next sẽ là tuần sau. Phải rõ phạm vi thời gian.
- 【3】**「対応見込みです」** — nói hạn chót ước tính. Có hạn chót mới gọi là Next thực sự.

---

## Câu chốt

> **「Done: 〇〇 / Doing: 〇〇 / Blocked: 〇〇 / Next: 〇〇までに〇〇」**
>
> *4 khối cố định. Sếp lướt 5 giây nắm toàn bộ tình hình.*

---

## Tránh

- 「色々」「だいたい」「ほぼ」 — không định lượng = sếp phải hỏi lại.
- Daily mà viết Next của cả tuần / Weekly mà chỉ viết Next của 1 ngày — sai phạm vi.
- Bỏ qua mục "Blocked" khi không có blocker — vẫn ghi 「なし」 để sếp biết bạn đã kiểm tra.
- Báo cáo bằng câu chuyện thay vì gạch đầu dòng — Nhật công việc chuộng danh sách, không chuộng lối kể.

---

## Khung mẫu

Xem phần Mẫu câu: **Họp đứng hằng ngày (Slack)** + **Báo cáo hằng tuần (Mail)**.

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|-------|-------|
| 進捗 | しんちょく | TIẾN TIỆP | Tiến độ |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn thành |
| 着手 | ちゃくしゅ | TRƯỚC THỦ | Bắt đầu (việc) |
| 対応 | たいおう | ĐỐI ỨNG | Xử lý |
| 見込み | みこみ | KIẾN | Dự kiến / triển vọng |
| 指摘 | してき | CHỈ TRÍCH | Nhận xét / chỉ ra điểm cần sửa |
| 同期 | どうき | ĐỒNG KỲ | Đồng bộ |
| ブロック | ブロック | — | Vật cản tiến độ |
