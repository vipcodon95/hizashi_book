-- Hizashi book SQL — Báo cáo - Liên lạc - Thảo luận / 報・連・相
-- curriculum_id = 8005
-- node count = 40
-- generated từ release/books/04_horenso/
-- KHÔNG sửa thủ công file này. Chạy lại scripts/build_sql_from_release.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, introduction_jp, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (8005, NULL, 'markdown_book', 'BJT', 'Báo cáo - Liên lạc - Thảo luận', 'Bộ sách Hizashi — Báo cáo - Liên lạc - Thảo luận', 'Hizashi シリーズ — 報・連・相', 'system', TRUE, TRUE, TRUE, FALSE, 20, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, introduction = EXCLUDED.introduction, introduction_jp = EXCLUDED.introduction_jp, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005001, 8005, NULL, 'markdown_book', 'Rule 01 — 3 nguyên tắc báo cáo / 報告の3原則', '# Rule 01 — 3 nguyên tắc báo cáo / 報告の3原則
> **Luận điểm.** Báo cáo Nhật chuẩn có 3 nguyên tắc bắt buộc: **(1) Kết luận trước (結論先出し)**, **(2) Phân biệt sự thật và ý kiến (事実と意見を分ける)**, **(3) Báo kịp thời, không ngâm tin (タイムリー)**. Vi phạm 1 trong 3 = sếp/khách phải hỏi lại = mất thời gian + giảm tin cậy.
>
> 報告の3原則：①結論先出し ②事実と意見を分ける ③タイムリー（情報を寝かせない）。一つでも欠けると相手は判断できない。
>
> **Liên quan:** rule 02 (format daily/weekly), rule 03 (kết quả), rule 07 (tin xấu), rule 09 (口頭 vs 書面).
> Sách 02 (Phone) Rule 14 — メモ 5W1H.

---

## Bối cảnh / 場面
Chiều thứ Hai. Em Dũng vừa demo Phase 2 với khách Matsumoto xong, cần báo cáo nhanh cho chị Hương. Lần đầu Dũng làm "ngược": kể lể quá trình → kết luận cuối, làm chị Hương phải hỏi lại 3 lần để nắm.

---

## Hội thoại XẤU — kể lể trước, kết luận cuối
*2 phút sau*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、Phase 2デモの件で…えっと、まず最初に環境構築から始めて、それからモック画面を見せたんですが、そこで松本様が画面遷移について質問があり、それに対してこちらから〜」 |
| **フオン** | 「で、結局どうなったの？OK だったの？NG だったの？」 |
| **ズン** | 「あ、はい、概ね OK でした。ただ画面遷移は再検討が必要かと…」 |
| **フオン** | 「次から **結論を先に**。それと、『再検討必要』はあなたの意見？松本様が言ったの？」 |

**Vì sao xấu:** L1 là 経過 (process) trước, không có 結論. L3 mới hé lộ kết luận. L4 chỉ ra cả 2 lỗi: (1) thiếu kết luận trước, (2) lẫn fact ("画面遷移は再検討が必要") — không rõ là khách yêu cầu hay Dũng tự đánh giá.

---

## Hội thoại TỐT — 結論先出し + fact/opinion phân biệt
| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、Phase 2デモのご報告です。**結論：概ね合格、ただし画面遷移の1点は再検討が必要**です【1】。」 |
| **フオン** | 「うん、続けて。」 |
| **ズン** | 「**事実として**、松本様から『画面遷移のスピードが遅く感じる』とのコメントがございました。**私見では**、API レスポンス待ちが原因と推測しております【2】。」 |
| **ズン** | 「**対応としては**、明日トゥアンと原因切り分けを行い、対応方針を水曜中にご報告いたします【3】。」 |
| **フオン** | 「分かりやすい報告ね。水曜の報告を待ちます。」 |

📝 **Ghi chú:**
- 【1】**「結論：〇〇」** — câu mở phải có 結論. Sếp nghe 1 câu là biết tình hình → tự quyết có nghe tiếp hay không.
- 【2】**「事実として〜」「私見では〜」** — đánh dấu rõ fact (松本 comment) vs opinion (Dũng giả thuyết). Nhật business **rất kỵ** nhập nhằng hai cái.
- 【3】**「対応としては〜」** — đóng bằng next step + deadline + owner. Không bao giờ kết thúc báo cáo bằng "だけです" (chỉ vậy).

---

## Cụm từ mẫu
> **「結論：〇〇。事実として〇〇。私見では〇〇。対応としては〇〇までに〇〇。」**
>
> *Cấu trúc 4 dòng — nhồi đủ 3 nguyên tắc + next step.*

---

## Tránh
- Bắt đầu bằng 経過 (process) — sếp Nhật không nghe quá 30 giây mà không có kết luận.
- Mix 「私が〜だと思います」 với 「松本様が〜と仰いました」 trong 1 câu liền — bắt buộc tách rõ.
- "あとで報告します" mà không có deadline cụ thể.
- 「えーっと」「あの…」 ở câu mở của báo cáo — NG hoàn toàn.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 報告 | ほうこく | Báo cáo |
| 結論 | けつろん | Kết luận |
| 事実 | じじつ | Sự thật |
| 私見 | しけん | Ý kiến cá nhân |
| 経過 | けいか | Quá trình / diễn biến |
| タイムリー | taimurī | Kịp thời |
| 切り分け | きりわけ | Phân tách (vấn đề) |
| 対応方針 | たいおうほうしん | Phương án xử lý |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005002, 8005, NULL, 'markdown_book', 'Rule 02 — Format báo cáo tiến độ daily/weekly / 進捗報告のフォーマット', '# Rule 02 — Format báo cáo tiến độ daily/weekly / 進捗報告のフォーマット
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

## Hội thoại XẤU — viết tự do, không format
*Slack 9:05*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、おはようございます。先週は色々ありました。API の修正と、それから松本様からの指摘対応もして、今週は画面遷移のテストを進めたいと思います。」 |
| **フオン** | 「具体的に何が完了？何が残ってる？ブロックは？」 |
| **ズン** | 「あ、API は完了です。指摘対応は半分くらい…画面遷移はまだ手をつけていません。」 |
| **フオン** | 「形式を決めて。Done / Doing / Blocked / Next で書いて。毎日聞き返したくない。」 |

**Vì sao xấu:** L1 viết văn xuôi, không bóc tách item — chị Hương không biết item nào xong, item nào pending. "色々ありました" (có nhiều việc) là expression NG trong báo cáo. L3 mới hé ra trạng thái thực sự.

---

## Hội thoại TỐT — DDBN format chuẩn
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

## Cụm từ mẫu
> **「Done: 〇〇 / Doing: 〇〇 / Blocked: 〇〇 / Next: 〇〇までに〇〇」**
>
> *4 block cố định. Sếp lướt 5 giây nắm full tình hình.*

---

## Tránh
- 「色々」「だいたい」「ほぼ」 — không định lượng = sếp phải hỏi lại.
- Daily mà viết Next của cả tuần / Weekly mà chỉ viết Next của 1 ngày — sai scope.
- Bỏ field "Blocked" khi không có blocker — vẫn ghi 「なし」 để sếp biết bạn đã check.
- Báo cáo bằng câu chuyện thay vì bullet — Nhật business chuộng list, không chuộng narrative.

---

## Template box
Xem `templates[0]` của file conversation: **Daily standup (Slack)** + **Weekly report (Mail)**.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 進捗 | しんちょく | Tiến độ |
| 完了 | かんりょう | Hoàn thành |
| 着手 | ちゃくしゅ | Bắt đầu (việc) |
| 対応 | たいおう | Xử lý |
| 見込み | みこみ | Dự kiến / triển vọng |
| 指摘 | してき | Comment / chỉ ra điểm cần sửa |
| 同期 | どうき | Đồng bộ |
| ブロック | burokku | Blocker (vật cản) |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005003, 8005, NULL, 'markdown_book', 'Rule 03 — Cấu trúc báo cáo kết quả / 結果報告の組み立て (Goal→Result→Cause→Action)', '# Rule 03 — Cấu trúc báo cáo kết quả / 結果報告の組み立て (Goal→Result→Cause→Action)
> **Luận điểm.** Báo cáo kết quả (sau khi xong việc / sự kiện) phải đi theo flow **Goal → Result → Cause → Action**: nhắc mục tiêu, nói kết quả thực, phân tích nguyên nhân, đề xuất hành động tiếp. Thiếu Goal = không có thước đo. Thiếu Cause = không học được. Thiếu Action = báo cáo "vô nghĩa".
>
> 結果報告は **Goal → Result → Cause → Action** の流れで組み立てる。Goal が無いと評価軸が無い。Cause が無いと学びが無い。Action が無いと報告として完結しない。
>
> **Liên quan:** rule 01 (3 nguyên tắc), rule 05 (完了報告), rule 06 (số liệu), rule 11 (báo cáo khách).

---

## Bối cảnh / 場面
Demo Phase 2 với khách Matsumoto vừa kết thúc. Em Dũng cần báo cáo kết quả demo cho chị Hương trong họp 1-on-1. Lần đầu Dũng báo "demo OK" → chị Hương không có đủ thông tin để đánh giá. Lần 2 dùng GRCA — chị Hương ra quyết định ngay tại chỗ.

---

## Hội thoại XẤU — chỉ có Result, thiếu Goal/Cause/Action
| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、Phase 2デモ、概ねOKでした。指摘も少なかったです。」 |
| **フオン** | 「『概ねOK』って何と比較して？目標は何だった？」 |
| **ズン** | 「えっと、目標は…松本様にOKをもらうことで…」 |
| **フオン** | 「指摘が少なかった原因は？運？それとも準備が良かった？次に再現できる？」 |
| **ズン** | 「うーん、たぶん準備が良かったから…」 |

**Vì sao xấu:** L1 chỉ có Result, không có Goal so sánh, không có Cause phân tích, không có Action tiếp. L4 chị Hương phải đào: nguyên nhân là gì, có replicate được không. Báo cáo kết quả mà không trả lời được "tại sao" và "next" = vô giá trị.

---

## Hội thoại TỐT — full GRCA
| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、Phase 2デモのご報告です。**目標**は『松本様から書面で承認をいただく』ことでした【1】。」 |
| **ズン** | 「**結果**：書面承認は明日いただける見込み。指摘は3件のみで、致命的なものはございません【2】。」 |
| **ズン** | 「**原因分析**としては、事前に大垣様へ仮承認をいただいた【3】ことで、デモ当日の論点が画面の細部に絞られたためと考えております。」 |
| **ズン** | 「**今後の対応**：3件の指摘は今週中に修正、来週月曜にPhase 3キックオフを松本様へ提案いたします【4】。」 |
| **フオン** | 「Goal が明確で原因分析も筋が通ってる。Phase 3 提案は私もレビューしたいから、金曜までに案を見せてください。」 |

📝 **Ghi chú:**
- 【1】**「目標は〇〇でした」** — luôn nhắc lại Goal trước khi báo Result. Người nghe có thước đo để đánh giá.
- 【2】**「致命的なものはございません」** — phân loại severity. Không phải comment nào cũng nặng như nhau.
- 【3】**「事前に〜いただいた」** — Cause cụ thể, có thể replicate được. "たぶん準備が良かった" thì không phải Cause.
- 【4】**「今後の対応」** — Action có deadline + concrete next step. Không kết bằng "今後気をつけます".

---

## Cụm từ mẫu
> **「目標は〇〇でした。結果は〇〇。原因は〇〇。今後は〇〇までに〇〇いたします。」**
>
> *4 mệnh đề. Mỗi mệnh đề trả lời 1 câu hỏi của sếp.*

---

## Tránh
- 「概ねOK」「だいたい良かった」 — không có Goal làm thước đo thì OK so với cái gì?
- "たぶん〜だから" làm Cause — đoán mò không phải phân tích.
- Kết bằng "今後気をつけます" — không có Action cụ thể = chưa học được.
- Đảo thứ tự: Result trước Goal — sếp không biết "OK so với cái gì".

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 結果報告 | けっかほうこく | Báo cáo kết quả |
| 目標 | もくひょう | Mục tiêu |
| 原因分析 | げんいんぶんせき | Phân tích nguyên nhân |
| 致命的 | ちめいてき | Nghiêm trọng / chí mạng |
| 仮承認 | かりしょうにん | Phê duyệt sơ bộ |
| 論点 | ろんてん | Điểm tranh luận |
| 細部 | さいぶ | Chi tiết nhỏ |
| キックオフ | kikkuofu | Kick-off |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005004, 8005, NULL, 'markdown_book', 'Rule 04 — Báo cáo trung gian / 中間報告 (interim 25/50/75% milestones)', '# Rule 04 — Báo cáo trung gian / 中間報告 (interim 25/50/75% milestones)
> **Luận điểm.** Việc dài 1+ tuần phải có **báo cáo trung gian** ở mốc 25/50/75%. Đợi xong mới báo = "ngâm tin". Sếp không biết tiến độ thực = không can thiệp được khi sai hướng.
>
> 1週間以上のタスクは **25/50/75% で中間報告**。完了後にしか報告しないと「情報を寝かせている」状態になり、軌道修正できない。
>
> **Liên quan:** rule 01 (3 nguyên tắc — タイムリー), rule 02 (daily/weekly), rule 07 (悪い知らせ).

---

## Bối cảnh / 場面
Em Dũng được giao soạn 提案書 Phase 3 cho khách. Deadline 2 tuần. Tuần 1 không báo cáo gì → tuần 2 mới phát hiện hướng đi sai. Anh Tuấn (tech lead) chỉ ra: phải có 中間報告 mốc 25%, 50%, 75%.

---

## Hội thoại XẤU — đợi xong mới báo
*thứ 2 tuần 2 · thứ 5 tuần 2*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、提案書どう？来週金曜が締め切りでしょ？」 |
| **ズン** | 「あ、はい、頑張って書いてます。完成したらお見せします。」 |
| **トゥアン** | 「ちょっと見せて。…これ、構成が松本様の好みと合ってない。最初から書き直しだ。」 |
| **ズン** | 「えっ、もう80%書いたのに…」 |
| **トゥアン** | 「だから 25% の段階で見せてって言ってたよね？中間報告が無いとこういうことになる。」 |

**Vì sao xấu:** Dũng "ngâm tin" 9 ngày. Đến mốc 80% mới hé ra → quá trễ để xoay. Nếu báo ở 25% (sau 2-3 ngày, đã có outline) → anh Tuấn xoay được.

---

## Hội thoại TỐT — báo trung gian 25%
*thứ 4 tuần 1, đã làm outline xong · 15分後*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「トゥアンリーダー、提案書の **中間報告** です【1】。**進捗 25%**：構成案とエグゼクティブサマリーが完成しました。」 |
| **ズン** | 「**確認いただきたい点**：松本様の好みに合う構成かどうか。15分ほどお時間いただけますか【2】。」 |
| **トゥアン** | 「構成OK。ただ、技術詳細セクションは『なぜこの選定か』を増やして。50%の時点でまた見せて。」 |
| **ズン** | 「承知しました。**次回中間報告は来週月曜（50%地点）**に予定いたします【3】。」 |
| **トゥアン** | 「うん、これで安心して任せられる。」 |

📝 **Ghi chú:**
- 【1】**「中間報告です」** — đặt label rõ ràng. Sếp biết đây không phải báo cáo cuối.
- 【2】**「確認いただきたい点」「15分ほど」** — nói rõ điều cần check + thời gian sếp dành. Không "ぼんやりレビュー".
- 【3】**「次回中間報告は〇〇」** — pre-schedule mốc tiếp theo. Sếp ghi vào lịch.

---

## Cụm từ mẫu
> **「中間報告です。進捗〇%。確認いただきたいのは〇〇。次回は〇〇地点で〇月〇日に。」**
>
> *3 mốc 25/50/75 — mỗi mốc 15 phút. Phòng tránh "đi xa rồi mới phát hiện sai hướng".*

---

## Tránh
- 「完成したらお見せします」 — sếp Nhật cực kỵ. Nguyên tắc: long task = phải có check-point.
- Bỏ qua mốc 25% vì "nghĩ là đúng hướng" — chính lúc đó dễ sai nhất.
- Báo ở 90% → sếp chỉ kịp comment cosmetic. Mốc 25/50 mới đủ thời gian xoay.
- Mốc trung gian mà không nói % cụ thể — sếp không biết bạn đang ở đâu.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 中間報告 | ちゅうかんほうこく | Báo cáo trung gian |
| 進捗 | しんちょく | Tiến độ |
| 構成 | こうせい | Cấu trúc / bố cục |
| エグゼクティブサマリー | egzekutibu samarī | Executive summary |
| 軌道修正 | きどうしゅうせい | Điều chỉnh hướng đi |
| 締め切り | しめきり | Deadline |
| 提案書 | ていあんしょ | Đề xuất / proposal |
| 任せる | まかせる | Tin tưởng giao việc |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005005, 8005, NULL, 'markdown_book', 'Rule 05 — Báo cáo hoàn thành / 完了報告 (Output→Acceptance→Lessons)', '# Rule 05 — Báo cáo hoàn thành / 完了報告 (Output→Acceptance→Lessons)
> **Luận điểm.** Báo cáo hoàn thành chuẩn Nhật phải có 3 phần: **Output** (đầu ra cụ thể), **Acceptance** (xác nhận khách/sếp đồng ý nghiệm thu), **Lessons** (bài học, để áp dụng lần sau). Bỏ Acceptance = "tự nhận xong nhưng khách chưa duyệt". Bỏ Lessons = lặp lại sai lầm.
>
> 完了報告の3要素：**Output（成果物）→ Acceptance（受領確認）→ Lessons（学び）**。Acceptance なしは「自称完了」。Lessons なしは同じ失敗を繰り返す。
>
> **Liên quan:** rule 01 (3 nguyên tắc), rule 03 (kết quả GRCA), rule 08 (報告書 formal).

---

## Bối cảnh / 場面
Phase 2 vừa kết thúc — em Dũng cần báo cáo hoàn thành cho chị Hương + cc anh Hà CTO. Lần đầu Dũng chỉ liệt kê "đã giao 5 deliverable" → chị Hương phản ứng: "khách đã ký nghiệm thu chưa? Có rút được bài học gì không?".

---

## Hội thoại XẤU — chỉ có Output, thiếu Acceptance + Lessons
| Speaker | Câu |
|---------|-----|
| **ズン** | 「Phase 2 完了のご報告です。納品物5点、すべて納品済みです。以上です。」 |
| **フオン** | 「松本様から **検収（受領確認）** はもらった？まだなら『完了』とは言わない。」 |
| **ズン** | 「あ、まだメールで送ったところで…」 |
| **フオン** | 「それは『納品』であって『完了』ではない。それと、今回の振り返りは？次のフェーズに活かせる学びは？」 |
| **ズン** | 「振り返りはまだ…」 |

**Vì sao xấu:** L1 chỉ liệt kê deliverable. Tiếng Nhật business: 納品 (delivery) ≠ 完了 (completion). 完了 là phải có 検収 (acceptance). L4 chỉ ra cả 2 thiếu sót: Acceptance + Lessons.

---

## Hội thoại TỐT — Output + Acceptance + Lessons
| Speaker | Câu |
|---------|-----|
| **ズン** | 「Phase 2 **完了報告**です。**Output**：納品物5点（要件定義書、設計書、ソースコード、テスト報告書、運用手順書）、すべて納品済み【1】。」 |
| **ズン** | 「**Acceptance**：松本様より昨日付で書面検収をいただきました。検収書のコピーを別途共有いたします【2】。」 |
| **ズン** | 「**Lessons**：(1) 中間報告を 25/50/75% で行ったことで手戻りゼロ、(2) 反省点として、画面遷移仕様の確認が遅れ、テスト工数が当初比 +20% になりました【3】。Phase 3 では仕様確認を着手前に必ず行います。」 |
| **フオン** | 「Acceptance まで取れて初めて完了。Lessons も具体的で良いね。Phase 3 の仕様確認手順は手順書に落として共有して。」 |
| **ズン** | 「承知しました。今週中に手順書を作成し共有いたします。」 |

📝 **Ghi chú:**
- 【1】**「Output：〇〇」** — liệt kê deliverable cụ thể, có thể đếm được. Không "色々作りました".
- 【2】**「書面検収」「検収書のコピー」** — 検収 = acceptance bằng văn bản. Phải có proof, không "口頭で OK もらった".
- 【3】**「反省点として、〇〇」「Phase 3 では〇〇します」** — Lessons phải gồm bài học **+** action áp dụng lần sau. Chỉ liệt kê reflection mà không có action = báo cáo "rỗng".

---

## Cụm từ mẫu
> **「Output: 〇〇 / Acceptance: 〇〇から〇〇付検収済み / Lessons: 〇〇、Phase 〇〇 で〇〇いたします。」**
>
> *3 phần. Phần 2 là điểm Việt thường thiếu nhất.*

---

## Tránh
- 「納品しました = 完了です」 — không. 検収 mới là 完了.
- "口頭で OK もらいました" — không có proof = không acceptance.
- Lessons toàn 「気をつけます」「今後注意します」 — không cụ thể, không action.
- Bỏ Lessons khi "không có gì đặc biệt" — luôn có ít nhất 1 thứ rút ra (kể cả khi suôn sẻ).

---

## Template box
Xem `templates[0]` của file conversation: **完了報告書** với fields Output / Acceptance / Lessons.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 完了報告 | かんりょうほうこく | Báo cáo hoàn thành |
| 検収 | けんしゅう | Nghiệm thu / acceptance |
| 検収書 | けんしゅうしょ | Văn bản nghiệm thu |
| 納品 | のうひん | Giao hàng (deliverable) |
| 反省点 | はんせいてん | Điểm rút kinh nghiệm |
| 振り返り | ふりかえり | Reflection / retrospective |
| 工数 | こうすう | Effort / man-day |
| 手順書 | てじゅんしょ | Tài liệu hướng dẫn |
| 着手前 | ちゃくしゅまえ | Trước khi bắt đầu |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005006, 8005, NULL, 'markdown_book', 'Rule 06 — Báo cáo có số liệu / 数字を使った報告', '# Rule 06 — Báo cáo có số liệu / 数字を使った報告
> **Luận điểm.** Báo cáo Nhật business cực kỵ định tính mơ hồ. **Mọi báo cáo phải có ít nhất 1 con số**: KPI, % thay đổi, before/after, tốc độ, lỗi, etc. "Tăng nhiều" → "tăng 23% so với tuần trước". Không có số = không thể quyết.
>
> 数字なき報告は判断材料にならない。**KPI / 前週比 / before-after / 工数** など最低1つは数値化する。「多い」より「+23%」、「速い」より「200ms→80ms」。
>
> **Liên quan:** rule 02 (DDBN), rule 03 (GRCA), rule 11 (báo cáo khách).

---

## Bối cảnh / 場面
Em Dũng họp với anh Hà CTO về tình hình Phase 2. Lần đầu Dũng báo định tính ("performance được cải thiện") → CTO không quyết được. Lần 2 dùng số liệu — CTO duyệt budget Phase 3 ngay.

---

## Hội thoại XẤU — toàn định tính
| Speaker | Câu |
|---------|-----|
| **ズン** | 「ハーさん、Phase 2 のパフォーマンスは大幅に改善しました。バグも減ってます。お客様も満足しています。」 |
| **ハーCTO** | 「『大幅に』『減ってる』『満足』… **数字で**話してください。Phase 3 の予算判断ができません。」 |
| **ズン** | 「えっと…体感ではかなり良くなったと…」 |
| **ハーCTO** | 「体感では予算は動かない。来週までに数値ベースで再報告を。」 |

**Vì sao xấu:** Nguyên 4 câu mà không một con số. CTO cần dữ liệu để quyết predict, allocate budget. "体感" (cảm nhận) không phải dữ liệu.

---

## Hội thoại TỐT — KPI dashboard kèm % thay đổi
| Speaker | Câu |
|---------|-----|
| **ズン** | 「ハーさん、Phase 2 の数値報告です。**画面ロード時間：1.2秒 → 0.4秒（-67%）**【1】、ダッシュボード資料を画面共有いたします。」 |
| **ズン** | 「**バグ件数**：Phase 1 が週20件、Phase 2 が週6件で **-70%**。**顧客 NPS**：+12 から +38 へ改善しております【2】。」 |
| **ハーCTO** | 「ロード時間 -67% は inline でいい数字。NPS の母数は？」 |
| **ズン** | 「**回答者は12名中10名**（回答率83%）です【3】。サンプル数が小さい点、私見では今後3ヶ月で30名以上に拡大予定です。」 |
| **ハーCTO** | 「数字の根拠が明確で良い。Phase 3 予算、承認します。」 |

📝 **Ghi chú:**
- 【1】**「1.2秒 → 0.4秒（-67%）」** — before/after kèm % change. CTO lướt 1 giây hiểu impact.
- 【2】**「+12 から +38 へ」** — số tuyệt đối + diff. Không "改善した" mơ hồ.
- 【3】**「12名中10名（回答率83%）」** — nói rõ mẫu (sample size). Số đẹp mà sample n=3 thì... vô nghĩa.

---

## Cụm từ mẫu
> **「Before 〇〇 → After 〇〇 (差分 〇%) / 母数 〇〇」**
>
> *Mọi metric đi cùng sample size. Số đẹp + n nhỏ = nghi ngờ.*

---

## Tránh
- 「大幅に」「かなり」「だいぶ」 — định tính, không phải số.
- "改善しました" mà không có before/after — không quantify được impact.
- Đưa % mà không có sample size — sếp Nhật sẽ hỏi "母数は？".
- Round số quá đẹp ("ちょうど50%") — gây nghi ngờ làm tròn.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 数値 | すうち | Số liệu |
| 前週比 | ぜんしゅうひ | So với tuần trước |
| 母数 | ぼすう | Sample size / cỡ mẫu |
| 体感 | たいかん | Cảm nhận chủ quan |
| 改善 | かいぜん | Cải thiện |
| 大幅 | おおはば | Đáng kể (mơ hồ — tránh) |
| ダッシュボード | dasshubōdo | Dashboard |
| 根拠 | こんきょ | Cơ sở / căn cứ |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005007, 8005, NULL, 'markdown_book', 'Rule 07 — Báo cáo tin xấu / 悪い知らせの報告 (Predict→Fact→Impact→Plan→Ask)', '# Rule 07 — Báo cáo tin xấu / 悪い知らせの報告 (Predict→Fact→Impact→Plan→Ask)
> **Luận điểm.** Tin xấu là test case khắc nghiệt nhất của Hou-Ren-Sou. Báo trễ = mất tin cậy vĩnh viễn. Báo gấp + sai cấu trúc = sếp panic. Cấu trúc chuẩn: **Predict → Fact → Impact → Plan → Ask**. Predict trước Fact để sếp định kỳ vọng. Plan trước Ask để chứng minh đã suy nghĩ.
>
> 悪い知らせほど早く・構造化して報告する。**Predict（予測）→ Fact（事実）→ Impact（影響）→ Plan（対応案）→ Ask（依頼）**。Predict 先出しで上司の心構えを作り、Plan を先に出すことで「丸投げ」感を避ける。
>
> **Liên quan:** rule 01 (kịp thời), rule 17 (urgent escalation), rule 31 (bug flow), rule 22 (相談 vs 自己決定).

---

## Bối cảnh / 場面
22h tối Chủ Nhật — production có bug critical do Phase 2 release. Anh Tuấn phát hiện. Anh Tuấn cần báo Anh Hà CTO ngay (không đợi sáng thứ Hai). Lần đầu báo lộn xộn, panic. Lần 2 dùng PFIPA chuẩn.

---

## Hội thoại XẤU — báo trễ + lộn xộn + đùn đẩy
*thứ 2 sáng 9h, qua Slack*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ハーさん、すいません、昨夜本番で問題が起きてまして、データが…まだ調査中なんですが…どうしましょうか？」 |
| **ハーCTO** | 「**昨夜**？なぜ今報告？影響範囲は？対応案は？」 |
| **トゥアン** | 「えっと、影響はまだ確認中で、対応もこれから考えるところで…」 |
| **ハーCTO** | 「11時間遅れの報告 + 状況不明 + 対応案ゼロ。これは最悪のパターンです。」 |

**Vì sao xấu:** (1) Báo trễ 11 giờ — bug critical phải báo trong 30 phút. (2) Không có Predict mở đầu, sếp bị động. (3) Không có Plan, "どうしましょうか?" = đùn boss quyết.

---

## Hội thoại TỐT — PFIPA + báo trong 30 phút
*22:30 CN, qua điện thoại*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ハーさん、夜分にすみません。**緊急のご報告**です。**先にお伝えしますが、本番で critical bug が発生しております**【1】。」 |
| **トゥアン** | 「**Fact**：22時頃、注文確定 API でデータ消失が発生。**Impact**：本日 21時以降の注文データ約30件が DB に保存されていません【2】。」 |
| **トゥアン** | 「**Plan（対応案）**：(1) ログから30件をリストアップ、(2) 顧客に翌朝までに個別連絡、(3) 原因はトランザクション処理にあると推測、修正PRを朝までに準備します【3】。」 |
| **トゥアン** | 「**Ask（依頼）**：松本様への第一報を 23時までに私から入れてもよろしいでしょうか。あるいはハーさんから入れる選択肢もあります【4】。」 |
| **ハーCTO** | 「Predict から Plan まで30秒で全部入った。良い報告。第一報はあなたから入れてください。私は2時間以内に折り返します。」 |

📝 **Ghi chú:**
- 【1】**「先にお伝えしますが、〇〇が発生しております」** — Predict mở đầu = sếp định khung tâm lý "đây là tin xấu". Tránh shock.
- 【2】**「Fact〜Impact」** — chia rõ 2 phần. Fact = chuyện gì xảy ra. Impact = ảnh hưởng cụ thể (số lượng / khách / tiền). Sếp cần Impact để escalate hay không.
- 【3】**「Plan：(1)〜(2)〜(3)」** — 3 dòng action với owner. Show rằng đã suy nghĩ chứ không chỉ đùn.
- 【4】**「〜してもよろしいでしょうか。あるいは〇〇という選択肢も」** — Ask đưa 2 option. Sếp Nhật ưa chọn hơn quyết từ zero.

---

## Cụm từ mẫu
> **「先にお伝えしますが〇〇が発生。Fact: 〇〇 / Impact: 〇〇 / Plan: ①〇〇 ②〇〇 / Ask: 〇〇してもよろしいでしょうか、あるいは〇〇」**
>
> *5 mệnh đề. Báo trong 30 phút từ lúc phát hiện.*

---

## Tránh
- 「すみません、ちょっと問題が…」 — vague, sếp không biết nặng nhẹ.
- "どうしましょうか?" mở đầu — đùn quyết định cho sếp = sếp mất công cào lại từ đầu.
- Đợi đến giờ làm việc mới báo — bug critical là exception. Email/Slack/phone cá nhân OK.
- Báo Plan mà không nói deadline cụ thể (「対応します」) — không có thời hạn = không phải plan.

---

## Template box
Xem `templates[0]` của file conversation: **悪い知らせ報告書** (incident report).

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 緊急 | きんきゅう | Khẩn cấp |
| 発生 | はっせい | Xảy ra (sự cố) |
| 影響範囲 | えいきょうはんい | Phạm vi ảnh hưởng |
| 対応案 | たいおうあん | Phương án xử lý |
| 第一報 | だいいっぽう | Báo cáo đầu tiên |
| トランザクション | toranzakushon | Transaction |
| データ消失 | データしょうしつ | Mất dữ liệu |
| 復旧 | ふっきゅう | Khôi phục |
| 折り返し | おりかえし | Gọi lại / phản hồi lại |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005008, 8005, NULL, 'markdown_book', 'Rule 08 — Cách viết 報告書 / 報告書の書き方 (formal Japanese business document)', '# Rule 08 — Cách viết 報告書 / 報告書の書き方 (formal Japanese business document)
> **Luận điểm.** 報告書 (báo cáo văn bản formal) có cấu trúc cố định 7 phần: **件名 / 宛先 / 作成日 / 概要 / 詳細 / 結論 / 添付**. Đây là format Nhật business 50 năm không thay đổi. Sai 1 phần = "không phải báo cáo", phải làm lại.
>
> 報告書は7要素：**件名・宛先・作成日・概要・詳細・結論・添付**。日本企業 50 年変わらない型。1 つでも欠けると「報告書として未完成」。
>
> **Liên quan:** rule 03 (GRCA), rule 05 (完了), rule 11 (báo cáo khách).
> Sách 03 (Họp) Rule 28 — 議事録 cũng dùng template tương tự.

---

## Bối cảnh / 場面
Sau Phase 2 hoàn thành, em Dũng cần soạn 報告書 chính thức gửi anh Matsumoto + cc anh Ōgaki. Lần đầu Dũng viết theo style "tự do" → bị anh Tuấn yêu cầu làm lại theo template chuẩn.

---

## Hội thoại XẤU — viết tự do, thiếu nhiều phần
*review draft*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、報告書のドラフト見たけど…**件名が「Phase 2について」**？こんなの NG だよ。」 |
| **ズン** | 「えっ、内容には Phase 2 のこと書いてますけど…」 |
| **トゥアン** | 「件名は『何の報告か + 期間 + 宛先優先順位』で書くんだ。それと **概要（300字）が無い**。詳細だけだと松本様は読まずに飛ばす。」 |
| **ズン** | 「概要も詳細も、似たようなことなんで…」 |
| **トゥアン** | 「概要は『3秒で読める要約』、詳細は『じっくり読む人向け』。役割が違う。それと **作成日と添付一覧** も無い。フォーマットを守って。」 |

**Vì sao xấu:** L1 件名 mơ hồ. L3 thiếu 概要. L5 thiếu 作成日 + 添付一覧. 報告書 không đủ 7 phần = trong văn hóa Nhật xem như chưa nộp.

---

## Hội thoại TỐT — full 7-section structure
*review draft v2*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、これは良くなったね。**件名「Phase 2 完了報告書（〇月〇日〜〇月〇日）」**【1】。」 |
| **トゥアン** | 「**概要セクション**が3行で要点をまとめてる ✓【2】。**詳細**は KPI と Lessons まで網羅 ✓。**結論**で次フェーズへの提言が入ってる ✓。」 |
| **トゥアン** | 「**作成日**、**宛先**（主：松本様、CC：大垣様、社内：ハー、フオン副部長）、**添付一覧**（検収書、ダッシュボード PDF、議事録）も全部揃ってる【3】。」 |
| **ズン** | 「ありがとうございます。Phase 3 でも同じテンプレートを使います。」 |
| **トゥアン** | 「うん、社内標準にしよう。リンに共有して。」 |

📝 **Ghi chú:**
- 【1】**「〇〇 完了報告書（〇月〇日〜〇月〇日）」** — 件名 phải có loại văn bản + scope thời gian. Không 「〇〇について」.
- 【2】**概要 (executive summary)** = 3-5 dòng. CEO/PM lướt là nắm. 詳細 dành cho người implement.
- 【3】**添付一覧** = liệt kê tên + version + ngày của từng file đính kèm. Tránh lẫn version về sau.

---

## Cụm từ mẫu
> **「件名 / 宛先 / 作成日 / 概要 / 詳細 / 結論 / 添付」 — 7 dòng đầu của mọi 報告書 chuẩn Nhật.**

---

## Tránh
- 件名 「〇〇について」 — quá vague. Phải là 「〇〇 報告書」 hoặc 「〇〇 完了報告書」.
- Bỏ 概要, viết thẳng vào 詳細 — sếp Nhật bận sẽ skip báo cáo của bạn.
- Đính kèm file mà không liệt kê tên trong 添付 section — file thất lạc khi forward.
- Viết "結論" theo style cảm xúc ("頑張りました") — kết luận phải là statement quyết định.

---

## Template box
Xem `templates[0]` của file conversation: **完了報告書 (formal)**.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 報告書 | ほうこくしょ | Báo cáo văn bản |
| 件名 | けんめい | Tiêu đề |
| 宛先 | あてさき | Người nhận |
| 作成日 | さくせいび | Ngày lập |
| 概要 | がいよう | Tổng quan / executive summary |
| 詳細 | しょうさい | Chi tiết |
| 添付 | てんぷ | Đính kèm |
| 提言 | ていげん | Kiến nghị |
| ドラフト | dorafuto | Bản nháp |
| 社内標準 | しゃないひょうじゅん | Chuẩn nội bộ công ty |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005009, 8005, NULL, 'markdown_book', 'Rule 09 — Báo cáo miệng vs văn bản / 口頭報告 vs 書面報告', '# Rule 09 — Báo cáo miệng vs văn bản / 口頭報告 vs 書面報告
> **Luận điểm.** Cùng 1 thông tin nhưng kênh sai = báo cáo sai. **Decision matrix**: ngắn + khẩn → 口頭 (miệng/phone). Dài + cần lưu vết → 書面 (mail/báo cáo). Quan trọng + nhạy cảm → **口頭 trước, 書面 sau** (combo).
>
> 同じ情報でも channel を間違えると報告失敗。短い・緊急 → 口頭、長い・記録要 → 書面、重要・センシティブ → **口頭で第一報、書面でフォローアップ** の組み合わせ。
>
> **Liên quan:** rule 07 (悪い知らせ), rule 15 (チャネル選択), rule 17 (緊急).

---

## Bối cảnh / 場面
Em Dũng có 3 việc cần báo trong cùng 1 ngày. Lần đầu Dũng bê hết vào mail dài 2000 chữ → chị Hương không kịp đọc tin urgent. Anh Tuấn dạy decision matrix.

---

## Hội thoại XẤU — gom hết vào 1 mail dài
*gửi mail 9h sáng · 15h, sau khi đọc*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「件名：本日のご報告いろいろ」 (nội dung 2000 chữ gồm: bug critical + tiến độ tuần + đề xuất reschedule họp) |
| **フオン** | 「ズン、**critical bug** が朝9時に発生してたって、私はメール埋もれて15時に気づきましたよ。なぜ電話してくれなかったの？」 |
| **ズン** | 「えっと、メールに全部書いたので…」 |
| **フオン** | 「**緊急は口頭**、進捗は書面、リスケは別メール — 用件ごとに channel を分けて。」 |

**Vì sao xấu:** Bug critical 9h sáng → cần 口頭 ngay (phone). Lẫn vào mail dài + tiêu đề mơ hồ "いろいろ" = chị Hương phát hiện trễ 6 giờ. 1 mail = 1 chủ đề.

---

## Hội thoại TỐT — chia channel theo decision matrix
*9:05, phone gọi cá nhân chị Hương · 11:00, gửi mail "週次進捗報告 第3週" · 14:00, gửi mail "【リスケ依頼】明日16時 定例会議について" · 15:00*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、緊急のご報告です。本番で critical bug が発生しております【1】。詳細は今からメールも送ります。」 |
| **フオン** | 「了解、すぐ動きます。メール待ちます。」 |
| **ズン** | (Body theo template DDBN — không gồm bug, vì bug đã có thread riêng) |
| **ズン** | (1 chủ đề duy nhất, có tiêu đề rõ) |
| **フオン** | 「3つの用件、3つの channel で分けてくれて整理しやすかった。週次は OK、リスケも承認します。」 |

📝 **Ghi chú:**
- 【1】**Phone trước cho urgent** — bug critical không gửi mail rồi đợi. Phone → email follow-up.
- 1 mail = 1 chủ đề. Tiêu đề rõ ràng, không "いろいろ".
- Bug critical sau khi 口頭 phải có 書面 follow-up (tạo audit trail).

---

## Decision matrix tóm tắt
| Tình huống | Channel | Lý do |
|-----------|---------|-------|
| Bug critical / sự cố production | **口頭 (phone) → 書面 follow** | Tốc độ + audit trail |
| Tiến độ daily | Slack (書面 ngắn) | Lưu được, lướt nhanh |
| Tiến độ weekly | Mail (書面) | Cần share rộng + lưu vết |
| Đề xuất / tham vấn | **口頭 trước (15ph) → 書面 sau** | Bàn bạc dễ hơn miệng |
| Reschedule meeting | Mail (書面) | Cần ghi lại lịch mới |
| Báo nghỉ vắng | Mail + Slack mention | Cần lưu + nhanh |
| Báo cáo formal cuối phase | 書面 (報告書) | Lưu vĩnh viễn |

---

## Cụm từ mẫu
> **「Urgent = 口頭、Detail = 書面、Critical = 口頭 → 書面 combo。」**

---

## Tránh
- Critical info trong mail dài 2000 chữ — sếp lướt mất 6 giờ mới thấy.
- Phone báo tiến độ daily — không lưu vết, sếp quên.
- 1 mail nhiều chủ đề — sếp reply 1 chủ đề, các chủ đề kia mất.
- "口頭で OK もらいました" mà không có 書面 follow — sau này không proof được.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 口頭 | こうとう | Miệng / nói |
| 書面 | しょめん | Văn bản |
| 用件 | ようけん | Việc cần báo / business |
| 緊急 | きんきゅう | Khẩn cấp |
| センシティブ | sensitibu | Nhạy cảm |
| フォローアップ | forōappu | Follow up |
| 第一報 | だいいっぽう | Báo cáo đầu tiên |
| 監査証跡 | かんさしょうせき | Audit trail |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005010, 8005, NULL, 'markdown_book', 'Rule 10 — Báo cáo trong 朝礼 / 朝礼での報告', '# Rule 10 — Báo cáo trong 朝礼 / 朝礼での報告
> **Luận điểm.** 朝礼 (morning standup) Nhật business: mỗi người 30-60 giây. Vượt thời gian = làm chậm cả team. Cấu trúc tối giản: **「昨日 / 今日 / 困りごと」** — 3 dòng. Không kể chi tiết, chi tiết để 1-on-1 sau.
>
> 朝礼での報告は1人30〜60秒。**「昨日／今日／困りごと」** の3行で済ませる。詳細は朝礼後の個別 talk で。
>
> **Liên quan:** rule 02 (DDBN), rule 14 (broadcast).
> Sách 03 (Họp) Rule 03 — 朝礼 trong họp.

---

## Bối cảnh / 場面
Sáng thứ Hai 8:55 — 朝礼 team Phase 2. Em Dũng đến lượt báo. Lần đầu Dũng kể chi tiết 3 phút → cả team mất giờ. Anh Tuấn dạy format 3 dòng.

---

## Hội thoại XẤU — kể chi tiết 3 phút
*主持 · 2 phút trôi qua*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「次、ズン。」 |
| **ズン** | 「昨日は API のリファクタを始めて、最初は単純だと思ったんですが、〇〇のところで…ええと、それで松本様からのコメントもあって…今日は…うーん、続きを…」 |
| **トゥアン** | 「ズン、朝礼は **30秒**。詳細は10時に1-on-1 で聞く。今は3行で。」 |
| **ズン** | 「すみません…」 |

**Vì sao xấu:** L2 quá 2 phút, không có cấu trúc, kể chuyện thay vì báo trạng thái. 朝礼 8 người × 2 phút = 16 phút → muộn cả ngày.

---

## Hội thoại TỐT — 3 dòng 30 giây
*30 giây*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「次、ズン。」 |
| **ズン** | 「**昨日**：API リファクタ 60% 完了。**今日**：残り40% + テスト着手。**困りごと**：松本様コメントの3番が解釈不明、トゥアンさんと10時に5分相談したいです【1】。」 |
| **トゥアン** | 「了解、10時 5分 OK。次、リン。」 |
| **リン** | 「**昨日**：マーケ資料 v3 完成。**今日**：v3 をハイ先輩にレビュー依頼。**困りごと**：なし。」 |

📝 **Ghi chú:**
- 【1】**「困りごと」** = blocker hoặc tham vấn ngắn. Không kể tự nhiên — phải có. "なし" cũng OK, miễn có nói.
- 30 giây = 80-100 chữ tiếng Nhật. Tính toán trước.
- Ai cần thảo luận sâu → hẹn 1-on-1 sau 朝礼, không kéo cả team.

---

## Cụm từ mẫu
> **「昨日：〇〇 / 今日：〇〇 / 困りごと：〇〇 (or なし)」**
>
> *3 dòng × 30 giây. Detail để 1-on-1.*

---

## Tránh
- Kể câu chuyện ("最初は〇〇だと思ったんですが…") — 朝礼 không phải nơi narrate.
- Bỏ qua "困りごと" khi không có blocker — vẫn nói "なし" để team biết bạn đã check.
- Hỏi trực tiếp người khác trong 朝礼 ("トゥアンさん、〇〇どうなってますか？") — phá flow của họ.
- Đọc note dài 1 trang — soạn note 3 dòng từ trước thôi.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 朝礼 | ちょうれい | Morning standup |
| 昨日 | きのう | Hôm qua |
| 今日 | きょう | Hôm nay |
| 困りごと | こまりごと | Việc đang gặp khó / blocker |
| リファクタ | rifakuta | Refactor |
| 解釈 | かいしゃく | Cách hiểu / diễn giải |
| 1-on-1 | わんおんわん | 1-on-1 talk |
| 流れ | ながれ | Flow / dòng chảy |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005011, 8005, NULL, 'markdown_book', 'Rule 11 — Báo cáo cho khách hàng quan trọng / 重要顧客への報告', '# Rule 11 — Báo cáo cho khách hàng quan trọng / 重要顧客への報告
> **Luận điểm.** Báo cáo cho khách Nhật quan trọng (PM, Giám đốc) phải có **3 layer khác báo cáo nội bộ**: (1) tone formal cao hơn 1 bậc, (2) **không jargon** kỹ thuật chưa giải thích, (3) **bỏ title đồng nghiệp Việt** (ウチ・ソト) — gọi "弊社のトゥアン" chứ không "トゥアンリーダー".
>
> 重要顧客報告の3層差：①敬語ワンランク上、②未説明のジャーゴン禁止、③ウチ・ソト原則で社内同僚の役職敬称を外す（「弊社のトゥアン」）。
>
> **Liên quan:** rule 03 (GRCA), rule 06 (số liệu), rule 08 (報告書).
> Sách 02 (Phone) Rule 27 — ウチ・ソト lần đầu giới thiệu.

---

## Bối cảnh / 場面
Em Dũng báo cáo Phase 2 status cho anh Matsumoto qua phone (định kỳ 2 tuần/lần). Lần đầu Dũng dùng tone giống báo nội bộ + nhiều jargon → anh Matsumoto khó chịu. Lần 2 sửa.

---

## Hội thoại XẤU — tone nội bộ + jargon + sai ウチ・ソト
*phone, formal level thường*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本さん、Phase 2 のステータスを共有します。**トゥアンリーダー**が言うには、リファクタは順調で、CI/CD パイプラインも回ってます【1】。レイテンシも下がりました。」 |
| **松本PM** | 「すみません、『**トゥアンリーダー**』とは？それと『CI/CDパイプライン』『レイテンシ』って…技術用語は分かるよう説明していただけますか？」 |
| **ズン** | 「あ、トゥアンは弊社のリーダーで、CI/CD は…」 |
| **松本PM** | 「ズンさん、お客様向けの報告は、用語をかみ砕いて、社内の役職呼びは外すのが基本ですよ。」 |

**Vì sao xấu:** L1 「トゥアンリーダー」 = giới thiệu đồng nghiệp với khách bằng title nội bộ → vi phạm ウチ・ソト. Phải là 「弊社のトゥアン」. Jargon chưa giải thích. Tone "共有します" hơi flat — khách quan trọng cần "ご報告申し上げます".

---

## Hội thoại TỐT — formal + dễ hiểu + ウチ・ソト đúng
*phone, formal cao*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、お時間頂戴し申し訳ございません。Phase 2 進捗の **ご報告**でございます【1】。」 |
| **ズン** | 「**結論**：予定通り進捗、画面ロードは1.2秒から0.4秒まで改善。**弊社のトゥアン**【2】が技術検証を完了し、自動テストの仕組み(CI/CD)も整いました【3】。」 |
| **ズン** | 「**ご相談**：Phase 3 のキックオフを5月7日に予定しております。アジェンダ案を本日中にメールでお送りしてよろしいでしょうか。」 |
| **松本PM** | 「分かりやすい報告ありがとうございます。アジェンダ、お待ちしております。」 |

📝 **Ghi chú:**
- 【1】**「ご報告でございます」** — cao hơn 「共有します」 1 bậc. Khách Nhật quan trọng dùng level này.
- 【2】**「弊社のトゥアン」** — bỏ title nội bộ (リーダー). Đồng nghiệp Việt khi nói với khách = ウチ → không title.
- 【3】**「自動テストの仕組み(CI/CD)」** — giải thích Nhật trước, jargon trong ngoặc. Khách bận, không phải engineer.

---

## Cụm từ mẫu
> **「ご報告でございます。弊社の〇〇 が〜。〇〇の仕組み(jargon)を導入。」**
>
> *Formal level + ウチ・ソト + jargon giải thích = chuẩn báo khách.*

---

## Tránh
- 「〜さんが言ってました」 → khách thấy hời hợt. Phải 「弊社の〇〇 が確認しております」.
- Title nội bộ với khách: 「トゥアンリーダー」「ハーCTO」 → thành 「弊社のトゥアン」「弊社のハー」.
- Jargon technique không giải thích: API, CI/CD, レイテンシ → giải thích Nhật trước.
- Tone "共有します" "確認しました" với khách quan trọng — quá flat, nên 「ご報告申し上げます」「確認させていただきました」.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 弊社 | へいしゃ | Cty chúng tôi (khiêm nhường) |
| ご報告申し上げます | ごほうこくもうしあげます | Em xin trân trọng báo cáo |
| かみ砕く | かみくだく | Giải thích đơn giản |
| 役職敬称 | やくしょくけいしょう | Title chức vụ |
| 仕組み | しくみ | Cơ chế / hệ thống |
| 技術検証 | ぎじゅつけんしょう | Kiểm chứng kỹ thuật |
| ジャーゴン | jāgon | Jargon / thuật ngữ |
| 進捗 | しんちょく | Tiến độ |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005012, 8005, NULL, 'markdown_book', 'Rule 12 — Checklist phòng ngừa thiếu báo cáo / 報告漏れ防止', '# Rule 12 — Checklist phòng ngừa thiếu báo cáo / 報告漏れ防止
> **Luận điểm.** Báo cáo thiếu (報告漏れ) là vấn đề kinh điển của offshore VN-JP. Cách chữa: **self-check checklist 10 mục** chạy mỗi cuối ngày + cuối tuần. Không dựa vào trí nhớ — dựa vào checklist.
>
> 報告漏れ防止には **10項目のセルフチェックリスト** を毎日／毎週末に実行する。記憶ではなくチェックリストに依存させる。
>
> **Liên quan:** rule 01 (3 nguyên tắc — タイムリー), rule 02 (DDBN), rule 38 (self-diagnostic).

---

## Bối cảnh / 場面
Em Dũng bị chị Hương phản hồi: "tuần này anh Matsumoto hỏi 3 lần — nghĩa là em đã sót 3 lần báo cáo". Chị Hương đưa checklist mà chị dùng từ junior — Dũng dán lên màn hình.

---

## Hội thoại XẤU — dựa trí nhớ
| Speaker | Câu |
|---------|-----|
| **フオン** | 「ズン、松本様から3つ問い合わせが来てる：(1) リスケの確認、(2) 検収書の Excel 形式、(3) Phase 3 アジェンダ。報告した？」 |
| **ズン** | 「えっと…リスケは伝えたと思います、Excel は…たぶん明日…アジェンダはまだ…」 |
| **フオン** | 「『と思います』『たぶん』が3つ。これが報告漏れの典型。**毎日のチェックリスト** 使ってる？」 |
| **ズン** | 「いえ、記憶でやってました…」 |
| **フオン** | 「私の checklist 共有します。10項目、毎日17時にやって。」 |

**Vì sao xấu:** Trí nhớ không scale. 1 ngày 5 communication thì OK. 1 tuần 30 communication thì rớt 3-5 cái. Phải có checklist.

---

## Hội thoại TỐT — dùng checklist 10 mục
*thứ 6 17h, sau khi chạy checklist*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、今週の **報告漏れチェック完了**【1】です。」 |
| **ズン** | 「**今週の通信件数**：受信18 / 返信17 / **未返信1件**：松本様 4/22 のメール『Phase 3 予算確認』。本日中に返信予定です【2】。」 |
| **ズン** | 「**約束した期日**：5件すべて期日内完了。**口頭でOKもらった事項**：3件、すべて書面化済【3】。」 |
| **フオン** | 「素晴らしい。1件未返信を可視化できる時点で報告漏れ予防になってる。来週もこの形で。」 |

📝 **Ghi chú:**
- 【1】**「報告漏れチェック完了」** — gọi tên nó là 1 task. Không "ngầm hiểu".
- 【2】**「未返信1件」** — quan trọng là show con số xấu. 0 件 đáng nghi (chắc chắn sót đâu đó).
- 【3】**「口頭でOK→書面化」** — verbal commit phải convert sang văn bản, nếu không sẽ bay theo trí nhớ.

---

## Cụm từ mẫu
> **「未返信件数 / 約束期日達成 / 口頭→書面変換 — 3つの可視化で報告漏れ防止。」**

---

## Tránh
- "全部返信した" mà không show số liệu — đáng nghi.
- Bỏ mục checklist vì "tuần này không có" — vẫn check, vẫn ghi 0.
- Dựa trí nhớ — quá tải > 5 communication/ngày là bắt đầu rớt.
- Checklist để trong drawer — phải để trên màn hình, dán sticker.

---

## Template box
Xem `templates[0]` của file conversation: **報告漏れ防止 self-check 10 items**.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 報告漏れ | ほうこくもれ | Báo cáo thiếu / sót |
| チェックリスト | chekkurisuto | Checklist |
| 未返信 | みへんしん | Chưa reply |
| 期日 | きじつ | Hạn / deadline |
| 可視化 | かしか | Trực quan hóa |
| セルフチェック | serufu chekku | Tự kiểm |
| 書面化 | しょめんか | Đưa thành văn bản |
| 約束 | やくそく | Lời hứa / cam kết |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005013, 8005, NULL, 'markdown_book', 'Rule 13 — Nguyên tắc liên lạc tức thì / 連絡の即時性原則', '# Rule 13 — Nguyên tắc liên lạc tức thì / 連絡の即時性原則
> **Luận điểm.** Liên lạc trễ = liên lạc sai. **"Information delayed = information wrong"**. Trong Hou-Ren-Sou, 連絡 (sharing thông tin) có giá trị giảm theo cấp số mũ theo thời gian. Biết 1 thông tin → share trong **15 phút** với người liên quan. Để 1 ngày = giá trị giảm 80%.
>
> 連絡は鮮度がすべて。**「遅れた情報は誤った情報と同じ」**。知ったら15分以内に共有。1日寝かせると価値は80%消える。
>
> **Liên quan:** rule 01 (3 nguyên tắc — タイムリー), rule 09 (口頭/書面), rule 17 (緊急).

---

## Bối cảnh / 場面
Anh Matsumoto báo Dũng (qua phone) thay đổi yêu cầu Phase 3 — cần thêm tính năng X. Dũng nắm thông tin lúc 10h sáng. Đến 17h chiều mới chia sẻ với team → anh Tuấn đã code 6 giờ theo spec cũ. Lần 2 áp dụng "15 phút rule".

---

## Hội thoại XẤU — ngâm 7 giờ
*17h, Slack #phase3*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「皆さん、今朝松本様から電話があり、機能 X を追加するそうです。」 |
| **トゥアン** | 「**今朝**？私6時間、機能 Y のロジック書いてたんだけど。X 追加なら Y は再設計だよ。」 |
| **ズン** | 「あ、すみません、忙しくて連絡が遅れて…」 |
| **トゥアン** | 「連絡は **15分以内** が原則。半日寝かせるなら共有しないのと同じ。」 |

**Vì sao xấu:** Dũng "ngâm" 7 giờ vì "忙しい". Trong 7 giờ đó anh Tuấn lãng phí 6 giờ work. Chi phí trễ liên lạc = 6 hour-Tuấn.

---

## Hội thoại TỐT — báo 15 phút
*10:15, Slack #phase3*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「皆さん、**緊急共有** です【1】。10時に松本様から電話。**Phase 3 に機能 X 追加**との要望。Y との関係性は午後の打ち合わせで詰めます。一旦 Y のコーディングは保留してください【2】。」 |
| **トゥアン** | 「了解、Y は中断します。15分前に教えてくれて助かった。」 |
| **ズン** | 「**詳細議事録は 10:45 までに共有**します【3】。」 |
| **トゥアン** | 「OK、待ちます。」 |

📝 **Ghi chú:**
- 【1】**「緊急共有」** — gắn label. Đồng nghiệp biết priority cao, ngừng việc đang làm.
- 【2】**「保留してください」** — không chỉ chia sẻ mà nói **action cần làm ngay**. "保留 (hold)" tránh wasted work.
- 【3】**「10:45 までに共有」** — show next step + deadline. Tránh đồng nghiệp hỏi "詳細は?".

---

## 15-phút rule — algorithm
```
Bạn nhận thông tin có ảnh hưởng team/khách:
  1. Thông tin có cần ai khác hành động ngay? → YES
  2. Trong 15 phút: gửi Slack #channel với label 【緊急共有】
     - 1 dòng: chuyện gì (rút gọn)
     - 1 dòng: ai cần làm gì ngay (保留 / 続行 / 確認)
     - 1 dòng: chi tiết khi nào có
  3. Trong 1 giờ: gửi detail / minutes / link
```

---

## Cụm từ mẫu
> **「【緊急共有】〇〇発生。一旦〇〇してください。詳細は〇〇までに共有します。」**

---

## Tránh
- "忙しいので後で" — sau là khi nào? Định lượng đi: 「30分後に詳細共有」.
- Share thông tin to without action item — đồng nghiệp đọc xong vẫn không biết phải làm gì.
- Dùng DM cho thông tin team-level — DM = chỉ 1 người biết. Phải #channel.
- Đợi đến daily standup hôm sau mới chia sẻ — đã trễ 12-18 giờ.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 即時性 | そくじせい | Tức thời |
| 連絡 | れんらく | Liên lạc / chia sẻ thông tin |
| 鮮度 | せんど | Độ tươi |
| 緊急共有 | きんきゅうきょうゆう | Chia sẻ khẩn |
| 保留 | ほりゅう | Tạm dừng |
| 寝かせる | ねかせる | Ngâm tin (negative) |
| 価値 | かち | Giá trị |
| 続行 | ぞっこう | Tiếp tục (việc) |', 'system', 13, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005014, 8005, NULL, 'markdown_book', 'Rule 14 — Cấu trúc liên lạc broadcast / 全員に届く連絡', '# Rule 14 — Cấu trúc liên lạc broadcast / 全員に届く連絡
> **Luận điểm.** Khi gửi thông tin cho cả team (broadcast), người Việt thường mặc định "ai cũng đọc hết". Sai. Thực tế: 30% lướt subject, 50% đọc 3 dòng đầu, 20% đọc kỹ. Cấu trúc: **TL;DR (1-2 dòng) → Detail → Action items rõ ràng cho từng vai trò**.
>
> 全員向けの連絡は **TL;DR → Detail → Action item by role** で構成。subject line だけ読む人、最初3行だけ読む人を想定する。
>
> **Liên quan:** rule 13 (即時性), rule 16 (Slack), rule 21 (cross-timezone).

---

## Bối cảnh / 場面
Sau họp với khách, em Dũng cần broadcast 5 quyết định quan trọng cho team Phase 2 (8 người). Lần đầu Dũng viết 1 mail dài 1500 chữ → có 2 người làm sai vì miss action item dành cho mình.

---

## Hội thoại XẤU — văn xuôi 1500 chữ
*mail to team@, "今日の打ち合わせ報告" · 2 ngày sau*

| Speaker | Câu |
|---------|-----|
| **ズン** | 1500-character narrative kể lại buổi họp 90 phút. Action items lẫn trong văn. |
| **ハイ** | 「ズン、デプロイの件、私の担当だったの？メールに書いてあった？」 |
| **ズン** | 「あ、3パラグラフ目に書きました…」 |
| **ハイ** | 「3パラグラフ目までに3分かかる。**自分の action だけ抜き出せる構造**にしてくれないと miss する。」 |

**Vì sao xấu:** Action items lẫn trong văn xuôi → người đọc phải scan 1500 chữ để tìm "việc của tôi". Hải miss → deploy trễ.

---

## Hội thoại TỐT — TL;DR + Action by role
*mail subject: "【決定事項5件】4/22 松本様打ち合わせ - Phase 3 移行" · reply 30 giây sau*

| Speaker | Câu |
|---------|-----|
| **ズン** | (Body theo template — see template box) |
| **ハイ** | 「ズン、自分の担当2件 (デプロイ準備・CI設定) 確認しました。期日 4/26 までに完了します。」 |
| **トゥアン** | 「私の担当3件、了解。優先順位は (1)→(3) で進めます。」 |
| **ズン** | 「了解。**4/24 朝礼で進捗確認**します。」 |

📝 **Ghi chú:**
- Subject line đã có 「決定事項5件」 — người chưa mở mail cũng nắm priority.
- TL;DR (3 dòng đầu): tóm 5 quyết định.
- Action items chia theo **assignee** với deadline rõ — không chia theo topic.
- Cuối: pre-schedule check-in (「4/24 朝礼で」).

---

## Cấu trúc broadcast chuẩn
```
Subject: 【〇〇〇】〇〇 - 〇〇 (label rõ ràng)

[TL;DR]
本日の決定: ① 〇〇 ② 〇〇 ③ 〇〇

[Detail]
1. 〇〇 → 〇〇に決定（理由：〇〇）
2. 〇〇 → ...

[Action items by assignee]
@トゥアン:
  - 〇〇（期日 〇/〇）
  - 〇〇（期日 〇/〇）
@ハイ:
  - 〇〇（期日 〇/〇）
@リン:
  - 〇〇（期日 〇/〇）

[Next check-in]
〇/〇 朝礼で進捗確認
```

---

## Cụm từ mẫu
> **「TL;DR → Detail → Action by assignee → Next check-in」**
>
> *Mỗi dòng có owner. Không có "誰か" (ai đó).*

---

## Tránh
- 「皆さんで対応お願いします」 — không có owner = không ai làm.
- Action item lẫn trong văn xuôi — phải tách section riêng có @assignee.
- Subject mơ hồ "今日の打ち合わせ" — phải có hint priority + chủ đề.
- Không có check-in tiếp theo — sếp/lead không biết khi nào catch up.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 全員 | ぜんいん | Toàn thể |
| 決定事項 | けっていじこう | Hạng mục đã quyết |
| 担当 | たんとう | Người phụ trách |
| 期日 | きじつ | Deadline |
| 優先順位 | ゆうせんじゅんい | Thứ tự ưu tiên |
| 進捗確認 | しんちょくかくにん | Xác nhận tiến độ |
| 抜き出す | ぬきだす | Trích ra |
| 構造 | こうぞう | Cấu trúc |', 'system', 14, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005015, 8005, NULL, 'markdown_book', 'Rule 15 — Chọn channel: chat / mail / phone / チャネル選択', '# Rule 15 — Chọn channel: chat / mail / phone / チャネル選択
> **Luận điểm.** Cùng 1 nội dung, channel sai = liên lạc thất bại. **Decision matrix 2 chiều: urgency × audience size**. Urgent + 1 người → phone. Urgent + team → Slack @here. Detail + 1 người → mail. Reference dài → Notion/Confluence.
>
> Channel 選択は **緊急度 × 受信者数** の2軸マトリクスで決める。間違えると速度・記録性・読まれる確率が崩れる。
>
> **Liên quan:** rule 09 (口頭/書面), rule 13 (即時性), rule 16 (Slack), rule 17 (緊急).

---

## Bối cảnh / 場面
Em Linh (junior, vừa onboard) lần đầu cần chọn channel cho 4 tình huống. Em Dũng coach Linh decision matrix.

---

## Hội thoại XẤU — Linh chọn channel sai 4/4
| Speaker | Câu |
|---------|-----|
| **リン** | 「ズンさん、4つ連絡があります：(1) 緊急バグ → メール、(2) 5月の休暇申請 → 電話、(3) 仕様書 v3 → Slack DM、(4) ハイ先輩への質問 → @channel に投稿。」 |
| **ズン** | 「リンちゃん、**4つとも channel が逆**…落ち着いて。**緊急度** と **受信者数** で決まる。」 |
| **リン** | 「えっ、全部間違いですか？」 |
| **ズン** | 「(1) 緊急なら電話、(2) 休暇は記録要だからメール、(3) 仕様書は皆が見るから Notion、(4) 1人質問なら DM。」 |

**Vì sao xấu:** Linh không có framework. Chọn theo cảm tính.

---

## Hội thoại TỐT — decision matrix
| Speaker | Câu |
|---------|-----|
| **ズン** | 「リンちゃん、**マトリクス** を覚えて【1】。」 |
| **ズン** | 「**緊急 × 1人** → 電話。**緊急 × チーム** → Slack @here または @channel。**通常 × 1人** → メールまたは Slack DM。**通常 × チーム** → Slack #channel または定例。**長期参照 × 全員** → Notion/Confluence【2】。」 |
| **リン** | 「なるほど。バグは緊急 × チームだから @channel ですね。」 |
| **ズン** | 「正解。**ただし critical bug は電話で第一報、Slack でフォロー** — 二重に【3】。」 |
| **リン** | 「2層に。覚えました。」 |

📝 **Ghi chú:**
- 【1】**Matrix có 5 ô** — Linh học 1 lần, dùng cả đời.
- 【2】**「長期参照」** — info cần ai cũng tra cứu được sau này → wiki, không Slack (Slack info trôi nhanh).
- 【3】**「critical bug は二重」** — exception: critical chỉ Slack có thể bị trôi → phone trước, Slack follow.

---

## Decision matrix tổng hợp
| Urgency / Audience | 1 người | Team (~5-15) | Cả org / Khách |
|---|---|---|---|
| **Critical (< 1h)** | Phone → Slack DM follow | Phone (key person) → Slack @channel follow | Phone → Mail (formal) |
| **Urgent (1-4h)** | Slack DM | Slack @here | Mail + Slack |
| **Normal (1-2 days)** | Slack DM hoặc Mail | Slack #channel | Mail |
| **Reference (long-term)** | Mail (lưu) | Notion/Confluence | Wiki + Mail link |
| **Casual / chitchat** | Slack DM | Slack #random | (không) |

---

## Cụm từ mẫu
> **「緊急度 × 受信者数 → channel 決定。Critical は二重チャネル。Reference は wiki。」**

---

## Tránh
- Phone for casual updates — phá flow của người nhận, không lưu.
- Mail cho urgent < 1h — sếp lướt mail mỗi 2-3h, trễ.
- Slack DM cho team-level info — cả team cần biết, đừng giấu trong DM.
- Notion link mà không gửi notification — không ai check Notion liên tục.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| チャネル | chaneru | Channel |
| 緊急度 | きんきゅうど | Mức độ khẩn |
| 受信者 | じゅしんしゃ | Người nhận |
| 通常 | つうじょう | Bình thường |
| 長期参照 | ちょうきさんしょう | Tham khảo dài hạn |
| 二重 | にじゅう | Hai lớp |
| マトリクス | matorikusu | Matrix |
| 流れる | ながれる | Trôi đi (mất tin) |', 'system', 15, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005016, 8005, NULL, 'markdown_book', 'Rule 16 — Slack channel etiquette / Slack マナー', '# Rule 16 — Slack channel etiquette / Slack マナー
> **Luận điểm.** Slack với khách Nhật có manner riêng. **@here / @channel / threads / DM** mỗi cái có context. Lạm dụng @channel = mất thiện cảm. Không dùng thread = channel ngập nhiễu. DM thay vì #channel = team không biết.
>
> Slack マナー4本柱：①@here は active な人だけ通知、②@channel は緊急時のみ、③ threads で文脈分離、④ team-level は #channel、private は DM。
>
> **Liên quan:** rule 14 (broadcast), rule 15 (channel), rule 21 (cross-timezone).

---

## Bối cảnh / 場面
Em Dũng vào Slack workspace chung với khách Hakuō. 田中 PMO (anh Tanaka) là người track Slack từ phía khách. Lần đầu Dũng dùng @channel cho việc thường + spam main channel. Anh Tanaka góp ý lịch sự.

---

## Hội thoại XẤU — abuse @channel + không dùng thread
*Slack #phase3, 23:30 thứ 6 · 8:15 thứ 7 sáng*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**@channel** リンク確認お願いします。https://docs.../spec_v3」 |
| **田中PMO** | 「ズンさん、おはようございます。お疲れ様です。@channel は **本番障害など緊急時のみ** 使う運用ルールがございます【1】。今回は @here、または特定メンバーへのメンションが適切かと存じます。」 |
| **田中PMO** | 「また、関連投稿は **スレッド化** いただけますと、main channel が読みやすくなります【2】。」 |
| **ズン** | 「申し訳ございません。今後 @channel は緊急時のみ使用し、関連は thread にいたします。」 |

**Vì sao xấu:** L1 (1) @channel 23:30 → ping cả 30 người (mặc dù DnD), (2) không thread → 5 reply tiếp theo ngập #phase3.

---

## Hội thoại TỐT — đúng manner
*Slack #phase3, 14:00 · thread reply · thread reply · thread reply · 15:30, thread*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**@here** Phase 3 仕様書 v3 をアップロードしました。本日中にご確認をお願いいたします【1】。https://docs.../spec_v3」 |
| **田中PMO** | 「確認いたします。」 |
| **トゥアン** | 「セクション3に質問あります、後ほど DM します。」 |
| **ズン** | 「@トゥアン お待ちしております。」 |
| **田中PMO** | 「v3 確認完了。承認します。」 |

📝 **Ghi chú:**
- 【1】**「@here」** — chỉ ping người đang online. Không phá DnD/giờ riêng.
- 【2】Tất cả reply trong thread → main channel sạch.
- Thread giữ context — sau này tìm "v3 spec discussion" 1 chỗ.

---

## Slack manner 4 trụ cột
| Tag / Pattern | Khi nào | Ai bị ping |
|---|---|---|
| **@channel** | Critical / production-down / quyết định toàn team | Tất cả member (kể cả offline) — dè dặt |
| **@here** | Cần phản hồi trong giờ làm hôm nay | Chỉ người đang online |
| **@username** | 1 người cụ thể, không cần ping cả channel | Chỉ user đó |
| **Thread (スレッド)** | Reply / discussion follow up | Trong thread |
| **DM** | Private / ngoài context channel | 1 người |

**Giờ Nhật làm việc:** 9-18 JST. Sau 18h = không @here trừ khẩn cấp. 23h+ = không @channel cả khi khẩn (dùng phone).

---

## Cụm từ mẫu
> **「@channel = critical only / @here = active only / thread = context retain / DM = private only」**

---

## Tránh
- @channel cho announcement định kỳ — abuse → người mute → mất hiệu lực.
- Reply trong main channel thay vì thread — channel ngập, người mới scroll mất context.
- DM cho việc team-level — team không biết, sau lại làm trùng.
- @here / @channel ngoài giờ làm — phá DnD, mất thiện cảm với khách Nhật.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 運用ルール | うんようルール | Quy tắc vận hành |
| 緊急時 | きんきゅうじ | Khi khẩn cấp |
| 本番障害 | ほんばんしょうがい | Sự cố production |
| メンション | menshon | Mention |
| スレッド | sureddo | Thread |
| 関連投稿 | かんれんとうこう | Bài đăng liên quan |
| 拝見 | はいけん | Xem (khiêm) |
| 承認 | しょうにん | Phê duyệt |', 'system', 16, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005017, 8005, NULL, 'markdown_book', 'Rule 17 — Liên lạc khẩn cấp + thứ tự ưu tiên / 緊急連絡の優先順位', '# Rule 17 — Liên lạc khẩn cấp + thứ tự ưu tiên / 緊急連絡の優先順位
> **Luận điểm.** Khi sự cố khẩn cấp, **thứ tự gọi** quan trọng không kém nội dung. Sai thứ tự = sếp/khách bực + thông tin loop. Quy tắc: **(1) immediate stakeholder thuộc cấp trên trực tiếp**, **(2) escalate theo chain of command**, **(3) khách hàng được thông báo SAU khi đã có Plan**.
>
> 緊急連絡の3原則：①直属上司をまず、②chain of command で escalate、③顧客への通知は **対応案を持った後**。順序を間違えると顧客が先に騒ぎ収拾不能になる。
>
> **Liên quan:** rule 07 (悪い知らせ PFIPA), rule 09 (口頭/書面), rule 31 (bug flow).

---

## Bối cảnh / 場面
22:30 CN — bug critical production (giống rule 07). Anh Tuấn phát hiện. Câu hỏi: ai gọi trước, ai sau? Lần đầu Dũng (BD) định gọi anh Matsumoto (khách) ngay → anh Tuấn ngăn lại.

---

## Hội thoại XẤU — đảo thứ tự, gọi khách trước
*22:35 CN*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「トゥアンさん、私すぐ松本様に電話します。データ消失なので…」 |
| **トゥアン** | 「**待って**！松本様に電話する前に、(1) ハー CTO に第一報、(2) 対応案を3分で固める、(3) **その後** 松本様に電話。順序間違えると松本様が先に騒ぐ【1】。」 |
| **ズン** | 「あ、でも顧客優先かと…」 |
| **トゥアン** | 「**Plan を持たずに顧客に告げると ''どうするんですか''と詰められて、そこで初めて社内で議論することになる**。最悪。社内で固めてから顧客へ。」 |

**Vì sao xấu:** Việt thường nghĩ "khách trước". Nhật business: chain of command trước, Plan trước, rồi báo khách. Báo khách trước Plan = khách hỏi "phương án?" → embarass.

---

## Hội thoại TỐT — chain of command đúng
*22:32, gọi anh Hà CTO · 22:35 · 22:55, gọi anh Matsumoto · 23:30, Slack #phase2*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ハーさん、緊急のご報告です…」 (PFIPA — xem rule 07) |
| **ハーCTO** | 「了解。Plan OK。**第一報をあなた (トゥアン) から松本様に23時までに**入れて。」 |
| **トゥアン** | 「松本様、夜分恐縮です。緊急のご報告です。**現時点で対応中の事象とPlanを併せてお伝えします**【2】…」 |
| **松本PM** | 「Plan まで持って報告してくれて助かります。社内で共有します。」 |
| **トゥアン** | 「@here 第一報共有 (Slack thread にて状況更新中)。」 |

📝 **Ghi chú:**
- 【1】**Order: 直属 → 上司 → 顧客** — đảo order = chaos.
- 【2】**「対応中の事象と Plan を併せて」** — báo khách = báo Fact + Impact + Plan + ETA. Không "問題が発生しました、どうしましょう".

---

## Escalation matrix
| Loại sự cố | Bước 1 (3 phút) | Bước 2 (10 phút) | Bước 3 (30 phút) |
|---|---|---|---|
| **Critical bug production** | Tech lead → CTO | Plan, Slack #incident | Khách (PM) |
| **Khách phàn nàn major** | Tech lead | BD lead → CTO | Khách (formal email reply) |
| **Sales bị reject** | Sales lead | BD director | (không) |
| **Internal HR issue** | HR → CEO | (không escalate khách) | |
| **Legal / compliance** | Compliance officer → CEO | Legal counsel | (cẩn trọng) |

---

## Cụm từ mẫu
> **「直属 → CTO/上司 → Plan 確定 → 顧客」 — 順序間違えると現場が二倍混乱。**

---

## Tránh
- Báo khách Nhật trước khi có Plan — họ hỏi "Plan は?" → bạn tê liệt.
- Skip cấp trung gian, gọi thẳng C-level đầu tiên — direct boss bị bypassed = mất thiện cảm.
- Không có timeline (dài nhất bao lâu nữa giải quyết) — khách không biết kỳ vọng.
- Slack #public trước khi đã thông báo người key — họ đọc Slack mới biết = embarass.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 緊急連絡 | きんきゅうれんらく | Liên lạc khẩn |
| 優先順位 | ゆうせんじゅんい | Thứ tự ưu tiên |
| 直属上司 | ちょくぞくじょうし | Cấp trên trực tiếp |
| 第一報 | だいいっぽう | Báo cáo đầu |
| 対応案 | たいおうあん | Phương án xử lý |
| 騒ぐ | さわぐ | Làm ầm |
| 詰める | つめる | Truy hỏi |
| 収拾不能 | しゅうしゅうふのう | Không kiểm soát được |', 'system', 17, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005018, 8005, NULL, 'markdown_book', 'Rule 18 — Báo dời lịch / スケジュール変更連絡', '# Rule 18 — Báo dời lịch / スケジュール変更連絡
> **Luận điểm.** Reschedule là việc thường xuyên nhưng làm sai dễ mất thiện cảm. Cấu trúc: **Apology → Reason (ngắn) → New options (2-3) → Action who updates calendar**. Báo trễ + chỉ 1 option + không update lịch dùm = sếp/khách bực.
>
> リスケ連絡4要素：①謝罪、②理由（簡潔）、③代替候補2-3案、④カレンダーを誰が更新するか明示。
>
> **Liên quan:** rule 14 (broadcast).
> Sách 01 (Email) Rule 16 — リスケ依頼.
> Sách 03 (Họp) Rule 02 — invite mail.

---

## Bối cảnh / 場面
Em Dũng phát hiện thứ Hai 9h: họp với anh Matsumoto thứ Ba 14h trùng họp nội bộ critical. Cần reschedule. Lần đầu Dũng báo trễ + chỉ 1 option mới. Lần 2 đúng cấu trúc.

---

## Hội thoại XẤU — báo trễ + 1 option
*thứ Ba 11h, mail · reply 13h*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、明日の14時の会議、社内事情で参加できなくなりました。来週の同じ時間でいかがでしょうか？」 |
| **松本PM** | 「ズンさん、3時間前の連絡は厳しいです。それと、来週同じ時間は私が出張中です。**他の候補日時** はありますか？」 |
| **ズン** | 「すみません、調整して再度お送りします…」 |
| **松本PM** | 「リスケ連絡は **24時間以上前 + 候補3つ** が原則ですよ。」 |

**Vì sao xấu:** (1) Báo trước 3 giờ — Nhật chuẩn 24h trước. (2) 1 option duy nhất + trùng với khách. (3) Không update calendar dùm khách.

---

## Hội thoại TỐT — 24h trước + 3 options + action
*thứ 2 9:30, mail · 11h · 11:05*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「件名：【リスケ依頼】4/23(火)14時 定例会議」(body — see template) |
| **松本PM** | 「ご丁寧にありがとうございます。**候補②(4/24 木 10時)** で確定しましょう。」 |
| **ズン** | 「ありがとうございます。**こちらでカレンダー更新 + 新規招待をお送りします** 【1】。会議室・Zoom リンクも変更不要です。」 |
| **松本PM** | 「承知しました。新しい招待をお待ちしております。」 |

📝 **Ghi chú:**
- 【1】**「こちらでカレンダー更新」** — bên gây reschedule chịu trách nhiệm update calendar. Không bắt khách tự update.
- Subject 「【リスケ依頼】+ 日時 nguyên gốc」 — khách nhìn subject là biết.
- Body có đủ: lý do ngắn (1 dòng) + 3 option mới + action.

---

## Cấu trúc reschedule mail (4 phần)
```
Subject: 【リスケ依頼】〇月〇日(〇)〇〇時 〇〇会議

〇〇様
お世話になっております。〇〇でございます。

【お詫び】
直前のご連絡となり恐縮ですが…

【理由】
〇〇のため、当初予定の〇〇に参加できなくなりました。

【代替候補】
① 〇月〇日(〇) 〇〇:〇〇〜〇〇:〇〇
② 〇月〇日(〇) 〇〇:〇〇〜〇〇:〇〇
③ 〇月〇日(〇) 〇〇:〇〇〜〇〇:〇〇

【次のアクション】
ご都合よろしい候補をご返信ください。
当方にてカレンダー更新および新規招待をお送りいたします。

何卒よろしくお願い申し上げます。
```

---

## Cụm từ mẫu
> **「お詫び → 理由 → 候補3つ → カレンダー更新の責任明示。」**
>
> *24h 前を原則。trễ hơn = phone trước.*

---

## Tránh
- Báo trước 3 giờ — phải kèm phone call xin lỗi.
- 1 option duy nhất — khách phải tự đề xuất → mất thời gian.
- "ご都合の良い時間でお願いします" mở — quá rộng, đùn cho khách.
- Reschedule mà bắt khách tự update calendar — không lịch sự.

---

## Template box
Xem `templates[0]` của file conversation: **email_invite — reschedule format**.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| リスケ | risuke | Reschedule (略) |
| 候補 | こうほう | Phương án / candidate |
| カレンダー更新 | カレンダーこうしん | Update lịch |
| 新規招待 | しんきしょうたい | Invite mới |
| 直前 | ちょくぜん | Sát giờ |
| 当方 | とうほう | Chúng tôi (formal) |
| 出張中 | しゅっちょうちゅう | Đang đi công tác |
| お手数 | おてすう | Phiền (làm phiền) |', 'system', 18, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005019, 8005, NULL, 'markdown_book', 'Rule 19 — Báo vắng / 不在連絡 (休暇 / 病欠)', '# Rule 19 — Báo vắng / 不在連絡 (休暇 / 病欠)
> **Luận điểm.** Báo vắng (nghỉ phép, ốm) phải có 4 yếu tố: **(1) Thông báo trước 24h** (trừ ốm đột xuất), **(2) Ngày return cụ thể**, **(3) Cover person** (ai thay), **(4) Out-of-office message** auto-reply email/Slack.
>
> 不在連絡4要素：①24時間前通知（病欠は除く）、②復帰日明示、③代行者指定、④自動返信設定。
>
> **Liên quan:** rule 14 (broadcast), rule 33 (退職/長期休暇).

---

## Bối cảnh / 場面
Em Dũng cần xin nghỉ thứ Sáu để dự đám cưới em họ. Lần đầu báo trước 12 giờ + không có cover person. Lần 2 đầy đủ.

---

## Hội thoại XẤU — báo trễ + không cover
*thứ 5 21h, Slack DM chị Hương · thứ 5 22h*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、明日の金曜、休みたいです。」 |
| **フオン** | 「えっ、12時間前？明日松本様との会議があるよ。誰が代わる？」 |
| **ズン** | 「あ、忘れてました…」 |
| **フオン** | 「休暇は **24時間前 + 代行者指定 + 復帰日 + 自動返信** が基本。今からじゃ松本様にも迷惑かかる。」 |

**Vì sao xấu:** Báo 12h trước + chỉ thông báo "muốn nghỉ", không có Plan cover. Sếp phải tự xếp lại.

---

## Hội thoại TỐT — đầy đủ 4 yếu tố, 1 tuần trước
*thứ 6 tuần trước, mail chị Hương + cc team · 4/25 thứ 5 17h, Slack #phase2*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「件名：【休暇申請】4/26(金) 終日不在のご連絡」(body — see template) |
| **フオン** | 「OK、休暇承認します。」 |
| **ズン** | 「@here 念のため再連絡。**明日4/26(金)1日不在**。代行：松本様会議はトゥアン、Slack/メール対応はハイ。**復帰：4/29(月)朝礼から**【1】。自動返信も設定済みです。」 |
| **トゥアン** | 「松本様会議の引き継ぎ資料、確認しました。任せて。」 |

📝 **Ghi chú:**
- 【1】**「念のため再連絡」 + 4 yếu tố** — báo lần 1 (1 tuần trước, formal email) + lần 2 (1 ngày trước, Slack reminder).
- Out-of-office mail: 「〇月〇日まで休暇のため不在です。緊急の場合は〇〇まで」.

---

## Cấu trúc 不在連絡 (4 yếu tố)
```
件名：【休暇申請 / 病欠】〇月〇日(〇) 終日不在
→ 形式：mail (formal) + Slack reminder (1 ngày trước)

【期間】〇月〇日(〇) 〇〇:〇〇〜〇月〇日(〇) 〇〇:〇〇
【復帰】〇月〇日(〇) 〇〇〜（朝礼参加 / 通常勤務）

【代行者・引き継ぎ】
  - 松本様 関連：〇〇 (連絡先：〇〇)
  - Slack/メール：〇〇 (連絡先：〇〇)
  - 緊急時：〇〇 (電話：〇〇)

【自動返信設定】
  - メール：〇月〇日まで自動返信ON
  - Slack：ステータス「Out of Office」設定

【未完了タスクと引継ぎ状況】
  - 〇〇：〇〇に引継ぎ済み（〇/〇 まで完了予定）
  - 〇〇：〇〇に引継ぎ済み
```

---

## Cụm từ mẫu
> **「期間 / 復帰 / 代行 / 自動返信 — 24時間前以上に。」**

---

## Tránh
- "明日休みます" + nothing else — không cover, không return date.
- Đưa "代行者" mà chưa hỏi đối tượng — phải confirm với cover person trước.
- Quên set out-of-office auto-reply — khách gửi mail không biết, đợi 3 ngày.
- Báo nghỉ đột xuất qua DM 1 người — cả team không biết, ai cũng nhắn cho bạn.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 不在 | ふざい | Vắng mặt |
| 休暇 | きゅうか | Nghỉ phép |
| 病欠 | びょうけつ | Nghỉ ốm |
| 復帰日 | ふっきび | Ngày trở lại |
| 代行者 | だいこうしゃ | Người đại diện / cover |
| 引き継ぎ | ひきつぎ | Bàn giao |
| 自動返信 | じどうへんしん | Auto-reply |
| 終日 | しゅうじつ | Cả ngày |', 'system', 19, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005020, 8005, NULL, 'markdown_book', 'Rule 20 — Báo công tác / 出張連絡', '# Rule 20 — Báo công tác / 出張連絡
> **Luận điểm.** Báo công tác phải báo trước **1 tuần** với 4 yếu tố: **(1) Lịch trình + agenda**, **(2) Deliverables (output mong đợi)**, **(3) Reachable status** (online/offline khi nào), **(4) Cover person cho việc thường ngày**. Khác báo nghỉ — công tác vẫn online.
>
> 出張連絡4要素：①日程 + アジェンダ、②期待する deliverable、③reachable 状況、④代行者（通常業務）。休暇と異なり「在席相当」の連絡が必要。
>
> **Liên quan:** rule 14 (broadcast), rule 19 (不在連絡), rule 21 (cross-timezone).

---

## Bối cảnh / 場面
Em Dũng được anh Hà CTO cử sang Tokyo 3 ngày để demo Phase 2 cho anh Nakamura CFO + anh Ōgaki. Cần báo công tác cho team 1 tuần trước.

---

## Hội thoại XẤU — báo trước 2 ngày + thiếu agenda
*thứ 5 17h, Slack*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「皆さん、来週月曜から3日東京出張です。」 |
| **トゥアン** | 「ズン、何のため？私が引き継ぐ部分は？日本との時差中、Slack 見れる？」 |
| **ズン** | 「えっと、デモのためです、引き継ぎは…まだ考えてなくて…」 |
| **トゥアン** | 「出張連絡は **1週間前 + agenda + deliverables + reachable + 代行** が基本。」 |

**Vì sao xấu:** Báo trước 2 ngày + 1 dòng. Team không biết deliverables là gì, không biết khi nào liên lạc được Dũng.

---

## Hội thoại TỐT — 1 tuần trước + đủ 4 yếu tố
*mail subject: "【出張連絡】5/13-5/15 東京 / 白鷗様向け Phase 2 デモ" · reply*

| Speaker | Câu |
|---------|-----|
| **ズン** | (Body theo template) |
| **トゥアン** | 「了解。Phase 3 仕様検討は私が代行します。デモ資料の最終 review、明日金曜にやろう。」 |
| **ハーCTO** | 「ズン、CFO 中村様へは **数値ベース** で報告するように。Phase 2 の数字資料は私もレビューする。」 |
| **ズン** | 「承知しました。**毎晩21時(JST)** に Slack で進捗報告いたします【1】。」 |

📝 **Ghi chú:**
- 【1】**「毎晩21時に進捗報告」** — daily check-in từ Tokyo. Khác với nghỉ phép, công tác vẫn báo cáo daily.

---

## Cấu trúc 出張連絡 mail
```
件名：【出張連絡】〇月〇日〜〇月〇日 〇〇 / 〇〇向け 〇〇

【出張概要】
  - 期間：〇月〇日(〇)〜〇月〇日(〇)
  - 訪問先：〇〇
  - 同行者：〇〇

【目的・アジェンダ】
  Day 1 (〇/〇)：
    AM: 〇〇との打ち合わせ
    PM: 〇〇デモ
  Day 2 (〇/〇)：
    AM: 〇〇
    PM: 〇〇

【期待する deliverables】
  ① 〇〇（〇/〇 までに）
  ② 〇〇（〇/〇 までに）

【Reachable 状況】
  - メール：終日対応可能（時差注意）
  - Slack：21時 (JST) に daily 進捗報告
  - 電話：移動時間帯（10時〜18時 JST）以外は対応可能

【代行者】
  - 通常業務：〇〇
  - 緊急対応：〇〇
```

---

## Cụm từ mẫu
> **「期間 / Agenda / Deliverables / Reachable / 代行 — 1週間前 mail + 出張中 daily check-in。」**

---

## Tránh
- Báo công tác như báo nghỉ ("3 日不在") — công tác là **work travel**, vẫn cần report.
- Bỏ "expected deliverables" — sếp không biết kỳ vọng gì từ chuyến đi.
- "電話に出れません" — công tác vẫn nên reachable trừ giờ họp/di chuyển.
- Bỏ daily check-in — sếp/team mất visibility 3 ngày.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 出張 | しゅっちょう | Công tác |
| 訪問先 | ほうもんさき | Nơi đến / địa điểm |
| 同行者 | どうこうしゃ | Người đi cùng |
| 期待する | きたいする | Kỳ vọng |
| 移動時間帯 | いどうじかんたい | Khung giờ di chuyển |
| 終日 | しゅうじつ | Cả ngày |
| デモ | demo | Demo |
| 数値ベース | すうちベース | Dựa trên số liệu |', 'system', 20, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005021, 8005, NULL, 'markdown_book', 'Rule 21 — Liên lạc cross-timezone (VN-JP) / 海外チームへの時差連絡', '# Rule 21 — Liên lạc cross-timezone (VN-JP) / 海外チームへの時差連絡
> **Luận điểm.** VN-JP cách 2 giờ (mùa hè), 4 giờ (Hokkaido). Khi chia sẻ thông tin với team Nhật, không nói "明日10時" mà nói "**10:00 JST (08:00 ICT)**". Quy tắc: **Always UTC anchor + async-first + daily handoff**.
>
> 海外チームへの時差連絡3原則：①時刻は必ず UTC または『JST (ICT)』併記、②async 前提（即返信を期待しない）、③ daily handoff message（VN PM 18時 → JP AM 9時の引き継ぎ）。
>
> **Liên quan:** rule 14 (broadcast), rule 16 (Slack), rule 20 (出張).

---

## Bối cảnh / 場面
Em Dũng cộng tác với anh Tanaka PMO ở Hakuō. Lần đầu Dũng dùng "明日" mơ hồ + expect anh Tanaka reply trong 5 phút. Lần 2 áp dụng UTC anchor + async + daily handoff.

---

## Hội thoại XẤU — không UTC + expect sync reply
*VN 16h thứ Hai, Slack · JP 18h, đã offline · VN 17h · JP 翌朝 9h*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「田中さん、明日10時から会議できますか？」 |
| **田中PMO** | (không reply) |
| **ズン** | 「田中さん？返信お待ちしています。」 |
| **田中PMO** | 「ズンさん、おはようございます。『**明日10時**』が JP の明日 (火 10時 JST) なのか、VN の明日 (月翌日 10時 ICT = 火 12時 JST) なのか分からないです…」 |

**Vì sao xấu:** L1 「明日」 mơ hồ vì 2 nước cùng đêm khác. L3 sai expectation — anh Tanaka đã offline. L4 ambiguity nữa: "10時" của VN hay JP?

---

## Hội thoại TỐT — UTC anchor + async + handoff
| Speaker | Câu |
|---------|-----|
| **L1** | **ズン** *(VN 16h thứ Hai, Slack)* | 「田中さん、お疲れ様です。下記の時間帯で会議はいかがでしょうか？  
  - **2026/4/22 (火) 10:00-11:00 JST (= 08:00-09:00 ICT)**【1】  
  - **2026/4/22 (火) 14:00-15:00 JST (= 12:00-13:00 ICT)**  
  ご都合が合う方を、明日の朝 (JST) までにお返事いただければ幸いです【2】。」 |
| **L2** | **田中PMO** *(JP 翌朝 9:30)* | 「おはようございます。10:00 JST で確定でお願いします。」 |
| **L3** | **ズン** *(VN 18h thứ Hai, EOD handoff Slack #phase3)* | 「**【EOD Handoff VN→JP】**【3】  
  - Done today: 〇〇  
  - Pending JP review: 〇〇 (PR link)  
  - JP team が朝確認: ① 〇〇 ② 〇〇  
  - 緊急時: トゥアン (+84-...) または ズン (24h reachable)」 |
| **L4** | **田中PMO** *(JP 9:00 翌朝)* | 「Handoff 受領。① と ② を朝のうちに review します。」 |

📝 **Ghi chú:**
- 【1】**「JST (= 〇 ICT)」** — luôn ghi cả 2 timezone. Tránh "明日" / "明後日" mơ hồ.
- 【2】**「明日の朝 (JST) までに」** — async expectation: "khi nào trước"chứ không phải "ngay lập tức".
- 【3】**「EOD Handoff」** — VN end-of-day (18h ICT = 20h JST) là start-of-day JP hôm sau (9h JST). Bàn giao 1 message — JP team sáng đọc là biết tình hình.

---

## Time format chuẩn cross-timezone
✅ **Đúng:**
- 「2026/4/22 (火) 10:00 JST (= 08:00 ICT)」
- 「明日朝 9:00 JST」
- 「来週月曜午後 (JST 14時)」

❌ **Sai:**
- 「明日10時」 (whose 明日? whose 10?)
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

## Cụm từ mẫu
> **「JST (ICT) 併記 / async 前提 / EOD Handoff message」 = cross-timezone 3 trụ cột。**

---

## Tránh
- 「明日」「来週」「夕方」 — relative time ambiguous khác timezone.
- Expect Slack reply trong 5 phút khi đối phương đã EOD.
- Schedule họp 8h JST (= 6h ICT) — VN chưa làm việc.
- Bỏ daily handoff — JP team sáng dậy không biết VN team đã làm gì 12 giờ qua.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 時差 | じさ | Múi giờ |
| 海外チーム | かいがいチーム | Team nước ngoài |
| 引き継ぎ | ひきつぎ | Bàn giao |
| 併記 | へいき | Ghi cả hai |
| 終業時 | しゅうぎょうじ | End of day |
| 始業時 | しぎょうじ | Start of day |
| 同期的 | どうきてき | Sync (đồng bộ) |
| 非同期 | ひどうき | Async |', 'system', 21, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005022, 8005, NULL, 'markdown_book', 'Rule 22 — Khi nào cần tham vấn vs tự quyết / 相談 vs 自己決定', '# Rule 22 — Khi nào cần tham vấn vs tự quyết / 相談 vs 自己決定
> **Luận điểm.** Không phải việc gì cũng phải tham vấn (相談), cũng không phải việc gì cũng tự quyết. Quyết theo **decision tree 2 trục**: **(1) Impact** (ảnh hưởng tới ai? sai thì hệ quả gì?) × **(2) Reversibility** (có rollback được không?). Quy tắc: **Impact lớn × Khó rollback → BẮT BUỘC tham vấn**. Impact nhỏ × Rollback dễ → tự quyết, báo cáo sau.
>
> 相談 vs 自己決定の判断軸：①影響範囲（誰に・どこまで）×②可逆性（やり直せるか）。両方とも「大」なら必ず相談。両方「小」なら自己決定 + 事後報告。
>
> **Liên quan:** rule 23 (chuẩn bị trước tham vấn), rule 25 (hỏi 判断材料), rule 30 (持ち帰り).

---

## Bối cảnh / 場面
Sáng thứ Tư. Em Dũng đang code 1 mình thì gặp 2 quyết định cùng lúc:
- **Quyết định A** — đổi tên biến `userId` → `user_id` trong file FE local (chưa merge)
- **Quyết định B** — đổi schema DB column `user_id` → `member_id` (production, đã có 50k record)

Lần đầu Dũng tham vấn cả 2 → chị Hương cau mày. Lần 2 áp decision tree.

---

## Hội thoại XẤU — tham vấn cả việc nhỏ
| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、ご相談です。FEのローカルブランチで `userId` を `user_id` にリネームしたいのですが、よろしいでしょうか?」 |
| **フオン** | 「それ、私に聞くこと?ローカル・未マージ・あなた1人の作業範囲でしょ?」 |
| **ズン** | 「あ、念のため…」 |
| **フオン** | 「自己決定で OK、事後報告だけして。逆に DB の `user_id` を変える話があれば、それは絶対相談。判断軸を理解して。」 |

**Vì sao xấu:** L1 là quyết định **impact nhỏ** (chỉ local FE branch) × **reversibility cao** (chưa merge, undo dễ) → tự quyết. Tham vấn việc nhỏ làm sếp loãng tập trung và làm Dũng trông thiếu tự tin.

---

## Hội thoại TỐT — phân loại theo decision tree
| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、判断軸に従って2件を整理しました。1件は事後報告、1件はご相談です【1】。」 |
| **フオン** | 「うん、聞きます。」 |
| **ズン** | 「**事後報告:** FEローカルブランチで `userId` を `user_id` にリネームしました。影響範囲ローカル + 未マージで可逆性も高いため自己決定としました【2】。」 |
| **ズン** | 「**ご相談:** DB の `user_id` カラムを `member_id` にリネームする提案がチームから出ております。本番5万レコード + 7サービスが参照しており、影響大 + 不可逆性高いため、独断は避けたく存じます【3】。」 |
| **フオン** | 「正しい切り分けね。1件目は OK、2件目はハーCTOも含めた相談会議をセットして。木曜午後に。」 |

📝 **Ghi chú:**
- 【1】**「判断軸に従って整理しました」** — show rằng Dũng đã tự phân loại trước. Sếp tin tưởng.
- 【2】**「影響範囲ローカル + 未マージで可逆性も高い」** — nêu rõ 2 trục để justify việc tự quyết.
- 【3】**「影響大 + 不可逆性高い」** — đối ngược: lý do tham vấn cũng theo 2 trục.

---

## Decision Tree
```
                     Reversibility (có rollback được không?)
                    ┌───────────────┬───────────────┐
                    │     CAO       │     THẤP      │
        ┌───────────┼───────────────┼───────────────┤
        │   NHỎ     │ Tự quyết      │ Tự quyết +    │
 Impact │           │ + 事後報告    │ ngay 連絡     │
        ├───────────┼───────────────┼───────────────┤
        │   LỚN     │ Tham vấn nhanh│ ⚠ BẮT BUỘC   │
        │           │ (Slack thread)│ 相談 + 稟議  │
        └───────────┴───────────────┴───────────────┘
```

---

## Cụm từ mẫu
> **「影響範囲 × 可逆性」 — 両方『大』なら必ず相談。両方『小』なら自己決定 + 事後報告で十分。」**

---

## Tránh
- Tham vấn cả việc nhỏ → sếp loãng + Dũng thiếu tự tin.
- Tự quyết việc impact lớn / khó rollback → 1 sai lầm = mất 1 tuần khắc phục.
- 「念のため」 lý do duy nhất để tham vấn → không hợp lệ. Phải nêu rõ 影響 hoặc 不可逆性.
- Bỏ 事後報告 sau khi tự quyết → sếp không biết gì = vẫn là báo cáo sót.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 相談 | そうだん | Tham vấn |
| 自己決定 | じこけってい | Tự quyết |
| 判断軸 | はんだんじく | Trục đánh giá |
| 影響範囲 | えいきょうはんい | Phạm vi ảnh hưởng |
| 可逆性 | かぎゃくせい | Tính rollback được |
| 不可逆 | ふかぎゃく | Không rollback được |
| 事後報告 | じごほうこく | Báo cáo sau khi đã làm |
| 稟議 | りんぎ | Quy trình duyệt nội bộ |', 'system', 22, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005023, 8005, NULL, 'markdown_book', 'Rule 23 — Chuẩn bị trước khi tham vấn / 相談前の準備', '# Rule 23 — Chuẩn bị trước khi tham vấn / 相談前の準備
> **Luận điểm.** Tham vấn không phải "đi hỏi cho biết" mà là **xin sếp giúp ra quyết định**. Trước khi gõ cửa, junior phải có sẵn **3 bộ vật liệu**: (1) **5W1H tình huống** (What/When/Where/Who/Why/How), (2) **3 case-study tham chiếu** (mình đã làm gì? team từng gặp chưa? Google/docs có gì?), (3) **仮説 (giả thuyết)** — phán đoán của bản thân + lý do. Thiếu cả 3 = sếp phải hỏi ngược → tham vấn thành interview.
>
> 相談前に必ず揃える3点：①5W1H、②3つの参考ケース、③自分の仮説。これがないと「相談」ではなく「丸投げ」。
>
> **Liên quan:** rule 22 (判断軸), rule 24 (切り出し), rule 25 (判断材料). Sách 02 rule 14 (5W1H メモ).

---

## Bối cảnh / 場面
Em Linh (intern Marketing) gặp vấn đề: nhà cung cấp print brochure báo trễ 3 ngày. Linh chạy lên hỏi anh Dũng. Lần đầu Linh đến tay không. Lần 2 chuẩn bị đủ 3 bộ vật liệu.

---

## Hội thoại XẤU — đến tay không
| Speaker | Câu |
|---------|-----|
| **リン** | 「ズンさん、ちょっとご相談…印刷会社が3日遅れるって言ってるんですけど、どうしたらいいですか?」 |
| **ズン** | 「いつ連絡来た?どこの印刷会社?何が遅れる?代替業者は探した?他のチームは過去に同じ問題なかった?」 |
| **リン** | 「あ、えっと…まだ何も…」 |
| **ズン** | 「リン、相談する前に最低3つは揃えて: ①5W1H、②過去事例、③自分の仮説。今その状態だと、僕がリンの代わりに調査することになる。」 |

**Vì sao xấu:** L1 là 丸投げ (đẩy hết). L2 sếp phải tự hỏi 5 câu = đảo ngược vai trò. L4 chỉ ra: tham vấn không phải để sếp điều tra hộ.

---

## Hội thoại TỐT — chuẩn bị 3 bộ vật liệu
| Speaker | Câu |
|---------|-----|
| **リン** | 「ズンさん、ご相談したいことがあるのですが、5分ほどお時間よろしいでしょうか?事前に状況・参考事例・仮説をまとめてあります【1】。」 |
| **ズン** | 「ばっちり、聞きます。」 |
| **リン** | 「**①状況 (5W1H):** 4/22 16時、印刷会社A社から電話。Phase2 ローンチ用ブロシュア500部、4/25納品予定が4/28に変更。理由は『紙の供給遅れ』。【2】」 |
| **リン** | 「**②参考事例:** (a) 昨年 Marketing チームで類似ケース — B社で代替印刷、コスト+10%。(b) 社内 Wiki で印刷会社リスト3社確認。(c) C社・D社にも電話済、C社は4/26納品可能・コスト同等、D社は4/24納品可能・コスト+15%。【3】」 |
| **リン** | 「**③仮説:** C社で代替するのが最適と考えております。理由は納品遅れが1日のみ + コスト同等のためです。ただし契約変更の権限が私にないため、ご判断をお願いいたします【4】。」 |
| **ズン** | 「完璧な相談だね。仮説に賛成、C社で進めて。契約変更はチームメールで僕も入れて。」 |

📝 **Ghi chú:**
- 【1】**「事前に状況・参考事例・仮説をまとめてあります」** — 1 câu mở đã show 3 bộ vật liệu. Sếp biết ngay là tham vấn nghiêm túc.
- 【2】**①5W1H** — Linh đã có sẵn date/time/quantity/reason. Sếp không phải hỏi lại.
- 【3】**②3 case** — internal precedent + alternative options đã call. Đây là phần khó nhất nhưng critical: show đã tự research.
- 【4】**③仮説 + 自分にない権限** — Linh đề xuất phương án + nói rõ tại sao tham vấn (権限). Đây không phải 丸投げ mà là tham vấn để duyệt.

---

## 3 bộ vật liệu — checklist
```
□ ① 5W1H
   What:    Việc gì xảy ra?
   When:    Khi nào? (date + time)
   Where:   Ở đâu / hệ thống nào?
   Who:     Ai liên quan?
   Why:     Nguyên nhân (theo bên kia / theo mình)
   How:     Quy mô / mức độ

□ ② 3 case tham chiếu
   (a) Internal precedent:    Team có từng gặp chưa?
   (b) External reference:    Google/Wiki/Docs có gì?
   (c) Alternative options:   Em đã thử / call thêm những cái nào?

□ ③ 仮説 (giả thuyết)
   - Phương án em nghĩ tốt nhất là gì?
   - Lý do (1-2 dòng)
   - Lý do em vẫn cần tham vấn (権限 / 影響大 / etc.)
```

---

## Cụm từ mẫu
> **「①5W1H ②過去事例 ③自分の仮説 — この3点を持って初めて『相談』。なければ『丸投げ』。」**

---

## Tránh
- 「どうしたらいいですか?」 thuần — không có gợi ý nào của bản thân = 丸投げ.
- Trình bày quá dài 5W1H mà không có 仮説 → sếp vẫn phải tự nghĩ.
- 仮説 quá yếu kiểu 「分かりません、教えてください」 — nói thẳng "em không có ý tưởng" tốt hơn giả vờ có.
- Tham vấn 5 phút mà chuẩn bị 30 giây → sếp cảm nhận được sự thiếu nghiêm túc.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 仮説 | かせつ | Giả thuyết / phán đoán ban đầu |
| 丸投げ | まるなげ | Đẩy hết / phó mặc |
| 参考事例 | さんこうじれい | Case-study tham chiếu |
| 代替案 | だいたいあん | Phương án thay thế |
| 権限 | けんげん | Quyền (quyết) |
| 切り分け | きりわけ | Phân tách (vấn đề) |
| 状況整理 | じょうきょうせいり | Tổ chức tình huống |', 'system', 23, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005024, 8005, NULL, 'markdown_book', 'Rule 24 — Cách mở lời tham vấn cấp trên / 上司への切り出し', '# Rule 24 — Cách mở lời tham vấn cấp trên / 上司への切り出し
> **Luận điểm.** Câu mở lời quyết định 70% chất lượng buổi tham vấn. Mở lời sai → sếp ngắt giữa chừng hoặc reschedule. Công thức 4 thành phần: **(1) Title sếp + (2) Báo có việc tham vấn + (3) Hỏi xin thời gian (1-2 từ về khoảng) + (4) Lý do urgency hoặc topic ngắn**. Mẫu chuẩn: 「**ご相談したいことがあるのですが、今お時間〇分ほどよろしいでしょうか?**」
>
> 切り出しの定型：「ご相談したいことがあるのですが、今(〇分ほど)お時間よろしいでしょうか?」ない時間枠＋話題短く。
>
> **Liên quan:** rule 23 (準備), rule 25 (判断材料), rule 29 (客先).

---

## Bối cảnh / 場面
Em Dũng cần tham vấn anh Hà CTO về việc chọn AWS region cho production. Lần đầu bám đuôi anh Hà ở hành lang. Lần 2 dùng pattern chuẩn.

---

## Hội thoại XẤU — bắt sếp giữa hành lang, không hỏi giờ
*bắt anh Hà ở hành lang · đang vội đi họp*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「あ、ハーCTO、ちょっと…AWS リージョンの話で…」 |
| **ハーCTO** | 「すみません、今会議に向かう途中で…」 |
| **ズン** | 「あ、すぐ終わります、東京と大阪どっちが…」 |
| **ハーCTO** | 「ズン、相談は **時間と話題の長さ** を先に伝えて。今はリ無理。15時以降で予定取って。」 |

**Vì sao xấu:** L1 bắt sếp lúc đang đi (không hỏi xem có rảnh không) + topic mơ hồ. L3 cố ép sếp dừng lại — không respect time. L4 chỉ ra: phải hỏi giờ trước.

---

## Hội thoại TỐT — Slack DM trước, gặp lúc sếp đồng ý
*Slack DM 14:30 · Slack 14:45 · 16時、会議室B*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ハーCTO、お疲れ様です。**ご相談したいことがあるのですが、本日中に15分ほどお時間いただけますでしょうか?**【1】 トピックは『Phase 3 の AWS リージョン選定 (東京 vs 大阪)』、判断材料として **3社見積 + ベンチマーク結果を準備済**です【2】。緊急度は中(今週中の決定で間に合う)です【3】。」 |
| **ハーCTO** | 「16時から15分なら取れます。会議室Bで。」 |
| **ズン** | 「ハーCTO、お忙しい中ありがとうございます。それでは、AWSリージョン選定の件、ご相談させていただきます【4】。」 |

📝 **Ghi chú:**
- 【1】**「ご相談したいことがあるのですが、〇分ほどお時間…」** — pattern chuẩn. 「〇分ほど」 cho sếp ước lượng được — không "ちょっと" mơ hồ.
- 【2】**Topic + 判断材料** — 1 dòng cho sếp biết tham vấn về cái gì, đã có dữ kiện gì. Sếp tự ước lượng được mức độ phức tạp.
- 【3】**緊急度 (中/低/高)** — sếp ưu tiên đúng. Không nói = sếp tự coi là "low".
- 【4】**「ご相談させていただきます」** — câu mở khi vào phòng. Lịch sự, formal. (「ご相談する」 cũng đúng, nhưng 「ご相談したい」 + 「のですが」 mềm hơn cho cấp trên).

---

## Pattern theo channel
| Channel | Câu mở | Ghi chú |
|---------|--------|---------|
| Slack DM (async) | 「ご相談したいことがあるのですが、〇〇までに〇分ほどお時間いただけますでしょうか?トピック: 〇〇」 | Có thể hỏi "khi nào" thay vì "now". |
| Đứng dậy đến bàn sếp | 「〇〇副部長、今〇分ほどお時間よろしいでしょうか?〇〇のご相談です」 | Phải xem sếp đang gì rồi mới approach. |
| Sếp đang gọi điện / họp | KHÔNG approach. Slack DM. | Không bao giờ ngắt. |
| Hành lang gặp tình cờ | 「お疲れ様です、〇〇のご相談で〇分ほど時間取りたいのですが、本日中で可能でしょうか?」 | Hỏi schedule, không ép tại chỗ. |

---

## Cụm từ mẫu
> **「ご相談したいことがあるのですが、〇分ほどお時間よろしいでしょうか?トピック:〇〇、緊急度:〇〇」**
>
> *Time + Topic + Urgency = 3 thông tin tối thiểu trong câu mở.*

---

## Tránh
- 「ちょっと…」「すぐ終わるんですけど…」 — mơ hồ time, sếp không ước lượng được.
- Bắt sếp đang đi / đang gọi điện / đang code deep work — phải Slack DM trước.
- Câu mở có topic dài 5 dòng — sếp chưa đồng ý đã bị nghe lan man.
- 「相談したい」 đơn thuần — thiếu kính ngữ + thiếu hỏi thời gian. Phải 「ご相談したい」+「いただけますでしょうか」.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 切り出し | きりだし | Cách mở lời |
| お時間 | おじかん | Thời gian (kính ngữ) |
| 緊急度 | きんきゅうど | Mức độ khẩn cấp |
| 判断材料 | はんだんざいりょう | Dữ kiện ra quyết định |
| 見積 | みつもり | Báo giá |
| 相談させていただきます | そうだんさせていただきます | Em xin phép tham vấn (formal) |', 'system', 24, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005025, 8005, NULL, 'markdown_book', 'Rule 25 — Hỏi judgment material thay vì hỏi đáp án / 答えではなく判断材料を求める', '# Rule 25 — Hỏi judgment material thay vì hỏi đáp án / 答えではなく判断材料を求める
> **Luận điểm.** Junior thường hỏi 「どうしたらいいですか?」 → mong sếp ra **đáp án**. Pattern này biến tham vấn thành "đẩy quyết định". Pattern đúng: hỏi **判断材料** — "em đang nghĩ A và B, anh thấy thế nào?" / "có yếu tố nào em chưa tính tới không?" / "anh từng gặp tình huống tương tự thì xử lý ra sao?". Sếp giúp **bồi thêm dữ kiện**, junior **vẫn là người ra quyết định**.
>
> 答えを聞かず、判断材料を聞く。「AかBで悩んでいます。〇〇の観点で見落としはありますか?」が黄金パターン。
>
> **Liên quan:** rule 23 (準備), rule 26 (複数案), rule 28 (受ける側).

---

## Bối cảnh / 場面
Em Dũng tham vấn chị Hương về việc deploy vào weekend (rủi ro nhưng tránh peak hour) hay weekday morning (an toàn nhưng có thể gây downtime cho user). Lần đầu Dũng hỏi đáp án. Lần 2 hỏi judgment material.

---

## Hội thoại XẤU — hỏi đáp án thuần
| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、Phase 2 のリリース、土曜にしますか?月曜にしますか?どっちがいいですか?」 |
| **フオン** | 「で、あなたはどっちがいいと思ってるの?」 |
| **ズン** | 「えっと…分からなくて…」 |
| **フオン** | 「ズン、私が決めるんじゃない。あなたが決める。私の役割は **見落としを指摘** すること。仮説と判断材料を持ってきて。」 |

**Vì sao xấu:** L1 hỏi đáp án trắng đen, không có tư duy của bản thân. L2 chị Hương đảo lại — "em nghĩ thế nào?". L4 cốt lõi: sếp không phải để ra đáp án, mà để **bồi dữ kiện**.

---

## Hội thoại TỐT — hỏi判断材料
| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、Phase 2 リリース時期について、A『土曜深夜』とB『月曜早朝』で悩んでおります。私は B 寄りなのですが、見落としがないか **判断材料を補強** していただきたく存じます【1】。」 |
| **フオン** | 「うん、続けて。」 |
| **ズン** | 「**A 土曜深夜:** メリット = ユーザー影響最小、デメリット = エンジニア稼働 + 障害時呼び出し体制が薄い。**B 月曜早朝:** メリット = フル体制で対応、デメリット = AM ピーク時に近く障害時の影響大【2】。」 |
| **ズン** | 「過去 Phase 1 のデプロイは月曜早朝でした。**観点として、お客様の月曜業務影響をどう評価すべきか** がポイントかと思っております【3】。」 |
| **フオン** | 「その観点正しい。追加で、松本様サイドが月曜午前に毎週定例会あるから、リリース直後に何かあると会議中に騒ぎになる。それを考えると土曜深夜+待機体制が現実的。私は土曜推し。最終判断は ズン。」 |
| **ズン** | 「ありがとうございます。土曜深夜 + トゥアン待機体制で進めます【4】。」 |

📝 **Ghi chú:**
- 【1】**「判断材料を補強していただきたく存じます」** — câu vàng. Show rằng Dũng tự ra quyết định, sếp chỉ giúp **add data**.
- 【2】**A vs B với pros/cons** — 仮説 sẵn sàng. Sếp không phải tự nghĩ.
- 【3】**「観点として〇〇」** — Dũng tự nêu axis cần xét. Mở đường cho sếp bồi axis mới.
- 【4】**「進めます」** — Dũng vẫn là người quyết. Sếp đề xuất nhưng decision Dũng take.

---

## 4 pattern câu hỏi 判断材料
```
Pattern 1: 見落とし系
「〇〇と〇〇で悩んでおります。見落としている観点はありますか?」

Pattern 2: 経験系
「過去に類似事例がございましたら、どう判断されたか伺えますでしょうか?」

Pattern 3: 観点追加系
「私は〇〇の観点で B 寄りですが、他に重視すべき軸はありますか?」

Pattern 4: 重み付け系
「A はコスト・B は速度を優先していますが、現状はどちらに重みを置くべきでしょうか?」
```

---

## Cụm từ mẫu
> **「答えではなく判断材料を聞く。『AかBで悩んでいます。見落としはありますか?』が黄金パターン。決定はあくまで自分が下す。」**

---

## Tránh
- 「どっちがいいですか?」「正解はどれですか?」 — đẩy quyết định cho sếp.
- 「分からないので教えてください」 thuần — không có 仮説 → tham vấn = giảng bài.
- Hỏi 判断材料 mà sau đó vẫn refuse quyết → phải take ownership.
- Nghe sếp xong rồi "じゃあ〇〇でやります" mà không tóm tại sao — show không suy nghĩ độc lập.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 判断材料 | はんだんざいりょう | Dữ kiện ra quyết định |
| 見落とし | みおとし | Bỏ sót |
| 観点 | かんてん | Góc nhìn / axis đánh giá |
| 補強 | ほきょう | Bồi đắp / củng cố |
| 重み付け | おもみづけ | Đánh trọng số |
| デプロイ | depuroi | Deploy |
| 待機体制 | たいきたいせい | Cơ chế trực |', 'system', 25, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005026, 8005, NULL, 'markdown_book', 'Rule 26 — Mang sẵn nhiều phương án / 複数案を持参', '# Rule 26 — Mang sẵn nhiều phương án / 複数案を持参
> **Luận điểm.** Tham vấn 1 option = "duyệt giùm em" (đẩy quyết định). Tham vấn 2-3 options + pros/cons = "em đã suy nghĩ, sếp giúp chọn axis quan trọng nhất". Quy tắc: **tối thiểu 2, lý tưởng 3 options. Mỗi option có ① cost ② time ③ risk được lượng hóa**. Trong 3 options nên có 1 "**recommend案**" — option Dũng đề xuất + lý do.
>
> 相談には2〜3案を持参。各案にコスト・時間・リスクを定量化。1案だけは『判子押して』のサインで真の相談ではない。
>
> **Liên quan:** rule 23 (準備), rule 25 (判断材料), rule 30 (持ち帰り).

---

## Bối cảnh / 場面
Em Hải tham vấn anh Tuấn về việc khắc phục bug performance API. Lần đầu Hải mang 1 phương án đến. Lần 2 chuẩn bị 3 options với pros/cons + recommend.

---

## Hội thoại XẤU — 1 phương án
| Speaker | Câu |
|---------|-----|
| **ハイ** | 「トゥアンさん、API 遅延の件、Redis キャッシュ追加で解決したいんですが、いいですか?」 |
| **トゥアン** | 「それしか考えてないの?他の選択肢は?」 |
| **ハイ** | 「えっと、これが一番速いかと…」 |
| **トゥアン** | 「Redis 追加はインフラコスト+運用コストが乗る。クエリ最適化やインデックス追加で済む可能性もある。**最低3案** 持ってきて、コスト・時間・リスクを並べて比較。」 |

**Vì sao xấu:** L1 chỉ 1 option = không phải tham vấn mà là xin duyệt. L2 anh Tuấn hỏi axis đáng lẽ Hải tự nghĩ. L4 chỉ ra: cần 3 options + 3 trục so sánh.

---

## Hội thoại TỐT — 3 options + matrix
| Speaker | Câu |
|---------|-----|
| **ハイ** | 「トゥアンさん、API 遅延の対応案を3つ準備しました。コスト・時間・リスクで比較しております【1】。」 |
| **トゥアン** | 「いいね、見ます。」 |
| **ハイ** | (画面共有) 「**案A: クエリ最適化** — コスト¥0、期間2日、リスク低 (既存ロジックに影響少)。**案B: インデックス追加** — コスト¥0、期間半日、リスク中 (本番デプロイ時の lock 時間)。**案C: Redis キャッシュ** — コスト+¥3万/月、期間5日、リスク高 (運用工数増 + キャッシュ不整合)【2】。」 |
| **ハイ** | 「**推奨は案B (インデックス追加)** です。理由は半日で実装可能 + 既に index 候補が `EXPLAIN` で特定済み + コスト増なしのためです。リスク中はメンテナンスウィンドウで吸収可能と考えております【3】。」 |
| **トゥアン** | 「分析正しい。Bで進めて。ただ、メンテナンスウィンドウは松本様の許可が要るから、ズンに依頼してね。」 |

📝 **Ghi chú:**
- 【1】**「3つ準備、コスト・時間・リスクで比較」** — câu mở show ngay format. Anh Tuấn biết chuẩn bị nghiêm túc.
- 【2】**Matrix 3×3** — 3 options × 3 trục (cost / time / risk). Định lượng: ¥0, 2 ngày, low. Không 「ほぼ」「だいたい」.
- 【3】**「推奨は案B」 + lý do** — Dũng/Hải đã có ý kiến. Sếp confirm hoặc thách thức, không phải nghĩ thay.

---

## Matrix template
```
                  | Cost      | Time   | Risk          | Notes
─────────────────┼───────────┼────────┼───────────────┼─────────────────
案A: 〇〇          | ¥〇      | 〇日   | 低/中/高     | 〇〇
案B: 〇〇 ⭐推奨  | ¥〇      | 〇日   | 低/中/高     | 〇〇
案C: 〇〇          | ¥〇      | 〇日   | 低/中/高     | 〇〇
```

---

## Cụm từ mẫu
> **「最低2案、理想は3案。各案にコスト・時間・リスクを定量化。1案は『推奨』マーク + 理由 1〜2行。」**

---

## Tránh
- 1 option duy nhất → không phải tham vấn, là xin duyệt.
- 3 options nhưng 2 cái dummy (rõ ràng tệ) — sếp nhận ra ngay là gian lận.
- 「リスク低」「コスト安い」 mơ hồ — phải số ¥, ngày, %.
- Recommend yếu kiểu 「どれでもいいです」 — không có ý kiến = không suy nghĩ.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 複数案 | ふくすうあん | Nhiều phương án |
| 持参 | じさん | Mang theo |
| 推奨 | すいしょう | Đề xuất / khuyên dùng |
| 比較 | ひかく | So sánh |
| 定量化 | ていりょうか | Định lượng |
| 運用工数 | うんようこうすう | Chi phí vận hành (giờ) |
| メンテナンスウィンドウ | maintenance window | Cửa sổ bảo trì |
| 不整合 | ふせいごう | Không nhất quán |', 'system', 26, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005027, 8005, NULL, 'markdown_book', 'Rule 27 — Lưu log tham vấn / 相談ログ', '# Rule 27 — Lưu log tham vấn / 相談ログ
> **Luận điểm.** Tham vấn miệng → quyết định → 1 tháng sau ai cũng quên. Khi vấn đề tương tự xảy ra, team lại tham vấn lần nữa = lãng phí. Phải có **Decision Register** (相談ログ): mỗi tham vấn có quyết định ghi vào 1 dòng — **date / topic / options considered / chosen / rationale / reviewer**. Sau 6 tháng → repository tri thức team. Cũng là 防衛 (phòng vệ): khi sếp hoặc khách hỏi "tại sao quyết thế?" → mở log ra, không phải dò trí nhớ.
>
> 相談ログ = decision register。1相談1行：日付・論点・検討案・採用案・理由・承認者。Notion / Confluence / Sheets で団体運用。
>
> **Liên quan:** rule 22 (判断軸), rule 26 (複数案), rule 39 (チーム文化).

---

## Bối cảnh / 場面
Cuối tháng. Anh Hà CTO hỏi: "tại sao Phase 2 dùng MySQL chứ không Postgres?". Lần đầu Dũng không có log → ngồi 1 tiếng đào Slack history. Lần 2 có Decision Register → mở 1 dòng là xong.

---

## Hội thoại XẤU — không có log
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、Phase 3 設計レビューで疑問が出た。Phase 2 で MySQL 採用したのはなぜ?」 |
| **ズン** | 「えっと…3ヶ月前に決めたんですが…理由は…ちょっと記憶が…」 |
| **ハーCTO** | 「Slack を遡る? どのチャネル?」 |
| **ズン** | 「#phase2-tech だったか #db-選定 だったか…」(1時間後)「あ、ありました!松本様の運用チームが MySQL 慣れてるからでした…」 |
| **ハーCTO** | 「決定事項は **Decision Register に1行残す**。1時間使うのは無駄。Notion テンプレ送るから今日中に整備して。」 |

**Vì sao xấu:** L2 trí nhớ không đáng tin sau 3 tháng. L4 đào Slack 1 giờ. L5 chỉ ra: phải có log structured.

---

## Hội thoại TỐT — Decision Register sẵn sàng
*共有画面*

| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「Phase 3 設計レビューで疑問。Phase 2 で MySQL 採用したのはなぜ?」 |
| **ズン** | 「Decision Register をご確認ください。**DR-2026-0118** の1行です【1】。」 |
| **ズン** | 「日付:2026/1/18 / 論点:Phase 2 DB選定 / 検討案:①MySQL ②Postgres ③DynamoDB / 採用:MySQL / 理由:松本様運用チームが MySQL 経験豊富 + ライセンスコスト低 + Phase 1 連携容易 / 承認者:ハーCTO + フオン副部長 / リスク:水平分散時の制約【2】。」 |
| **ハーCTO** | 「完璧。これがあれば 30 秒で議論できる。Phase 3 でも継続して。」 |
| **ズン** | 「はい。**今週分も明日 EOD までに3件追加します**: AWS リージョン、デプロイ時間帯、印刷会社変更です【3】。」 |

📝 **Ghi chú:**
- 【1】**「DR-2026-0118 の1行」** — Decision Register có ID code. Sếp có thể tra cứu ngay.
- 【2】**6 trường tối thiểu** — date / topic / options / chosen / rationale / reviewer + (option) risk. Đầy đủ cho audit.
- 【3】**Cập nhật chủ động** — không đợi sếp hỏi, weekly có routine update.

---

## Cụm từ mẫu
> **「相談で決まったことは Decision Register に1行残す。30秒の手間で、3ヶ月後の1時間を救う。」**

---

## Tránh
- 仅 Slack thread — nhanh nhưng search khó sau 3 tháng.
- Ghi quá vague kiểu 「色々検討した結果 MySQL」 — không có giá trị.
- Bỏ ô 承認者 → khi audit không biết ai duyệt.
- Decision Register 1 lần lập rồi quên — phải có routine cập nhật weekly.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 相談ログ | そうだんログ | Log tham vấn |
| 決定 | けってい | Quyết định |
| 採用案 | さいようあん | Phương án được chọn |
| 検討案 | けんとうあん | Phương án được xem xét |
| 承認者 | しょうにんしゃ | Người duyệt |
| 論点 | ろんてん | Luận điểm / topic |
| 整備する | せいびする | Sắp xếp / build hệ thống |', 'system', 27, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005028, 8005, NULL, 'markdown_book', 'Rule 28 — Khi mình là người được tham vấn / 相談を受ける側', '# Rule 28 — Khi mình là người được tham vấn / 相談を受ける側
> **Luận điểm.** Khi junior tham vấn, **đừng đáp án ngay**. Pattern coaching đúng: **(1) Lặp lại tóm tắt vấn đề (active listening), (2) Hỏi 仮説 của junior trước, (3) Bồi axis junior chưa nghĩ tới, (4) Để junior tự kết luận, (5) Confirm decision + ghi DR**. Trả lời thẳng = junior không học, lần sau lại tham vấn cùng vấn đề.
>
> 相談を受ける時：①要約復唱→②相談者の仮説確認→③欠けている観点を1つ追加→④決定は相談者に下させる→⑤DR化。即答はコーチング失敗。
>
> **Liên quan:** rule 25 (判断材料), rule 27 (DR), rule 34 (新人指導).

---

## Bối cảnh / 場面
Em Linh tham vấn anh Dũng về việc chọn template email cho khách Nhật. Lần đầu Dũng trả lời thẳng → Linh ra về không học gì. Lần 2 Dũng dùng coaching pattern.

---

## Hội thoại XẤU — trả lời thẳng
*không nghĩ · 2週間後 — Linh tham vấn cùng pattern lần nữa · 自覚*

| Speaker | Câu |
|---------|-----|
| **リン** | 「ズンさん、Phase 2 の挨拶メール、テンプレ A と B どっちがいいですか?」 |
| **ズン** | 「B にして。」 |
| **リン** | 「分かりました!」 |
|  | 「Phase 3 の挨拶メールも、A と B どっちですか?」 |
| **ズン** | 「あ、僕がただ答えるだけだと、Linh が判断軸を学べないんだ。次から coaching mode で受けないと…」 |

**Vì sao xấu:** L2 trả lời 1 từ → Linh không hiểu **tại sao** B. L4 lần sau lại tham vấn cùng kiểu = không grow. Coaching = teach how to fish, không phải give fish.

---

## Hội thoại TỐT — coaching pattern 5 step
| Speaker | Câu |
|---------|-----|
| **リン** | 「ズンさん、Phase 2 の挨拶メール、テンプレ A と B どっちがいいですか?」 |
| **ズン** | 「**①要約: AとBで迷っているということだね**【1】。**②リン自身の仮説**は?どっちに寄ってる、その理由は?」 |
| **リン** | 「えっと、A はフォーマル度が高くて、B は親しみやすい感じです…松本様は5回目の取引なので…B 寄りかな…」 |
| **ズン** | 「**③観点を追加すると、『Phase 2 はキックオフ局面』**で、新規スコープへの真剣さも示したい。その軸を入れると?」 |
| **リン** | 「あ、なるほど…キックオフだとフォーマルさも残したい…**A をベースに、最後の1段落だけ親しみやすい表現に変える**のがいいかも【2】。」 |
| **ズン** | 「**④良い結論。それで進めて**【3】。**⑤Decision Register に1行残しておいて**: 論点・検討案・採用・理由・観点【4】。来週レビューするね。」 |
| **リン** | 「ありがとうございます!次回からこの観点で自分で判断できそうです!」 |

📝 **Ghi chú:**
- 【1】**「①要約復唱」** — active listening. Show "anh đang lắng nghe" + bắt buộc Linh confirm.
- 【2】**「Aをベースに最後だけB」** — Linh tự nghĩ ra solution. Đây mới là điểm grow.
- 【3】**「それで進めて」** — Dũng confirm nhưng không "thay quyết". Decision do Linh take.
- 【4】**「DRに1行」** — đóng bằng learning artifact. Lần sau Linh có thể tham chiếu.

---

## Coaching pattern 5 bước
```
① 要約復唱       — "AとBで迷っているということだね"
② 仮説確認        — "リンの仮説は?どっち寄り、その理由は?"
③ 観点追加       — "もう1つの軸を入れると?"
④ 結論を相手に    — "それで進めて" (相手が結論を言う)
⑤ DR化           — Decision Register に1行
```

---

## Cụm từ mẫu
> **「相談を受ける = 答えを返す、ではない。質問で観点を補強し、相手に結論を出させる。」**

---

## Tránh
- 即答 1 từ kiểu 「Bにして」 — junior không học axis.
- Đảo lại quá phũ kiểu 「自分で考えて」 → junior shut down + lần sau không tham vấn.
- Cầm tay ép kiểu 「これしかない」 — không cho junior cơ hội nghĩ.
- Bỏ ⑤ DR化 → tri thức bay theo gió, lần sau lại tham vấn lại cùng pattern.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 受ける側 | うけるがわ | Bên nhận (tham vấn) |
| 要約 | ようやく | Tóm tắt |
| 復唱 | ふくしょう | Lặp lại |
| 仮説 | かせつ | Giả thuyết |
| 観点 | かんてん | Góc nhìn / axis |
| 即答 | そくとう | Trả lời ngay |
| コーチング | coaching | Coaching |
| キックオフ | kickoff | Khởi động |', 'system', 28, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005029, 8005, NULL, 'markdown_book', 'Rule 29 — Tham vấn với khách / 客先への相談', '# Rule 29 — Tham vấn với khách / 客先への相談
> **Luận điểm.** Tham vấn nội bộ và tham vấn với khách **khác hoàn toàn về tone**. Với khách Nhật, không bao giờ dùng 「相談したいことがあるんですが」 (casual với cấp trên nội bộ). Mẫu đúng: 「**ご相談させていただけますでしょうか**」 / 「**ご教示いただきたく存じます**」 — tone formal cao, khiêm nhường (謙譲語) tối đa. Cấu trúc: **(1) Lý do tham vấn** (vì khách rành hơn / vì cần input để tiến tiếp) **+ (2) Phạm vi tham vấn cụ thể** (không hỏi rộng) **+ (3) Khung thời gian khách thuận tiện**.
>
> 客先相談の3要素：①相談理由（顧客の知見が必要）②相談範囲（焦点を絞る）③希望時間枠（顧客都合優先）。形式は最高敬語＋謙譲語。
>
> **Liên quan:** rule 22-26 (相談一般), rule 30 (持ち帰り), Sách 03 rule 29 (顧客交渉).

---

## Bối cảnh / 場面
Em Dũng cần tham vấn anh Matsumoto về việc nên dùng 線形 (linear) hay 段階的 (incremental) approach cho UAT Phase 2. Lần đầu Dũng dùng tone nội bộ. Lần 2 đúng formal pattern.

---

## Hội thoại XẤU — tone nội bộ với khách
*Slack DM*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、UAT のやり方なんですけど、線形でやるか段階的でやるかちょっと相談したくて…」 |
| **松本PM** | 「ズンさん、『ちょっと相談したくて…』は文末を切る不完全文で、客先ではかなり失礼に当たります。それに、何を判断材料にすべきかも示されていないと、こちらも答えようがありません。」 |
| **ズン** | 「すみません…」 |
| **松本PM** | 「客先相談は形式が違います。『ご相談させていただけますでしょうか』+ 焦点 + 希望時間で。」 |

**Vì sao xấu:** L1 「ちょっと相談したくて…」 cắt câu giữa chừng = lỗi manner nghiêm trọng (mức học sinh) khi nói với khách Nhật. Thêm vào, casual tone (đồng nghiệp Việt-Việt OK, khách Nhật KHÔNG). Không có scope, không có time. L4 chỉ ra: client-facing tone phải khác.

---

## Hội thoại TỐT — formal client tone
| Speaker | Câu |
|---------|-----|
| **L1** | **ズン** *(メール)* | 「松本様、お世話になっております。ティエンファットのズンでございます。  
  **件名:【ご相談】Phase 2 UAT 進め方について**  
  Phase 2 の UAT を進めるにあたり、**線形(全機能一括)** か **段階的(機能毎リリース)** かで方針を絞りきれず、**ご相談させていただけますでしょうか**【1】。  
  特にお伺いしたいのは、**御社運用チームの検証リソース確保のしやすさ**でございます【2】。  
  ご都合よろしい時に **15分ほどお時間頂戴できますと幸甚**です。今週後半 (4/24木 PM ~ 4/26土) のうち、ご都合の良い候補を3つお知らせいただけますと幸いです【3】。」 |
| **L2** | **松本PM** *(返信)* | 「ご丁寧にありがとうございます。4/24 (木) 15:00 JST で30分いかがでしょうか。当方からも運用チームの実情をお話しします。」 |
| **L3** | **ズン** *(会議で)* | 「松本様、本日はお時間頂戴し誠にありがとうございます。それでは、UAT 進め方についてご相談させていただきます【4】。」 |

📝 **Ghi chú:**
- 【1】**「ご相談させていただけますでしょうか」** — câu vàng client-facing. Khiêm nhường tối đa. Không "相談したい".
- 【2】**Phạm vi cụ thể** — không hỏi rộng "anh nghĩ sao về UAT" mà focus 1 axis (運用リソース). Khách dễ trả lời + chuẩn bị trước.
- 【3】**Khung thời gian + 候補3つお知らせいただける** — không ép giờ, hỏi 3 option của KHÁCH (không phải gửi 3 option của mình như reschedule). Formal cao.
- 【4】**「ご相談させていただきます」** — câu mở khi vào meeting với khách. Tone đỉnh.

---

## Khác biệt nội bộ vs client-facing
| Yếu tố | Internal (rule 24) | Client-facing (rule 29) |
|--------|---------------------|---------------------------|
| Mở lời | 「ご相談したいことがあるのですが」 | 「ご相談させていただけますでしょうか」 |
| Tham vấn 1 từ | 「相談」 | 「ご相談 / ご教示」 |
| Time framing | 「15分ほどお時間…」 (tự đề xuất time) | 「ご都合の良い候補をお知らせください」 (hỏi time của khách) |
| Phạm vi | Có thể rộng | Phải focus 1 điểm |
| Tone | formal (副部長) | formal cao (謙譲語+丁寧語) |

---

## Cụm từ mẫu
> **「ご相談させていただけますでしょうか + 焦点1つ + ご都合の良い候補をお知らせください」 = client-facing 相談3点セット。**

---

## Tránh
- 「ちょっと相談…」「相談したい」 với khách — quá casual.
- Câu hỏi rộng kiểu 「全体的にどう思われますか?」 — khách không biết focus đâu.
- Tự ấn time kiểu 「明日10時でお願いします」 — chưa hỏi khách rảnh không.
- 「教えてください」 thuần với khách — phải 「ご教示いただきたく存じます」.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 客先 | きゃくさき | Phía khách |
| ご相談 | ごそうだん | Tham vấn (kính ngữ) |
| ご教示 | ごきょうじ | Xin chỉ giáo |
| 幸甚 | こうじん | Hết sức cảm ơn (formal cao) |
| 線形 | せんけい | Tuyến tính |
| 段階的 | だんかいてき | Theo giai đoạn |
| 検証リソース | けんしょうリソース | Resource kiểm thử |
| 焦点 | しょうてん | Tiêu điểm |', 'system', 29, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005030, 8005, NULL, 'markdown_book', 'Rule 30 — Mang về tham vấn (持ち帰り) / 持ち帰り相談', '# Rule 30 — Mang về tham vấn (持ち帰り) / 持ち帰り相談
> **Luận điểm.** Sách 03 đã dạy 「持ち帰り検討」 với khách (rule 25/32). Sách 04 mở rộng: **sau khi mang về**, làm sao **vận hành** trong nội bộ? Pattern đúng: **(1) Convert lời khách thành 1 entry trong CSDL nội bộ** (Notion / Confluence / Slack channel chuyên cho 持ち帰り), **(2) Assign owner + deadline ngắn hơn deadline đã hứa khách** (buffer 1 ngày), **(3) Hold internal 相談会議 nếu cần**, **(4) Trước deadline 1 ngày, owner báo Dũng**, **(5) Dũng reply khách đúng deadline đã hứa**. Quy tắc: **持ち帰り = 1 ticket nội bộ, không phải 1 lời hứa miệng**.
>
> 持ち帰り運用5ステップ：①社内DB化 ②owner+期限(顧客約束より1日前)③社内会議 ④期限前日報告 ⑤客への回答。約束した『来週水曜』なら社内では『火曜EOD』。
>
> **Liên quan:** Sách 03 rule 25 (持ち帰り検討), rule 32 (持ち帰り bàn nội bộ). Rule 27 (DR), rule 39 (チーム文化).

---

## Bối cảnh / 場面
Cuộc họp client xong, Dũng đã hứa anh Matsumoto: "**Phase 2 lock cost trong tuần này, em sẽ mang về tham vấn nội bộ và phản hồi anh trước thứ Tư 4/24 EOD**". Lần đầu Dũng chỉ note miệng. Lần 2 áp 5-step internal flow.

---

## Hội thoại XẤU — note miệng + quên
*thứ Hai 19h, sau họp với Matsumoto · Thứ Tư 14h, Slack từ Matsumoto · panic*

| Speaker | Câu |
|---------|-----|
| **ズン** | (Trong đầu) 「水曜までに lock cost 回答…まあ、覚えとくか…」 |
|  | 「ズンさん、本日 EOD まで lock cost のご回答お待ちしております。」 |
| **ズン** | 「あ、忘れてた…」 (chạy lên hỏi chị Hương + anh Hà) |
| **フオン** | 「ズン、客に持ち帰った件は **必ず Notion #持ち帰りボード に1枚チケット作る**。owner + 期限 (社内は前日)。今ハーCTO 不在で水曜EODは無理。明日に客にリスケ依頼かけて、社内は金曜 lock。」 |

**Vì sao xấu:** L1 chỉ note miệng = trí nhớ. L3 quên = phá nightmare scenario. Nội bộ chưa kịp tham vấn xong (anh Hà bận) → phải reschedule client = mất uy tín.

---

## Hội thoại TỐT — 5-step internal flow
| Speaker | Câu |
|---------|-----|
| **L1** | **ズン** *(Thứ Hai 19h, sau họp Matsumoto)* | *(Notion #持ち帰りボード に新規チケット)*  
  「**TICKET-MOCH-2026-0421**: Phase 2 lock cost 回答 / **顧客約束**: 4/24 (水) EOD / **社内期限**: 4/23 (火) EOD【1】 / **owner**: ズン / **必要参加者**: ハーCTO + フオン副部長 + トゥアン / **判断材料**: 3社見積 + 過去Phase1実績 / **ステータス**: open」 |
| **L2** | **ズン** *(Slack #内部相談)* | 「@ハーCTO @フオン @トゥアン 火曜 (4/23) 11:00-11:30 で持ち帰り相談セットしました。アジェンダと判断材料は TICKET-MOCH-2026-0421 をご確認ください【2】。」 |
| **L3** | **ズン** *(火曜 11:30, 会議後)* | 「決定: 案B (¥18M)。Decision Register DR-2026-0423 起票。**月曜の予定通り、明日 EOD までに松本様へ回答メール送付します**【3】。」 |
| **L4** | **ズン** *(水曜 16:00, メール松本様)* | 「松本様、お世話になっております。先日お持ち帰りした Phase 2 lock cost の件、社内検討の結果、**¥18M でご提案させていただけますでしょうか**。詳細は添付ファイルをご確認くださいませ。Phase 2 内 cost lock いただけますと幸いです【4】。」 |
| **L5** | **松本PM** *(水曜 17:00)* | 「ご回答ありがとうございます。約束通りの期日でしたね。社内で検収しまして金曜までにお返事します。」 |

📝 **Ghi chú:**
- 【1】**社内期限 = 顧客期限 - 1日** — buffer chuẩn. Tránh case L4 trên (quên).
- 【2】**TICKET ID + agenda link** — không spam Slack với chi tiết. 1 entry là source-of-truth.
- 【3】**「月曜の予定通り」** — đảm bảo timeline so với hứa với khách. Báo cáo nội bộ rõ.
- 【4】**「先日お持ち帰りした件」** — câu reference khách hiểu ngay. Câu mở chuẩn cho reply 持ち帰り.

---

## 5-step Flow
```
① 社内DB化:        Notion チケット作成 (ID + 顧客期限 + 社内期限 + owner + 判断材料)
                   ↓
② Owner+期限設定:   社内期限 = 顧客期限 - 1日 (buffer)
                   ↓
③ 社内相談会議:     必要参加者を集めて15-30分。Decision Register に1行
                   ↓
④ 前日報告:         Dũng reply 顧客 trước. 内部チケット → ステータス = closed
                   ↓
⑤ 顧客回答:         「先日お持ち帰りした〇〇の件、〜」
```

---

## Cụm từ mẫu
> **「持ち帰り = 社内Notion 1枚チケット + 社内期限は顧客期限の1日前 + Decision Register 1行で締め。記憶ではなくチケットで管理。」**

---

## Tránh
- 「覚えてます」 → trí nhớ chắc chắn rớt sau 2 ngày.
- 内部期限 = 顧客期限 → 0 buffer = một sự cố nhỏ là miss.
- Không hold internal meeting → tham vấn miệng riêng từng người = info bất nhất quán.
- Reply khách bằng casual tone — phải dùng 「先日お持ち帰りした件、社内検討の結果〜」 (rule 29).

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 持ち帰り | もちかえり | Mang về (xem xét) |
| 社内検討 | しゃないけんとう | Xem xét nội bộ |
| 社内期限 | しゃないきげん | Deadline nội bộ |
| 顧客期限 | こきゃくきげん | Deadline với khách |
| チケット | ticket | Ticket |
| 起票 | きひょう | Mở entry / log |
| ボード | board | Board (kanban) |
| ステータス | status | Trạng thái |', 'system', 30, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005031, 8005, NULL, 'markdown_book', 'Rule 31 — Phát hiện bug — Hou-Ren-Sou flow / バグ発見時', '# Rule 31 — Phát hiện bug — Hou-Ren-Sou flow / バグ発見時
> **Luận điểm.** Bug critical (production down / data corruption / security) là tình huống áp lực đỉnh. Phải có **escalation flow định trước**: **(1) Detect → ngay** **(2) Slack #incident channel + tag Tuấn (Tech lead)** trong **5 phút**, **(3) Tuấn xác nhận severity → escalate Hà CTO** trong **15 phút**, **(4) Hà CTO + Dũng cùng draft thông báo + escalate Matsumoto** trong **30 phút**, **(5) Investigation + ETA** trong **60 phút**, **(6) Resolve + post-mortem** trong **24h**. Time limit per step = SLA team. Bỏ qua step = "đi tắt" → bê trễ chuỗi.
>
> インシデント発見時の時間SLA：①検知0分→②Slack #incident + Tech lead 5分→③CTO 15分→④客通知 30分→⑤ETA 60分→⑥解決+post-mortem 24h。各ステップを飛ばすと連鎖遅延。
>
> **Liên quan:** rule 07 (悪い知らせ報告), rule 13 (即時連絡), rule 17 (緊急連絡優先順位).

---

## Bối cảnh / 場面
Thứ Ba 22/4 14:30. Em Hải (DevOps) phát hiện production API trả 500 error rate ~30% (khoảng 200 user bị affect). Critical incident. So sánh 2 flow.

---

## Hội thoại XẤU — bypass + 1 mình điều tra
*14:30 · 14:50, 20分後 · 15:30, 1時間後、Slack*

| Speaker | Câu |
|---------|-----|
| **ハイ** | (1人で) 「あれ、エラー多いな…とりあえずログ見てみよう…」 |
|  | 「うーん、原因分からない…とりあえずもう少し調べよう…」 |
|  | 「@トゥアン、production API がエラー多いんですけど…」 |
| **トゥアン** | 「**なんで1時間も黙ってた!?** 客に既に Twitter で晒されてるよ。フローを守って: 検知5分以内に #incident チャネル投稿。1人で抱え込むな。」 |

**Vì sao xấu:** L1 1 mình điều tra 1 giờ — production critical incident không phải 1 người thử. L3 sau 1 tiếng = đã có user complaint trên social. L4 chỉ ra: tốc độ > tự tin "cứ tự xử".

---

## Hội thoại TỐT — chuỗi escalation theo SLA
*14:30, Slack #incident · 14:35 · 14:45 · 15:00, Slack 客先 + Email · 15:05 · 15:25, Slack #incident · 15:30, メール*

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「🚨 **【Incident #INC-2026-0422-01】** 検知時刻: 14:30 / 影響: production API、500 error率約30% / 推定影響ユーザー: 200名 / 検知者: ハイ / 現在: ログ確認中。**@tuan_leader 確認お願いします**【1】。」 |
| **トゥアン** | 「確認、severity Sev1 (critical)。**@ha_cto エスカレーション**します。ハイは継続調査、ズン待機して顧客通知準備【2】。」 |
| **ハーCTO** | 「Sev1 確認。**ズン、松本様への第一報を 15:00 までに**。内容:発生事実 + 影響範囲 + 調査中のステータス + ETA は 15:30 までに別途【3】。」 |
| **ズン** | 「松本様、緊急ご連絡となり恐縮です。**14:30 頃から production API で一部障害が発生**しております。影響:ログイン後の検索画面の一部機能、推定 200 名【4】。**現在ティエンファット技術チームで調査中**、ETA は 15:30 までに別途ご報告いたします。誠に申し訳ございません【5】。」 |
| **松本PM** | 「承知しました。ETA をお待ちします。当方からも社内に共有します。」 |
| **ハイ** | 「原因: 14:00 デプロイの DB index に conflict。rollback 手順準備完了、15:30 実施で復旧見込み。」 |
| **ズン** | 「松本様、**ETA ご報告**: 15:30〜15:45 で rollback 実施、15:45 復旧見込み。原因:本日デプロイの index 変更が想定外の lock を発生。詳細は復旧後 24時間以内に Post-mortem レポートをお送りいたします【6】。」 |

📝 **Ghi chú:**
- 【1】**5 phút SLA: Slack #incident + tag Tech lead** — không 1 mình. Time stamp + severity initial guess.
- 【2】**15 phút SLA: Tech lead → CTO** — anh Tuấn không chần chừ, escalate ngay.
- 【3】**30 phút SLA: CTO assign 客先 communication** — Hà CTO không tự đi báo khách, để Dũng (BD owner) handle với guidance.
- 【4】**第一報 = fact ngắn + impact** — không nói nguyên nhân (chưa biết). Chỉ "発生事実 + 影響範囲".
- 【5】**「現在調査中、ETA は別途」** — không hứa thời gian khi chưa biết. Tránh second false promise.
- 【6】**Post-mortem 24h** — rule cuối: viết Post-mortem (5 Whys, action items) trong 24 giờ. Khách Nhật rất coi trọng.

---

## Time SLA Cheat Sheet
```
T+0 phút    Detect
T+5 phút    Slack #incident + tag Tech lead       (Hải)
T+15 phút   Tech lead → escalate CTO              (Tuấn)
T+30 phút   CTO + BD draft 客先 第一報           (Hà + Dũng)
T+60 phút   ETA + initial cause to khách           (Dũng)
T+resolved  復旧通知                              (Dũng)
T+24h       Post-mortem report                    (Tuấn + Hà CTO)
```

---

## Cụm từ mẫu
> **「Sev1 incident は1人で抱え込まない。5分→15分→30分→60分の SLA を守り、各ステップを飛ばさない。客への第一報は『事実 + 影響 + 調査中』のみ、ETA は別途。」**

---

## Tránh
- 1 người im lặng "tự xử" 30 phút trở lên — đã quá SLA tier 1.
- 第一報 chứa nguyên nhân chưa xác định → second false promise.
- ETA 「すぐ」「もうすぐ」 mơ hồ — phải số phút cụ thể.
- Bỏ Post-mortem → khách Nhật assume team chưa học từ incident.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 検知 | けんち | Phát hiện |
| 障害 | しょうがい | Sự cố |
| 影響範囲 | えいきょうはんい | Phạm vi ảnh hưởng |
| 復旧 | ふっきゅう | Khôi phục |
| エスカレーション | escalation | Escalate |
| 第一報 | だいいっぽう | Báo cáo đầu tiên |
| ETA | ETA | Estimated time of arrival |
| ポストモーテム | post-mortem | Post-mortem |
| Sev1 | Sev1 | Critical severity |', 'system', 31, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005032, 8005, NULL, 'markdown_book', 'Rule 32 — Khi khách phàn nàn — escalation / クレームのエスカレーション', '# Rule 32 — Khi khách phàn nàn — escalation / クレームのエスカレーション
> **Luận điểm.** Khách Nhật phàn nàn (クレーム) hiếm khi ngay từ đầu. Khi đã nói "**困っております**" / "**改善いただきたい**" / "**いかがでしょうか?**" với tone formal là dấu hiệu đã chịu đựng lâu. Junior nhận khiếu nại thường có 2 lỗi: **(1) Defensive ngay** ("không phải lỗi mình" hoặc "đó là do anh báo trễ") **(2) Hứa luôn** ("em sẽ xử lý ngay" mà chưa verify). Pattern đúng: **(1) Lắng nghe đầy đủ + 復唱 (lặp lại) khẳng định đã hiểu**, **(2) Xin lỗi pre-verification ("ご不便をおかけし誠に申し訳ございません" — không nhận lỗi cụ thể)**, **(3) Senior verify + plan**, **(4) Reply chính thức trong 24h với phương án**.
>
> クレーム対応4ステップ：①傾聴+復唱→②事実確認前のお詫び→③上位者と検証+対応案→④24h以内の正式回答。即否定も即約束もNG。
>
> **Liên quan:** rule 07 (悪い知らせ), rule 31 (バグ発見), Sách 03 rule 28 (顧客対応).

---

## Bối cảnh / 場面
Sáng thứ Tư 11:00. Anh Ōgaki (Sales Director Hakuō) gọi điện anh Dũng phàn nàn: invoice tháng 4 sai số tiền, khách của Hakuō đã hỏi 2 lần. Junior reaction vs senior reaction.

---

## Hội thoại XẤU — junior defensive + 即約束
*điện thoại*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「ズンさん、4月の請求書、金額が違います。当社の客が2回問い合わせしてきており、困っております。」 |
| **ズン** | 「えっと、そんなはずないんですが…経理に確認しないと分からないですけど…でもたぶん大丈夫だと思います。今日中に直して送り直します!」 |
| **大垣** | 「『そんなはずない』とは?『たぶん大丈夫』とは?事実確認していない時点で約束されても困りますね。」 |
| **ズン** | 「すみません…」 |
| **大垣** | 「ズンさん、クレーム対応は: 傾聴 → 仮謝罪 → 検証 → 正式回答。今は逆に動いている。」 |

**Vì sao xấu:** L2 三重失敗 — denial「そんなはずない」 + speculation「たぶん」 + premature promise「今日中に直す」. L5 chỉ ra: 4 bước, hiện tại sai cả 4.

---

## Hội thoại TỐT — 4 step rồi escalate Hương + Loan
*repeat back · 電話切後 → Slack #escalation · Slack · 17:30、メール大垣*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「ズンさん、4月の請求書、金額が違います。当社の客が2回問い合わせしてきており、困っております。」 |
| **ズン** | 「**①4月の請求書の金額に誤りがあり、御社のお客様から2回お問い合わせいただいているとのこと、ご認識合っておりますでしょうか**【1】。」 |
| **大垣** | 「その通りです。」 |
| **ズン** | 「**②ご不便をおかけし誠に申し訳ございません**。**③具体的な金額の差異を確認の上、本日18時までに第一報、明日12時までに正式な対応案をご回答**いたします。**詳細**: 請求書番号と差異金額をご共有いただけますでしょうか【2】。」 |
| **大垣** | 「請求書番号 INV-2026-04-031、当方計算では¥850,000、貴社請求は ¥920,000。」 |
| **ズン** | 「@フオン副部長 @ロアン経理部長 大垣様クレーム入電。請求書 INV-2026-04-031 金額差異 ¥70,000。本日18時まで第一報、明日12時まで正式回答お約束済【3】。」 |
| **フオン** | 「ロアンさん、経理ログ確認お願いします。ズン、私とロアンで11:30から確認会議。第一報ドラフトはズンが作成。」 |
| **ズン** | 「大垣様、第一報のご報告です。経理にて確認の結果、**INV-2026-04-031 で ¥70,000 の超過記載**が判明いたしました。原因はシステム集計時の重複計上です【4】。**訂正請求書を明日 12時までにお送り**するとともに、再発防止策については Post-mortem レポートにて 48時間以内にご報告申し上げます。先ほどはお電話にて失礼いたしました。ご不便をおかけし誠に申し訳ございません。重ねてお詫び申し上げます【5】。」 |

📝 **Ghi chú:**
- 【1】**「①ご認識合っておりますでしょうか」** — repeat back để confirm hiểu đúng. Xác lập fact basis, không lao vào defensive.
- 【2】**「②③ご不便… + 第一報時刻 + 正式回答時刻」** — không nhận lỗi cụ thể chưa verify, nhưng xin lỗi cho 「ご不便」(sự bất tiện). Hứa 2 milestone time.
- 【3】**Escalate Hương + Loan** ngay sau cuộc gọi — không 1 mình, không qua đêm.
- 【4】**Verified fact** — sau khi check log mới khẳng định "¥70,000 の超過記載" + nguyên nhân.
- 【5】**Post-mortem 48h** — cũng giống incident, khách Nhật mong giải pháp ngăn tái phát.

---

## 4 Step Pattern
```
① 傾聴 + 復唱       「〇〇とのご認識でお間違いないでしょうか」
② 仮謝罪           「ご不便をおかけし申し訳ございません」 (lỗi chưa cụ thể)
③ 検証 + 期限       「〇時までに第一報、〇時までに正式回答」
④ 正式回答         事実 + 原因 + 訂正案 + 再発防止 (Post-mortem)
```

---

## Cụm từ mẫu
> **「クレーム対応 = 傾聴復唱 → 仮謝罪 → 期限付き検証約束 → 正式回答 + Post-mortem。否定・推測・即約束はNG。」**

---

## Tránh
- 「そんなはずない」「たぶん」 — denial / speculation, mất uy tín.
- 「すぐ直します」 mà chưa verify — second false promise.
- 1 mình ôm khiếu nại của Sales Director — phải escalate Hương + Loan ngay.
- Bỏ Post-mortem report → khách không thấy hệ thống đã fix gốc.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| クレーム | claim | Khiếu nại / phàn nàn |
| 傾聴 | けいちょう | Lắng nghe (chủ động) |
| 復唱 | ふくしょう | Lặp lại để xác nhận |
| 仮謝罪 | かりしゃざい | Xin lỗi tạm (chưa nhận lỗi cụ thể) |
| 検証 | けんしょう | Verify / xác minh |
| 訂正 | ていせい | Đính chính / sửa |
| 再発防止 | さいはつぼうし | Ngăn tái phát |
| 重複計上 | ちょうふくけいじょう | Tính trùng |
| ご不便 | ごふべん | Sự bất tiện (kính ngữ) |', 'system', 32, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005033, 8005, NULL, 'markdown_book', 'Rule 33 — Báo nghỉ việc / nghỉ dài hạn / 退職・休暇のホウレンソウ', '# Rule 33 — Báo nghỉ việc / nghỉ dài hạn / 退職・休暇のホウレンソウ
> **Luận điểm.** Nghỉ việc / nghỉ dài (>2 tuần: maternity, sabbatical, surgery) **không phải news cá nhân, là sự kiện hệ thống**. Junior thường sai: báo sát giờ + không có handover plan. Nguyên tắc: **(1) Notice timing chuẩn — nghỉ việc ≥ 30 ngày, nghỉ dài ≥ 14 ngày, (2) Báo CHO SẾP trước 1-1, KHÔNG broadcast Slack ngay, (3) Handover plan chi tiết: tasks / contacts / docs / replacement candidate, (4) Khách-facing announcement có sếp ký tên, (5) 引き継ぎ期間 (handover period) phải có overlap thực với người nhận**.
>
> 退職・長期休暇のホウレンソウ：①30日 (退職)/14日 (長期休暇) 前に通知 ②上司 1-on-1 が最初 ③handover plan明文化 ④客向け案内は上司名義 ⑤実引き継ぎ期間を確保。
>
> **Liên quan:** rule 19 (休暇連絡), rule 20 (出張), rule 39 (チーム文化).

---

## Bối cảnh / 場面
Em Hải quyết định du học Đức 6 tháng (sabbatical) bắt đầu từ 1/7. Tuần này 22/4. Còn 70 ngày — lý tưởng. Lần đầu Hải broadcast luôn. Lần 2 đúng pattern.

---

## Hội thoại XẤU — broadcast trước, không handover
*Slack #general · Slack DM*

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「みなさん、7/1 から半年ドイツ留学に行ってきます!引き継ぎは追って共有します!」 |
| **トゥアン** | 「ハイ、まず私に1-on-1 で相談すべき。今 Phase 2 の DevOps お前1人。半年抜けるなら **handover計画なしの broadcast はNG**。Hà CTO もまだ知らないだろ?」 |
| **ハイ** | 「あ、すみません…」 |
| **トゥアン** | 「明日朝1-on-1で。Handover plan ドラフト持参。客への正式案内は Hà CTO 名義で別途出す。Slack post は一旦削除。」 |

**Vì sao xấu:** L1 sai trật tự — broadcast trước khi sếp biết. L2 chỉ ra: phá flow hierarchy + không có handover plan = chaos cho team.

---

## Hội thoại TỐT — 1-on-1 sếp + handover plan + 客先 announcement
*Slack DM トゥアン · 翌朝1-on-1 · 画面*

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「トゥアンさん、ご相談したいことがあるのですが、明日朝 30分お時間いただけますでしょうか?トピック: 個人キャリア計画とハンドオーバーについて。緊急度低、今後3ヶ月の準備期間がございます【1】。」 |
|  | **ハイ:** 「ご相談です。**7/1 から12/31 まで、6ヶ月間ドイツの大学院でサバティカル**を取得したく、**3ヶ月前の本日4/22にご報告**いたします【2】。事前にハンドオーバー計画ドラフトを作成しました【3】。」 |
| **ハイ** | 「**Handover Plan**: ① DevOps タスク 12項目 (うち5項目を Linh と共同化、7項目をズンへ移管) / ② AWS 認証情報・パスワード管理 (1Passwordで Hà CTO へ owner 移管) / ③ ドキュメント整備 (運用Runbook v2 を5月末までに完成) / ④ 候補者: 社内ローテーションでフロントエンドからの DevOps 兼任、または採用 / ⑤ Overlap 期間: 6/1〜6/30 の1ヶ月を引き継ぎ専用に充当。」 |
| **トゥアン** | 「準備が完璧。Hà CTO に1-on-1 を私からセットして。決裁後、客向けの正式案内は **Hà CTO 名義で6月初** に。Slack 全社通知は **客向け案内の翌日**。Hai 個人 broadcast は最後で OK。」 |
| **ハイ** | 「ありがとうございます。私からチーム個別1-on-1 (リン・ズン) も Hà CTO 通知後に実施します【4】。」 |

📝 **Ghi chú:**
- 【1】**Slack DM 切り出し** — không gặp đột ngột. Đặt agenda trước.
- 【2】**3ヶ月前報告** — sabbatical 6 tháng → 3 tháng notice (nghỉ việc cần ≥ 30 ngày, nghỉ dài ≥ 14 ngày, sabbatical càng lâu càng dài).
- 【3】**Handover Plan có sẵn** — không "sẽ làm sau", phải có ngay buổi 1-on-1.
- 【4】**Sequence: 1-on-1 sếp → CTO → 客先 (sếp ký) → 全社通知 → 個別 1-on-1** — order quan trọng để khách Nhật cảm thấy được tôn trọng.

---

## Notice Timing Standard
| Loại nghỉ | Tối thiểu | Lý tưởng | Báo ai trước |
|-----------|-----------|----------|--------------|
| 退職 (nghỉ việc) | 30 ngày | 60 ngày | Sếp trực tiếp 1-on-1 |
| 長期休暇 / sabbatical | 14 ngày | 30 ngày + | Sếp trực tiếp 1-on-1 |
| 出産・育休 | 60 ngày (luật) | sớm hơn | Sếp + HR |
| 手術休暇 | ASAP sau khi biết | 1 tuần+ | Sếp + cover plan |
| 病欠 1-3 ngày | sáng cùng ngày | 1 ngày trước | Cả team |

---

## Handover Plan structure (5 phần)
```
① タスク一覧            (ID, owner mới, deadline trong period)
② アクセス・権限        (passwords, accounts, owner transfer)
③ ドキュメント         (runbook, README, knowledge base)
④ 候補者               (replacement / interim cover)
⑤ Overlap 期間         (実際に並走する1-2週間)
```

---

## Cụm từ mẫu
> **「退職・長期休暇は『順番』 — ①上司1-on-1 → ②CTO → ③客向け正式案内 (上司名義) → ④全社 Slack → ⑤チーム1-on-1。Handover Plan 5項目を必ず明文化。」**

---

## Tránh
- Broadcast trước khi sếp biết → phá hierarchy + chaos.
- Notice trễ (< notice tối thiểu) → uy tín đứt + handover gấp.
- 「あとで handover 計画作ります」 — đầu không có = không nghiêm túc.
- 客向け announcement do junior tự gửi → phải sếp ký tên.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 退職 | たいしょく | Nghỉ việc |
| 休暇 | きゅうか | Nghỉ phép |
| サバティカル | sabbatical | Sabbatical |
| 引き継ぎ | ひきつぎ | Bàn giao |
| ハンドオーバー | handover | Handover |
| 候補者 | こうほしゃ | Người kế nhiệm tiềm năng |
| ランブック | runbook | Runbook |
| Overlap期間 | overlap きかん | Khoảng overlap |
| 名義 | めいぎ | Đứng tên |', 'system', 33, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005034, 8005, NULL, 'markdown_book', 'Rule 34 — Mentoring Hou-Ren-Sou cho junior mới / 新人指導', '# Rule 34 — Mentoring Hou-Ren-Sou cho junior mới / 新人指導
> **Luận điểm.** Junior mới (intern, fresh hire 1-3 tháng) có 2 vấn đề kinh điển: **(1) Quá rụt rè** → không dám 報告 / 連絡 vì sợ làm phiền sếp, **(2) Quá thoáng** → 質問 mỗi 5 phút trong DM. Mentor phải build **2 cấu trúc cố định**: **(a) Weekly 1-on-1** (30 phút Thứ Sáu, structured agenda), **(b) Slack Office Hour** (1 khung giờ cố định/ngày, vd 14:00-15:00 mentor sẵn sàng). Cộng với **(c) Mentor expectations** rõ ràng từ tuần 1: "Có gì hỏi là tốt, đừng ngại / nhưng critical incident thì @ tôi ngay không cần đợi office hour".
>
> 新人指導の3点セット：①Weekly 1-on-1 (金曜30分)②Slack Office Hour (毎日1枠)③期待値 explicit (聞いてOK / 緊急は即連絡)。
>
> **Liên quan:** rule 28 (相談を受ける側), rule 39 (チーム文化), rule 40 (振り返り).

---

## Bối cảnh / 場面
Em Linh (intern Marketing) đã onboarding 2 tuần. Anh Dũng nhận trách nhiệm mentor. Lần đầu Dũng không có cấu trúc. Lần 2 set up 3 elements.

---

## Hội thoại XẤU — không cấu trúc
*thứ Hai 9:00, Slack DM zun · thứ Hai 9:30 · thứ Hai 10:15 · thứ Hai 16:00、Linh đã DM 8 lần · observer*

| Speaker | Câu |
|---------|-----|
| **リン** | 「ズンさん、ブロシュアの色について…」 |
| **リン** | 「ズンさん、フォントは…」 |
| **リン** | 「ズンさん、もう1つ…」 |
| **ズン** | 「リン、毎回 DM すると僕は集中できなくて…でも止めてって言うとリンが質問しなくなりそうで…どうしたらいい?」 |
| **フオン** | 「ズン、それ **mentor 構造を作っていない** 問題。Office Hour と Weekly 1-on-1 を導入しなさい。」 |

**Vì sao xấu:** L1-L3 Linh quá thoáng (ad-hoc). L4 Dũng confused — không stop (sợ Linh shut down) cũng không respond đủ. L5 chỉ ra: cần **structure**.

---

## Hội thoại TỐT — Office Hour + Weekly 1-on-1 + expectations
*月曜朝、Linh と1-on-1*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「リン、君のサポート体制を整えました。**3つ説明します**【1】。」 |
| **ズン** | 「**①Weekly 1-on-1**: 毎週金曜 16:00-16:30、固定で。アジェンダ:この週の Done / Doing / Blocked / 質問 + 来週の Top 3 タスク。事前に Notion テンプレに記入【2】。」 |
| **ズン** | 「**②Slack Office Hour**: 平日 14:00-15:00、僕が必ず Slack 見て即返信。それ以外の時間は thread に貯めて、 Office Hour で一気に答える【3】。」 |
| **ズン** | 「**③期待値**: ⓐ 質問はたくさんしてOK、僕の機嫌は気にしないで、ⓑ Office Hour 外でも **緊急 (客対応中、本番影響、判断3時間以内に必要) は即 @zun**、ⓒ 答えがすぐ出ない時は『今日中に答えます』と返す【4】。」 |
| **リン** | 「分かりやすいです!Office Hour 外で蓄積する thread のテンプレもありますか?」 |
| **ズン** | 「あるよ、Notion 『リン質問ボード』を共有する。**質問・自分の仮説・優先度** 3列で。」 |

📝 **Ghi chú:**
- 【1】**「3つ説明します」** — structured upfront. Linh biết sẽ không phải confused.
- 【2】**Weekly 1-on-1 fixed time + agenda template** — không "khi nào tiện" mà fixed slot. Linh dependable.
- 【3】**Office Hour daily** — 1 giờ/ngày Dũng commit response time. Outside Linh tự gom vào Notion board.
- 【4】**3 mức rõ ràng** — encourage hỏi + escape hatch cho urgent + commit response. Linh không phải đoán.

---

## Mentor Structure — 3 components
```
[A] Weekly 1-on-1 (固定 30分)
    ─ Agenda: Done / Doing / Blocked / 質問 / Top 3 来週
    ─ Linh が事前記入、Dũng が前日に目を通す
    ─ 場所: 会議室固定 (集中環境)

[B] Slack Office Hour (毎日 1時間)
    ─ Dũng が Slack に張り付く時間
    ─ それ以外は Notion 『質問ボード』
    ─ Office Hour 中に最大 5 件まで回答

[C] Expectations (明文化)
    ─ 質問OK、機嫌気にしない
    ─ 緊急 = 即 @
    ─ 即答できない時は『今日中』と宣言
```

---

## Cụm từ mẫu
> **「新人指導 = 構造で守る。Weekly 1-on-1 + Slack Office Hour + 期待値の明文化。ad-hoc DM は mentor も新人も疲弊する。」**

---

## Tránh
- 「いつでも聞いてね」 mơ hồ — junior càng confused, hỏi quá hoặc không hỏi.
- Skip Weekly 1-on-1 vì "週で進捗ない" — đó là khi mentor learn về Linh state of mind.
- Không nói rõ về "緊急" — junior tự đánh giá sai → bỏ qua incident hoặc spam non-urgent.
- Mentor trả lời quá nhanh khi không cần — quên rule 28 (coaching mindset).

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 新人指導 | しんじんしどう | Đào tạo người mới |
| Office Hour | office hour | Giờ mở cửa hỏi |
| 期待値 | きたいち | Kỳ vọng |
| 明文化 | めいぶんか | Diễn đạt thành văn |
| 1-on-1 | one-on-one | 1 kèm 1 |
| 蓄積 | ちくせき | Tích lũy |
| 質問ボード | しつもんボード | Bảng câu hỏi |
| 集中環境 | しゅうちゅうかんきょう | Môi trường tập trung |', 'system', 34, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005035, 8005, NULL, 'markdown_book', 'Rule 35 — Hou-Ren-Sou khi work-from-home / リモートワーク時', '# Rule 35 — Hou-Ren-Sou khi work-from-home / リモートワーク時
> **Luận điểm.** Remote work làm "vô hình" status của mỗi member — sếp không nhìn thấy ai đang làm gì. Khắc phục bằng **3 visibility ritual**: **(1) Daily standup async** (Slack 9:30, 1 message DDBN format), **(2) Status icon Slack** (🟢working / 🟡away / 🔴focus / 🟣meeting), **(3) End-of-Day log** (1 dòng EOD review trên Slack #daily-log). Thêm: **camera on trong họp** (mặc định, không "今日はちょっと…"), **respond time SLA** trong giờ làm việc 1 giờ.
>
> リモート可視化3点：①Slack 9:30 朝会 (DDBN) ②ステータスアイコン更新 ③EOD ログ。会議中はカメラON、Slack返信SLAは1時間以内。
>
> **Liên quan:** rule 02 (DDBN), rule 13 (即時連絡), rule 21 (時差), rule 39 (チーム文化).

---

## Bối cảnh / 場面
Em Linh WFH thứ Tư 22/4 (vì sửa chữa nhà). Lần đầu Linh "im lặng" cả ngày. Lần 2 áp 3 visibility ritual.

---

## Hội thoại XẤU — không visible cả ngày
*JP 14:00, Slack DM Linh · 15:00, không response · Slack DM zun · Slack DM Linh · 16:00 ようやく返信*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「リンさん、ブロシュアの校正版いただけますか?」 |
|  | (silence) |
| **田中PMO** | 「ズンさん、リンさんに14:00 にメッセージしましたが返信ない。本日 WFH ですか?ステータスも分からず…」 |
| **ズン** | 「リン!田中様から連絡来てる。すぐ返信して。あと、リモートの日は朝会 + ステータス更新 + EOD ログを忘れずに。」 |
| **リン** | 「すみません、ランチ後に集中していて見落としました…」 |

**Vì sao xấu:** L1 anh Tanaka không biết Linh WFH. L2 silence 1 giờ với khách-side. L4 chỉ ra: WFH cần extra visibility — không phải less.

---

## Hội thoại TỐT — 3 visibility ritual + camera on
*9:30, Slack #team-daily · 11:30, Slackステータス変更 · JP 14:00, Slack DM Linh · 14:15、returns from focus mode · 18:00, Slack #team-daily · Slack reply*

| Speaker | Câu |
|---------|-----|
| **リン** | 「**①朝会** 【Daily 4/22 WFH 🏠】Done: 昨日のブロシュア初稿 / Doing: 校正版 (今日中) / Blocked: なし / Next: 14:00 までに田中PMOへ送付【1】。**ステータス: 🟢 working until 18:00 ICT**【2】。」 |
| **リン** | 「🍱 lunch 11:30-12:30」 |
| **田中PMO** | 「リンさん、ブロシュアの校正版いただけますか?」 |
| **リン** | 「田中様、お世話になっております。ちょうど14:00 に EAJ_v2.pdf を送付済でございます。受信ご確認いただけますでしょうか。」 |
| **リン** | 「**③EOD ログ** 【EOD 4/22】Done: ブロシュア校正版送付済(田中PMO 受領確認済) / 持ち越し: なし / 明日 Top 3: ① Phase3 marketing plan ② 印刷会社発注 ③ ハイ留学 announcement draft【3】。**ステータス更新: 🟢 → 🌙 EOD**。」 |
| **ズン** | 「visibility 完璧。客先からも『分かりやすい』とのこと。継続して。」 |

📝 **Ghi chú:**
- 【1】**朝会 9:30 WFH icon 🏠** — show ngay từ đầu ngày là WFH. Đồng thời DDBN format đã có.
- 【2】**「working until 18:00 ICT」** — ICT timezone explicit (rule 21). Anh Tanaka biết khung giờ Linh online.
- 【3】**EOD ログ** — closure cuối ngày, có "Tomorrow Top 3". Sếp/khách đọc 1 message biết hôm sau.

---

## Slack Status Icon Convention
| Icon | Trạng thái | Khi nào |
|------|-------------|---------|
| 🟢 working | Online + responsive | Default working hours |
| 🟡 away | Tạm rời máy | Lunch / coffee break (gắn time) |
| 🔴 focus | Deep work, response trong 1h | Coding / drafting |
| 🟣 meeting | Đang họp | Client call / internal meeting |
| 🌙 EOD | Hết giờ | After EOD log |
| 🏠 WFH | Working from home | Cả ngày (combined với 🟢) |

---

## Camera Convention
✅ **Default ON** (kể cả Linh hơi mệt, kể cả background lộn xộn → dùng blur).
❌ **「今日はちょっと…」** — không có lý do trừ ốm + đã báo trước.
✅ **Off khi có lý do** — báo trước trong calendar invite description.

---

## Cụm từ mẫu
> **「リモート = invisible になる前に visible にする。朝会 9:30 + ステータスアイコン + EOD ログ + カメラ ON。Slack 返信 SLA 1時間以内。」**

---

## Tránh
- WFH mà không khai báo morning standup → sếp/khách hỏi quanh.
- Slack status không update khi đi ăn / đi họp → response time bị penalize.
- Camera off "không có lý do" → Nhật coi là không nghiêm túc.
- EOD log skip nhiều ngày → mất feedback loop.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| リモート | remote | Remote |
| 在宅 | ざいたく | Tại nhà |
| 朝会 | あさかい | Họp sáng / standup |
| ステータス | status | Trạng thái |
| EOD ログ | EOD log | Log cuối ngày |
| 校正版 | こうせいばん | Bản đã hiệu đính |
| 集中モード | しゅうちゅうモード | Chế độ tập trung |
| 可視化 | かしか | Hữu hình hóa |
| カメラON | camera on | Bật camera |', 'system', 35, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005036, 8005, NULL, 'markdown_book', 'Rule 36 — Bridging gap VN-JP HouRenSou / VN-JP オフショア・ギャップ', '# Rule 36 — Bridging gap VN-JP HouRenSou / VN-JP オフショア・ギャップ
> **Luận điểm.** VN văn hóa giao tiếp **"less = better"**: không có news = mọi thứ ổn, báo nhiều = phiền sếp. Nhật ngược lại — **"silence = problem"**: không có 報告 = sếp lo "team đang giấu". Đây là cause #1 của xích mích offshore. Adapt: **VN team phải overshoot 報告 freq theo Nhật standard**: daily standup không skip + status update mỗi 4 giờ trong incident + báo cáo 3 lần (start / middle / end) cho task >1 ngày. Cụ thể quy tắc: **"Nhật normal" = "VN +30% reporting"**. Và **chủ động báo "no news"** — 「現在進行中で、ブロッカーなしです」.
>
> VN『less = better』vs JP『silence = problem』。VN side は報告頻度を JP 基準まで増やす + 『進捗あり/なし問わず定期報告』+『no news 報告』を含める。
>
> **Liên quan:** rule 02 (DDBN), rule 13 (即時性), rule 21 (時差), rule 39 (チーム文化).

---

## Bối cảnh / 場面
Em Dũng đang làm 1 task 3 ngày: build proposal Phase 3 cost. Lần đầu Dũng "yên lặng làm" theo VN style. Lần 2 áp JP +30% reporting frequency.

---

## Hội thoại XẤU — VN style "im lặng = ổn"
*Slack thứ Hai 9:00, sau khi nhận task từ Matsumoto · thứ Hai 18:00 - thứ Tư 12:00 — silence, Dũng đang làm · thứ Tư 13:00, Slack DM · panic*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「承知しました。木曜中に提案書をご準備いたします。」 |
|  | (im lặng 51 giờ) |
| **松本PM** | 「ズンさん、進捗いかがでしょうか?月曜以降ご連絡なく、不安に感じております。」 |
| **ズン** | 「あ、すみません、順調に進めています!木曜には間違いなく…」 |
| **松本PM** | 「ズンさん、**進捗があってもなくても、3日に1度は status 連絡**をお願いします。VN チームから連絡が無い時、こちらは『何か問題が起きたか』と推察してしまいます。」 |

**Vì sao xấu:** L2 im lặng 51 giờ với khách Nhật = "im lặng = problem" theo Nhật. Dũng tin "no news = good news" (VN style). L5 chỉ ra: phải báo dù không có gì mới.

---

## Hội thoại TỐT — JP standard +30%
*thứ Hai 9:00 · 火曜 18:00, Slack · 火曜 18:30 · 水曜 18:00, Slack · 木曜 8:50, メール*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、承知しました。木曜中に提案書をご準備いたします。**進捗共有の予定:**【1】 火曜EOD: ドラフト構成案 / 水曜EOD: コスト見積完了 / 木曜AM: 完成版送付。途中で blocker あればすぐご連絡いたします。」 |
| **ズン** | 「**【中間報告 ① / 火曜EOD】** ドラフト構成案完成。Phase 3 機能スコープ8項目、コスト軸は人月+ライセンスで構成予定。**ブロッカーなし、予定通り進行中**【2】。明日のコスト見積完了報告は水曜 EOD に行います。」 |
| **松本PM** | 「ご連絡ありがとうございます。スコープ8項目、確認しました。」 |
| **ズン** | 「**【中間報告 ② / 水曜EOD】** コスト見積完了 (¥18M〜¥22M レンジ)。明日 AM 9:00 に最終版を提案書でお送りいたします。**ブロッカーなし**。」 |
| **ズン** | 「松本様、Phase 3 ご提案書をお送りいたします。**月曜お約束通り**、火曜・水曜に中間報告を経て本日完成いたしました。ご確認のほどよろしくお願い申し上げます【3】。」 |
| **松本PM** | 「進捗の見える化、非常に分かりやすくなりました。ベトナムチームのホウレンソウが大変分かりやすくなり、感謝しております。」 |

📝 **Ghi chú:**
- 【1】**月曜時点で「進捗共有の予定」を約束** — pre-commit reporting cadence. Khách Nhật biết khi nào sẽ nghe lại.
- 【2】**「ブロッカーなし、予定通り進行中」** — đây là **「no news 報告」**. Không có gì mới = vẫn báo 1 dòng.
- 【3】**「月曜お約束通り、火曜・水曜に中間報告を経て」** — close the loop. Chứng minh mỗi promise được giữ.

---

## VN vs JP — Reporting Frequency
| Tình huống | VN style mặc định | JP standard | Adapt cho VN-JP |
|-------------|-------------------|--------------|------------------|
| Task 1 ngày | Báo cuối ngày | Daily standup | DDBN sáng + EOD |
| Task 3 ngày | Báo cuối | 中間報告 mỗi ngày | DDBN + 1 mid status / 3 ngày |
| Incident | Báo khi resolve | Update mỗi 4h | Update mỗi 4h fixed |
| "Không có gì mới" | Không báo | Báo "no change" | Báo "ブロッカーなし、予定通り" |
| Email reply | Khi có info | Trong 24h dù chỉ ack | "受領しました、〇日までに回答" |

---

## Cụm từ mẫu
> **「VN『沈黙=順調』 ≠ JP『沈黙=問題』。タスク開始時に reporting cadence を約束、ない情報も "ブロッカーなし、予定通り" と1行報告。」**

---

## Tránh
- 「特に共有することなければ送らないで OK でしょ」 — VN reflex, NG.
- Chỉ báo khi xong → khách Nhật suy đoán xấu nhất.
- 「忙しすぎて報告できなかった」 — không hợp lệ. 1 dòng "ブロッカーなし" mất 30 giây.
- Nghĩ "anh Matsumoto chắc hiểu VN style" — không có giả định cross-cultural.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 沈黙 | ちんもく | Im lặng |
| 中間報告 | ちゅうかんほうこく | Báo cáo trung gian |
| 進捗共有 | しんちょくきょうゆう | Chia sẻ tiến độ |
| ブロッカー | blocker | Blocker |
| オフショア | offshore | Offshore |
| ギャップ | gap | Khoảng cách |
| 文化的差異 | ぶんかてきさい | Khác biệt văn hóa |
| 予定通り | よていどおり | Đúng kế hoạch |
| 適応 | てきおう | Thích nghi |', 'system', 36, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005037, 8005, NULL, 'markdown_book', 'Rule 37 — Slack / Notion / Email — chọn đúng / ツール選択', '# Rule 37 — Slack / Notion / Email — chọn đúng / ツール選択
> **Luận điểm.** 3 channel chính có **mục đích khác nhau**, không thay thế cho nhau. Cài đúng tool theo trục **Urgency × Audience size × Persistence (cần lưu lâu không?)**. Ad-hoc gửi sai channel = info bay (chỉ Slack thì 1 tuần search không ra) hoặc spam (gửi mail cho 1 câu hỏi 30 giây). Decision matrix sau cho người VN-JP làm việc với khách Nhật.
>
> 3チャネル使い分け: Slack (即時×小規模×低保存)、Notion (低時×中大規模×高保存)、Email (低時×外部×証跡として高保存)。誤投稿は情報消失または spam。
>
> **Liên quan:** rule 13 (即時性), rule 15 (チャネル選択), rule 16 (Slack マナー).

---

## Bối cảnh / 場面
Anh Tanaka PMO (Hakuō) gửi Slack DM hỏi 4 việc khác nhau cho Dũng. Dũng cần biết mỗi cái dùng channel nào.

---

## Hội thoại XẤU — gửi tất cả qua Slack
*Slack DM · Slack thread, dài*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「ズンさん、4点ご相談です:① Phase3 公式提案書、②本日の Phase2 障害 ETA、③契約書改定案 v3、④来週水曜 14時の会議候補。」 |
| **ズン** | 「① はい、提案書はこちらです [PDF添付20MB] / ② ETA は今 15:30 / ③ 契約書改定案は… (3000文字) / ④ 14時OKです」 |
| **田中PMO** | 「ズンさん、② 以外は Slack で扱うべきではない題材です。① は **正式メール+提案書添付**、③ は **Notion 共同編集**、④ は **Outlook 招待**です。今 Slack に 20MB PDF 投稿されたら、検索もダウンロードも非効率です。」 |

**Vì sao xấu:** L2 trộn 4 loại business khác nhau qua 1 channel. Slack không phải repo file lớn, không phải email formal, không phải doc collaboration.

---

## Hội thoại TỐT — chọn đúng tool theo từng item
*Slack DM · Slack reply · 15:25 Slack · 17:50 メール · 18:05 Slack · 18:15 Outlook*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「ズンさん、4点ご相談です:① Phase3 公式提案書、②本日の Phase2 障害 ETA、③契約書改定案 v3、④来週水曜 14時の会議候補。」 |
| **ズン** | 「田中様、4点それぞれ最適な手段で対応いたします【1】:**① 提案書 → 本日18時までに正式メールで送付**(松本様CC)/**② ETA → 今 Slack で即答: 15:30 復旧見込み**【2】/**③ 契約書改定 → Notion ページで共有**(編集権付与済URL)【3】/**④ 会議候補 → 別途 Outlook 招待を送付**【4】。」 |
| **田中PMO** | 「整理ありがとうございます。Slack で全部やられると煩雑だったので助かります。」 |
| **ズン** | 「**②即答** ETA: rollback 15:30 完了、復旧確認 15:45 見込み。」 |
| **ズン** | 「件名: 【ご提案】Phase 3 拡張開発のご提案書送付の件 ... [PDF添付6MB]」 |
| **ズン** | 「**③Notion** 契約書改定案 v3 を Notion で共有しました: <URL> 編集権あり、コメント歓迎です。」 |
| **ズン** | 「**④Invite** Phase 3 進捗会議 4/29(水) 14:00-15:00 JST」 |

📝 **Ghi chú:**
- 【1】**「4点それぞれ最適な手段で」** — tuyên bố trước khi action. Anh Tanaka biết Dũng đã phân loại.
- 【2】**Slack giữ ② ETA** — đúng use case: urgent + small + ngắn hạn.
- 【3】**Notion cho ③ 契約書** — collaborative editing + version history. Mail thì hỏng vì có 5 round update.
- 【4】**Outlook (calendar invite) cho ④ 会議候補** — calendar events cần ICS file, accept/decline tracking. Slack không track được.

---

## Decision Matrix
| Tool | Urgency | Audience | Persistence | Đúng cho |
|------|---------|----------|-------------|---------|
| **Slack** | High | Small (1-10) | Low (~30 ngày search) | ETA, blocker, daily standup, 雑談 |
| **Notion / Confluence** | Low | Medium-Large | High (forever) | Spec, contract draft, runbook, DR, OKR |
| **Email** | Low-Mid | External (client) | High (legal evidence) | 公式提案、契約、リスケ依頼、悪い知らせ |
| **Outlook / GCal invite** | — | Attendees | (event level) | 会議招待 + ICS 付き |
| **Phone / Zoom** | High emergency | 1-3 | None (memo cần có) | Sev1 incident escalation, sensitive |

---

## Quick rules
```
□ File > 5MB        → KHÔNG Slack. Notion / Email + Drive link
□ Câu hỏi yes/no    → Slack OK
□ 公式 (khách)      → Email OR Notion link, KHÔNG Slack thuần
□ Cần 5+ người edit → Notion. KHÔNG email reply-all
□ 緊急 / Sev1       → Slack #incident + tag, không email/Notion
□ Calendar event    → Outlook/GCal invite. Slack chỉ remind
□ Legal / 契約      → Email + lưu PDF + DR entry. KHÔNG Slack
```

---

## Cụm từ mẫu
> **「Slack=即時小規模、Notion=共同編集と保存、Email=外部公式と証跡。1つの会話で4題材が混じる時は4チャネルに分割。」**

---

## Tránh
- 20MB PDF lên Slack → 1 tuần là search không ra.
- 公式 proposal qua Slack — khách Nhật coi là không nghiêm túc.
- 契約書 nhồi Notion comments với mail reply-all chéo nhau → version chaos.
- Calendar event qua Slack thuần — không track accept/decline được.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ツール選択 | tool せんたく | Chọn tool |
| 即時性 | そくじせい | Tính tức thì |
| 共同編集 | きょうどうへんしゅう | Cộng tác chỉnh sửa |
| 証跡 | しょうせき | Bằng chứng / vết tích |
| 添付 | てんぷ | Đính kèm |
| 招待 | しょうたい | Mời (calendar invite) |
| 編集権 | へんしゅうけん | Quyền chỉnh sửa |
| 検索 | けんさく | Search |
| 改定案 | かいていあん | Bản sửa đổi |', 'system', 37, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005038, 8005, NULL, 'markdown_book', 'Rule 38 — Self-diagnostic Hou-Ren-Sou / 自己診断', '# Rule 38 — Self-diagnostic Hou-Ren-Sou / 自己診断
> **Luận điểm.** Hou-Ren-Sou là **kỹ năng**, không phải nhân cách — phải **đo định kỳ** mới biết tiến hay lùi. Self-diagnostic checklist 15 mục, chia 3 nhóm × 5 item: **(1) 報告 5 mục** (kết luận trước, fact/opinion, kịp thời, deadline, cấu trúc), **(2) 連絡 5 mục** (即時, channel chọn đúng, audience đúng, broadcast vs DM, EOD log), **(3) 相談 5 mục** (準備, 仮説, 複数案, 客先 tone, DR化). Chấm tự A/B/C/D mỗi cuối tháng. C-D dưới 3 = OK; ≥ 3 = trigger 1-on-1 với mentor + action plan.
>
> 自己診断15項目: 報告5・連絡5・相談5。月末A〜D評価、C-D が3以上で mentor 1-on-1。3ヶ月毎に推移をグラフ化。
>
> **Liên quan:** rule 12 (報告漏れ防止), rule 39 (チーム文化), rule 40 (振り返り).

---

## Bối cảnh / 場面
Cuối tháng 4. Em Dũng tự chấm mình lần đầu. Lần 1 toàn A "tốt cả thôi" (self-bias). Lần 2 chị Hương review → đánh giá khách quan + action plan.

---

## Hội thoại XẤU — toàn A self-bias
*月末1-on-1*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、4月の自己診断やりました。15項目中、A評価12個、B評価3個、C-D ゼロです。」 |
| **フオン** | 「うん、見せて。」 *(reading)* 「ズン、③タイムリー報告 A?今月 Phase 2 障害で第一報を1時間遅らせたよね。⑦客先 tone は B?大垣様クレームで『そんなはずない』と言ったの忘れた?C-Dゼロは self-bias ね。」 |
| **ズン** | 「あ…」 |
| **フオン** | 「**自己診断は厳しめが正解**。A 多すぎる時は recalibration が必要。1ヶ月の Slack 履歴と照合してやり直し。」 |

**Vì sao xấu:** L1 self-bias toàn A — không nhớ những lúc miss. L4 chỉ ra: phải đối chiếu với evidence (Slack history, client thread, DR), không chấm theo cảm giác.

---

## Hội thoại TỐT — chấm khách quan + action plan
*再診断後*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、再診断しました。Slack 履歴と DR を照合した結果: **A 7個、B 5個、C 3個、D ゼロ**【1】です。」 |
| **ズン** | 「**C評価 3 件**: ③ タイムリー報告 (Phase 2 障害で第一報1時間遅延)、⑦ 客先 tone (大垣様クレーム時の defensive)、⑪ 複数案持参 (Redis 追加で1案提案で叱られた件)。【2】」 |
| **フオン** | 「正直な評価ね。Action plan は?」 |
| **ズン** | 「**Action plan**: **③ → rule 31 SLA を Slack pinned で常時可視**, **⑦ → rule 32 4ステップを暗記、機械的に運用**, **⑪ → 相談前に最低3案 + matrix を必須化**。5月末に再診断、C 1 件以下を目標とします【3】。」 |
| **フオン** | 「素晴らしい。再診断は5月最終金曜、Decision Register に登録しておいて。」 |

📝 **Ghi chú:**
- 【1】**「Slack 履歴と DR を照合した結果」** — chấm based on evidence, không cảm giác.
- 【2】**C 評価 3 件 nêu cụ thể từng case** — không generic. Có thể action.
- 【3】**Action plan với target số (C 1 件以下) + deadline (5月末)** — measurable.

---

## Cụm từ mẫu
> **「自己診断は月末・15項目・evidence ベース。A 多すぎる時は recalibration。C-D は具体的 case + Action plan + 次回 target が必須。」**

---

## Tránh
- 自己診断 mà chỉ nhớ chuyện tốt → self-bias.
- C-D 0 mà không recalibrate — sếp sẽ nghi ngờ.
- Action plan 「次から気をつけます」 — không measurable.
- Skip diagnostic 2 tháng trở lên → không có baseline để track grow.

---

## Bảng từ vựng
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
| 推移 | すいい | Diễn biến / xu hướng |', 'system', 38, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005039, 8005, NULL, 'markdown_book', 'Rule 39 — Xây dựng team culture Hou-Ren-Sou / チーム文化作り', '# Rule 39 — Xây dựng team culture Hou-Ren-Sou / チーム文化作り
> **Luận điểm.** Hou-Ren-Sou cá nhân ≠ Hou-Ren-Sou team. Mỗi cá nhân tốt nhưng team không có **chung playbook** thì khách Nhật vẫn cảm nhận "không nhất quán". Team-level cần **5 thành phần playbook**: **(1) Rituals fixed** (daily standup 9:30, weekly retro thứ Sáu, monthly all-hands), **(2) Dashboard URL** (single source for status — Notion / Confluence link), **(3) OKR / KPI Hou-Ren-Sou** (vd: response SLA 95%, no missed Sev1 escalation, DR coverage 100%), **(4) Escalation matrix** (ai escalate ai khi nào), **(5) Onboarding** (rule 34 nhân lên cấp team). Team Lead (Hà CTO + Hương) là culture sponsor.
>
> チーム文化5要素：①Rituals (朝会9:30、週次retro、月次all-hands)②Dashboard URL ③OKR (response SLA 95%、Sev1 escalation 漏れ0、DR coverage 100%)④Escalation matrix ⑤Onboarding playbook。
>
> **Liên quan:** rule 27 (DR), rule 34 (新人指導), rule 38 (自己診断), rule 40 (振り返り).

---

## Bối cảnh / 場面
Cuộc họp leadership ティエンファット tháng 4. Anh Hà CTO + chị Hương + Tuấn nhận thấy mỗi member tốt cá nhân nhưng cả team chưa nhất quán → quyết định write playbook.

---

## Hội thoại XẤU — không có playbook chung
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「松本様から feedback : 『ティエンファット は人によって対応 quality が違う』。ズン と ハイ で同じ Phase 2 の話なのに、片方は丁寧、片方は雑。」 |
| **フオン** | 「個人レベルでは皆 rule を知っている。でも team レベルの **共通 playbook がない**から、新人が真似する基準もブレる。」 |
| **トゥアン** | 「Slack の標準 format も人によって違うし、escalation も case-by-case。これは個人の問題じゃなくて **チーム文化の欠如**。」 |
| **ハーCTO** | 「playbook を作ろう。私と フオン が culture sponsor、トゥアン が tech ritual owner。来週中に v1 ドラフト。」 |

**Vì sao xấu:** L1 inconsistent quality của team là biểu hiện. L2-L3 rút ra: thiếu **common playbook**.

---

## Hội thoại TỐT — playbook 5 thành phần được build
*2週間後 leadership 会議*

| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ティエンファット Hou-Ren-Sou Playbook v1 を共有します。**5要素構成**【1】です。」 |
| **ハーCTO** | 「**①Rituals**: 朝会 Slack 9:30 (DDBN format)、週次 retro 金曜 16:00、月次 all-hands 第1月曜 10:00。**②Dashboard**: Notion『チーム Hou-Ren-Sou ダッシュボード』<URL>に response SLA、Sev1 件数、DR 数を可視化【2】。」 |
| **ハーCTO** | 「**③OKR Q2-2026**: (a) Slack 客先 response 1h 以内 95% / (b) Sev1 escalation 漏れ 0件 / (c) Decision Register カバレッジ 100% (1相談1行) / (d) 自己診断 C-D ≤ 1 が team 平均【3】。」 |
| **ハーCTO** | 「**④Escalation Matrix**: 客先 → BD owner → フオン副部長 → ハー CTO / 技術 Sev1 → 検知者 → トゥアン → ハー CTO / 経理 → ロアン経理部長 → フオン。**⑤Onboarding**: 新人入社後30日で Playbook 全項目に exposure、60日で自己診断初回、90日で1人立ち。」 |
| **フオン** | 「culture sponsor として: 月次 all-hands で『今月の Good ホウレンソウ』『今月の Lesson』を Slack 投票で選び、HR の評価にも反映させましょう【4】。」 |
| **トゥアン** | 「Tech ritual owner として: 朝会と Sev1 escalation drill を四半期ごとに simulation。来週から運用開始。」 |

📝 **Ghi chú:**
- 【1】**「5要素構成」** — playbook không phải doc dài 50 trang. 5 thành phần modular.
- 【2】**Dashboard URL** — single source of truth. Tránh "tôi nghĩ" / "tôi nhớ".
- 【3】**OKR đo lường được** — không "improve communication" mơ hồ mà "95% in 1h".
- 【4】**「HR の評価にも反映」** — biến culture thành performance metric. Không reward = không scale.

---

## Cụm từ mẫu
> **「Hou-Ren-Sou is a team sport. Playbook 5要素 (Rituals + Dashboard + OKR + Escalation + Onboarding) を持って初めて、quality が個人差に左右されない。Leader が culture sponsor。」**

---

## Tránh
- Playbook 50 trang doc mà không ai đọc — phải 1-page summary + dashboard.
- OKR mơ hồ kiểu 「コミュニケーション改善」 — không đo được = không tồn tại.
- Escalation matrix không update khi cơ cấu thay đổi (vd: Hải sabbatical) — fail trong moment quan trọng.
- Culture sponsor không có time commitment → playbook chết.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| チーム文化 | チームぶんか | Văn hóa team |
| プレイブック | playbook | Playbook |
| Rituals | rituals | Nghi thức / quy trình lặp |
| ダッシュボード | dashboard | Dashboard |
| OKR | OKR | OKR |
| エスカレーション | escalation | Escalate |
| カバレッジ | coverage | Tỉ lệ phủ |
| 文化醸成 | ぶんかじょうせい | Nuôi dưỡng văn hóa |
| 1人立ち | ひとりだち | Tự đứng (hoạt động độc lập) |', 'system', 39, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8005040, 8005, NULL, 'markdown_book', 'Rule 40 — Reflection + cải tiến / 振り返りと改善', '# Rule 40 — Reflection + cải tiến / 振り返りと改善
> **Luận điểm.** Rule 38 là **self** diagnostic, rule 40 là **team** retrospective. Cuối tuần (16:00 thứ Sáu, 30 phút) team chạy **KPT format**: **Keep** (giữ tiếp những gì tốt), **Problem** (vấn đề tuần này), **Try** (thử mới tuần sau). Output là **Action items** với **owner + deadline + check date**. Không có action item = không phải retrospective. Quy tắc: **mỗi Problem phải có ít nhất 1 Try, mỗi Try phải có 1 owner + 1 ngày check**. Format đính kèm template.
>
> 週次 retrospective KPT: Keep (継続) / Problem (問題) / Try (新規試行) → Action items (owner+期限+check日)。「ふんわり振り返り」は次週も同じ問題を生む。
>
> **Liên quan:** rule 27 (DR), rule 38 (自己診断), rule 39 (チーム文化).

---

## Bối cảnh / 場面
Thứ Sáu 25/4 16:00. Team retrospective tuần. Lần đầu chỉ "phàn nàn" không có action. Lần 2 đúng KPT + action items.

---

## Hội thoại XẤU — phàn nàn không action
| Speaker | Câu |
|---------|-----|
| **フオン** | 「皆さん、今週どうでしたか?」 |
| **ハイ** | 「Phase 2 障害で疲れました…」 |
| **リン** | 「印刷会社の件で迷いました…」 |
| **ズン** | 「松本様の reply 待ちが長くて辛かった…」 |
| **フオン** | 「うん、お疲れ様。来週も頑張ろう。」 |

**Vì sao xấu:** L1-L5 thuần phàn nàn (Problem) — không có Keep / Try / Action items. Vẫn cùng vấn đề tuần sau lặp lại.

---

## Hội thoại TỐT — KPT + Action items
*facilitator*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「Retrospective 開始。30分、KPT format。Notion テンプレに事前記入できた人から発表【1】。」 |
| **ハイ** | 「**Keep**: Phase 2 障害で SLA 通り escalation できた (5分→15分→30分)。**Problem**: 障害後のpost-mortem document 作成に2日かかった (24h target 未達)。**Try**: post-mortem テンプレを Notion に作成、初稿は 4h 以内目標。」 |
| **リン** | 「**Keep**: 印刷会社相談で3案 + matrix 持参できた。**Problem**: 自分の仮説 confidence 低めで時間かかった。**Try**: 仮説を最初に書いてから判断材料集める順序に変更。」 |
| **ズン** | 「**Keep**: 大垣様クレームで4ステップ運用できた。**Problem**: 松本様 reply 平均 8h、自分の Slack DM 頻度が少ない可能性。**Try**: 客先 DM を 1日2回 (10時・15時) routine 化。」 |
| **フオン** | 「いいね、Action items まとめ【2】: ① post-mortem テンプレ作成 (owner: ハイ、期限: 4/30、check: 5/2 retro) / ② 仮説先出し pattern (owner: リン、期限: 5/2 retro までに3回試行) / ③ 客先 DM routine (owner: ズン、期限: 5/9 retro までに4週運用) / ④ Decision Register に今週分3件追加 (owner: ズン+リン、期限: 来週月曜)【3】。」 |
| **フオン** | 「次週 retro は5/2、各 Action item の進捗 review が最初の議題。お疲れ様でした。」 |

📝 **Ghi chú:**
- 【1】**「事前記入できた人から」** — KPT phải pre-fill, không brainstorm trên spot. Tiết kiệm 30 phút thành 60 phút.
- 【2】**Action items mỗi Try có owner + deadline + check date** — không "皆で頑張る" mơ hồ.
- 【3】**「次週 retro は…review が最初の議題」** — close the loop. Action items không bị bỏ.

---

## KPT Template
```
■ Keep (今週うまくいったこと、来週も継続)
  - 〇〇 (具体的事案)
  - 〇〇

■ Problem (今週の課題、解決すべきこと)
  - 〇〇 (具体的事案 + impact)
  - 〇〇

■ Try (来週試したい改善案 — 各 Problem に最低1つ)
  - 〇〇 ← 上記 Problem ① の解決
  - 〇〇 ← 上記 Problem ② の解決

■ Action Items (Try を実行可能形式に)
  - [ ] Action 1 / Owner: 〇〇 / 期限: 〇〇 / 次回 check: 〇〇 retro
  - [ ] Action 2 / Owner: 〇〇 / 期限: 〇〇 / 次回 check: 〇〇 retro
```

---

## Cụm từ mẫu
> **「KPT — Keep / Problem / Try、それぞれ Action item 化、owner + deadline + check 日まで明記。次週 retro 冒頭で先週の Action review。これが retrospective のループ。」**

---

## Tránh
- Retrospective = phàn nàn 30 phút mà không Try → tuần sau lặp lại.
- Try mơ hồ kiểu 「次から気をつける」 — không actionable.
- Owner = "皆" → ai cũng = không ai.
- Skip retro 2 tuần liên tiếp → mất feedback loop, problem tích tụ.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 振り返り | ふりかえり | Reflection / retrospective |
| 改善 | かいぜん | Cải tiến |
| KPT | KPT | Keep/Problem/Try |
| 試行 | しこう | Thử / experiment |
| 継続 | けいぞく | Tiếp tục |
| 課題 | かだい | Vấn đề / challenge |
| 進捗 review | しんちょく review | Review tiến độ |
| ファシリテーター | facilitator | Facilitator |
| pre-fill | pre-fill | Điền trước |', 'system', 40, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
