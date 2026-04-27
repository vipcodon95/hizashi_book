-- Hizashi book SQL — Họp / 会議
-- curriculum_id = 8004
-- node count = 50
-- generated từ release/books/03_meeting/
-- KHÔNG sửa thủ công file này. Chạy lại scripts/build_sql_from_release.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, introduction_jp, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (8004, NULL, 'markdown_book', 'BJT', 'Họp', 'Bộ sách Hizashi — Họp', 'Hizashi シリーズ — 会議', 'system', TRUE, TRUE, TRUE, FALSE, 20, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, introduction = EXCLUDED.introduction, introduction_jp = EXCLUDED.introduction_jp, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004001, 8004, NULL, 'markdown_book', 'Rule 01 — Lập agenda chuẩn 5W1H / アジェンダ作成の5W1H', '# Rule 01 — Lập agenda chuẩn 5W1H / アジェンダ作成の5W1H
> **Luận điểm.** Agenda thiếu = họp lan man. Agenda chuẩn phải có 5 yếu tố 5W1H: **(1) Mục đích — Why**, **(2) Nội dung — What**, **(3) Người tham dự — Who**, **(4) Thời lượng — How long**, **(5) Output mong đợi — What outcome**. Thiếu 1 trong 5 = họp dễ overrun + không quyết được gì.
>
> アジェンダの5要素：①目的 ②議題 ③出席者 ④所要時間 ⑤期待されるアウトプット。1つでも欠けると会議は迷走する。
>
> **Liên quan:** Rule 02 (gửi mời họp), Rule 13 (giới thiệu agenda khi mở họp), Rule 45 (biên bản).
> Sách 01 (Email) Rule 09 (subject họp).

---

## Bối cảnh / 場面
Cuối quý 1, em Dũng được giao tổ chức buổi họp định kỳ tháng 4 với khách 白鷗 (anh Matsumoto + anh 大垣 営業部長). Chị Hương yêu cầu Dũng draft agenda trước khi gửi mail mời.

---

## Hội thoại XẤU — agenda mơ hồ
*gửi qua Slack cho chị Hương · mở file*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、来週の月例会議のアジェンダを作りました。ご確認お願いします。」 |
| **フオン** | 「議題：プロジェクト進捗、次回のタスク。これだけ？」 |
| **ズン** | 「はい、進捗報告と次のタスクを話そうかと…」 |
| **フオン** | 「目的は？何を決める会議？時間は？大垣さんも入る？資料は？……これじゃ会議が始まらないよ。」 |

**Vì sao xấu:** Agenda chỉ có "議題" mà thiếu **mục đích / output / thời lượng / người tham dự / chuẩn bị**. Khách Nhật nhận được sẽ không biết phải prepare gì → họp đến nơi mới hỏi → mất 15-30 phút đầu mới vào việc.

---

## Hội thoại TỐT — agenda 5W1H đủ
*đọc file*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、4月度月例会議のアジェンダ案でございます【1】。」 |
| **フオン** | 「うん、目的が明確で出席者と時間配分もある。アウトプットも『次月のスプリント計画決定』と書いてあるね。」 |
| **ズン** | 「はい、Phase 2 の進捗共有と来月の計画を1時間で決めたい旨を冒頭に書きました【2】。」 |
| **フオン** | 「いいね。あとは大垣営業部長の出席可否を確認してから松本様に送ろう。」 |

📝 **Ghi chú:**
- 【1】**「アジェンダ案でございます」** — agenda được gọi là 「案」 (đề xuất) đến khi khách confirm. Không gọi là "確定" trước khi gửi.
- 【2】**「〜旨」(むね)** = "ý là...". Câu chuẩn: "〜決めたい旨を冒頭に書きました". Body chuẩn business JP.

---

## Cụm từ mẫu
> **「目的・議題・出席者・所要時間・アウトプット — この5点が揃ってアジェンダ。」**
>
> *5 yếu tố đủ → mới gọi là agenda. Thiếu 1 = note họp, không phải agenda.*

---

## Template Agenda 5W1H (đính kèm — xem `conversation.json:templates[0]`)
```
【会議名】4月度月例会議（白鷗 × ティエンファット）

【日時】2026年4月28日（火） 15:00〜16:00（JST／60分）
【形式】Zoom（オンライン）+ ハイブリッド

【目的】
  Phase 2 開発の進捗共有と、5月スプリント計画の合意

【期待されるアウトプット】
  ① 4月の進捗・課題への共通認識
  ② 5月開発スコープの合意
  ③ 次回会議日の決定

【出席者】
  白鷗株式会社：松本PM、大垣 営業部長
  ティエンファット社：フオン副部長、ズン（司会）、トゥアンリーダー

【議題と時間配分】
  1. 4月進捗報告（10分）— ズン
  2. 課題と対応策（15分）— トゥアン
  3. 5月スコープ協議（25分）— 全員
  4. 次回日程・TODO 確認（10分）— ズン

【事前資料】
  1. 4月進捗レポート（4/26までに共有）
  2. 5月スコープ案（4/27までに共有）
```

---

## Tránh
- Agenda chỉ có "議題" 1 dòng → khách Nhật sẽ skeptical về độ chuẩn bị.
- Không ghi **アウトプット** → họp dễ chỉ "trao đổi" rồi tan, không quyết.
- Không ghi **出席者** → ai cũng nghĩ "không phải mình bắt buộc".
- Gửi agenda < 24h trước họp → khách không kịp pre-read.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 議題 | ぎだい | Chủ đề bàn / agenda item |
| アジェンダ | agenda | Agenda |
| 出席者 | しゅっせきしゃ | Người tham dự |
| 所要時間 | しょようじかん | Thời lượng cần |
| アウトプット | autoputto | Output / kết quả mong đợi |
| 旨 | むね | Ý là... / nội dung |
| 月例 | げつれい | Định kỳ tháng |
| 案 | あん | Đề xuất / draft |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004002, 8004, NULL, 'markdown_book', 'Rule 02 — Gửi thông báo họp đúng cách / 会議招待メールの書き方', '# Rule 02 — Gửi thông báo họp đúng cách / 会議招待メールの書き方
> **Luận điểm.** Email mời họp ≠ chỉ ghi giờ + link. Phải có **subject rõ ràng (会議名+日付)**, **mục đích 1 dòng**, **agenda kèm hoặc đính kèm**, **deadline RSVP**. Thiếu RSVP deadline = khách không reply, ngày họp không biết ai đến.
>
> 会議招待メールの必須要素：①件名（会議名＋日付）②目的1行 ③アジェンダ添付 ④出欠の返信期限。返信期限がないと当日まで参加者が確定しない。
>
> **Liên quan:** Rule 01 (agenda 5W1H), Rule 05 (distribute tài liệu), Rule 18 (xử lý người vắng).
> Sách 01 (Email) Rule 09 (subject họp), Rule 14 (CC chuẩn).

---

## Bối cảnh / 場面
Sau khi chị Hương review xong agenda (rule 01), em Dũng được giao gửi mail mời họp cho phía 白鷗 (松本PM, 大垣営業部長) + nội bộ (chị Hương, Tuấn leader). Đây là mail mời lần đầu trong quý 2.

---

## Hội thoại XẤU — mail mời cộc lốc
*gửi mail tối hôm trước, subject:「会議について」 · reply sáng hôm sau · 慌てて*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、来週月曜15時から会議します。Zoomリンク添付。よろしくお願いします。」 |
| **松本** | 「ズンさん、何の会議でしょうか？大垣も同席必要ですか？資料は？」 |
| **ズン** | 「すみません、月例会議です。大垣様もご出席いただければ…資料は今作っております。」 |
| **松本** | 「申し訳ない、来週月曜は別件があります。アジェンダと目的を見て調整したかったので…」 |

**Vì sao xấu:** Subject 「会議について」 quá vague → khách không nhận diện được mức ưu tiên. Không ghi mục đích, không attach agenda, không có deadline RSVP. Khách Nhật reply chậm → đến lúc rõ thì lịch đã trôi.

---

## Hội thoại TỐT — mail mời đủ thông tin
*gửi mail subject:「【会議招待】4月度月例会議（4/28 15:00-16:00 JST）」 · body · closing · reply 翌朝*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、お世話になっております。ティエンファットのズンでございます。下記のとおり4月度月例会議を開催いたしたく、ご案内申し上げます【1】。」 |
| **ズン** | 「目的はPhase 2 進捗共有と5月スコープ合意の2点でございます。アジェンダを添付いたしましたので、ご確認のほどお願い申し上げます。」 |
| **ズン** | 「ご出欠を 4月25日（金）17時まで にご返信いただけますと幸いです【2】。」 |
| **松本** | 「ご案内ありがとうございます。出席いたします。大垣にも共有しておきます。」 |

📝 **Ghi chú:**
- 【1】**「ご案内申し上げます」** — formal hơn 「ご案内します」. Mail mời họp khách Nhật nên dùng. Cùng cấp với 「ご連絡申し上げます」.
- 【2】**「〜までにご返信いただけますと幸いです」** — câu deadline RSVP chuẩn. Không dùng 「〜までに返信してください」 (mệnh lệnh, lỗ mãng với khách).

---

## Cụm từ mẫu
> **「件名・目的・アジェンダ・返信期限 — この4点が揃って招待メール。」**
>
> *Subject + mục đích + agenda + deadline RSVP — đủ 4 mới gọi là mail mời họp.*

---

## Template Email Mời Họp (xem `conversation.json:templates[0]`)
```
件名：【会議招待】4月度月例会議（4/28 15:00-16:00 JST）

松本様
（CC：大垣様）

お世話になっております。
ティエンファット社のズンでございます。

下記のとおり4月度月例会議を開催いたしたく、ご案内申し上げます。

──────────────────────
■ 日時：2026年4月28日（火） 15:00〜16:00（JST）
■ 形式：Zoom（リンク：https://...）
■ 目的：① Phase 2 進捗共有
        ② 5月スコープ合意
■ アジェンダ：添付ファイル参照
■ 事前資料：4/26までに別途共有予定
──────────────────────

ご出欠を 4月25日（金）17時まで にご返信いただけますと幸いです。

何卒よろしくお願い申し上げます。

──
ティエンファット社 営業部
ズン（Trần Văn Dũng）
```

---

## Tránh
- Subject vague kiểu「会議について」「ご相談」 → khách không phân biệt priority.
- Không attach agenda → khách phải hỏi lại = mất 1 vòng email.
- Không deadline RSVP → đến hôm họp không biết ai đến.
- Gửi mail mời < 3 ngày trước họp → khách Nhật chưa kịp align lịch nội bộ.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 招待メール | しょうたいメール | Email mời |
| ご案内申し上げます | ごあんないもうしあげます | Xin trân trọng thông báo |
| 出欠 | しゅっけつ | Tham dự / vắng |
| 返信期限 | へんしんきげん | Deadline reply |
| 〜までに | までに | Trước thời điểm... |
| 開催 | かいさい | Tổ chức (họp/sự kiện) |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004003, 8004, NULL, 'markdown_book', 'Rule 03 — Đặt phòng + Setup hậu cần / 会議室予約・設備確認', '# Rule 03 — Đặt phòng + Setup hậu cần / 会議室予約・設備確認
> **Luận điểm.** Phòng họp thiếu projector / dây HDMI / mạng / nước = 5 phút đầu tan biến vì loay hoay. Trước họp 1 ngày phải có **checklist 7 mục**: phòng đủ chỗ, projector test OK, HDMI/USB-C, Wi-Fi password, white board + bút, nước/茶, biển tên (name plate).
>
> 会議室予約と設備確認は前日までに完了。チェックリスト7項目：①席数 ②プロジェクター ③ケーブル ④Wi-Fi ⑤ホワイトボード ⑥お茶・お水 ⑦ネームプレート。
>
> **Liên quan:** Rule 04 (online setup), Rule 06 (đến sớm 5 phút), Rule 12 (giới thiệu出席者).

---

## Bối cảnh / 場面
Em Linh (mới onboard, được Dũng mentor) được giao đặt phòng + check setup cho buổi họp với 白鷗 vào thứ Ba. Linh báo Dũng "đã đặt phòng rồi" — Dũng kiểm tra lại.

---

## Hội thoại XẤU — chỉ đặt phòng, không check setup
*当日朝、部屋に入って*

| Speaker | Câu |
|---------|-----|
| **リン** | 「ズン先輩、火曜の会議室、3階の会議室Aを押さえました。」 |
| **ズン** | 「OK、設備は確認した？プロジェクター、ケーブル、Wi-Fi…」 |
| **リン** | 「あっ、部屋を予約しただけで…プロジェクターがあるかは…」 |
| **ズン** | 「HDMIケーブルがない。リンさん、急ぎ総務に借りに行って！松本様あと10分で来る。」 |

**Vì sao xấu:** "Đặt phòng" ≠ "Setup họp". Junior thường chỉ làm 1 bước rồi báo done. Đến hôm họp khách Nhật vào → phải chạy đi tìm cable = lỗi mất mặt nghiêm trọng với khách.

---

## Hội thoại TỐT — checklist 7 mục đầy đủ
| Speaker | Câu |
|---------|-----|
| **リン** | 「ズン先輩、火曜の会議室Aを予約し、設備チェックリストも完了しました【1】。」 |
| **ズン** | 「ありがとう。プロジェクター・HDMI・Wi-Fiは？」 |
| **リン** | 「プロジェクターは昨日テスト済み、HDMIとUSB-C両方備品あり、Wi-Fi パスワードはネームプレートに記載しました。お茶とお水も人数分用意しております【2】。」 |
| **ズン** | 「完璧。ネームプレートは席順どおり配置してね。当日は10分前に最終チェックしよう。」 |

📝 **Ghi chú:**
- 【1】**「設備チェックリスト」** — không chỉ "予約しました" mà là "予約 + チェックリスト完了". Phân biệt rõ 2 bước.
- 【2】**「人数分」** = "đủ số người". Cụm chuẩn khi báo cáo về số lượng nước/tài liệu/ghế. Native dùng nhiều.

---

## Cụm từ mẫu
> **「予約 ≠ 準備完了。チェックリストが完了して初めて『準備完了』。」**
>
> *Đặt phòng không bằng chuẩn bị xong. Checklist tick hết mới là "chuẩn bị xong".*

---

## Checklist Setup Phòng Họp (xem `conversation.json:templates[0]`)
```
■ 会議室セットアップ・チェックリスト（前日17時までに完了）

□ 1. 会議室予約確認（人数 +2 名分の余裕）
□ 2. プロジェクター動作テスト（実機接続）
□ 3. HDMI / USB-C ケーブル両方
□ 4. Wi-Fi SSID + パスワード（ネームプレート記載）
□ 5. ホワイトボード + マーカー（赤・青・黒）+ イレーザー
□ 6. お茶・お水（人数分 +2 本）
□ 7. ネームプレート（席順どおり配置）
□ 8. 配布資料（人数分 +2 部）
□ 9. 延長コード・タップ
□ 10. 会議室の鍵 / 入退室カード
```

---

## Tránh
- "予約しました" mà không kiểm tra cable / projector → 90% bị thiếu HDMI hôm họp.
- Wi-Fi password viết trên giấy ghim → khách Nhật ngại hỏi → ngồi không có mạng.
- Không có name plate → khách lúng túng chỗ ngồi (sách 07 sẽ chi tiết).
- Quên 延長コード → laptop hết pin giữa họp.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 会議室 | かいぎしつ | Phòng họp |
| 予約 | よやく | Đặt trước |
| 設備 | せつび | Trang thiết bị |
| プロジェクター | purojekutaa | Projector |
| ネームプレート | name plate | Bảng tên / chỗ ngồi |
| 人数分 | にんずうぶん | Đủ số người |
| 押さえる | おさえる | Giữ chỗ / book |
| 備品 | びひん | Đồ dùng văn phòng |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004004, 8004, NULL, 'markdown_book', 'Rule 04 — Setup video call (Zoom/Teams) / オンライン会議のセットアップ', '# Rule 04 — Setup video call (Zoom/Teams) / オンライン会議のセットアップ
> **Luận điểm.** Online meeting fail thường ở 5 điểm: (1) link sai/expire, (2) audio không nghe, (3) share screen không thấy, (4) background lộ thông tin nội bộ, (5) ghi âm chưa xin phép. Mỗi mục test trước họp 30 phút.
>
> オンライン会議のチェック5項目：①リンク有効性 ②音声 ③画面共有 ④背景 ⑤録画許可。30分前にテスト必須。
>
> **Liên quan:** Rule 03 (offline setup), Rule 33 (mute/unmute mid-meeting), Rule 35 (line drop), Rule 36 (画面共有).

---

## Bối cảnh / 場面
Buổi họp với 白鷗 chuyển sang Zoom vì 大垣営業部長 đi công tác Osaka. Em Hải (DevOps) phụ Dũng setup. Hải biết tech nhưng chưa quen flow business JP nên Dũng nhắc thêm.

---

## Hội thoại XẤU — không test trước
*họp bắt đầu 1 phút trước · panic · チャットで · 慌てて新リンク発行 → 5分遅刻スタート*

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「ズン、Zoomリンクこれでいいよね？昨日のリンクそのまま使ったけど。」 |
| **ズン** | 「待って、そのリンク 24h で expire するやつじゃない？松本様もう入れない可能性ある。」 |
| **松本** | 「ズンさん、リンクが invalid と出ます。新しいリンクをお送りいただけますか？」 |
| **ズン** | 「申し訳ございません、ただ今新しいリンクをお送りします…」 |

**Vì sao xấu:** Link Zoom có expire / one-time-use option mà Hải không check. Không test trước = phát hiện lỗi đúng lúc khách đang chờ. Trễ 5 phút mở đầu = mất ấn tượng professional.

---

## Hội thoại TỐT — test 30 phút trước
*30分前、ズンと内部テスト*

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「ズン、Zoom新リンク発行済み、有効期限は明日まで。音声と画面共有もテスト OK です【1】。」 |
| **ズン** | 「サンキュ。背景は会社ロゴの blur 設定にして。録画は冒頭で松本様にご確認しよう【2】。」 |
| **ハイ** | 「了解。リンクを松本様に再送し、Wi-Fi 不安定時の電話番号も併記しました。」 |
| **ズン** | 「完璧。15分前に再ログインして待機しよう。」 |

📝 **Ghi chú:**
- 【1】**「テストOK」** — báo cáo kỹ thuật ngắn gọn, native dùng. Không cần 「テストが完了しました」 dài dòng giữa team nội bộ.
- 【2】**「録画は冒頭でご確認しよう」** — *Bắt buộc* xin phép ghi âm/recording đầu họp với khách Nhật. Chưa xin = vi phạm 個人情報保護.

---

## Cụm từ mẫu
> **「リンク・音声・画面・背景・録画 — 5点を30分前にテスト。」**
>
> *Link, audio, share screen, background, recording — test đủ 5 trước họp 30 phút.*

---

## Checklist Online Meeting Setup (xem `conversation.json:templates[0]`)
```
■ オンライン会議セットアップ・チェックリスト（30分前完了）

□ 1. ミーティングリンク発行・有効期限確認
□ 2. 音声テスト（マイク・スピーカー両方）
□ 3. 画面共有テスト（資料・デモ環境）
□ 4. 背景設定（バーチャル背景 or 整理整頓）
□ 5. 録画許可の意思確認（冒頭で発言予定）
□ 6. 予備の連絡手段（電話番号・チャットID）
□ 7. 配布資料の事前共有確認
□ 8. ホスト権限・共同ホスト設定
□ 9. 録画ファイル保存先（Drive / Notion）
□ 10. 入室待機室（Waiting Room）有効化
```

---

## Tránh
- Reuse link cũ → expire / spam filter / wrong meeting room.
- Background lộ whiteboard nội bộ / file path → leak thông tin khách hàng khác.
- Recording không xin phép → khách Nhật sẽ tỏ thái độ ngay lập tức.
- Mute mặc định OFF → noise lúc khách đang nói.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| オンライン会議 | online kaigi | Họp online |
| リンク | link | Link (URL) |
| 画面共有 | がめんきょうゆう | Share màn hình |
| 録画 | ろくが | Ghi hình / record |
| 音声 | おんせい | Âm thanh |
| 背景 | はいけい | Background |
| 待機室 | たいきしつ | Waiting room |
| 有効期限 | ゆうこうきげん | Hạn dùng |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004005, 8004, NULL, 'markdown_book', 'Rule 05 — Distribute tài liệu trước 24h / 資料の事前配布', '# Rule 05 — Distribute tài liệu trước 24h / 資料の事前配布
> **Luận điểm.** Tài liệu họp gửi đúng lúc khách bước vào phòng = khách Nhật không kịp pre-read = họp trở thành **phiên đọc tài liệu**, không phải họp ra quyết định. Quy chuẩn: **24h trước**, format **PDF (file size < 5MB)**, ghi rõ **version (v1.0/v1.1)**, kèm **dòng "ご一読のうえご参加ください"**.
>
> 会議資料は24時間前にPDFで送付。バージョン番号必須。「ご一読のうえご参加ください」と添える。
>
> **Liên quan:** Rule 01 (agenda), Rule 02 (mời họp), Rule 13 (giới thiệu agenda mở họp).

---

## Bối cảnh / 場面
Họp với 白鷗 chiều thứ Ba 15:00. Em Dũng đang viết draft 資料 (slides + Excel). Anh Tuấn (tech lead) yêu cầu Dũng phải xong trước thứ Hai 15:00 để gửi đi.

---

## Hội thoại XẤU — gửi tài liệu sát giờ
*火曜 14:30、会議30分前 · reply 5分後 · 15:00 開始*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、本日の会議資料をお送りいたします。」 |
| **松本** | 「ズンさん、ありがとうございます。ただ、これから読むのは時間が足りないので、会議内で説明していただけますか？」 |
| **ズン** | *(資料を一枚一枚スライドし、読み上げる…質疑なし、ただの朗読会議に)* |
| **ハー (CTO、終了後)** | 「あの会議、ほぼ資料説明だったね。意思決定の議題に20分しか取れなかった。」 |

**Vì sao xấu:** Khách Nhật cần thời gian pre-read để chuẩn bị câu hỏi. Gửi sát giờ = mất giai đoạn 検討 → buổi họp biến thành "đọc slide" thay vì discuss.

---

## Hội thoại TỐT — gửi 24h trước, version rõ
*月曜 14:00、会議25時間前 · reply 月曜夕方 · 火曜朝、軽微な修正後*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、明日の月例会議の資料 v1.0 をお送りいたします【1】。ご一読のうえご参加いただけますと幸いです【2】。」 |
| **松本** | 「ズンさん、ありがとうございます。Phase 2 進捗の8ページ目について明日確認させてください。」 |
| **ズン** | 「松本様、修正版 v1.1 をお送りいたします。8ページ目の数値を最新化いたしました。差分はハイライト表示してあります【3】。」 |
| **松本** | 「承知しました。差分明確で助かります。」 |

📝 **Ghi chú:**
- 【1】**「v1.0」「v1.1」** — version notation. Khách Nhật doanh nghiệp lớn đặc biệt thích vì dễ trace thay đổi.
- 【2】**「ご一読のうえ」** = "sau khi đọc qua". Cụm chuẩn yêu cầu pre-read mà không command.
- 【3】**「差分はハイライト表示」** — khi gửi version mới, phải highlight chỗ thay đổi. Không bắt khách đọc lại từ đầu.

---

## Cụm từ mẫu
> **「24時間前・PDF・バージョン番号・差分明示 — 4点で資料配布。」**
>
> *24h trước, PDF, có version, highlight diff — 4 điểm chuẩn distribute tài liệu.*

---

## Tránh
- Gửi tài liệu sáng hôm họp → khách không kịp pre-read.
- File Word/PowerPoint editable → khách lo bị edit nhầm. Dùng PDF.
- Không có version → confused giữa các bản gửi qua mail.
- File > 10MB → mail server khách bounce. Dùng Drive link nếu nặng.
- Sửa lại bản v1.0 mà không highlight diff → khách phải đọc lại từ đầu = phí thời gian.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 資料 | しりょう | Tài liệu |
| 事前配布 | じぜんはいふ | Phát trước |
| 一読 | いちどく | Đọc qua một lượt |
| バージョン / 版 | baajon / はん | Version |
| 差分 | さぶん | Diff / phần thay đổi |
| ハイライト | hairaito | Highlight |
| 修正版 | しゅうせいばん | Bản chỉnh sửa |
| 最新化 | さいしんか | Cập nhật mới nhất |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004006, 8004, NULL, 'markdown_book', 'Rule 06 — Tới sớm 5 phút (オン・タイム文化) / 5分前到着の文化', '# Rule 06 — Tới sớm 5 phút (オン・タイム文化) / 5分前到着の文化
> **Luận điểm.** Văn hóa Nhật: **「5分前行動」**. Đến đúng giờ = trễ. Đến trước 5 phút = on-time. Trễ dù 1 phút = mất uy tín. Áp dụng cả với offline (vào phòng) và online (login Zoom).
>
> 日本の業務文化「5分前行動」：定刻到着＝遅刻、5分前＝定時。1分でも遅れると信頼を失う。オフライン入室・オンラインログイン両方に適用。
>
> **Liên quan:** Rule 03 (offline setup), Rule 04 (online setup), Rule 17 (đến muộn).
> Sách 02 Rule 18 (gọi điện đúng giờ).

---

## Bối cảnh / 場面
Em Linh — junior mới, lần đầu tham dự họp với khách 白鷗. Thường có thói quen "tới đúng giờ" theo VN style. Dũng nhắc trước.

---

## Hội thoại XẤU — đến đúng giờ = trễ
*15:00 ちょうどに会議室へ向かう · 慌てて · 15:02 入室 · 笑顔だが…*

| Speaker | Câu |
|---------|-----|
| **リン** | 「ズン先輩、15時ちょうどなので会議室向かいます！」 |
| **ズン** | 「もう松本様は5分前から待っているよ。今 15:00 は遅刻と同じ。」 |
| **リン** | 「お待たせしました…遅れて申し訳ございません。」 |
| **松本** | 「いえいえ、大丈夫ですよ。」 *(内心：定刻 = ベトナム流かな)* |

**Vì sao xấu:** "đúng giờ" theo Nhật = **5 phút trước**. 15:00 đến cửa = thực tế ngồi xuống 15:02 = trễ. Khách không nói thẳng nhưng impression: "không hiểu văn hóa Nhật". Lặp lại 2-3 lần là mất tin cậy.

---

## Hội thoại TỐT — 5 phút trước, name plate sẵn
*14:50 入室、設備最終チェック · 14:55、松本様の到着 · 15:00、定刻スタート*

| Speaker | Câu |
|---------|-----|
| **リン** | 「ズン先輩、14:50 です。設備、ネームプレート、お茶、すべて完了しています【1】。」 |
| **ズン** | 「松本様、お早めのお越しありがとうございます。お席にご案内いたします。」 |
| **松本** | 「お気遣いありがとうございます。本日もよろしくお願いいたします。」 |
| **リン** | 「皆様お揃いでいらっしゃいますので、これより4月度月例会議を開始いたします【2】。」 |

📝 **Ghi chú:**
- 【1】**「14:50 です。設備、ネームプレート、お茶、すべて完了しています」** — báo cáo timing + status, native style. Có timestamp + danh sách hoàn tất.
- 【2】**「皆様お揃いでいらっしゃいますので」** — câu mở chuẩn khi đủ người. 「お揃い」(おそろい) = "đông đủ". Đi với 「いらっしゃる」 (尊敬語).

---

## Cụm từ mẫu
> **「定刻到着 = 遅刻。5分前 = 定時。10分前 = 余裕。」**
>
> *Đến đúng giờ = trễ. Trước 5 phút = on-time. Trước 10 phút = có dư.*

---

## Tránh
- "Đúng 15:00 ra khỏi bàn làm việc" → đến phòng họp 15:02 = trễ.
- Online: 14:59 mới click join Zoom → loading mất 30s = vào lúc 15:00:30 = trễ.
- "Đường tắc" / "thang máy chậm" — không phải lý do chấp nhận được. Phải plan dư 10 phút.
- Đến trước 30 phút → cũng không tốt: phòng có khi đang setup, gây phiền.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 5分前行動 | ごふんまえこうどう | "Quy tắc 5 phút trước" |
| 定刻 | ていこく | Đúng giờ (giờ định) |
| 遅刻 | ちこく | Trễ giờ |
| お早めのお越し | おはやめのおこし | "(Cảm ơn) anh/chị đến sớm" |
| お揃い | おそろい | Đông đủ |
| 余裕 | よゆう | Có dư / margin |
| 開始する | かいしする | Bắt đầu |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004007, 8004, NULL, 'markdown_book', 'Rule 07 — Pre-meeting check-in nội bộ / 事前すり合わせ', '# Rule 07 — Pre-meeting check-in nội bộ / 事前すり合わせ
> **Luận điểm.** Trước họp khách 30 phút phải có **「事前すり合わせ」** (pre-alignment) trong team mình: (1) ai nói cái gì (役割分担), (2) chỗ có thể conflict ý kiến nội bộ → align trước, (3) red lines (giá / scope không được nhượng).
>
> 客との会議の30分前に内部すり合わせ：①誰が何を話すか ②内部で意見が割れる論点を先に統一 ③譲れない条件（価格・スコープ）の確認。
>
> **Liên quan:** Rule 08 (Plan B), Rule 14 (phân vai trong họp), Rule 25 (持ち帰り).

---

## Bối cảnh / 場面
Họp đàm phán phase 2 với 大垣営業部長 + 松本PM. Chị Hương (副部長), Dũng (BD), anh Tuấn (tech lead) sẽ ngồi cùng. Trước khi vào, chị Hương triệu tập 30 phút すり合わせ.

---

## Hội thoại XẤU — không すり合わせ trước, conflict trong họp
*会議内、急に · 反射的に · ズンを見て驚く · 冷たく*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「Phase 2 の納期、5月末 → 5月15日に前倒しできますか？」 |
| **ズン** | 「がんばります、何とか調整いたします。」 |
| **トゥアン** | 「いや待って…技術的に5月15日は厳しいです。テストフェーズで2週間必要で…」 |
| **大垣** | 「お二人で意見が違うようですね。社内で先に話し合っていただいたほうが…」 |

**Vì sao xấu:** BD reflexively "がんばります" trong khi tech chưa OK = team không align nội bộ. Khách nhìn thấy conflict = mất tin tưởng. Phải giải quyết trong nội bộ TRƯỚC khi vào họp.

---

## Hội thoại TỐT — 30 phút すり合わせ trước
*30分前、社内会議室*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「本日は納期前倒しの話が出る可能性が高い。トゥアン、技術的に5月20日が現実的なライン？【1】」 |
| **トゥアン** | 「はい、5月20日まで前倒し可能。それより前は品質リスクあります。」 |
| **フオン** | 「了解。ズン、もし大垣様が『5月15日』と言っても即答せず、『5月20日であればコミットできます』と返してね【2】。私が必要に応じてフォローする。」 |
| **ズン** | 「承知しました。Plan B として『5月15日要望なら追加リソース3人分の見積もり』も用意しておきます。」 |

📝 **Ghi chú:**
- 【1】**「現実的なライン」** = "đường giới hạn realistic". Cụm tech lead / management dùng nhiều khi align trước họp.
- 【2】**「即答せず」** = "đừng trả lời ngay". Chỉ thị quan trọng cho junior khi vào họp đàm phán.

---

## Cụm từ mẫu
> **「客の前で社内意見が割れる = 信頼喪失。すり合わせは会議より前。」**
>
> *Trước mặt khách mà nội bộ conflict = mất uy tín. すり合わせ phải xong TRƯỚC họp.*

---

## Tránh
- BD reflexively "がんばります" mà chưa hỏi tech → tech lập tức bị đặt vào tình huống khó.
- Không xác định red line giá / scope → đàm phán xong mới phát hiện vượt giới hạn.
- すり合わせ làm 5 phút trước họp ở hành lang → không đủ thời gian align.
- Junior nói nhiều hơn senior trong すり合わせ → senior chưa kịp set chiến lược.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 事前すり合わせ | じぜんすりあわせ | Pre-alignment / pre-check-in |
| 役割分担 | やくわりぶんたん | Phân vai |
| 前倒し | まえだおし | Đẩy lên sớm hơn |
| 即答 | そくとう | Trả lời ngay |
| 現実的 | げんじつてき | Thực tế / realistic |
| 譲れない | ゆずれない | Không nhượng được |
| コミット | komitto | Commit / cam kết |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004008, 8004, NULL, 'markdown_book', 'Rule 08 — Chuẩn bị Plan B + counter-arguments / 想定問答集の準備', '# Rule 08 — Chuẩn bị Plan B + counter-arguments / 想定問答集の準備
> **Luận điểm.** Khách Nhật giỏi đặt **「想定外の質問」** (câu hỏi bất ngờ). Trước họp phải có **想定問答集 (Q&A list)** liệt kê 3-5 câu khách dễ hỏi + script trả lời sẵn. Bonus: 1-2 câu hỏi khó nhất → có **Plan B**.
>
> 客が聞きそうな質問3〜5件をリスト化し、回答スクリプトを準備。一番難しい質問には Plan B も用意。
>
> **Liên quan:** Rule 07 (すり合わせ), Rule 25 (持ち帰り), Rule 28 (xin thêm data), Rule 29 (deadlock).

---

## Bối cảnh / 場面
Sáng thứ Ba, 1 tiếng trước họp đàm phán phase 2. Em Dũng đã có agenda + すり合わせ với chị Hương. Anh Hà CTO ghé qua, hỏi "想定問答集 đâu?".

---

## Hội thoại XẤU — không có 想定問答集
*慌てて*

| Speaker | Câu |
|---------|-----|
| **ハー (CTO)** | 「ズン、本日の想定問答集はある？」 |
| **ズン** | 「あ…アジェンダと資料は揃えましたが、想定問答集はまだ…」 |
| **ハー** | 「客は『価格を10%下げられないか』『納期を2週間早められないか』『他社事例は』を必ず聞くよ。回答用意してる？」 |
| **ズン** | 「す、すみません、これから準備します…」 |

**Vì sao xấu:** Junior thường nghĩ "agenda + 資料 đủ rồi". Nhưng khách Nhật giỏi đẩy câu hỏi ngoài agenda. Không chuẩn bị = trong họp panic + im lặng + 「持ち帰ります」.

---

## Hội thoại TỐT — Q&A list + Plan B sẵn
| Speaker | Câu |
|---------|-----|
| **ハー (CTO)** | 「ズン、本日の想定問答集はある？」 |
| **ズン** | 「はい、想定質問5件と回答案、それから一番難しい『5月15日納期前倒し』には Plan B として追加リソース3人分の見積もりも用意済みです【1】。」 |
| **ハー** | 「いいね。価格交渉の質問、想定回答は？」 |
| **ズン** | 「『現行価格はスコープに最適化されており、スコープ縮小なら見直し可能』とお返しします。即値引きには応じない方針でフオン副部長と統一済みです【2】。」 |

📝 **Ghi chú:**
- 【1】**「Plan B として〜も用意済み」** — 「用意済み」 = "đã chuẩn bị xong". Cụm gọn của business JP. Cấp trên hỏi "có chưa?" → trả lời 「〜済みです」 là đẹp nhất.
- 【2】**「方針で統一済み」** = "đã thống nhất phương châm". Báo cáo cấp trên rằng "không phải chỉ tôi nghĩ vậy mà cả team đã align".

---

## Cụm từ mẫu
> **「想定問答集なき会議 = 持ち帰り会議。」**
>
> *Họp mà không có Q&A list = họp xong xin "mang về" suy nghĩ.*

---

## Format 想定問答集
```
■ 4月度月例会議 想定問答集 v1.0

Q1. 価格を10%下げられないか？
A1. 現行価格はスコープに最適化されています。スコープ縮小であれば
    見直し可能です。具体的にはABC機能を切るとX%減となります。

Q2. 5月末納期 → 5月15日に前倒し可能か？
A2. 通常スコープでは難しいですが、追加リソース3名で対応可能です。
    Plan B 見積：別添「resource_planB_v1.xlsx」

Q3. 他社の類似事例はあるか？
A3. 守秘契約の範囲で、〇〇業界2社の事例を匿名化してご紹介可能です。

Q4. リスクが顕在化した場合の対応は？
A4. 週次で risk register を更新、影響度 High は即報告。エスカレーション
    フロー（CTO→副部長→PM）あります。

Q5. メンバー変更があった場合の継続性は？
A5. ペア体制で運営しており、引き継ぎ docs を都度更新。空白期間ゼロを
    保証します。
```

---

## Tránh
- 想定問答集 chỉ trong đầu, không viết ra → vào họp panic là quên.
- Chỉ chuẩn bị câu hỏi dễ → khách hỏi câu khó là 「持ち帰ります」.
- Plan B cũng không có → "5月15日無理です" → đàm phán dừng.
- Trả lời chưa align với senior → senior phải bồi thêm = mất uy tín BD.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 想定問答集 | そうていもんどうしゅう | Q&A dự đoán |
| 想定質問 | そうていしつもん | Câu hỏi dự đoán |
| 〜済み | ずみ | Đã xong |
| 値引き | ねびき | Giảm giá |
| 方針 | ほうしん | Phương châm |
| 見直し | みなおし | Xem xét lại |
| エスカレーション | escalation | Escalation |
| 顕在化 | けんざいか | Hiện ra (risk → thực tế) |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004009, 8004, NULL, 'markdown_book', 'Rule 09 — Câu chào mở đầu chuẩn / 会議冒頭の第一声', '# Rule 09 — Câu chào mở đầu chuẩn / 会議冒頭の第一声
> **Luận điểm.** Câu đầu chủ trì phải có 3 yếu tố: (1) **cảm ơn vì đã đến** 「お忙しい中お集まりいただき」, (2) **giới thiệu mình** 「司会を務めさせていただく〇〇」, (3) **vào agenda** 「早速ですが」. Thiếu 1 = cảm giác hụt hẫng.
>
> 会議冒頭の第一声3要素：①来場感謝 ②司会自己紹介 ③議事への移行。「本日はお忙しい中、お集まりいただきありがとうございます。」が定型。
>
> **Liên quan:** Rule 06 (đến đúng giờ), Rule 10 (giới thiệu khi có người mới), Rule 13 (giới thiệu agenda), Rule 14 (phân vai).

---

## Bối cảnh / 場面
Buổi họp 4月度月例 với 白鷗 (松本PM, 大垣営業部長). Em Dũng được giao司会 (chủ trì). Đã 15:00, đủ người.

---

## Hội thoại XẤU — câu mở thiếu, vào nội dung luôn
*15:00 · 困惑 · 慌てて*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では、Phase 2 進捗報告から始めます。」 |
| **松本** | *(え、ご挨拶もなく？まだ全員紹介もしていないのに？)* |
| **大垣** | 「ズンさん、まずは皆様への一言があるかと…」 |
| **ズン** | 「あ、すみません。本日はお集まりいただきありがとうございます…」 |

**Vì sao xấu:** Bỏ qua câu mở chuẩn = bất lịch sự với khách (đặc biệt khách Nhật cấp cao). 「で、〜から始めます」 quá khô. Khách bị "shocked" ngay từ giây đầu.

---

## Hội thoại TỐT — 3 yếu tố đầy đủ
*15:00 ちょうど · うなずく*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「皆様、本日はお忙しい中お集まりいただき、誠にありがとうございます【1】。」 |
| **ズン** | 「本日の司会を務めさせていただきます、ティエンファットのズンでございます【2】。」 |
| **ズン** | 「早速ではございますが、本日のアジェンダに沿って進めさせていただきます【3】。」 |
| **松本 / 大垣** | 「よろしくお願いいたします。」 |

📝 **Ghi chú:**
- 【1】**「お忙しい中」「誠に」** — bộ đôi tăng cấp lễ phép. Không có 「お忙しい中」 → cảm thấy thiếu. 「誠に」 mạnh hơn 「本当に」.
- 【2】**「司会を務めさせていただきます」** — câu chuẩn người chủ trì. 「務める」 = đảm nhận. 「させていただく」 = formal hơn 「します」.
- 【3】**「早速ではございますが」** — chuyển tiếp lịch sự từ chào sang nội dung. Cụm chuẩn business JP.

---

## Cụm từ mẫu
> **「本日はお忙しい中お集まりいただき、誠にありがとうございます。」**
>
> *Câu này là câu mặc định mở mọi cuộc họp khách Nhật. Học thuộc.*

---

## Tránh
- 「では始めます」 cộc lốc — không có cảm ơn.
- Quên giới thiệu mình là 司会 → khách không biết ai chủ trì.
- 「えーと、本日は…」 dùng filler trong câu mở → thiếu tự tin.
- Cảm ơn xong thì cười khá lâu — vào agenda luôn, đừng kéo dài.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 第一声 | だいいっせい | Câu mở đầu |
| 司会 | しかい | Chủ trì / MC |
| 務める | つとめる | Đảm nhận |
| 早速 | さっそく | Ngay lập tức |
| 誠に | まことに | Thật sự (formal) |
| お集まりいただく | おあつまりいただく | (Quý vị) đã đến tham dự |
| 〜に沿って | にそって | Theo (kế hoạch / agenda) |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004010, 8004, NULL, 'markdown_book', 'Rule 10 — Tự giới thiệu khi có người mới / 自己紹介の標準', '# Rule 10 — Tự giới thiệu khi có người mới / 自己紹介の標準
> **Luận điểm.** Tự giới thiệu chuẩn business JP = **Cty → Phòng → Tên → Vai trò trong dự án**. 4 element trong 3 câu (~10 giây). Không nói tuổi / quê quán / sở thích như interview.
>
> 業務の自己紹介は4要素：①会社 ②部署 ③氏名 ④プロジェクト内の役割。3文・10秒以内が目安。年齢・出身・趣味は不要。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 11 (danh thiếp), Rule 12 (giới thiệu出席者).

---

## Bối cảnh / 場面
Buổi họp đầu tiên của em Linh (vừa join project) với 白鷗. Khi 司会 Dũng giới thiệu xong các thành viên cũ, đến lượt Linh tự giới thiệu vì là người mới.

---

## Hội thoại XẤU — kể lể quá nhiều
*小声で割り込み · 微笑だが*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では、新メンバーのリンさんから自己紹介をお願いします。」 |
| **リン** | 「は、はい！リンと申します。23歳で、ハノイ出身で、ハノイ大学を卒業して、入社2ヶ月目で、よろしくお願いします！趣味は…」 |
| **ズン** | 「リンさん、業務の自己紹介は会社・部署・名前・役割でいいよ。」 |
| **大垣** | *(まだ慣れていない感じだな)* |

**Vì sao xấu:** Tự giới thiệu kiểu **学校面接** (phỏng vấn vào trường) → khách Nhật cảm thấy "junior chưa được train". Tuổi / quê / trường / sở thích = không cần. Mất 30s mà không cho khách thông tin business.

---

## Hội thoại TỐT — 4 element trong 3 câu
| Speaker | Câu |
|---------|-----|
| **ズン** | 「では、新メンバーのリンさんから自己紹介をお願いします。」 |
| **リン** | 「ティエンファット社、マーケティング部のリンと申します【1】。」 |
| **リン** | 「本プロジェクトでは、議事録および資料管理を担当いたします【2】。」 |
| **リン** | 「不慣れな点もございますが、何卒よろしくお願いいたします【3】。」 |

📝 **Ghi chú:**
- 【1】**「〇〇社、〇〇部の〇〇と申します」** — pattern chuẩn 1 câu chứa 3 element. 「と申します」 khiêm nhường hơn 「です」.
- 【2】**「〇〇および〇〇を担当いたします」** — 「および」 = "và (formal)". Dùng khi liệt kê vai trò.
- 【3】**「不慣れな点もございますが」** — câu humble đẹp khi mới join. Không quá overdo.

---

## Cụm từ mẫu
> **「会社 → 部署 → 名前 → 役割。10秒・3文で完結。」**
>
> *Cty → Phòng → Tên → Vai trò. 10 giây / 3 câu là hết.*

---

## Template tự giới thiệu
```
1. ティエンファット社、〇〇部の〇〇と申します。
2. 本プロジェクトでは、〇〇および〇〇を担当いたします。
3. （新人の場合）不慣れな点もございますが、
   （ベテランの場合）これまで〇〇の経験を活かし、
   何卒よろしくお願いいたします。
```

---

## Tránh
- Nói tuổi / quê / trường → không phải interview.
- 「えーと、私は…えーと…」 filler nhiều → mất tự tin.
- "Cú phang" hỏi lại 「あ、すみません、もう一度お名前を…」 → khách nói lại 1 lần thôi, lần 2 phải nhớ.
- Cười khúc khích cuối câu → casual quá với khách Nhật.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 自己紹介 | じこしょうかい | Tự giới thiệu |
| 〜と申します | ともうします | "Tôi tên là..." (khiêm nhường) |
| 担当する | たんとうする | Phụ trách |
| および | および | Và (formal) |
| 不慣れ | ふなれ | Chưa quen |
| 役割 | やくわり | Vai trò |
| 経験を活かす | けいけんをいかす | Tận dụng kinh nghiệm |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004011, 8004, NULL, 'markdown_book', 'Rule 11 — Trao danh thiếp đúng cách / 名刺交換の流れ', '# Rule 11 — Trao danh thiếp đúng cách / 名刺交換の流れ
> **Luận điểm.** Danh thiếp Nhật = "khuôn mặt thứ 2" của người. Quy tắc: (1) **2 tay**, hướng chữ **về phía người nhận**, (2) câu kèm 「〇〇社の〇〇でございます。よろしくお願いいたします」, (3) **đọc tên** sau khi nhận, (4) **đặt trên bàn theo vị trí ngồi** suốt buổi họp, (5) **không viết / không gập** trước mặt khách.
>
> 名刺交換5原則：①両手 ②自社→氏名→挨拶 ③受領後に氏名を声に出す ④席順どおり卓上に並べる ⑤書き込み・折り曲げ厳禁。
>
> **Liên quan:** Rule 10 (tự giới thiệu), Rule 12 (giới thiệu出席者). 詳細は Sách 07 (Visit/Card) Rule 12-15.

---

## Bối cảnh / 場面
Buổi họp đầu tiên của em Linh với 大垣営業部長. Lần đầu Linh trao danh thiếp với khách Nhật cấp cao. Dũng đã brief trước.

---

## Hội thoại XẤU — 1 tay, đặt vào ví ngay
*両手で名刺を差し出す · 片手で受け取り、自分の名刺は1枚指で渡す · 受け取った名刺をすぐ財布へ · 笑顔は崩さないが…*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「白鷗株式会社、営業部長の大垣でございます。」 |
| **リン** | 「リンです、よろしくお願いします！」 |
| **リン** | *(チラッと見て、財布のポケットに収納)* |
| **大垣** | *(まだ研修されていないようだ)* |

**Vì sao xấu:** (1) 1 tay = bất kính, (2) tự xưng "リンです" cộc lốc, (3) bỏ vào ví ngay = "không tôn trọng card này". Khách Nhật cấp cao nhìn thấy = chấm âm mạnh ấn tượng đầu.

---

## Hội thoại TỐT — đủ 5 nguyên tắc
*両手で差し出す · 両手で受け取り、文字方向を確認、軽くお辞儀 · 自分の名刺を両手で文字を客向きに差し出す · 受け取った名刺を自席の卓上、大垣の座席位置に合わせて置く*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「白鷗株式会社、営業部長の大垣でございます。」 |
| **リン** | 「頂戴いたします。大垣様、ティエンファット社、マーケティング部のリンでございます【1】。」 |
| **リン** | 「よろしくお願いいたします【2】。」 |
| **リン** | *(席順どおり配置完了【3】)* |

📝 **Ghi chú:**
- 【1】**「頂戴いたします」** (ちょうだいいたします) — câu chuẩn lúc nhận. Khiêm nhường hơn 「いただきます」. Sau câu này phải đọc tên người 1 lần để xác nhận.
- 【2】Khi đưa danh thiếp mình: chữ phải hướng về phía khách (đọc được). Tay đặt ở mép, không che logo.
- 【3】**「席順どおり卓上に並べる」** — danh thiếp khách đặt trên bàn cho tới hết họp, vị trí khớp với chỗ ngồi → không quên tên ai. Cuối họp mới cất.

---

## Cụm từ mẫu
> **「両手・氏名復唱・席順配置 — 名刺交換の3不変則。」**
>
> *Hai tay, đọc lại tên, đặt theo vị trí ngồi — 3 quy tắc không đổi.*

---

## Tránh
- 1 tay nhận / đưa.
- Để danh thiếp khách trên bàn dưới điện thoại / cốc nước.
- Viết note lên danh thiếp trước mặt khách.
- Gập danh thiếp khi cất.
- Đưa danh thiếp đã quăn / bẩn.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 名刺 | めいし | Danh thiếp |
| 名刺交換 | めいしこうかん | Trao danh thiếp |
| 頂戴いたします | ちょうだいいたします | Em xin nhận ạ (lúc nhận card) |
| 両手 | りょうて | Hai tay |
| 席順 | せきじゅん | Thứ tự chỗ ngồi |
| 卓上 | たくじょう | Trên bàn |
| 折り曲げる | おりまげる | Gập / nhăn |
| 書き込み | かきこみ | Viết note vào |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004012, 8004, NULL, 'markdown_book', 'Rule 12 — Giới thiệu các bên tham dự / 出席者紹介', '# Rule 12 — Giới thiệu các bên tham dự / 出席者紹介
> **Luận điểm.** Sau câu mở (rule 09) và trước khi vào agenda, 司会 phải **giới thiệu lần lượt cả 2 bên**. Thứ tự: **phía mình trước (内 — uchi), phía khách sau (外 — soto)**. Trong mỗi bên: **chức vụ cao → thấp**. Lúc giới thiệu phía mình DROP title (nội bộ — 内, không gọi "副部長フオン様").
>
> 出席者紹介の順序：①自社→他社、②役職高→低。自社内紹介では敬称・役職を省略（「弊社 副部長のフオン」が正解、「フオン様」は不可）。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 10 (tự giới thiệu), Rule 11 (danh thiếp).

---

## Bối cảnh / 場面
司会 Dũng vừa xong câu mở (rule 09). Phòng có: **Phía mình** Hương副部長, Tuấn leader, Linh, Dũng. **Phía khách** 大垣営業部長, 松本PM. Dũng giới thiệu出席者.

---

## Hội thoại XẤU — gọi nội bộ bằng 様
*微妙な顔 · 後で松本がズンに小声*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では出席者紹介です。フオン副部長様、トゥアンリーダー様、リンさんです。」 |
| **ズン** | 「白鷗様より、大垣様と松本様にもご出席いただいております。」 |
| **大垣** | *(自社の人間に「様」を付けるのは…)* |
| **松本** | 「ズンさん、自社の方を紹介する時は『様』も役職名も付けず、『弊社の〇〇』が正解ですよ。」 |

**Vì sao xấu:** Gọi nội bộ (内) bằng 「様」 → khách Nhật cảm thấy **uchi-soto** chưa nắm vững. Đây là lỗi keigo căn bản nhất — sách 02 đã đề cập (drop title cho 内 = phía mình).

---

## Hội thoại TỐT — uchi-soto đúng
| Speaker | Câu |
|---------|-----|
| **ズン** | 「本日の出席者をご紹介いたします。まずは弊社より【1】、副部長のフオン、技術リーダーのトゥアン、アシスタントのリン、そして司会のズンの4名でございます。」 |
| **ズン** | 「続きまして、白鷗株式会社様より【2】、大垣 営業部長様、松本 プロジェクトマネージャー様の2名にご出席いただいております。」 |
| **大垣 / 松本** | 「よろしくお願いいたします。」 |
| **ズン** | 「本日もどうぞよろしくお願いいたします【3】。」 |

📝 **Ghi chú:**
- 【1】**「弊社より、副部長のフオン」** — drop 「様」、 drop title prefix. Pattern: 「弊社 [役職] の [氏名]」. KHÔNG nói 「フオン副部長」 trước khách.
- 【2】**「白鷗株式会社様より、大垣 営業部長様」** — KEEP 「様」 cho cả công ty + cá nhân khách. Title đặt **sau** tên là OK.
- 【3】Sau khi giới thiệu xong cả 2 bên, câu chốt 「本日もどうぞよろしくお願いいたします」 = transition sang rule 13 (giới thiệu agenda).

---

## Cụm từ mẫu
> **「弊社 → 他社、役職高 → 低、内には敬称なし、外には敬称あり。」**
>
> *Cty mình trước → Cty khách sau. Cao → thấp. Nội bộ không 様, khách có 様.*

---

## Tránh
- 「フオン副部長様」 「リンさん」 trước mặt khách → 内に敬称 = lỗi keigo điển hình.
- Quên giới thiệu mình (司会) → khách sẽ confuse "ai chủ trì".
- Giới thiệu bên khách trước bên mình → ngược thứ tự uchi-soto.
- Bỏ title của khách → 大垣様 (không có 営業部長) = thiếu rõ vai trò.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 出席者 | しゅっせきしゃ | Người tham dự |
| 弊社 | へいしゃ | Công ty (chúng) tôi (humble) |
| 〇〇株式会社様 | かぶしきがいしゃさま | Cty 〇〇 (kính ngữ) |
| 役職 | やくしょく | Chức vụ |
| 続きまして | つづきまして | "Tiếp đến..." |
| 〜より | より | Phía / từ phía... |
| まずは | まずは | "Đầu tiên là..." |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004013, 8004, NULL, 'markdown_book', 'Rule 13 — Giới thiệu agenda + thời lượng / アジェンダ説明', '# Rule 13 — Giới thiệu agenda + thời lượng / アジェンダ説明
> **Luận điểm.** Sau giới thiệu出席者 (rule 12), 司会 nói **「本日のアジェンダは〇点ございます」** rồi lần lượt liệt kê. Mỗi mục: **(số) → tiêu đề → thời lượng → người phụ trách**. Khách hiểu ngay flow trong 30 giây.
>
> アジェンダ説明：「本日のアジェンダは〇点ございます」と宣言→各議題を「番号→タイトル→所要時間→担当」で1議題15秒以内。
>
> **Liên quan:** Rule 01 (lập agenda), Rule 09 (mở đầu), Rule 14 (phân vai), Rule 15 (chốt mục tiêu), Rule 16 (timeline mỗi mục).

---

## Bối cảnh / 場面
司会 Dũng vừa giới thiệu xong出席者 (rule 12). Tiếp theo là giới thiệu agenda đã gửi trước (rule 01).

---

## Hội thoại XẤU — đọc agenda lỏng lẻo
*慌てて agenda を見る*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では今日のアジェンダ、いくつかあります。進捗とか、課題とか…」 |
| **大垣** | 「ズンさん、何分の会議で何議題でしょうか？時間が読めなくて…」 |
| **ズン** | 「あ、4議題で60分です。1番目から…」 |
| **大垣** | 「先に全体像をいただけますか。後の予定もあるので。」 |

**Vì sao xấu:** "いくつかあります", "とか" → vague, không professional. Khách Nhật cấp cao luôn quan tâm "60分で何が終わるか" → phải show full overview trước.

---

## Hội thoại TỐT — overview rõ, mỗi mục 15s
| Speaker | Câu |
|---------|-----|
| **ズン** | 「本日のアジェンダは4点ございます【1】。所要時間は合計60分でございます。」 |
| **ズン** | 「1点目、4月進捗報告 — 10分、ズン。2点目、課題と対応策 — 15分、トゥアン。3点目、5月スコープ協議 — 25分、皆様で。4点目、次回日程・TODO 確認 — 10分、ズン【2】。」 |
| **ズン** | 「事前にお送りした資料 v1.1 に沿って進めさせていただきます。各議題終了時に簡単な合意確認を入れます【3】。」 |
| **大垣 / 松本** | 「承知いたしました。よろしくお願いいたします。」 |

📝 **Ghi chú:**
- 【1】**「〇点ございます」** = "có 〇 mục". 「点」 dùng cho mục agenda. Chuẩn hơn 「〇個」「〇つ」 trong business.
- 【2】Pattern mỗi item: 「〇点目、[タイトル]、[時間]、[担当]」. Cố định format → khách dễ note.
- 【3】**「合意確認を入れます」** — flag rằng cuối mỗi議題 sẽ chốt 1 lần. Tránh "trao đổi xong rồi tan" mà không rõ kết quả.

---

## Cụm từ mẫu
> **「アジェンダは点数 + 全体時間 → 各議題の番号・タイトル・時間・担当。」**
>
> *Đếm số mục + tổng thời gian → từng mục có số / tên / thời lượng / người phụ trách.*

---

## Tránh
- 「いくつか」「色々」 vague.
- Không nói tổng thời lượng → khách không biết phải dành bao lâu.
- Không nói người phụ trách → không biết hỏi ai.
- Đọc agenda quá nhanh / quá chậm → 1 mục ~15s là vừa.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| アジェンダ | agenda | Agenda |
| 〇点 | てん | 〇 mục (đếm cho議題) |
| 所要時間 | しょようじかん | Thời lượng |
| 合計 | ごうけい | Tổng |
| 〇点目 | てんめ | Mục thứ〇 |
| 担当 | たんとう | Người phụ trách |
| 合意確認 | ごういかくにん | Confirm thống nhất |
| 沿って | そって | Theo (kế hoạch) |', 'system', 13, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004014, 8004, NULL, 'markdown_book', 'Rule 14 — Phân vai moderator / scribe / 司会・書記の役割確認', '# Rule 14 — Phân vai moderator / scribe / 司会・書記の役割確認
> **Luận điểm.** Trước khi vào nội dung đầu tiên: **công bố ai là chủ trì (司会), ai là người ghi biên bản (書記)**. Cả phòng phải biết "ai chủ trì timing, ai ghi biên bản". Không có người ghi biên bản = biên bản không reliable, không gửi follow-up được.
>
> 議題開始前：『司会は〇〇、書記は〇〇』を明示。書記は議事録ドラフトを当日中に作成。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 13 (giới thiệu agenda), Rule 44 (action items), Rule 45 (gửi biên bản 24h).

---

## Bối cảnh / 場面
Sau khi giới thiệu người tham dự + agenda, em Dũng phân vai. Tự xác nhận chủ trì (司会), đề cử em Linh làm người ghi biên bản (書記).

---

## Hội thoại XẤU — không phân vai
*挙手 · 振り返って · 困惑*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では、議題1から入ります。」 |
| **大垣** | 「すみません、本日の書記はどなたでしょうか？決定事項は誰が記録？」 |
| **ズン** | 「あ…リンさんお願いしていいですか？」 |
| **リン** | 「は、はい、急ですが…」 |

**Vì sao xấu:** Người ghi biên bản (書記) quyết định ai giữ được kiến thức sau họp. Phân vai giữa chừng = lộn xộn, không kịp prep template, biên bản fail.

---

## Hội thoại TỐT — Công bố vai trò trước nội dung
| Speaker | Câu |
|---------|-----|
| **ズン** | 「議題に入る前に、本日の役割をご確認させていただきます【1】。」 |
| **ズン** | 「司会は私ズンが務めます。書記はリンが担当し、議事録は本日中にドラフトを共有いたします【2】。」 |
| **リン** | 「議事録テンプレートは準備済みです。決定事項とTODOを中心に記録いたします。」 |
| **大垣** | 「ありがとうございます。安心しました。」 |

📝 **Ghi chú:**
- 【1】**「役割をご確認させていただきます」** — câu transition lịch sự. 「ご確認」 dùng được vì 確認 là về thông tin chung, không phải own action.
- 【2】**「本日中にドラフトを共有」** — commit timeline cho biên bản (link rule 45). Khách Nhật đặc biệt thích vì biết được "khi nào nhận biên bản".

---

## Cụm từ mẫu
> **「議題前に司会・書記を公表。書記は当日中にドラフト共有。」**
>
> *Trước nội dung phải báo chủ trì (司会) + người ghi biên bản (書記). Người ghi biên bản cam kết draft trong ngày.*

---

## Vai trò người ghi biên bản (書記) phải làm
| Lúc nào | Việc gì |
|---------|---------|
| Trước họp | Mở template biên bản (rule 46), copy出席者 list |
| Trong họp | Note quyết định + TODO + owner + deadline |
| Cuối họp | Đọc to action items để confirm (rule 44) |
| Sau họp 24h | Gửi biên bản (rule 45) |

---

## Tránh
- Chủ trì + người ghi biên bản cùng 1 người → chủ trì phải tập trung điều phối, không kịp ghi.
- 書記 là junior chưa từng viết biên bản → biên bản missing key decisions.
- Không công bố 書記 trước議題 → khách hoang mang.
- 書記 ghi tay thay vì laptop → không kịp tốc độ họp.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 司会 | しかい | Chủ trì / MC |
| 書記 | しょき | Thư ký / scribe |
| 役割 | やくわり | Vai trò |
| 議事録 | ぎじろく | Biên bản |
| ドラフト | doraft | Bản nháp |
| 決定事項 | けっていじこう | Mục đã quyết |
| 共有 | きょうゆう | Chia sẻ |
| 担当する | たんとうする | Phụ trách |', 'system', 14, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004015, 8004, NULL, 'markdown_book', 'Rule 15 — Chốt mục tiêu output cuộc họp / 本日のゴール確認', '# Rule 15 — Chốt mục tiêu output cuộc họp / 本日のゴール確認
> **Luận điểm.** Sau khi giới thiệu agenda + phân vai, 司会 chốt **「本日のゴール」**: cuối họp phải **quyết được cái gì** (1-3 mục cụ thể, có thể action). Goal không rõ = họp xong "trao đổi tốt nhỉ" mà không quyết được gì.
>
> 議題前に『本日決めたいのは〇〇』と goal を明示。1〜3個に絞る。決定事項として議事録に記録できる粒度で書く。
>
> **Liên quan:** Rule 01 (output mong đợi trong agenda), Rule 13 (giới thiệu agenda), Rule 31 (đi đến quyết định), Rule 44 (action items).

---

## Bối cảnh / 場面
司会 Dũng đã làm xong rules 09-14. Trước議題 1, chốt mục tiêu để tất cả align hướng.

---

## Hội thoại XẤU — goal vague
| Speaker | Câu |
|---------|-----|
| **ズン** | 「本日は皆様で意見交換させていただければと思います。」 |
| **大垣** | 「ズンさん、本日 何を decide したいのか教えていただけますか。」 |
| **ズン** | 「えーと、進捗確認と、できれば 5月のスコープも…」 |
| **大垣** | 「『できれば』ですか…明確に決めたい点は？」 |

**Vì sao xấu:** "意見交換" = "trao đổi ý kiến" nghe tốt nhưng không có output. "できれば" = chần chừ. Khách Nhật cấp cao luôn hỏi "quyết cái gì" → vague = không chuẩn bị.

---

## Hội thoại TỐT — goal cụ thể, 2 mục
| Speaker | Câu |
|---------|-----|
| **ズン** | 「本日のゴールを2点ご共有させていただきます【1】。」 |
| **ズン** | 「1点目、5月開発スコープの合意。2点目、次回会議日程の決定でございます【2】。」 |
| **ズン** | 「この2点を本日の議事録に決定事項として記録できる状態に持っていく、というのが本日のゴールです【3】。」 |
| **大垣 / 松本** | 「明確で良いですね。承知しました。」 |

📝 **Ghi chú:**
- 【1】**「ゴールを〇点ご共有」** — 「ゴール」 (kata-katakana) hơn 「目標」 vì context business JP hiện đại.
- 【2】Goal phải có động từ: **合意 / 決定 / 確認**. Tránh động từ vague như 共有 / 検討.
- 【3】**「議事録に決定事項として記録できる状態」** — định nghĩa goal qua "ghi vào biên bản được". Khái niệm tactical, khách Nhật rất thích.

---

## Cụm từ mẫu
> **「本日のゴールは〇〇 — 議事録に書ける粒度で。」**
>
> *Goal hôm nay là 〇〇 — viết được vào biên bản dạng decision.*

---

## Format goal chuẩn
| ❌ Vague | ✅ Cụ thể |
|---------|----------|
| Phase 2 について話す | Phase 2 のスコープを **合意** する |
| 進捗を共有する | 4月の delay 2 件への **対応策を決定** する |
| 来月のことを考える | 5月スプリントの **タスク優先順位を確定** する |
| 検討する | 来週 **A案 / B案 のどちらに進むか決定** する |

---

## Tránh
- Goal vague: 「意見交換」「進捗共有」「検討」 → không quyết được.
- Quá nhiều goal (>3) → 60分 không đủ.
- Goal không action-able: 「Phase 2 について理解する」 → không đo được.
- Goal lệch agenda → khách lúng túng.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ゴール | gooru | Mục tiêu / goal |
| 合意 | ごうい | Thống nhất / agree |
| 決定 | けってい | Quyết định |
| 決定事項 | けっていじこう | Mục đã quyết |
| 粒度 | りゅうど | Granularity / mức chi tiết |
| 〜状態 | じょうたい | Trạng thái |
| 持っていく | もっていく | Đưa tới |', 'system', 15, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004016, 8004, NULL, 'markdown_book', 'Rule 16 — Confirm timeline mỗi mục / 各議題の時間配分', '# Rule 16 — Confirm timeline mỗi mục / 各議題の時間配分
> **Luận điểm.** Sau khi giới thiệu agenda (rule 13) + chốt goal (rule 15), 司会 confirm **timeline thực tế cho mỗi議題**: thời gian bắt đầu / kết thúc cụ thể (ví dụ "15:05-15:15"). Mỗi議題 có owner timing — nếu over thì pause + asks consent.
>
> 各議題の所要時間を時計で明示（『〇〇は15:05〜15:15』）。超過時は司会が一度止め、延長合意を取る。
>
> **Liên quan:** Rule 13 (giới thiệu agenda), Rule 14 (司会), Rule 29 (deadlock), Rule 42 (時間切れ).

---

## Bối cảnh / 場面
Sau rule 15, Dũng confirm timeline với clock-time để khách kiểm soát kỳ vọng.

---

## Hội thoại XẤU — không có clock-time
| Speaker | Câu |
|---------|-----|
| **ズン** | 「では議題1から、進捗報告 10分、課題 15分、スコープ 25分、確認 10分です。」 |
| **大垣** | 「終了予定は何時？」 |
| **ズン** | 「えーと、足し算すると…16時です。」 |
| **大垣** | 「最初から『15:00 開始、16:00 終了』と言ってもらえれば…」 |

**Vì sao xấu:** Đưa "phút" mà không "clock-time" → khách phải tự cộng. Khách Nhật cấp cao có lịch back-to-back, cần clock-time chính xác.

---

## Hội thoại TỐT — clock-time mỗi議題
| Speaker | Câu |
|---------|-----|
| **ズン** | 「本日の時間配分をご確認ください。15:00 開始、16:00 終了予定でございます【1】。」 |
| **ズン** | 「議題1: 進捗報告 15:00〜15:10。議題2: 課題対応 15:10〜15:25。議題3: スコープ協議 15:25〜15:50。議題4: 次回確認 15:50〜16:00【2】。」 |
| **ズン** | 「もし時間が押した場合は、議題3の途中で一度止めて、延長可否をご相談させていただきます【3】。」 |
| **大垣** | 「了解しました。その方針で進めましょう。」 |

📝 **Ghi chú:**
- 【1】**「15:00 開始、16:00 終了予定」** — báo end-time là quan trọng nhất. Khách Nhật plan lịch theo end-time.
- 【2】Format pattern: 「議題〇: タイトル 〇〇:〇〇〜〇〇:〇〇」. Cố định để khách nhìn agenda đối chiếu được.
- 【3】**「延長可否をご相談」** — báo trước sẽ xin phép nếu over time. Tránh trường hợp đến phút 60 vẫn nói "tiếp 10 phút nữa nhé" → không xin phép = thất lễ.

---

## Cụm từ mẫu
> **「分単位ではなく時刻単位で confirm。延長は事前合意で。」**
>
> *Confirm bằng clock-time (HH:MM), không phải số phút. Over time phải xin phép trước.*

---

## Tránh
- "10分", "15分" mà không gắn với clock-time.
- Quên end-time → khách không lên kế hoạch tiếp được.
- Over time mà không xin phép → khách bực bội.
- Mỗi議題 không có owner → ai chịu trách nhiệm timing?

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 時間配分 | じかんはいぶん | Phân bổ thời gian |
| 開始 | かいし | Bắt đầu |
| 終了 | しゅうりょう | Kết thúc |
| 延長 | えんちょう | Kéo dài |
| 押す | おす | (時間が押す) Trễ giờ |
| 可否 | かひ | Có / không |
| 〜途中 | とちゅう | Giữa chừng |
| 相談 | そうだん | Tham vấn / xin phép |', 'system', 16, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004017, 8004, NULL, 'markdown_book', 'Rule 17 — Khi đến muộn — vào họp giữa chừng / 遅れて入室する場合', '# Rule 17 — Khi đến muộn — vào họp giữa chừng / 遅れて入室する場合
> **Luận điểm.** Khi bắt buộc phải đến trễ: (1) liên lạc trước qua chat / SMS, (2) vào phòng KHẼ KHÀNG, gấp người chào, (3) câu xin lỗi NGẮN: 「失礼いたします、遅れて申し訳ございません」, (4) ngồi xuống NHANH, KHÔNG xin agenda lại trong họp.
>
> 遅刻時の入室4ステップ：①事前連絡 ②静かに入室 ③一言謝罪「失礼いたします、遅れて申し訳ございません」 ④速やかに着席。途中で議題確認はしない。
>
> **Liên quan:** Rule 06 (5分前到着), Rule 18 (vắng mặt), Rule 38 (postpone). Sách 02 Rule 25 (gọi báo trễ).

---

## Bối cảnh / 場面
Anh Tuấn (tech lead) bị kẹt ở meeting trước. Báo Dũng qua Slack rằng sẽ trễ 10 phút. Đến 15:12 mới vào được phòng họp. Buổi đang議題 1 progress.

---

## Hội thoại XẤU — vào ầm ĩ, hỏi lại agenda
*15:12 ドアを開けて入る · 進行を止めて説明 · 時計を見て*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「すみませんすみません！前の会議が長引いて…えーと、今どこの議題ですか？資料は何ページ？」 |
| **ズン** | 「議題1の進捗報告の最後で…」 |
| **トゥアン** | 「あ、でもさっき自分が報告する話、もう終わってます？」 |
| **大垣** | *(進行が止まった…)* |

**Vì sao xấu:** Vào ầm ĩ + xin update giữa họp → cả phòng phải dừng lại để brief. Mất 2-3 phút của khách. 「すみませんすみません」 lặp lại nhiều = không professional.

---

## Hội thoại TỐT — vào khẽ, 1 câu, ngồi xuống
*事前にSlackで「10分遅れます、進めてください」と連絡済み — 15:12 ドアを少し開ける · 軽くお辞儀し、空席へ静かに移動、着席 · 進行を止めずに自然に挿入*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「失礼いたします、遅れて申し訳ございません【1】。」 |
| **トゥアン** | *(無言で資料を開き、議事に追いつく【2】)* |
| **ズン** | 「トゥアンさん、議題1の最終確認中です。問題なければ続けます。」 |
| **トゥアン** | 「ありがとうございます。お続けください【3】。」 |

📝 **Ghi chú:**
- 【1】**「失礼いたします、遅れて申し訳ございません」** — Câu duy nhất nói khi vào. Đầy đủ rồi. Không thêm "前の会議が…" (excuse) → chia sẻ lý do qua chat ngoài giờ.
- 【2】**「無言で資料を開き、議事に追いつく」** — đến trễ là trách nhiệm tự catch up, không phiền cả phòng.
- 【3】**「お続けください」** — cụm khiêm nhường để司会 tiếp tục. Tránh 「続けてください」 (mệnh lệnh).

---

## Cụm từ mẫu
> **「失礼いたします、遅れて申し訳ございません — それだけ。」**
>
> *Chỉ 1 câu này. Không xin agenda lại, không kể lý do trong họp.*

---

## Quy trình đến trễ
| Khi nào | Việc cần làm |
|---------|-------------|
| Biết sẽ trễ | Nhắn 司会 qua chat: "〇分遅れます、進めてください" |
| Vào phòng | Mở cửa nhẹ, gấp người chào |
| Câu chào | 「失礼いたします、遅れて申し訳ございません」 |
| Ngồi xuống | Im lặng, mở tài liệu, catch up |
| Sau họp | Cảm ơn 司会 + xin lỗi đối tác (nếu cần thêm) |

---

## Tránh
- 「すみませんすみません」 lặp lại nhiều lần.
- Hỏi lại agenda / page giữa họp.
- Kể lý do dài 「前の会議が長引いて…」.
- Đến muộn mà không báo trước qua chat.
- Đến muộn 2 lần liên tiếp → cần email apologize cá nhân với khách Nhật.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 遅刻 | ちこく | Trễ giờ |
| 入室 | にゅうしつ | Vào phòng |
| 失礼いたします | しつれいいたします | "Em xin phép..." (formal) |
| 遅れる | おくれる | Trễ |
| 申し訳ございません | もうしわけございません | Em vô cùng xin lỗi |
| 着席 | ちゃくせき | Ngồi xuống |
| 追いつく | おいつく | Bắt kịp |
| お続けください | おつづけください | Mời anh/chị tiếp tục |', 'system', 17, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004018, 8004, NULL, 'markdown_book', 'Rule 18 — Khi có người vắng mặt / 欠席者の対応', '# Rule 18 — Khi có người vắng mặt / 欠席者の対応
> **Luận điểm.** Khi có người không đến: 司会 phải **公表 ngay đầu họp**: (1) ai vắng, (2) lý do **ngắn gọn** (không kể chi tiết private), (3) **plan share lại biên bản**, (4) nếu cần input của họ → **持ち帰り** confirm sau. Cấm "vẫn quyết tiếp" mà không nói gì.
>
> 欠席者の対応：①氏名公表 ②簡潔な理由 ③議事録の共有方針 ④input 必要なら持ち帰り合意。黙って進めるのは禁。
>
> **Liên quan:** Rule 17 (đến muộn), Rule 25 (持ち帰り), Rule 45 (gửi biên bản 24h), Rule 48 (cập nhật người vắng).

---

## Bối cảnh / 場面
Trước nội dung 1, em Linh báo Dũng: chị Hương副部長 bị sốt sáng nay, không tới được. Đã có inform松本様 trước qua mail, nhưng anh 大垣 chưa biết.

---

## Hội thoại XẤU — không công bố, vẫn quyết tiếp
*vào thẳng nội dung 1*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では、4月進捗報告から…」 |
| **大垣** | 「あれ、フオン副部長は？」 |
| **ズン** | 「あ、すみません、フオンは本日体調不良で…」 |
| **大垣** | 「なるほど。ただ、5月スコープの最終決裁はフオン副部長の権限と聞いているのですが、本日決定できますか？」 |

**Vì sao xấu:** Không thông báo ngay → khách phát hiện giữa chừng. Nguy hiểm hơn: anh Ōgaki không biết người có quyền quyết vắng → có thể đi đến quyết định fake mà người có quyền sau lại từ chối.

---

## Hội thoại TỐT — 公表 + plan rõ
*rule 12 出席者紹介の直後*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「なお、本日 弊社 副部長のフオンは体調不良のため欠席となります【1】。事前に松本様にはご連絡済みでございます。」 |
| **ズン** | 「議事録は終了後本日中にフオンへ共有いたします【2】。」 |
| **ズン** | 「5月スコープの最終決裁はフオンの権限のため、本日は『方向性合意』までとさせていただき、最終確定はフオン確認後 明日中にメールでご連絡いたします【3】。」 |
| **大垣** | 「了解しました。明確で助かります。」 |

📝 **Ghi chú:**
- 【1】**「弊社 副部長のフオンは体調不良のため欠席」** — 内 (uchi) drop title prefix. Lý do ngắn 「体調不良」 đủ rồi, không kể "sốt 38度" hay "đi bệnh viện".
- 【2】**「議事録は本日中に〇〇へ共有」** — commit timeline. Liên kết rule 45 + rule 48.
- 【3】**「方向性合意までとさせていただき、最終確定は…」** — flag rằng quyết định cuối cần người vắng confirm. Đây là cách tránh "quyết hớ rồi rút lại".

---

## Cụm từ mẫu
> **「欠席者は冒頭公表 + 議事録共有 + 持ち帰り合意。黙って進めない。」**
>
> *Người vắng phải báo ngay đầu + plan share biên bản + persist quyết liệt nào cần confirm sau.*

---

## Tránh
- Không 公表 → khách tự phát hiện = mất uy tín.
- Kể chi tiết lý do (bệnh / việc cá nhân) → không cần thiết.
- Quyết "thay" người vắng nếu không có authority → quyết bị rút lại = thất hứa.
- Quên gửi biên bản cho người vắng → họ không catch up được (rule 48).

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 欠席 | けっせき | Vắng mặt |
| 体調不良 | たいちょうふりょう | Không khỏe (lý do generic) |
| 決裁 | けっさい | Phê duyệt / authorize |
| 権限 | けんげん | Thẩm quyền |
| 方向性 | ほうこうせい | Định hướng |
| 最終確定 | さいしゅうかくてい | Chốt cuối |
| 共有 | きょうゆう | Chia sẻ |
| 〜のため | のため | Vì lý do... |', 'system', 18, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004019, 8004, NULL, 'markdown_book', 'Rule 19 — Phát biểu xin lượt nói / 発言の挙手', '# Rule 19 — Phát biểu xin lượt nói / 発言の挙手
> **Luận điểm.** Trong họp với khách Nhật, **không cắt lời**. Muốn phát biểu phải xin lượt: 「恐れ入りますが、一点よろしいでしょうか？」. Câu xin lượt làm 3 việc: (1) báo có ý muốn nói, (2) xin permission, (3) cho người đang nói cơ hội kết thúc câu.
>
> 日本の会議では割り込みは失礼。発言前に「恐れ入りますが、一点よろしいでしょうか？」で挙手する。
>
> **Liên quan:** Rule 20 (đặt câu hỏi), Rule 21 (xin clarification), Rule 23 (phản đối).

---

## Bối cảnh / 場面
Họp định kỳ tháng 4 đang đi vào phần báo cáo tiến độ. Anh Matsumoto đang trình bày, em Dũng phát hiện một số liệu cần xác nhận lại nhưng chưa đến lượt mình.

---

## Hội thoại XẤU — cắt lời giữa câu
*cắt ngang · dừng, hơi khựng*

| Speaker | Câu |
|---------|-----|
| **松本** | 「4月の進捗ですが、API連携の部分で…」 |
| **ズン** | 「あ、その部分なんですけど、数字が違うと思います。」 |
| **松本** | 「…そうですか。最後まで聞いていただけますか？」 |
| **ズン** | 「すみません…」 |

**Vì sao xấu:** Cắt lời = mất mặt cho người đang nói + phá nhịp cuộc họp. Khách Nhật cảm thấy bị thiếu tôn trọng, dù nội dung em Dũng nói có đúng.

---

## Hội thoại TỐT — xin lượt nói
*đợi câu kết thúc, giơ tay nhẹ*

| Speaker | Câu |
|---------|-----|
| **松本** | 「4月の進捗ですが、API連携の部分で予定通り進んでおります。」 |
| **ズン** | 「恐れ入りますが、一点よろしいでしょうか？【1】」 |
| **松本** | 「どうぞ。」 |
| **ズン** | 「API連携の進捗率の数字について、確認させていただきたい点がございます【2】。」 |

📝 **Ghi chú:**
- 【1】**「恐れ入りますが、一点よろしいでしょうか？」** — câu xin lượt nói chuẩn business JP. 「一点」 báo trước "chỉ 1 điểm" → không chiếm thời gian.
- 【2】**「確認させていただきたい点がございます」** — không nói thẳng "数字が違う". Mở bằng "muốn confirm" → để người đang nói tự rà lại, giữ thể diện.

---

## Cụm từ mẫu
> **「恐れ入りますが、一点よろしいでしょうか？」**
>
> *Câu vạn năng để xin lượt nói. Nhớ đợi câu hiện tại kết thúc rồi mới xen vào.*

---

## Tránh
- Cắt giữa câu — kể cả khi mình thấy thông tin sai.
- Bỏ qua xin lượt, nói thẳng nội dung — dù tone formal vẫn bị coi là 失礼.
- Dùng 「ちょっと」 quá nhiều — trong họp formal, 「恐れ入りますが」 chuẩn hơn.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 恐れ入りますが | おそれいりますが | Xin lỗi cho phép em... |
| 一点 | いってん | Một điểm |
| 挙手 | きょしゅ | Giơ tay |
| 発言 | はつげん | Phát biểu |
| 割り込み | わりこみ | Cắt ngang |
| 確認させていただく | かくにんさせていただく | Xin được xác nhận |', 'system', 19, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004020, 8004, NULL, 'markdown_book', 'Rule 20 — Đặt câu hỏi 5W1H / 質問の5W1H', '# Rule 20 — Đặt câu hỏi 5W1H / 質問の5W1H
> **Luận điểm.** Câu hỏi vòng vo = lãng phí thời gian họp. Hỏi chuẩn business JP cần (1) **đóng khung 5W1H** rõ — who/what/when/where/why/how, (2) **1 câu hỏi 1 lần**, (3) **mở bằng** 「〜について確認させていただきたいのですが」 và **đóng bằng** 「〜でしょうか？」.
>
> 質問は5W1Hを絞り、1問1答が原則。「〜について確認させていただきたいのですが、〜でしょうか？」が標準形。
>
> **Liên quan:** Rule 19 (xin lượt), Rule 21 (clarification), Rule 28 (xin data).

---

## Bối cảnh / 場面
Em Dũng đang nghe anh Ōgaki trình bày scope phase 2. Em muốn hỏi rõ deadline + người phụ trách phía 白鷗 nhưng đặt câu hỏi vòng vo.

---

## Hội thoại XẤU — câu hỏi vòng vo, gộp nhiều câu
*hơi khó chịu*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「Phase 2では、新規モジュールを3つ追加予定です。」 |
| **ズン** | 「あ、それで、いつとか誰がとか、あと何の機能で、どこにデプロイするかとか、色々お聞きしたいのですが…」 |
| **大垣** | 「…一つずつお願いできますか？」 |

**Vì sao xấu:** Hỏi 4 câu (when / who / what / where) trong 1 câu → đối phương không biết trả lời cái nào trước. 「色々」 mơ hồ → không pro.

---

## Hội thoại TỐT — đóng khung từng câu hỏi
| Speaker | Câu |
|---------|-----|
| **大垣** | 「Phase 2では、新規モジュールを3つ追加予定です。」 |
| **ズン** | 「ありがとうございます。3点、順番にお伺いしたく存じます【1】。まず、リリース予定日について確認させていただきたいのですが、いつ頃をお考えでしょうか【2】？」 |
| **大垣** | 「7月末を目標にしています。」 |
| **ズン** | 「承知しました。次に、白鷗様側の主担当はどなた様になりますでしょうか？」 |

📝 **Ghi chú:**
- 【1】**「3点、順番にお伺いしたく存じます」** — báo trước số câu hỏi để đối phương quản lý nhịp + biết là không lan man.
- 【2】**「〜について確認させていただきたいのですが、〜でしょうか？」** — cấu trúc chuẩn: mở khung → câu hỏi cụ thể.

---

## Cụm từ mẫu
> **「〜について確認させていただきたいのですが、〜でしょうか？」**
>
> *Mỗi câu hỏi 1 W. Hỏi xong câu này rồi mới sang câu kế tiếp.*

---

## Tránh
- Gộp 3-4 câu hỏi vào 1 câu → rối.
- Dùng 「色々」「とか」「あと」 — câu hỏi mất sắc nét.
- Hỏi xong không đợi trả lời, nói luôn ý kiến mình.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 順番に | じゅんばんに | Theo thứ tự |
| お伺いする | おうかがいする | Xin được hỏi (kenjō) |
| 主担当 | しゅたんとう | Người phụ trách chính |
| リリース予定日 | リリースよていび | Ngày dự kiến release |
| デプロイ | depuroi | Deploy |', 'system', 20, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004021, 8004, NULL, 'markdown_book', 'Rule 21 — Xin clarification khi không hiểu / 不明点の確認', '# Rule 21 — Xin clarification khi không hiểu / 不明点の確認
> **Luận điểm.** Không hiểu → **PHẢI** hỏi lại. Im lặng = đối phương tưởng đã đồng ý → sau này phát sinh sai sót lớn. Câu xin clarification chuẩn: 「申し訳ございません、〇〇という点をもう一度ご説明いただけますでしょうか？」 — chỉ rõ điểm không hiểu, không nói "tất cả" mơ hồ.
>
> 不明点はその場で確認する。曖昧なまま進めると後の手戻りが大きい。
>
> **Liên quan:** Rule 19 (xin lượt), Rule 20 (5W1H), Rule 24 (tóm tắt).

---

## Bối cảnh / 場面
Anh Matsumoto đang giải thích về cấu trúc phân quyền mới (RBAC) bằng thuật ngữ chuyên môn. Em Dũng nghe lướt qua nhưng có 1 phần không hiểu. Theo phản xạ, em định gật đầu cho qua.

---

## Hội thoại XẤU — gật đầu cho qua
*không hiểu nhưng gật đầu · 2 tuần sau, design sai → phải làm lại · sau cuộc họp tiếp theo*

| Speaker | Câu |
|---------|-----|
| **松本** | 「権限は組織階層と職務属性のクロスマトリックスで管理します。」 |
| **ズン** | 「はい、承知しました。」 |
| **フオン** | 「ズン、なんでその場で確認しなかったの？2週間ロスしたよ。」 |

**Vì sao xấu:** "承知しました" = "đã hiểu". Nói khi không hiểu → cam kết sai → 2 tuần sau phát hiện thì rework rất tốn. Khách Nhật không trách, nhưng trust giảm.

---

## Hội thoại TỐT — chỉ rõ điểm không hiểu
| Speaker | Câu |
|---------|-----|
| **松本** | 「権限は組織階層と職務属性のクロスマトリックスで管理します。」 |
| **ズン** | 「申し訳ございません、『クロスマトリックス』という点をもう一度ご説明いただけますでしょうか【1】？」 |
| **松本** | 「はい。例えば、部長という階層と、経理という職務、両方を満たす人だけが見られる、という設計です。」 |
| **ズン** | 「ありがとうございます。階層 AND 職務、両方の条件を満たす場合のみアクセス可、という認識でよろしいでしょうか【2】？」 |

📝 **Ghi chú:**
- 【1】**「〇〇という点をもう一度ご説明いただけますでしょうか？」** — chỉ rõ thuật ngữ không hiểu (「クロスマトリックス」). Không nói 「全部分からない」 — sẽ làm đối phương phải giải thích lại từ đầu.
- 【2】**「〜という認識でよろしいでしょうか？」** — sau khi nghe giải thích, paraphrase lại để confirm hiểu đúng. Đây là kỹ thuật "active listening" chuẩn JP business.

---

## Cụm từ mẫu
> **「申し訳ございません、〇〇という点をもう一度ご説明いただけますでしょうか？」**
>
> *Hỏi ngay, đừng giả vờ hiểu. Nhật rất ghét "yes" giả.*

---

## Tránh
- Gật đầu, nói 「承知しました」 khi chưa thực sự hiểu.
- Nói 「全部分かりません」 — đối phương phải giải thích lại từ đầu, mất 5-10 phút.
- Hỏi sau cuộc họp qua chat — lỡ mất cơ hội confirm trước nhân chứng.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 不明点 | ふめいてん | Điểm không rõ |
| 認識 | にんしき | Nhận thức / cách hiểu |
| 階層 | かいそう | Phân cấp |
| 職務 | しょくむ | Chức trách / nhiệm vụ |
| 権限 | けんげん | Quyền hạn |
| 手戻り | てもどり | Phải làm lại / rework |', 'system', 21, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004022, 8004, NULL, 'markdown_book', 'Rule 22 — Đồng ý lịch sự — 5 levels / 同意の表現（5段階）', '# Rule 22 — Đồng ý lịch sự — 5 levels / 同意の表現（5段階）
> **Luận điểm.** Đồng ý không phải chỉ "はい". Có **5 mức**: (1) Hoàn toàn đồng ý / 完全同意 → (2) Đại thể đồng ý / 概ね同意 → (3) Đồng ý một phần / 部分同意 → (4) Trung lập / 中立 → (5) Có ý kiến trái / 異論あり. Chọn đúng level → đối phương biết weight đồng thuận.
>
> 同意は「はい」だけではない。完全同意・概ね同意・部分同意・中立・異論ありの5段階を使い分ける。
>
> **Liên quan:** Rule 23 (phản đối), Rule 24 (tóm tắt), Rule 31 (bỏ phiếu).

---

## Bối cảnh / 場面
Anh Matsumoto đề xuất "deploy phase 2 vào cuối tháng 7". Em Dũng cảm thấy timeline gấp nhưng cũng không hoàn toàn phản đối. Cần biểu đạt đúng mức độ đồng ý.

---

## Hội thoại XẤU — chỉ "はい" cho tất cả
*thực ra lo timeline gấp · 2 tuần sau slip schedule, em Dũng phải xin extend*

| Speaker | Câu |
|---------|-----|
| **松本** | 「7月末リリースで進めたいと考えております。」 |
| **ズン** | 「はい、大丈夫です。」 |
| **松本** | 「では、その方向で確定します。」 |

**Vì sao xấu:** Nói "はい、大丈夫です" = full commit. Khi sau đó slip → vi phạm cam kết. Lẽ ra phải nói "concept đồng ý, nhưng cần check feasibility".

---

## Hội thoại TỐT — chọn đúng level đồng ý
| Speaker | Câu |
|---------|-----|
| **松本** | 「7月末リリースで進めたいと考えております。」 |
| **ズン** | 「方向性につきましては概ね同意でございます【1】。ただ、スコープの内訳によっては時間が必要な箇所もございますので、概要を確認させていただいた上で、改めてフィージビリティをご報告したく存じます【2】。」 |
| **松本** | 「なるほど。ではスコープを共有しますので、来週水曜までに feasibility をいただけますか？」 |
| **ズン** | 「承知しました。」 |

📝 **Ghi chú 5 levels:**
- **Level 1 — 完全同意** 「全くおっしゃるとおりでございます」
- **Level 2 — 概ね同意** 「方向性につきましては概ね同意でございます」 ← dùng trong ví dụ
- **Level 3 — 部分同意** 「〇〇の点は同意しますが、△△につきましては…」
- **Level 4 — 中立** 「現時点では判断しかねます。持ち帰って検討させてください」
- **Level 5 — 異論あり** 「ご意見はよく分かりました。ただ〜」 (xem rule 23)

【1】**「概ね同意」**(おおむねどうい) — đồng ý phần lớn nhưng có 1-2 điểm cần check.
【2】**「フィージビリティをご報告したく存じます」** — không cam kết ngay, mua thời gian feasibility check.

---

## Cụm từ mẫu
> **「方向性は概ね同意でございます。ただ、〜の点は確認させてください。」**
>
> *Concept đồng ý nhưng chi tiết cần check = mức 2. An toàn nhất.*

---

## Tránh
- Nói 「はい、大丈夫です」 cho mọi đề xuất → khi có vấn đề bị coi là phản bội cam kết.
- Im lặng = trong văn hóa JP có thể bị hiểu là 同意 hoặc 不同意 — phải nói rõ.
- Dùng level 5 (異論あり) khi thực ra chỉ là 部分同意.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 同意 | どうい | Đồng ý |
| 概ね | おおむね | Đại thể / phần lớn |
| 方向性 | ほうこうせい | Hướng / direction |
| 内訳 | うちわけ | Chi tiết phân tách |
| フィージビリティ | fiijibiriti | Feasibility |
| 改めて | あらためて | Lại / cẩn thận một lần nữa |', 'system', 22, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004023, 8004, NULL, 'markdown_book', 'Rule 23 — Phản đối lịch sự / 異論の表現', '# Rule 23 — Phản đối lịch sự / 異論の表現
> **Luận điểm.** Phản đối thẳng = mất quan hệ. Cấu trúc chuẩn JP business: **(1) Cushion 「ご意見はよく分かりました」 → (2) Pivot 「ただ〜」 → (3) Lý do/quan điểm 「〇〇という観点もあるかと存じます」**. Không bao giờ dùng 「いいえ」 đơn lẻ với khách Nhật.
>
> 異論を述べる際は「ご意見はよく分かりました。ただ、〇〇という観点もあるかと存じます」のクッション構造を使う。
>
> **Liên quan:** Rule 22 (đồng ý), Rule 24 (tóm tắt), Rule 27 (phản biện có cơ sở).

---

## Bối cảnh / 場面
Họp đàm phán phase 2. Anh Ōgaki đề xuất giảm budget 20% vẫn giữ nguyên scope. Anh Tuấn (tech lead) thấy không khả thi nhưng phải nói khéo.

---

## Hội thoại XẤU — phản đối thẳng
*không khí lạnh*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「予算を20%削減し、スコープは維持する方向でいかがでしょうか？」 |
| **トゥアン** | 「いいえ、それは無理です。」 |
| **大垣** | 「…無理、ですか。」 |

**Vì sao xấu:** 「いいえ、無理です」= từ chối thẳng. Trong JP business culture đây gần như "I refuse to negotiate". Sẽ làm anh Ōgaki mất mặt + chặn đường thương lượng.

---

## Hội thoại TỐT — cushion + pivot + viewpoint
*tiếp*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「予算を20%削減し、スコープは維持する方向でいかがでしょうか？」 |
| **トゥアン** | 「ご意見はよく分かりました【1】。ただ、現状のスコープを維持しますと、品質保証工数の確保が難しくなる観点もあるかと存じます【2】。」 |
| **トゥアン** | 「もしよろしければ、スコープを優先度別に再整理し、削減案を一緒にご検討させていただけませんでしょうか【3】？」 |
| **大垣** | 「なるほど。それは理にかなっていますね。来週、優先度マトリックスを共有してください。」 |

📝 **Ghi chú:**
- 【1】**「ご意見はよく分かりました」** — cushion chuẩn. Ghi nhận trước, không bác ngay.
- 【2】**「〇〇という観点もあるかと存じます」** — không nói "ý anh sai" mà nói "có góc nhìn khác". Cấu trúc giữ thể diện 2 bên.
- 【3】**「ご検討させていただけませんでしょうか」** — đề xuất giải pháp thay thế (scope re-prioritize). Phản đối phải kèm counter-proposal.

---

## Cụm từ mẫu
> **「ご意見はよく分かりました。ただ、〇〇という観点もあるかと存じます。」**
>
> *3 bước: cushion → pivot → viewpoint. Không bao giờ "いいえ" đơn lẻ.*

---

## Tránh
- 「いいえ、それは違います」 — thẳng quá, JP business không dùng.
- 「無理です」「できません」 đầu câu → đóng cửa thương lượng.
- Phản đối mà không có counter-proposal → bị coi là phá đám.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 異論 | いろん | Ý kiến trái chiều |
| 観点 | かんてん | Góc nhìn |
| 工数 | こうすう | Man-hour / công sức |
| 品質保証 | ひんしつほしょう | QA / đảm bảo chất lượng |
| 優先度 | ゆうせんど | Mức độ ưu tiên |
| 削減 | さくげん | Cắt giảm |
| 理にかなう | りにかなう | Hợp lý |', 'system', 23, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004024, 8004, NULL, 'markdown_book', 'Rule 24 — Tóm tắt ý kiến của người khác / 相手の発言を要約', '# Rule 24 — Tóm tắt ý kiến của người khác / 相手の発言を要約
> **Luận điểm.** Sau khi đối phương nói dài, **paraphrase ngắn** để confirm hiểu đúng. Cấu trúc: 「〇〇様のおっしゃるのは〜という認識でよろしいでしょうか？」. Mục đích: (1) tránh hiểu sai, (2) tạo cơ hội cho đối phương correct mình, (3) đẩy cuộc họp tiến.
>
> 相手の発言を自分の言葉で要約し直し、「〜という認識でよろしいでしょうか？」で確認する。
>
> **Liên quan:** Rule 21 (clarification), Rule 22 (đồng ý), Rule 44 (action items).

---

## Bối cảnh / 場面
Anh Matsumoto vừa giải thích 5 phút về thay đổi yêu cầu module thanh toán: cần thêm 2 cổng (PayPay + LINE Pay), sửa workflow hoàn tiền, và update message tiếng Việt. Em Dũng cần confirm hiểu đúng trước khi note.

---

## Hội thoại XẤU — không tóm tắt, ghi nhận mơ hồ
*sau 5 phút giải thích · 1 tuần sau, code chỉ thêm PayPay, quên LINE Pay + workflow hoàn tiền*

| Speaker | Câu |
|---------|-----|
| **松本** | 「…以上が変更点となります。」 |
| **ズン** | 「はい、了解しました。」 |
| **松本** | 「LINE Pay と返金フローはどうなっていますか？前回お話したと思うのですが…」 |

**Vì sao xấu:** "了解しました" không chứng minh đã hiểu đủ 3 điểm. Khách không có cơ hội correct → 1 tuần sau phát sinh miscommunication.

---

## Hội thoại TỐT — paraphrase 3 điểm
*sau 5 phút giải thích*

| Speaker | Câu |
|---------|-----|
| **松本** | 「…以上が変更点となります。」 |
| **ズン** | 「松本様のおっしゃるのは、3点【1】の変更——①決済ゲートウェイにPayPayとLINE Payの追加、②返金ワークフローの修正、③ベトナム語メッセージの更新——という認識でよろしいでしょうか【2】？」 |
| **松本** | 「はい、その通りです。ただ、③については優先度低でも構いません。」 |
| **ズン** | 「承知しました。①と②を最優先、③は後回し可能、と理解いたしました【3】。」 |

📝 **Ghi chú:**
- 【1】**「3点」** — đếm số điểm cụ thể giúp đối phương check thiếu/đủ.
- 【2】**「〜という認識でよろしいでしょうか？」** — câu chốt confirm. Cho phép đối phương sửa nếu mình hiểu sai.
- 【3】**「①と②を最優先、③は後回し可能、と理解いたしました」** — sau khi đối phương correct, restate lại với cập nhật mới. 2 lần confirm = không sai.

---

## Cụm từ mẫu
> **「〇〇様のおっしゃるのは〜という認識でよろしいでしょうか？」**
>
> *Paraphrase ngắn → đối phương correct được → tránh miscom 1 tuần.*

---

## Tránh
- "了解しました" cho explanation dài 5 phút → không chứng minh hiểu.
- Paraphrase quá dài (lặp gần như nguyên văn) → phí thời gian.
- Không đếm số điểm → khi có nhiều điểm dễ sót.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 要約 | ようやく | Tóm tắt |
| 認識 | にんしき | Cách hiểu |
| 決済ゲートウェイ | けっさいゲートウェイ | Cổng thanh toán |
| 返金 | へんきん | Hoàn tiền |
| ワークフロー | ワークフロー | Workflow |
| 後回し | あとまわし | Để lại sau |
| 最優先 | さいゆうせん | Ưu tiên cao nhất |', 'system', 24, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004025, 8004, NULL, 'markdown_book', 'Rule 25 — Xin thêm thời gian suy nghĩ / 持ち帰って検討', '# Rule 25 — Xin thêm thời gian suy nghĩ / 持ち帰って検討
> **Luận điểm.** Khi không thể quyết ngay → KHÔNG đoán bừa. Cụm chuẩn: 「**持ち帰って検討させてください**」(mochikaette kentō sasete kudasai) — "xin mang về xem xét". Đây là khái niệm core JP business: ra quyết định cần consensus nội bộ (稟議 ringi). Nói "持ち帰り" = chuyên nghiệp, không nói = bị ép quyết sai.
>
> 即決できない時は「持ち帰って検討させてください」と素直に伝える。日本では稟議文化のため、即決を求められない。
>
> **Liên quan:** Rule 22 (đồng ý), Rule 29 (deadlock), Rule 32 (hoãn quyết định).

---

## Bối cảnh / 場面
Anh Ōgaki đột ngột yêu cầu giảm giá 15% ngay trong họp. Em Dũng không có authority quyết và cần consult chị Hương + anh Hà. Phải xin "持ち帰り" khéo léo.

---

## Hội thoại XẤU — quyết bừa hoặc từ chối thẳng
*không có authority nhưng muốn close deal · về công ty, chị Hương phát hiện 15% = lỗ → yêu cầu Dũng renegotiate · khi Dũng quay lại đàm*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「もし15%の値引きが可能であれば、本日中に契約を進めたいのですが。」 |
| **ズン** | 「はい、それで問題ありません！」 |
| **大垣** | 「先ほど『問題ない』とおっしゃったではないですか…」 |

**Vì sao xấu:** Quyết quá quyền hạn → khi reverse mất uy tín toàn diện. Hoặc nếu Dũng từ chối thẳng "それは無理です" cũng làm 大垣 mất hứng đàm.

---

## Hội thoại TỐT — xin持ち帰り検討
*tiếp*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「もし15%の値引きが可能であれば、本日中に契約を進めたいのですが。」 |
| **ズン** | 「ご提案いただきありがとうございます。15%という大きなご要望でございますので、一度持ち帰って社内で検討させていただけませんでしょうか【1】？」 |
| **ズン** | 「明日中に上長と協議し、明後日午前中までにご回答申し上げます【2】。」 |
| **大垣** | 「分かりました。では明後日のご連絡をお待ちしております。」 |

📝 **Ghi chú:**
- 【1】**「持ち帰って社内で検討させていただけませんでしょうか」** — câu chuẩn business JP. 「持ち帰り」 = mang về (cụm core JP). Không phải xấu hổ — ngược lại JP coi là chuẩn quy trình.
- 【2】**「明後日午前中までにご回答申し上げます」** — phải kèm **deadline cụ thể** trả lời. Không có deadline = lý do để khách push tiếp.

---

## Cụm từ mẫu
> **「一度持ち帰って社内で検討させていただけませんでしょうか？」**
>
> *Mua thời gian + giữ thể diện + có deadline. 3 trong 1.*

---

## Tránh
- Quyết ngay vượt thẩm quyền → reverse rất tốn uy tín.
- Xin 持ち帰り mà không kèm deadline → khách không biết bao giờ có reply.
- Dùng 「持ち帰り」 cho mọi câu hỏi → bị coi là không chuẩn bị / né tránh.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 持ち帰る | もちかえる | Mang về (xem xét) |
| 検討 | けんとう | Xem xét / cân nhắc |
| 社内 | しゃない | Trong công ty |
| 上長 | じょうちょう | Cấp trên |
| 値引き | ねびき | Giảm giá |
| 稟議 | りんぎ | Quy trình duyệt nội bộ JP |
| 即決 | そっけつ | Quyết ngay |', 'system', 25, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004026, 8004, NULL, 'markdown_book', 'Rule 26 — Đề xuất ý tưởng mới / 提案の表現', '# Rule 26 — Đề xuất ý tưởng mới / 提案の表現
> **Luận điểm.** Đề xuất tốt = (1) **xin permission** đề xuất 「ひとつご提案させていただいてもよろしいでしょうか？」, (2) **đặt vấn đề** ngắn (3) **giải pháp** (4) **mời feedback**. Không tự ý 「私の意見では…」 ngay đầu — nghe agressive trong JP.
>
> 提案は「ひとつご提案させていただいてもよろしいでしょうか？」と切り出し、課題→解→意見聞きの順で。
>
> **Liên quan:** Rule 19 (xin lượt), Rule 23 (phản đối), Rule 27 (phản biện).

---

## Bối cảnh / 場面
Đang họp phase 2. Em Hải (FE) thấy có thể tách backlog thành 2 sprint nhỏ thay vì 1 sprint dài → giảm rủi ro slip. Muốn đề xuất.

---

## Hội thoại XẤU — đề xuất aggressive
*không khí lạnh*

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「私の意見では、1つの sprint じゃ無理です。2つに分けるべきです。」 |
| **大垣** | 「…『〜べき』ですか。なるほど。」 |

**Vì sao xấu:** 「〜べき」(should) trong JP business hơi mệnh lệnh khi nói với khách. 「私の意見では」 ngay đầu = ego forward.

---

## Hội thoại TỐT — permission + propose + invite feedback
| Speaker | Câu |
|---------|-----|
| **ハイ** | 「ひとつご提案させていただいてもよろしいでしょうか【1】？」 |
| **大垣** | 「どうぞ。」 |
| **ハイ** | 「現在のバックログ規模ですと、1スプリントで完了するにはリスクがあるかと存じます。【課題】そこで、優先度別に2スプリントに分割し、第1スプリントでコア機能、第2スプリントで拡張機能、という構成はいかがでしょうか【2】？【解】皆様のご意見を頂戴できればと存じます【3】。【意見聞き】」 |
| **大垣** | 「面白い提案ですね。スプリント1のスコープ案をいただけますか？」 |

📝 **Ghi chú:**
- 【1】**「ひとつご提案させていただいてもよろしいでしょうか？」** — xin permission. Cho đối phương cảm giác kiểm soát.
- 【2】**「〜という構成はいかがでしょうか？」** — không nói "should" mà mời gọi "thế nào ạ?".
- 【3】**「ご意見を頂戴できればと存じます」** — đóng bằng câu mời feedback. Tone humble.

---

## Cụm từ mẫu
> **「ひとつご提案させていただいてもよろしいでしょうか？〜という構成はいかがでしょうか？」**
>
> *Permission → 課題 → 解 → 「いかがでしょうか」. 4 bước.*

---

## Tránh
- 「〜べきです」 với khách Nhật → quá thẳng.
- 「私の意見では」 đầu câu → ego forward.
- Đề xuất mà không kèm 課題 (problem statement) → không thuyết phục.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 提案 | ていあん | Đề xuất |
| 構成 | こうせい | Cấu trúc / phối hợp |
| バックログ | bakkurogu | Backlog |
| スプリント | supurinto | Sprint |
| 拡張機能 | かくちょうきのう | Extension feature |
| 頂戴する | ちょうだいする | Xin nhận (kenjō) |', 'system', 26, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004027, 8004, NULL, 'markdown_book', 'Rule 27 — Phản biện có cơ sở / 根拠を伴った反論', '# Rule 27 — Phản biện có cơ sở / 根拠を伴った反論
> **Luận điểm.** Phản biện không có data = ý kiến cá nhân. Cấu trúc chuẩn: **(1) Ghi nhận** → **(2) "ただ"** → **(3) Dữ liệu / fact cụ thể** → **(4) Đề xuất khác**. Khác rule 23 (phản đối lịch sự) ở chỗ rule 27 phải kèm số liệu / dẫn chứng.
>
> 反論には必ず根拠（数値・データ・事実）を伴う。「思います」ではなく「数字では〜」と裏付ける。
>
> **Liên quan:** Rule 23 (phản đối), Rule 26 (đề xuất), Rule 28 (xin data).

---

## Bối cảnh / 場面
Anh Ōgaki cho rằng "team Việt benchmark giống Ấn Độ → 6 dev đủ làm phase 2 trong 8 tuần". Anh Tuấn (tech lead) có data realistic của team — cần phản biện có cơ sở.

---

## Hội thoại XẤU — phản biện cảm tính
| Speaker | Câu |
|---------|-----|
| **大垣** | 「インドのチームでは6名・8週間で同等のスコープを完了しています。御社も同様で問題ないかと。」 |
| **トゥアン** | 「いや、それは無理だと思います。チームによって違いますし…」 |
| **大垣** | 「『思います』は根拠にならないですよね。」 |

**Vì sao xấu:** 「思います」+「違いますし」 không có data → đối phương dễ bác. Khách Nhật rất quý số liệu → phản biện cảm tính = mất uy tín tech.

---

## Hội thoại TỐT — ghi nhận + data + đề xuất
*tiếp*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「インドのチームでは6名・8週間で同等のスコープを完了しています。御社も同様で問題ないかと。」 |
| **トゥアン** | 「インドチームのご実績、参考になります【1】。ただ、弊社の Phase 1 実績データを共有させていただきますと、類似スコープにおいて6名換算で平均10.5週間を要しております【2】。」 |
| **トゥアン** | 「内訳としては、QA工程に約2週間、結合試験に約1.5週間が必要でございました。8週間で完遂するには、QAスコープの調整、もしくは8名体制への増員のいずれかをご検討いただけますでしょうか【3】？」 |
| **大垣** | 「Phase 1の実績ですか。それなら根拠がありますね。8名体制で再見積もりをいただけますか？」 |

📝 **Ghi chú:**
- 【1】**「ご実績、参考になります」** — không bác data Ấn Độ. Ghi nhận → giữ thể diện.
- 【2】**「弊社の Phase 1 実績データを共有させていただきますと、〜10.5週間を要しております」** — dẫn data nội bộ cụ thể. Số chính xác (10.5) > "khoảng 10".
- 【3】**「QAスコープの調整、もしくは8名体制への増員のいずれかをご検討いただけますでしょうか」** — luôn kèm 2 lựa chọn → đối phương dễ chọn.

---

## Cụm từ mẫu
> **「ご実績、参考になります。ただ、弊社の〇〇データでは〜という事実がございます。」**
>
> *4 bước: ghi nhận → ただ → data → option. Không bao giờ "思います" rỗng.*

---

## Tránh
- 「思います」「違いますし」 không kèm data.
- Phủ nhận data đối phương ("Ấn Độ không tính") thay vì so với data của mình.
- Phản biện nhưng không kèm 2-3 phương án thay thế.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 根拠 | こんきょ | Căn cứ |
| 反論 | はんろん | Phản biện |
| 実績 | じっせき | Thực tích / kết quả thực tế |
| 換算 | かんさん | Quy đổi |
| 結合試験 | けつごうしけん | Integration test |
| 増員 | ぞういん | Tăng người |
| 見積もり | みつもり | Báo giá / ước lượng |', 'system', 27, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004028, 8004, NULL, 'markdown_book', 'Rule 28 — Xin thêm thông tin / data / データ・情報を求める', '# Rule 28 — Xin thêm thông tin / data / データ・情報を求める
> **Luận điểm.** Quyết định chính xác cần data đầy đủ. Khi thiếu → xin thẳng nhưng có **lý do** + **mục đích sử dụng**: 「判断するために、〇〇のデータをいただけますでしょうか？」. Khách Nhật sẽ readily cung cấp khi biết data dùng vào đâu.
>
> 「判断するために、〇〇のデータをいただけますでしょうか？」— 用途を添えると相手は応じやすい。
>
> **Liên quan:** Rule 20 (5W1H), Rule 21 (clarification), Rule 27 (phản biện có data).

---

## Bối cảnh / 場面
Em Dũng cần ước lượng tải hệ thống mới. Anh Matsumoto nói "lượng truy cập sẽ tăng nhiều" mà không có số. Em Dũng phải xin DAU/MAU + peak hour.

---

## Hội thoại XẤU — xin chung chung
*không hiểu xin gì*

| Speaker | Câu |
|---------|-----|
| **松本** | 「リリース後、アクセス数はかなり増える見込みです。」 |
| **ズン** | 「データください。」 |
| **松本** | 「…どのデータでしょうか？」 |
| **ズン** | 「えーと、何でもいいんですが…」 |

**Vì sao xấu:** "データください" mơ hồ. 「何でもいい」 = không pro. Khách Nhật cần specific request.

---

## Hội thoại TỐT — specific data + lý do
*tiếp*

| Speaker | Câu |
|---------|-----|
| **松本** | 「リリース後、アクセス数はかなり増える見込みです。」 |
| **ズン** | 「ありがとうございます。サーバーのキャパシティ設計を進めるために【1】、3点のデータをいただけますでしょうか？」 |
| **ズン** | 「①現状のDAU・MAU、②ピーク時間帯のリクエスト数、③想定成長率の3点でございます【2】。月次データで構いません。」 |
| **松本** | 「分かりました。来週月曜までに共有します。」 |

📝 **Ghi chú:**
- 【1】**「〜するために、〇〇をいただけますでしょうか？」** — kèm mục đích sử dụng. Đối phương biết data dùng vào đâu → readily cung cấp.
- 【2】**「3点のデータ」** + danh sách cụ thể → không cãi nhau "data nào". Đếm số + liệt kê = chuẩn.

---

## Cụm từ mẫu
> **「〜するために、〇〇のデータをいただけますでしょうか？」**
>
> *Mục đích + specific data = nhận được nhanh.*

---

## Tránh
- "データください" trống không.
- Xin nhiều data 1 lúc mà không nói dùng làm gì → khách lo data leak.
- Không nói deadline cần data → có thể bị chậm.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| キャパシティ | kyapashitii | Capacity |
| ピーク時間帯 | ピークじかんたい | Khung giờ peak |
| DAU/MAU | DAU/MAU | Daily/Monthly Active User |
| 想定 | そうてい | Giả định |
| 成長率 | せいちょうりつ | Tỷ lệ tăng trưởng |
| 月次 | げつじ | Hàng tháng |', 'system', 28, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004029, 8004, NULL, 'markdown_book', 'Rule 29 — Khi gặp deadlock / 行き詰まった場合', '# Rule 29 — Khi gặp deadlock / 行き詰まった場合
> **Luận điểm.** Khi tranh luận đi vào ngõ cụt (cả 2 bên không nhúc nhích) → KHÔNG ép quyết. Câu chuẩn: 「**一度持ち帰って、別途ご相談する形でいかがでしょうか**」. Mục đích: cool-off + chuẩn bị thêm data + tham vấn cấp trên 2 bên.
>
> 行き詰まった時は「一度持ち帰って、別途ご相談する」で時間を確保。冷却期間を作る。
>
> **Liên quan:** Rule 25 (持ち帰り), Rule 32 (hoãn quyết), Rule 42 (kết thúc sớm).

---

## Bối cảnh / 場面
Họp đàm phán phase 2. Anh Ōgaki yêu cầu giảm 20%, anh Hà (CTO) chỉ đồng ý 10%. Cả 2 bên đã trao đổi 30 phút mà không nhúc nhích. Em Dũng (chủ trì) cần defuse situation.

---

## Hội thoại XẤU — ép tiếp tục
*sau 30 phút · căng thẳng, ép tiếp · lạnh giọng · không khí cứng*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「やはり20%でなければ難しいです。」 |
| **ハー** | 「10%が限界です。」 |
| **ズン** | 「あの…どこかで折り合えませんか？15%でいかがでしょう？」 |
| **ハー** | 「ズン、それは本社確認が必要だ。今ここで決められない。」 |
| **大垣** | 「…」 |

**Vì sao xấu:** Em Dũng đề xuất con số 15% mà chưa check với CTO → CTO bị overrule trước khách → mất face nội bộ. Ép tiếp khi deadlock = tệ hơn.

---

## Hội thoại TỐT — defuse + 持ち帰り
*sau 30 phút · tiếp · nhìn Dũng, gật đầu*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「やはり20%でなければ難しいです。」 |
| **ハー** | 「10%が限界です。」 |
| **ズン** | 「お互いの状況を共有いただきありがとうございます。本日この場で結論を出すのは難しいかと存じますので【1】、一度持ち帰って、別途ご相談する形でいかがでしょうか【2】？」 |
| **ズン** | 「弊社では本日のご要望をもとに再検討し、来週水曜までに修正案をお出しいたします【3】。」 |
| **大垣** | 「ありがとうございます。それで問題ありません。」 |
| **ハー** | 「お願いします。」 |

📝 **Ghi chú:**
- 【1】**「本日この場で結論を出すのは難しいかと存じます」** — phán đoán deadlock một cách neutral. Không đổ lỗi bên nào.
- 【2】**「一度持ち帰って、別途ご相談する形でいかがでしょうか？」** — câu chuẩn defuse deadlock.
- 【3】**「来週水曜までに修正案をお出しいたします」** — kèm deadline + commit re-propose để khách yên tâm.

---

## Cụm từ mẫu
> **「本日この場で結論を出すのは難しいかと存じます。一度持ち帰って、別途ご相談する形でいかがでしょうか？」**
>
> *Defuse + 持ち帰り + deadline + re-propose = 4 bước thoát deadlock.*

---

## Tránh
- Ép quyết khi cả 2 bên đã căng → relationship damage.
- Tự đề xuất con số "妥協" mà chưa consult cấp trên mình → mất face nội bộ.
- 持ち帰り mà không kèm deadline → khách lo bị "ghosted".

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 行き詰まる | いきづまる | Bế tắc |
| 冷却期間 | れいきゃくきかん | Thời gian cool-off |
| 折り合う | おりあう | Tìm điểm dung hoà |
| 限界 | げんかい | Giới hạn |
| 別途 | べっと | Riêng / khác buổi |
| 修正案 | しゅうせいあん | Phương án sửa |', 'system', 29, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004030, 8004, NULL, 'markdown_book', 'Rule 30 — Khi senior nói câu khó hiểu / 上司・顧客の曖昧な発言', '# Rule 30 — Khi senior nói câu khó hiểu / 上司・顧客の曖昧な発言
> **Luận điểm.** Senior Nhật hay nói gián tiếp ("ちょっと厳しいかな…", "前向きに検討します"). Đoán bừa = sai 50%. Câu chuẩn để confirm: 「**確認させていただきたいのですが、〜という意味でしょうか？**」 — paraphrase ý suy đoán, để senior khẳng định/correct.
>
> 上司・顧客の曖昧発言を勝手に解釈しない。「〜という意味でしょうか？」と確認する。
>
> **Liên quan:** Rule 21 (clarification), Rule 24 (tóm tắt), Rule 22 (đồng ý).

---

## Bối cảnh / 場面
Anh Matsumoto: 「来月のリリース、ちょっと厳しいかもしれませんね…」. Em Dũng cần biết là **postpone** hay là **đang lo nhưng vẫn cố** — 2 ý hoàn toàn khác. Phải hỏi lại.

---

## Hội thoại XẤU — đoán bừa
*đoán = postpone · thực ra chỉ muốn chia sẻ lo, chưa quyết*

| Speaker | Câu |
|---------|-----|
| **松本** | 「来月のリリース、ちょっと厳しいかもしれませんね…」 |
| **ズン** | 「承知しました。では再来月に延期しますね。」 |
| **松本** | 「あ、いや、まだ確定ではなくて…」 |

**Vì sao xấu:** 「ちょっと厳しい」 = "hơi khó" — có thể là (a) postpone, (b) cố nhưng cần tăng resource, (c) chỉ chia sẻ feeling. Đoán = trật.

---

## Hội thoại TỐT — confirm ý nghĩa cụ thể
| Speaker | Câu |
|---------|-----|
| **松本** | 「来月のリリース、ちょっと厳しいかもしれませんね…」 |
| **ズン** | 「確認させていただきたいのですが、リリース日の延期をご検討中という意味でしょうか【1】？それとも、現スケジュールで進めるための支援が必要ということでしょうか【2】？」 |
| **松本** | 「後者です。スケジュールは死守したいので、QAリソースを1名追加できればと。」 |
| **ズン** | 「承知しました。本日中に追加リソースの可否を社内確認し、ご報告いたします。」 |

📝 **Ghi chú:**
- 【1】**「〜という意味でしょうか？」** — câu chuẩn confirm intent.
- 【2】Đưa **2 cách hiểu** (A hay B) → senior dễ chọn → câu trả lời rõ.

---

## Cụm từ mẫu
> **「確認させていただきたいのですが、〜という意味でしょうか？それとも〜でしょうか？」**
>
> *Đưa 2 ý suy đoán → senior chọn → tránh đoán mò.*

---

## Tránh
- Đoán 1 ý duy nhất → 50% sai.
- Hỏi lại open-ended ("どういう意味ですか？") → senior phải giải thích từ đầu.
- Bỏ qua câu mơ hồ → sau này phát sinh.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 曖昧 | あいまい | Mơ hồ |
| 延期 | えんき | Hoãn / postpone |
| 死守 | ししゅ | Giữ chặt / không thay đổi |
| 支援 | しえん | Hỗ trợ |
| 後者 | こうしゃ | Cái thứ 2 |
| リソース | risōsu | Resource |', 'system', 30, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004031, 8004, NULL, 'markdown_book', 'Rule 31 — Bỏ phiếu / Đi đến quyết định / 多数決・意思決定', '# Rule 31 — Bỏ phiếu / Đi đến quyết định / 多数決・意思決定
> **Luận điểm.** Đến cuối cuộc họp, **chủ trì PHẢI propose 1 phương án** rồi xác nhận. Câu chuẩn: 「**では、A案で進めるという方向でよろしいでしょうか？**」. Nhật hiếm khi vote số đông — chủ trì propose → ai im lặng = 同意 (silent consent), ai phản đối phải nói rõ.
>
> 「では、A案で進めるという方向でよろしいでしょうか？」— 司会が方向を提示し、沈黙＝同意とみなす。
>
> **Liên quan:** Rule 22 (đồng ý), Rule 23 (phản đối), Rule 44 (action items).

---

## Bối cảnh / 場面
Sau 40 phút bàn 3 phương án scope (A/B/C). Cả 2 bên đều có ý thiên về A nhưng chưa ai chốt. Em Dũng (chủ trì) cần đưa quyết định.

---

## Hội thoại XẤU — bỏ ngỏ kết thúc
| Speaker | Câu |
|---------|-----|
| **ズン** | 「えーと、3案ありますね。どうしましょうか？」 |
| **大垣** | 「うーん…」 |
| **松本** | 「…」 |
| **ズン** | 「じゃあ、また次回ということで…」 |

**Vì sao xấu:** Chủ trì không propose → 40 phút bàn vô ích. Họp xong không có decision = thất bại.

---

## Hội thoại TỐT — propose + confirm + ai phản đối nói
*tiếp · 2-3 giây pause*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ここまでのご議論を踏まえまして、3案のうち A 案——優先度高機能のみを Phase 2 で実施——が最も現実的かと存じます【1】。」 |
| **ズン** | 「では、A 案で進めるという方向でよろしいでしょうか【2】？ご異論があればお聞かせください【3】。」 |
| **大垣** | 「私は A 案で問題ありません。」 |
| **松本** | 「同意します。」 |
| **ズン** | 「ありがとうございます。では、A案で確定とさせていただきます【4】。」 |

📝 **Ghi chú:**
- 【1】**「ここまでのご議論を踏まえまして、〜が最も現実的かと存じます」** — chủ trì tổng hợp → propose. Không hỏi 「どうしましょう」 trống không.
- 【2】**「〜という方向でよろしいでしょうか？」** — câu confirm chuẩn.
- 【3】**「ご異論があればお聞かせください」** — mở cửa cho phản đối. Im lặng = đồng ý (silent consent).
- 【4】**「確定とさせていただきます」** — chốt quyết. Phải nói "確定" rõ ràng → ghi vào biên bản.

---

## Cụm từ mẫu
> **「では、A案で進めるという方向でよろしいでしょうか？ご異論があればお聞かせください。」**
>
> *Propose → confirm → mời phản đối → silent = OK. Khẳng định 「確定」 cuối cùng.*

---

## Tránh
- Hỏi 「どうしましょうか？」 trống không → ai cũng đợi ai.
- Quyết bừa khi không có consensus → phản đối ngầm.
- Không đóng bằng 「確定」 → biên bản không rõ.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 多数決 | たすうけつ | Bỏ phiếu đa số |
| 意思決定 | いしけってい | Ra quyết định |
| 確定 | かくてい | Chốt |
| 踏まえる | ふまえる | Dựa trên |
| 異論 | いろん | Phản đối |
| 現実的 | げんじつてき | Khả thi |', 'system', 31, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004032, 8004, NULL, 'markdown_book', 'Rule 32 — Hoãn quyết định / 結論先送り', '# Rule 32 — Hoãn quyết định / 結論先送り
> **Luận điểm.** Khi không thể quyết trong họp này → KHÔNG nói "また今度" mơ hồ. Cấu trúc chuẩn: **(1) lý do** → **(2) "持ち帰り"** → **(3) deadline trả lời cụ thể** → **(4) channel trả lời**. Câu chuẩn: 「**本件は持ち帰り、〇月〇日までにご回答いたします**」.
>
> 「本件は持ち帰り、〇月〇日までにメールにてご回答いたします」— 期限+チャネル必須。
>
> **Liên quan:** Rule 25 (持ち帰り xin), Rule 29 (deadlock), Rule 31 (quyết định).

---

## Bối cảnh / 場面
Họp đang bàn về việc dùng AWS hay Azure. Em Dũng cần hỏi anh Hà CTO + check budget với chị Loan kế toán → không thể quyết tại chỗ. Phải thông báo postpone đúng cách.

---

## Hội thoại XẤU — postpone mơ hồ
| Speaker | Câu |
|---------|-----|
| **大垣** | 「クラウド選定について、本日決定したいのですが。」 |
| **ズン** | 「あの…ちょっと難しいので、また今度…」 |
| **大垣** | 「『また今度』とは具体的にいつでしょうか？」 |
| **ズン** | 「えーと…」 |

**Vì sao xấu:** 「また今度」 không có deadline. Khách Nhật cần specific. Không kèm channel (email/họp/chat?) → khó follow.

---

## Hội thoại TỐT — lý do + deadline + channel
*tiếp*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「クラウド選定について、本日決定したいのですが。」 |
| **ズン** | 「ご要望ありがとうございます。クラウド選定はインフラとコストの両面から弊社のCTOとCFOの確認が必要でございますので【1】、本件は持ち帰り、4月30日（水）17時までにメールにてご回答いたします【2】。」 |
| **ズン** | 「ご回答にはAWS / Azure 比較表とコスト試算を添付いたします【3】。」 |
| **大垣** | 「ありがとうございます。期限つきでしたら問題ありません。お待ちしております。」 |

📝 **Ghi chú:**
- 【1】**「インフラとコストの両面から弊社のCTOとCFOの確認が必要」** — nêu lý do cụ thể (cần ai duyệt) + uchi-soto: 「弊社の」 đứng trước CTO/CFO khi nói với khách. Không nói 「ちょっと」 mơ hồ.
- 【2】**「本件は持ち帰り、〇月〇日〇時までにメールにてご回答いたします」** — câu chuẩn. Có deadline + channel.
- 【3】**「比較表とコスト試算を添付」** — kèm cam kết deliverable cụ thể → khách hài lòng.

---

## Cụm từ mẫu
> **「本件は持ち帰り、〇月〇日〇時までにメールにてご回答いたします。」**
>
> *Lý do → 持ち帰り → deadline → channel → deliverable. 5 yếu tố.*

---

## Tránh
- 「また今度」「後ほど」 không có deadline.
- Không nói channel (mail/chat/meeting?) → khách không biết check ở đâu.
- Hoãn mà không nêu lý do → khách nghĩ là né tránh.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 先送り | さきおくり | Hoãn lại |
| クラウド選定 | クラウドせんてい | Lựa chọn cloud |
| 比較表 | ひかくひょう | Bảng so sánh |
| 試算 | しさん | Tính thử / estimate |
| インフラ | infura | Hạ tầng |
| 添付 | てんぷ | Đính kèm |', 'system', 32, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004033, 8004, NULL, 'markdown_book', 'Rule 33 — Online meeting mute/unmute etiquette / オンライン会議のマナー', '# Rule 33 — Online meeting mute/unmute etiquette / オンライン会議のマナー
> **Luận điểm.** Online meeting có 4 quy tắc bất thành văn ở Nhật: (1) **mặc định mute** khi không nói, (2) **camera-on khi phát biểu**, (3) **raise-hand** trên app thay vì cắt lời, (4) **không cắt lời** vì lag delay. Bỏ qua = unprofessional ngay từ phút đầu.
>
> オンライン会議4原則：①既定でミュート、②発言時カメラオン、③挙手機能で発言要求、④遅延を考慮し割り込まない。
>
> **Liên quan:** Rule 04 (setup), Rule 19 (xin lượt), Rule 36 (share screen).

---

## Bối cảnh / 場面
Họp Zoom định kỳ tháng 4. Em Linh (junior, mới vào) là một trong 8 người tham dự. Chưa quen quy tắc online meeting Nhật.

---

## Hội thoại XẤU — Linh không nắm quy tắc
*Linh không mute, gõ phím lạch cạch · đang trình bày · không mute, đột ngột nói chen · khó chịu*

| Speaker | Câu |
|---------|-----|
| **松本** | 「では、進捗報告から始めます。まずズンさんお願いします。」 |
|  | 「カチカチカチ…」 |
| **ズン** | 「4月の進捗ですが…」 |
| **リン** | 「ズンさん、その数字って合ってます？」 *(camera off, không thấy mặt)* |
| **松本** | 「…どなたでしょうか？」 |

**Vì sao xấu:** (a) Tiếng gõ phím làm phiền cả họp. (b) Cắt lời. (c) Camera-off khi phát biểu = đối phương không biết là ai → mất context.

---

## Hội thoại TỐT — Linh tuân thủ 4 quy tắc
*camera on, mở mute · muted, raise hand trên Zoom · bật camera + unmute · nói xong, mute lại*

| Speaker | Câu |
|---------|-----|
| **松本** | 「では、進捗報告から始めます。まずズンさんお願いします。」 |
| **ズン** | 「4月の進捗ですが…」 |
| **リン** 🖐️ |  |
| **松本** | 「リンさん、何か質問でしょうか？」 |
| **リン** 【1】 | 「失礼します。リンでございます【2】。先ほどの数字について、確認させていただきたい点がございます。」 |
| **リン** 【3】 |  |

📝 **Ghi chú:**
- 【1】**Bật camera + unmute khi phát biểu** — đối phương cần thấy mặt + nghe rõ.
- 【2】**Tự xưng tên trước khi nói** — khi online, nhiều người không nhớ giọng. Nói tên giúp anyone nghe biết là ai → ghi biên bản chính xác.
- 【3】**Mute lại sau khi nói xong** — tiếng background (gõ phím, gia đình, xe ngoài) sẽ làm phiền.

---

## Cụm từ mẫu
> **Default mute. Camera on khi nói. Raise-hand trên app. Tự xưng tên khi unmute.**

---

## Tránh
- Để mic on cả họp → tiếng noise.
- Camera off cả buổi → đối phương cảm giác không có mặt.
- Cắt lời (online lag delay 0.5-1s → chồng tiếng).
- Không tự giới thiệu tên → khó identify ai nói gì.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ミュート | myūto | Mute |
| ミュート解除 | ミュートかいじょ | Unmute |
| カメラオン/オフ | kamera on/off | Camera on/off |
| 挙手機能 | きょしゅきのう | Raise-hand function |
| 遅延 | ちえん | Delay |
| 既定 | きてい | Mặc định |', 'system', 33, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004034, 8004, NULL, 'markdown_book', 'Rule 34 — Hybrid meeting cân bằng / ハイブリッド会議の運営', '# Rule 34 — Hybrid meeting cân bằng / ハイブリッド会議の運営
> **Luận điểm.** Hybrid (1 nửa offline + 1 nửa online) DỄ làm phía online cảm thấy "second-class". Chủ trì PHẢI: (1) **chủ động hỏi phía online** trước phía offline ở mỗi agenda item, (2) **summary lại** cho online khi offline trao đổi nhanh, (3) **dùng mic chuyên dụng** cho phòng họp.
>
> ハイブリッド会議では司会がオンライン参加者に最初に発言機会を与える。「online first」原則。
>
> **Liên quan:** Rule 33 (online), Rule 36 (share screen), Rule 14 (chủ trì).

---

## Bối cảnh / 場面
Họp phase 2: 4 người tại văn phòng VN (Dũng, Tuấn, Hải, Hà), 2 người Nhật join Zoom (Matsumoto, Ōgaki). Em Dũng làm chủ trì.

---

## Hội thoại XẤU — bỏ rơi phía online
*trong phòng · nói nhỏ với Hải, không qua mic · cũng nói nhỏ · qua Zoom*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では、Phase 2スコープについて。トゥアンさん、どう思いますか？」 |
| **トゥアン** | 「これね、ハイ的にはどう？」 |
| **ハイ** | 「うーん、難しいかも…」 |
| **松本** | 「…すみません、聞こえません。」 |
| **大垣** | 「我々の意見は確認しないのですか？」 |

**Vì sao xấu:** Tuấn và Hải nói nhỏ ngoài mic → online không nghe. Chủ trì không proactively mời ý kiến phía Nhật → cảm giác bị bỏ rơi.

---

## Hội thoại TỐT — online first + summary
*qua Zoom · nói qua mic chính · sau Tuấn nói xong, summary cho online*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では、Phase 2スコープについて。まずオンラインでご参加の松本様、大垣様、ご意見をお聞かせいただけますでしょうか【1】？」 |
| **大垣** | 「優先度高機能を絞った A 案がよろしいかと存じます。」 |
| **松本** | 「同意します。」 |
| **ズン** | 「ありがとうございます。続きまして、こちらVN側の意見を共有いたします。トゥアンさん、いかがでしょうか？」 |
| **トゥアン** | 「QA工数を考慮すると…」 |
| **ズン** | 「今のトゥアンさんの発言を要約いたしますと、A案にQA工程を2週間追加でフィージブル、ということでございます【2】。」 |
| **松本** | 「ありがとうございます、よく分かりました。」 |

📝 **Ghi chú:**
- 【1】**「まずオンラインでご参加の〇〇様、〇〇様、ご意見を…」** — chủ động mời online TRƯỚC. Đây là "online first" rule.
- 【2】**「今の〇〇さんの発言を要約いたしますと〜」** — khi offline trao đổi qua lại nhanh, summary lại cho online. Tránh online "fall behind".

---

## Cụm từ mẫu
> **Online first. Summary back to online. Mic chuyên dụng. 3 nguyên tắc của hybrid.**

---

## Tránh
- Hỏi offline trước → online cảm giác là "phụ".
- Trao đổi nhanh giữa offline mà không qua mic chính.
- Quên summary → online lost context.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ハイブリッド | haiburiddo | Hybrid |
| 司会 | しかい | Chủ trì |
| 要約 | ようやく | Tóm tắt |
| マイク | maiku | Mic |
| 確認 | かくにん | Xác nhận |
| フィージブル | fījiburu | Feasible |', 'system', 34, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004035, 8004, NULL, 'markdown_book', 'Rule 35 — Khi mất kết nối / 接続不良への対応', '# Rule 35 — Khi mất kết nối / 接続不良への対応
> **Luận điểm.** Khi mạng lag / drop → KHÔNG biến mất im lặng. Có protocol 3 bước: (1) **báo nhanh trong chat** "接続不安定です", (2) **rejoin** trong 60s, (3) **xin lỗi + xác nhận đoạn miss** sau khi back. Câu chuẩn: 「申し訳ございません、接続が不安定でございまして、〜」.
>
> 接続不良時：①チャットで状況報告 ②60秒以内に再接続 ③復帰後に謝罪+情報確認の3ステップ。
>
> **Liên quan:** Rule 33 (online manner), Rule 38 (cancel/postpone).

---

## Bối cảnh / 場面
Họp Zoom, em Dũng đang trình bày → mạng VN bị lag, video freeze 30 giây. Đối phương phía Nhật chờ.

---

## Hội thoại XẤU — biến mất + quay lại không xin lỗi
*đang nói · đợi 1 phút · 2 phút sau Dũng rejoin*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「4月のKPIは…」 *(freeze 30s, drop)* |
| **松本** | 「ズンさん？聞こえますか？」 |
| **ズン** | 「あ、戻りました。続きですが…」 |

**Vì sao xấu:** Không báo trong chat lúc drop → khách lo "có chuyện gì". Quay lại không xin lỗi + không confirm xem đối phương nghe được đến đâu.

---

## Hội thoại TỐT — protocol 3 bước
*đang nói · gõ vào chat từ phone · 45 giây sau rejoin · tiếp*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「4月のKPIは…」 *(freeze)* |
| **ズン** 💬【1】 | 「申し訳ございません、接続が不安定です。再接続いたします。」 |
| **ズン** | 「申し訳ございません、接続が不安定でございまして、お時間を頂戴してしまいました【2】。」 |
| **ズン** | 「先ほどの続きを再開する前に、4月KPIのスライドはどこまでお見せできていましたでしょうか【3】？」 |
| **松本** | 「『達成率82%』のところまで見えていました。」 |
| **ズン** | 「ありがとうございます。では、その続きから再開いたします。」 |

📝 **Ghi chú:**
- 【1】**Báo trong chat** — khách lo lắng giảm khi biết "đang reconnect". Dùng phone hotspot nếu PC mất mạng.
- 【2】**「接続が不安定でございまして、お時間を頂戴してしまいました」** — câu xin lỗi chuẩn.
- 【3】**「どこまでお見せできていましたでしょうか？」** — confirm điểm last seen → tránh lặp lại / sót.

---

## Cụm từ mẫu
> **「接続が不安定でございまして、お時間を頂戴してしまいました。先ほどはどこまでお見せできていましたでしょうか？」**
>
> *Xin lỗi → confirm last point → resume.*

---

## Tránh
- Drop im lặng không báo chat.
- Quay lại không xin lỗi → khách cảm giác "không trân trọng".
- Tiếp tục từ đầu mà không confirm → lặp / sót.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 接続 | せつぞく | Kết nối |
| 不安定 | ふあんてい | Không ổn định |
| 再接続 | さいせつぞく | Reconnect |
| 頂戴する | ちょうだいする | Xin nhận / lấy mất (kenjō) |
| 復帰 | ふっき | Trở lại |
| 達成率 | たっせいりつ | Tỷ lệ đạt |', 'system', 35, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004036, 8004, NULL, 'markdown_book', 'Rule 36 — Chia sẻ màn hình / 画面共有の声かけ', '# Rule 36 — Chia sẻ màn hình / 画面共有の声かけ
> **Luận điểm.** Share screen có 4 bước chuẩn: (1) **báo trước** 「画面を共有させていただきます」, (2) **đợi 2-3s** rồi share, (3) **confirm** 「ご覧いただけますでしょうか？」, (4) **stop** chính thức 「画面共有を終了いたします」. Bỏ qua step 3 = đối phương có thể không thấy mà ngại nói.
>
> 画面共有4ステップ：①予告 ②2-3秒待つ ③「ご覧いただけますでしょうか」確認 ④終了宣言。
>
> **Liên quan:** Rule 04 (setup), Rule 33 (online manner), Rule 35 (connection).

---

## Bối cảnh / 場面
Họp Zoom, em Dũng cần share slide báo cáo. Đợi đến lượt mình.

---

## Hội thoại XẤU — share không báo, không confirm
*share luôn · thực ra đang loading slow · tưởng đối phương đang đọc · sau 1 phút*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「これが4月のKPIです。」 |
| **松本** | 「…」 |
| **ズン** | 「達成率82%でして…」 |
| **松本** | 「すみません、画面が真っ黒のままで…」 |

**Vì sao xấu:** Không báo trước → khách bất ngờ. Không confirm 「見えますか？」 → khách ngại nói "không thấy" → 1 phút phí.

---

## Hội thoại TỐT — 4 bước chuẩn
*chờ 2-3s · sau khi giải thích xong*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「これより、4月KPIレポートの画面を共有させていただきます【1】。」 |
| 【2】 |  |
| **ズン** | 「ご覧いただけますでしょうか【3】？」 |
| **松本** | 「はい、見えています。」 |
| **ズン** | 「ありがとうございます。それでは、達成率82%の内訳から…」 |
| **ズン** | 「画面共有を終了いたします【4】。」 |

📝 **Ghi chú:**
- 【1】**「これより、〜の画面を共有させていただきます」** — báo trước cụ thể: share gì.
- 【2】**Chờ 2-3 giây** — render time + chunk online cần chuyển sang chế độ xem.
- 【3】**「ご覧いただけますでしょうか？」** — confirm. Không bỏ qua bước này.
- 【4】**「画面共有を終了いたします」** — báo stop chính thức để đối phương biết quay về view list.

---

## Cụm từ mẫu
> **予告 → 待つ → 「ご覧いただけますでしょうか？」 → 終了宣言. 4 bước.**

---

## Tránh
- Share đột ngột không báo.
- Bỏ qua confirm 「見えますか？」.
- Forget to stop share → trang sau bị đè bởi screen cũ.
- Share 1 màn hình full lúc còn cửa sổ riêng tư → leak data.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 画面共有 | がめんきょうゆう | Share màn hình |
| ご覧いただく | ごらんいただく | Phiền xem (sonkei) |
| 内訳 | うちわけ | Chi tiết phân tách |
| 達成率 | たっせいりつ | Tỷ lệ đạt |
| 終了 | しゅうりょう | Kết thúc |', 'system', 36, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004037, 8004, NULL, 'markdown_book', 'Rule 37 — Crisis meeting họp gấp / 緊急会議の運営', '# Rule 37 — Crisis meeting họp gấp / 緊急会議の運営
> **Luận điểm.** Họp gấp (incident, bug nghiêm trọng) cần cấu trúc 4 chữ ngắn gọn: **Fact → Impact → Action → Owner**. Tối đa 30 phút. Không có agenda dài, không socializing. Câu chuẩn mở đầu: 「**緊急会議のため、簡潔に進めさせていただきます**」.
>
> 緊急会議は30分以内、Fact→Impact→Action→Owner の順で進める。雑談・前置きなし。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 31 (quyết định), Rule 44 (action items).

---

## Bối cảnh / 場面
Production server crash 7h sáng. Em Dũng convene họp khẩn 7h30 với Tuấn (tech lead), Hải (devops), và anh Matsumoto (báo cáo).

---

## Hội thoại XẤU — họp khẩn nhưng lan man
*căng*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お忙しい中、お集まりいただきありがとうございます。本日の天気は…えっと、本題ですが、サーバーの件で…」 |
| **トゥアン** | 「あ、それね、昨日のデプロイで…多分…」 |
| **ハイ** | 「いや、デプロイじゃないと思いますよ。たぶんネットワーク…」 |
| **松本** | 「現在の影響範囲だけ教えてもらえますか。」 |

**Vì sao xấu:** Mở đầu lan man (時候挨拶 không cần thiết), tech bàn cause chưa rõ, không có cấu trúc → khách Nhật mất kiên nhẫn vì đang lo.

---

## Hội thoại TỐT — Fact / Impact / Action / Owner
*tiếp*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「皆様、緊急会議のため簡潔に進めさせていただきます【1】。」 |
| **ズン** | 「**【Fact】**本日7時05分、本番サーバーがダウンいたしました。現在も復旧中でございます。」 |
| **ズン** | 「**【Impact】**全ユーザーログイン不可、推定影響ユーザー数は1,200名でございます【2】。」 |
| **ズン** | 「**【Action】**①ハイがDBロールバック実施中、②トゥアンが原因調査、③私が顧客向け一報を起草中、でございます。」 |
| **ズン** | 「**【Owner & ETA】**復旧目処は8時30分、最終報告は本日10時、私が責任者でございます【3】。」 |
| **松本** | 「明確で助かります。10時の報告を待ちます。」 |

📝 **Ghi chú:**
- 【1】**「緊急会議のため、簡潔に進めさせていただきます」** — báo trước "không formality" → cho phép cắt ngắn 挨拶.
- 【2】**Số cụ thể** (7時05分, 1,200名) — fact-based, không 「たぶん」.
- 【3】**「責任者」 명확** — JP business culture rất quý có 1 person owner duy nhất.

---

## Cụm từ mẫu
> **「緊急会議のため、簡潔に進めさせていただきます。Fact→Impact→Action→Owner の順でご報告いたします。」**
>
> *4F: Fact, Felt impact, plan of Action, single Owner. 30 phút.*

---

## Tránh
- Mở đầu 挨拶 dài → khách lo bị lãng phí time.
- Tech bàn cause chưa rõ trong họp khẩn (để follow-up).
- Không có 1 owner duy nhất → trách nhiệm bị share → không ai làm.
- Quá 30 phút → mệt + decision quality giảm.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 緊急会議 | きんきゅうかいぎ | Họp khẩn |
| 簡潔 | かんけつ | Ngắn gọn / súc tích |
| 影響範囲 | えいきょうはんい | Phạm vi ảnh hưởng |
| 復旧 | ふっきゅう | Khôi phục |
| 目処 | めど | Mục đích / mốc dự kiến |
| 責任者 | せきにんしゃ | Người phụ trách |
| ロールバック | rōrubakku | Rollback |', 'system', 37, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004038, 8004, NULL, 'markdown_book', 'Rule 38 — Postpone/cancel last-minute / 直前のリスケ', '# Rule 38 — Postpone/cancel last-minute / 直前のリスケ
> **Luận điểm.** Hoãn họp gấp = mất uy tín nếu xử lý sai. Cấu trúc chuẩn: **(1) Xin lỗi sâu** 「急遽申し訳ございません」 → **(2) Lý do** (chân thật, không bịa) → **(3) Đề xuất 2-3 lịch thay thế** → **(4) Cam kết tài liệu sẽ gửi**. Không bao giờ "急用" mơ hồ.
>
> 直前リスケは「謝罪+理由+代替日3案+資料コミット」の4要素。曖昧な理由は信頼を損なう。
>
> **Liên quan:** Rule 02 (mời họp), Rule 17 (đến muộn), Rule 25 (持ち帰り).

---

## Bối cảnh / 場面
Họp với anh Matsumoto lúc 14h. Đến 13h30, anh Hà CTO có cuộc họp khẩn với CFO ngân hàng → không thể tham dự. Em Dũng phải báo postpone gấp.

---

## Hội thoại XẤU — xin lỗi mơ hồ + không có lịch thay thế
*điện thoại · thực ra đã chuẩn bị 1 tiếng cho buổi này*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本さん、すみません、急用があって今日の会議無理になりました…また連絡します。」 |
| **松本** | 「…そうですか。」 |

**Vì sao xấu:** 「急用」 = mơ hồ → khách không biết tôn trọng đến đâu. Không đề xuất lịch thay thế → khách phải chờ. "また連絡" không deadline.

---

## Hội thoại TỐT — 4 yếu tố
*điện thoại 13h30 · tiếp · tiếp*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、ティエンファットのズンでございます。直前のご連絡となり、誠に申し訳ございません【1】。」 |
| **ズン** | 「弊社CTOが本日突発的に銀行CFOとの会議が入り、本日14時の会議に出席できない状況となりました【2】。」 |
| **ズン** | 「大変恐縮ながら、本日のお打合せをリスケジュールさせていただけませんでしょうか？代替日として、明日午前10時、明後日午前11時、もしくは来週月曜午後2時、いずれかでご都合いかがでしょうか【3】？」 |
| **ズン** | 「なお、本日お見せ予定だった資料は、本日中にメールにてお送りいたします【4】。」 |
| **松本** | 「了解しました。明日10時で問題ありません。資料お待ちしております。」 |

📝 **Ghi chú:**
- 【1】**「直前のご連絡となり、誠に申し訳ございません」** — câu xin lỗi sâu chuẩn cho last-minute change.
- 【2】**Lý do cụ thể** — không 「急用」. Có tên người (CTO) + lý do (CFO銀行).
- 【3】**3 lịch thay thế** — không hỏi 「いつがいいですか？」. Đưa option để khách chọn nhanh.
- 【4】**Cam kết tài liệu** — bù đắp bằng cách gửi tài liệu trước → khách feel "vẫn được tôn trọng".

---

## Cụm từ mẫu
> **「直前のご連絡となり、誠に申し訳ございません。代替日として〇/〇、〇/〇、〇/〇、いずれかでご都合いかがでしょうか？」**
>
> *Xin lỗi sâu + lý do thật + 3 option + tài liệu commit = 4 yếu tố cứu uy tín.*

---

## Tránh
- 「急用」「事情があり」 mơ hồ.
- 「また連絡します」 không deadline.
- Không đưa option lịch thay thế.
- Cancel email không gọi điện → không formal đủ.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 直前 | ちょくぜん | Sát giờ / last minute |
| リスケジュール | risukejūru | Reschedule |
| 突発的 | とっぱつてき | Đột xuất |
| 代替日 | だいたいび | Ngày thay thế |
| 恐縮 | きょうしゅく | Áy náy |
| 打合せ | うちあわせ | Buổi trao đổi |', 'system', 38, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004039, 8004, NULL, 'markdown_book', 'Rule 39 — 1-on-1 với cấp trên Nhật / 1on1ミーティング', '# Rule 39 — 1-on-1 với cấp trên Nhật / 1on1ミーティング
> **Luận điểm.** 1on1 (1 đối 1) với senior Nhật KHÔNG phải casual chat. Cấu trúc 4 phần: (1) **Progress** — gì đã làm, (2) **Challenges** — gì đang vướng, (3) **Ask** — cần gì từ senior, (4) **Next steps**. Junior chuẩn bị note trước, senior nhận note. Câu chuẩn mở: 「**本日の1on1、4点ご報告と1点ご相談がございます**」.
>
> 1on1構成：①進捗 ②課題 ③相談したいこと ④次のステップ。雑談ではなく構造化された対話。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 41 (feedback), Rule 50 (self-reflection).

---

## Bối cảnh / 場面
Em Dũng có 1on1 hàng tuần với chị Hương (Phó phòng) — buổi đầu sau khi Dũng được giao chủ trì họp đàm phán phase 2.

---

## Hội thoại XẤU — Chat lan man
*15 phút trôi qua không có thông tin*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「ズン、最近どう？」 |
| **ズン** | 「えーと、まあまあです。なんか色々忙しくて…」 |
| **フオン** | 「具体的には？」 |
| **ズン** | 「うーん、Phase 2 とかが…大変です。」 |
| **フオン** | 「ズン、次回はメモ準備してきて。」 |

**Vì sao xấu:** Không chuẩn bị → 1on1 trở thành chat lan man → senior không hỗ trợ được → phí 30 phút.

---

## Hội thoại TỐT — cấu trúc 4 phần
*mở Notion note*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、本日の1on1、4点ご報告と1点ご相談がございます【1】。」 |
| **ズン** | 「**【進捗】**①Phase 2のスコープ協議完了、A案で確定 ②議事録は本日中送付予定 ③松本様より追加要件3件受領、対応中」 |
| **ズン** | 「**【課題】**QAリソースが現在2名のみで、5月末リリースまで足りない見込みでございます。」 |
| **ズン** | 「**【ご相談】**もう1名、6月までQAをアサインいただくことは可能でしょうか【2】？」 |
| **フオン** | 「了解。経理と調整して、今週中に回答するね。」 |
| **ズン** | 「ありがとうございます。**【次のステップ】**フオン副部長からのご回答後、QAリーダーと工数再見積もりを実施いたします。」 |

📝 **Ghi chú:**
- 【1】**「4点ご報告と1点ご相談がございます」** — báo trước số item → senior biết time budget cần dành.
- 【2】**「ご相談」** rõ ràng — KHÔNG nói "có lẽ", "không biết". Hỏi thẳng "có thể assign 1 QA không?".

---

## Cụm từ mẫu
> **「本日の1on1、〇点ご報告と〇点ご相談がございます。」**
>
> *Progress / Challenges / Ask / Next steps. 4 phần. Có note trước.*

---

## Tránh
- 1on1 không chuẩn bị note → senior phải hỏi từng câu.
- 「色々」「大変」 không cụ thể.
- Nói challenges mà không kèm "Ask" → senior không biết phải support gì.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 1on1 | ワンオンワン | 1 đối 1 |
| 進捗 | しんちょく | Tiến độ |
| 課題 | かだい | Vấn đề / challenge |
| 相談 | そうだん | Tham vấn / consult |
| アサイン | asain | Assign |
| 工数 | こうすう | Man-hour |
| 再見積もり | さいみつもり | Re-estimate |', 'system', 39, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004040, 8004, NULL, 'markdown_book', 'Rule 40 — Brainstorming / Workshop / ブレストの進行', '# Rule 40 — Brainstorming / Workshop / ブレストの進行
> **Luận điểm.** Brainstorming Nhật khác Mỹ: vẫn có "no judgment" rule nhưng cần **chủ trì rõ ràng** + **time-box** + **build-on**. 4 nguyên tắc: (1) **批判禁止** (no critique), (2) **量重視** (quantity > quality lúc đầu), (3) **便乗歓迎** (build on), (4) **時間制限** (time-box). Junior cũng được phát biểu equal.
>
> ブレスト4原則：批判禁止・量重視・便乗歓迎・時間制限。司会が冒頭に明示する。
>
> **Liên quan:** Rule 14 (chủ trì), Rule 19 (xin lượt), Rule 26 (đề xuất).

---

## Bối cảnh / 場面
Workshop nội bộ tìm ý tưởng giảm churn rate. Em Dũng chủ trì, có Hà CTO + Tuấn + Hải + Linh tham gia.

---

## Hội thoại XẤU — không có rule, junior bị shut down
*rụt rè · cắt ngang · im luôn cả phiên*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「じゃあ、アイデア出してください。」 |
| **リン** | 「あの…ユーザーにアンケート送るのは…」 |
| **トゥアン** | 「アンケート？古いよ。誰も答えないし。」 |
| **リン** | 「…」 |

**Vì sao xấu:** Không có rule "no critique" → senior bác ý junior → junior shutdown → mất diversity ý tưởng.

---

## Hội thoại TỐT — declare rules + facilitate
*write to whiteboard · thay vì critique, build on · 15 phút sau*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「本日のブレスト、4原則を確認させてください【1】。①批判禁止 ②量重視 ③便乗歓迎 ④15分タイムボックス。よろしいでしょうか？」 |
| **全員** | 「OK。」 |
| **リン** | 「ユーザーにアンケート送るのは…」 |
| **ズン** | 「アンケート、いいですね。次の方？」 |
| **トゥアン** | 「アンケートに便乗で、解約直前のユーザーだけに送る、というのは【2】？」 |
| **ハイ** | 「便乗で、退会理由を選択式にすると回答率上がるかも。」 |
| **ズン** | 「タイムアップ。アイデア合計14件。次は priority 投票に移ります【3】。」 |

📝 **Ghi chú:**
- 【1】**Declare 4 rules ngay đầu** — quan trọng nhất là 「批判禁止」.
- 【2】**「便乗で〜」** — phrase chuẩn JP để build on. Tốt hơn 「私のアイデアは…」 khác.
- 【3】**Time-box rõ** + chuyển bước sau (priority vote) → workshop có deliverable cụ thể.

---

## Cụm từ mẫu
> **「批判禁止・量重視・便乗歓迎・時間制限」 — 4原則を冒頭で宣言。**

---

## Tránh
- "じゃあ、自由に" mơ hồ → không ai dám nói trước.
- Senior critique junior idea → kill diversity.
- Không time-box → workshop trôi 2 tiếng không kết quả.
- Quên 「便乗歓迎」 → ý tưởng rời rạc, không phát triển.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ブレスト | buresuto | Brainstorming |
| 批判禁止 | ひはんきんし | No critique |
| 量重視 | りょうじゅうし | Coi trọng số lượng |
| 便乗 | びんじょう | Đi theo / build on |
| タイムボックス | taimubokkusu | Time-box |
| 解約 | かいやく | Hủy hợp đồng |
| 投票 | とうひょう | Bỏ phiếu |', 'system', 40, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004041, 8004, NULL, 'markdown_book', 'Rule 41 — Performance review feedback / フィードバック面談', '# Rule 41 — Performance review feedback / フィードバック面談
> **Luận điểm.** Feedback Nhật KHÔNG dùng "shit sandwich" thẳng tuột. Dùng **GROW model** + tone "growth-oriented": (1) **G**oal đã đạt gì, (2) **R**eality — gì cần cải thiện (factual, không cảm xúc), (3) **O**ptions — phương án phát triển, (4) **W**ill — commitment đôi bên. Tránh 「君は…」 personal.
>
> フィードバックはGROW（Goal/Reality/Options/Will）モデルで。事実ベース、人格批判なし。
>
> **Liên quan:** Rule 39 (1on1), Rule 50 (self-reflection).

---

## Bối cảnh / 場面
Cuối Q1, chị Hương đánh giá performance em Dũng. Có điểm tốt (Phase 1 launch thành công) và điểm cần cải thiện (đôi khi commit deadline quá lạc quan).

---

## Hội thoại XẤU — personal critique
*im, defensive*

| Speaker | Câu |
|---------|-----|
| **フオン** | 「ズン、君は時々楽観的すぎるよね。デッドラインを甘く見ている。」 |
| **ズン** | 「…はい。」 |
| **フオン** | 「次から気をつけて。」 |

**Vì sao xấu:** 「君は楽観的すぎる」 = personal trait → defensive. Không có actionable advice → không cải thiện được. JP đặc biệt né style này.

---

## Hội thoại TỐT — GROW model
| Speaker | Câu |
|---------|-----|
| **フオン** | 「ズン、Q1の振り返りをしましょう。【Goal】まず、Phase 1 launchを期日通り完遂できたこと、本当に素晴らしい成果でした【1】。」 |
| **フオン** | 「【Reality】一方、3月のスプリントで2件、deadline の見積もりが20%短く設定されていた事実がありました【2】。結果として QA が逼迫しました。」 |
| **フオン** | 「【Options】今後の見積もりに、過去実績データの参照と、senior レビューを追加するアプローチが考えられます。どちらがズンに合うと思いますか【3】？」 |
| **ズン** | 「Senior レビューの方が即効性ありそうです。」 |
| **フオン** | 「【Will】では、来月から見積もり時にトゥアンリーダーの30分レビューを導入しましょう。月末1on1で振り返りましょう【4】。」 |

📝 **Ghi chú:**
- 【1】**Goal — bắt đầu bằng thành tích cụ thể** (Phase 1 launch). Không phải lip service mà cụ thể.
- 【2】**Reality — fact-based, không personal** ("見積もりが20%短く設定されていた事実" thay vì "君は甘い").
- 【3】**Options — đưa cho ngươi đó chọn** → ownership.
- 【4】**Will — commitment cụ thể** + check-in date.

---

## Cụm từ mẫu
> **GROW: Goal → Reality (fact, không personal) → Options (cho chọn) → Will (commit + check-in).**

---

## Tránh
- 「君は〜すぎる」 personal trait → defensive.
- Feedback không kèm options → không cải thiện được.
- Không có check-in date → feedback bị quên.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 振り返り | ふりかえり | Nhìn lại / review |
| 完遂 | かんすい | Hoàn thành trọn vẹn |
| 楽観的 | らっかんてき | Lạc quan |
| 逼迫 | ひっぱく | Bị ép / căng |
| 見積もり | みつもり | Ước lượng |
| 即効性 | そっこうせい | Hiệu quả nhanh |', 'system', 41, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004042, 8004, NULL, 'markdown_book', 'Rule 42 — Đột xuất kết thúc sớm vì thiếu thời gian / 時間切れの締め方', '# Rule 42 — Đột xuất kết thúc sớm vì thiếu thời gian / 時間切れの締め方
> **Luận điểm.** Họp gần hết giờ mà chưa xong agenda → KHÔNG kéo dài quá. Câu chuẩn: 「**お時間が来てしまいましたので、続きは別途〜**」. Cấu trúc 3 bước: (1) **Acknowledge time** → (2) **Confirm gì đã quyết** → (3) **Carry forward gì còn lại** với deadline + channel.
>
> 「お時間が来てしまいましたので、続きは別途〜」— 時間→決定済み確認→積み残しの3ステップ。
>
> **Liên quan:** Rule 16 (time alloc), Rule 32 (postpone), Rule 43 (closing).

---

## Bối cảnh / 場面
Họp 60 phút, đến phút 58 chỉ mới bàn xong 2/3 agenda items. Em Dũng (chủ trì) cần đóng họp đúng giờ.

---

## Hội thoại XẤU — kéo dài tuỳ tiện
*phút 58 · thực ra có buổi tiếp theo*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「あ、もう時間ですけど…まあ、もう少し続けましょうか？」 |
| **大垣** | 「…次の予定があるんですが…」 |

**Vì sao xấu:** Khách Nhật rất chặt giờ — họp tiếp theo liền sau. Hỏi 「続けましょうか？」 = ép khách phải reject một cách lúng túng.

---

## Hội thoại TỐT — 3 bước đóng
*phút 58*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「お時間が来てしまいましたので、本日はここまでとさせていただきます【1】。」 |
| **ズン** | 「**【決定済み】**本日決定したのは、Phase 2スコープA案、リリース7月末、責任者はトゥアンリーダー、の3点でございます【2】。」 |
| **ズン** | 「**【積み残し】**残るスケジュール詳細とコスト試算につきましては、別途打合せにてご相談させていただきます。来週水曜午後で30分のお時間頂戴できますでしょうか【3】？」 |
| **大垣** | 「水曜15時で問題ありません。」 |
| **ズン** | 「ありがとうございます。本日はお時間頂戴し誠にありがとうございました。」 |

📝 **Ghi chú:**
- 【1】**「お時間が来てしまいましたので」** — câu chuẩn báo hết giờ. Không hỏi 「続けますか？」.
- 【2】**Confirm decisions đã có** — biên bản viết ngay.
- 【3】**Carry-forward + đề xuất luôn time slot** — không bỏ ngỏ.

---

## Cụm từ mẫu
> **「お時間が来てしまいましたので、本日はここまで。決定事項は〇、続きは〇月〇日にご相談。」**
>
> *3 bước: time → decided → carry-forward + new slot.*

---

## Tránh
- 「もう少し続けましょうか？」 → khách phải lúng túng từ chối.
- Kết thúc mơ hồ không confirm decisions.
- 「また別途」 không kèm slot cụ thể.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 時間切れ | じかんぎれ | Hết giờ |
| 積み残し | つみのこし | Còn lại / chưa xong |
| 別途 | べっと | Riêng / khác buổi |
| 打合せ | うちあわせ | Buổi trao đổi |
| 試算 | しさん | Tính thử |
| 詳細 | しょうさい | Chi tiết |', 'system', 42, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004043, 8004, NULL, 'markdown_book', 'Rule 43 — Câu chào kết thúc / 会議終了の挨拶', '# Rule 43 — Câu chào kết thúc / 会議終了の挨拶
> **Luận điểm.** Họp xong cần đóng formally. Câu chuẩn: 「**本日はお時間いただき誠にありがとうございました**」. Cấu trúc: (1) **Cảm ơn time** → (2) **Tóm 1 dòng output** → (3) **Cam kết next** → (4) **Greeting cuối**. Không "じゃあ、お疲れ様でした" thẳng — quá casual với khách Nhật.
>
> 終了挨拶：①時間への感謝 ②本日のアウトプット要約 ③次のコミット ④結びの挨拶。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 42 (kết thúc sớm), Rule 44 (action items), Rule 47 (follow-up mail).

---

## Bối cảnh / 場面
Họp định kỳ tháng 4 vừa kết thúc đúng giờ với output rõ ràng. Em Dũng (chủ trì) đóng họp.

---

## Hội thoại XẤU — kết thúc casual
*im một lúc*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「じゃあ、お疲れ様でした！」 |
| **大垣** | 「…はい、お疲れ様でした。」 |

**Vì sao xấu:** 「お疲れ様でした」 OK với đồng nghiệp, nhưng với khách Nhật + sau formal meeting → quá casual. Không có thank-you + summary.

---

## Hội thoại TỐT — 4 bước đóng
| Speaker | Câu |
|---------|-----|
| **ズン** | 「本日はお忙しい中、お時間いただき誠にありがとうございました【1】。」 |
| **ズン** | 「本日はPhase 2 スコープA案の確定と、5月開発計画の合意ができました【2】。」 |
| **ズン** | 「議事録は本日中、資料一式は明日午前中までにメールにてお送りいたします【3】。次回は5月10日の月例会議でお会いしたく存じます。」 |
| **ズン** | 「本日は誠にありがとうございました。今後ともどうぞよろしくお願い申し上げます【4】。」 |
| **大垣・松本** | 「ありがとうございました。引き続きよろしくお願いします。」 |

📝 **Ghi chú:**
- 【1】**「お忙しい中、お時間いただき誠にありがとうございました」** — câu chuẩn cảm ơn.
- 【2】**1 dòng tóm output** — khách rời họp với cảm giác "có thành quả".
- 【3】**Cam kết next** — biên bản 24h, tài liệu deadline cụ thể, ngày họp tới.
- 【4】**「今後ともどうぞよろしくお願い申し上げます」** — câu kết quan hệ chuẩn business JP.

---

## Cụm từ mẫu
> **「本日はお時間いただき誠にありがとうございました。今後ともどうぞよろしくお願い申し上げます。」**
>
> *Cảm ơn → tóm output → cam kết next → kết. 4 bước.*

---

## Tránh
- 「お疲れ様」 thẳng với khách → casual quá.
- Không tóm output → khách rời với cảm giác mơ hồ.
- Không cam kết next → biên bản dễ delay.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 終了 | しゅうりょう | Kết thúc |
| 引き続き | ひきつづき | Tiếp tục |
| 一式 | いっしき | Trọn bộ |
| 月例 | げつれい | Định kỳ tháng |
| 合意 | ごうい | Đồng thuận |', 'system', 43, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004044, 8004, NULL, 'markdown_book', 'Rule 44 — Confirm action items + owner / アクションアイテムの確認', '# Rule 44 — Confirm action items + owner / アクションアイテムの確認
> **Luận điểm.** Trước khi tan họp, **PHẢI** rà lại 3 thứ cho mỗi action: **Who / What / When**. Câu chuẩn: 「**本日のアクションアイテムを確認させていただきます**」 → liệt kê từng item → confirm owner. Không kèm action confirm = 50% items bị quên.
>
> アクションアイテムは『誰が・何を・いつまでに』の3要素を会議終了前に必ず読み上げて確認。
>
> **Liên quan:** Rule 31 (quyết định), Rule 43 (kết thúc), Rule 45 (biên bản).

---

## Bối cảnh / 場面
Họp Phase 2 đã quyết xong scope. 5 phút trước khi tan, em Dũng phải confirm action items với owner cụ thể.

---

## Hội thoại XẤU — bỏ qua confirm
*1 tuần sau, 2/4 actions chưa làm vì không nhớ ai phụ trách*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「では、皆さんよろしくお願いします。」 |

**Vì sao xấu:** Không rà → action diffusion. JP đặc biệt cần rõ owner.

---

## Hội thoại TỐT — đọc rõ action / owner / deadline
| Speaker | Câu |
|---------|-----|
| **ズン** | 「会議終了前に、本日のアクションアイテムを確認させていただきます【1】。4件ございます。」 |
| **ズン** | 「① **scope A 案の詳細仕様書作成** — トゥアンリーダー、5月2日まで。よろしいでしょうか【2】？」 |
| **トゥアン** | 「承知しました。」 |
| **ズン** | 「② **5月開発スプリント計画書** — 私（ズン）、4月30日まで。」 |
| **ズン** | 「③ **追加QAリソース可否回答** — 大垣様、5月7日まで。」 |
| **大垣** | 「了解です、確認します。」 |
| **ズン** | 「④ **議事録共有** — 私（ズン）、本日中。以上4件、よろしくお願いいたします【3】。」 |

📝 **Ghi chú:**
- 【1】**「アクションアイテムを確認させていただきます」** — câu mở chuẩn.
- 【2】**Mỗi item: action + owner + deadline + confirm** — đọc xong hỏi 「よろしいでしょうか？」 owner phải nói "承知".
- 【3】**Tổng kết** số item → biên bản dễ check.

---

## Cụm từ mẫu
> **「① [What] — [Who]、[When]まで。よろしいでしょうか？」**
>
> *3W cho mỗi item. Owner phải confirm tiếng nói.*

---

## Tránh
- "皆さんよろしく" trống không.
- Bỏ qua confirm tiếng → biên bản ghi 1 chiều.
- Không có deadline cụ thể.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| アクションアイテム | akushon aitemu | Action item |
| 仕様書 | しようしょ | Specification |
| 計画書 | けいかくしょ | Kế hoạch |
| 可否 | かひ | Có/không |
| 議事録 | ぎじろく | Biên bản |
| 共有 | きょうゆう | Chia sẻ |', 'system', 44, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004045, 8004, NULL, 'markdown_book', 'Rule 45 — Gửi biên bản trong 24h / 議事録の作成と配布', '# Rule 45 — Gửi biên bản trong 24h / 議事録の作成と配布
> **Luận điểm.** Biên bản (議事録 gijiroku) phải gửi **trong 24h** sau họp. Quá 48h = mất giá trị. Format chuẩn 6 mục: **日時 / 出席者 / 議題 / 決定事項 / TODO / 次回**. Gửi qua email với subject 「**【議事録】〇〇会議 (〇月〇日)**」.
>
> 議事録は24時間以内、6項目（日時/出席者/議題/決定/TODO/次回）でメール配布。
>
> **Liên quan:** Rule 44 (action items), Rule 46 (format chi tiết), Rule 47 (follow-up mail).

---

## Bối cảnh / 場面
Họp định kỳ tháng 4 đã xong lúc 16h. Em Dũng cần gửi biên bản cho Matsumoto + Ōgaki trước cuối ngày.

---

## Hội thoại XẤU — gửi muộn + format thiếu
*3 ngày sau · chat Dũng · gửi tới CC chị Hương*

| Speaker | Câu |
|---------|-----|
| **松本** | 「ズンさん、先週の議事録、まだですか？」 |
| **ズン** | 「すみません、明日送ります…」 |
| **松本** | 「議事録の遅延が続くと、record が曖昧になり困ります。」 |

**Vì sao xấu:** Quá 48h → khách Nhật đặc biệt không hài lòng. CC sếp → escalation.

---

## Quy trình TỐT — gửi 24h, format 6 mục
*viết biên bản 17h, gửi 18h cùng ngày · email · body · tiếp · reply 翌朝*

| Speaker | Câu |
|---------|-----|
| **ズン** |  |
| **ズン** | 「Subject: 【議事録】4月度月例会議 (4月28日)」 |
| **ズン** | 「松本様、大垣様 / お世話になっております。本日4月28日に開催いたしました月例会議の議事録をお送り申し上げます【1】。」 |
| **ズン** | 「ご確認の上、ご質問・修正点ございましたら、5月1日（水）17時までにご返信いただけますと幸いです【2】。」 |
| **松本** | 「迅速な共有ありがとうございます。確認のうえ、特に修正なしでよろしくお願いいたします。」 |

📝 **Ghi chú:**
- 【1】**「本日〜開催いたしました〇〇会議の議事録をお送り申し上げます」** — câu mở mail chuẩn.
- 【2】**Deadline review** (例：5/1 17h) — ai có comment thì reply, không có = approved.

📐 **Template biên bản 6 mục — xem `conversation.json:templates[0]`**

---

## Cụm từ mẫu
> **24h. 6 mục. Subject 「【議事録】〇〇会議 (〇月〇日)」. Có deadline review.**

---

## Tránh
- Gửi sau 48h → uy tín giảm.
- Format không có 「決定事項」 + 「TODO」 → biên bản vô dụng.
- Không có deadline review → khách không biết khi nào phải reply.
- Subject mơ hồ "会議の件" → khó search.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 議事録 | ぎじろく | Biên bản |
| 配布 | はいふ | Phân phát |
| 修正点 | しゅうせいてん | Điểm cần sửa |
| 迅速 | じんそく | Nhanh chóng |
| 開催 | かいさい | Tổ chức |
| 決定事項 | けっていじこう | Mục đã quyết |', 'system', 45, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004046, 8004, NULL, 'markdown_book', 'Rule 46 — Format biên bản chuẩn / 議事録のフォーマット', '# Rule 46 — Format biên bản chuẩn / 議事録のフォーマット
> **Luận điểm.** Format biên bản chuẩn industry JP có 8 element + 3 quy ước: (1) **件名 chuẩn** 「【議事録】〇〇会議」, (2) **責任者明記** mỗi TODO, (3) **decisions tách rời actions**. Bản extended (rule này) khác bản basic (rule 45) ở chỗ có **issue tracking** + **next-meeting agenda preview**.
>
> 議事録の標準フォーマット8要素 + 3慣習：件名・責任者明記・決定/TODO分離。
>
> **Liên quan:** Rule 45 (gửi 24h), Rule 47 (follow-up), Rule 48 (vắng mặt).

---

## Bối cảnh / 場面
Em Dũng cần biên bản Phase 2 negotiation — buổi quan trọng (đàm phán giá), sẽ là evidence cho hợp đồng. Format phải chuẩn industry, bản extended.

---

## Format XẤU — minimal, thiếu structure
```
4/28 会議

参加：松本、大垣、ズン、トゥアン
内容：Phase 2 のスコープを話した。A 案で行く。
TODO：仕様書を書く。
```

**Vì sao xấu:** Không có thời gian cụ thể, không có mục đích, không tách 決定 / TODO, không có owner cho TODO, không có next meeting → không thể dùng làm evidence.

---

## Format TỐT — extended, fully structured
📐 **Xem template chi tiết với example data filled** trong `conversation.json:templates[0]`. Format gồm 8 elements:

1. **件名** (subject) - Chuẩn: 「【議事録】〇〇会議」
2. **会議概要** - 日時 / 場所 / 形式 / 出席 / 欠席
3. **目的** - Why
4. **議題** - List item
5. **議論の要旨** (summary discussion) - Quan trọng nhất, ghi 1-2 câu mỗi item
6. **決定事項** - Decisions (rõ "確定")
7. **アクションアイテム** - Who/What/When format
8. **次回会議** - Date + agenda preview

📝 **3 quy ước riêng:**
- **責任者を必ず1人明記** mỗi TODO (không "team" generic).
- **決定事項 và TODO TÁCH RỜI** — decision = "đã quyết", TODO = "việc cần làm tiếp".
- **未決事項 (issue tracking)** — list những điểm CHƯA quyết được, để track ở họp sau.

---

## Cụm từ mẫu
> **8 element + 3 quy ước. Decisions ≠ TODOs. Mỗi TODO 1 owner duy nhất.**

---

## Tránh
- Gộp decisions và TODOs → khó audit sau này.
- TODO không có owner cụ thể → trách nhiệm bị share.
- Quên 「未決事項」 → issues bị quên giữa các họp.
- Format khác nhau giữa các meeting → khó so sánh.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 概要 | がいよう | Tổng quan |
| 要旨 | ようし | Tóm ý |
| 未決事項 | みけつじこう | Item chưa quyết |
| 補足 | ほそく | Bổ sung |
| 議論 | ぎろん | Thảo luận |', 'system', 46, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004047, 8004, NULL, 'markdown_book', 'Rule 47 — Follow-up email cảm ơn / お礼メール', '# Rule 47 — Follow-up email cảm ơn / お礼メール
> **Luận điểm.** Sau họp quan trọng (đàm phán, kick-off, lần đầu gặp), cần **email cảm ơn riêng** trong 24h, KHÁC với biên bản. Body 4 phần: (1) **cảm ơn time**, (2) **3 điểm chính ấn tượng**, (3) **next step cụ thể**, (4) **closing quan hệ**. Subject: 「**御礼：〇月〇日の打合せ**」.
>
> お礼メール構成：①感謝 ②3つの key takeaway ③次のステップ ④結語。議事録とは別送。
>
> **Liên quan:** Rule 02 (mời họp), Rule 45 (biên bản), Rule 49 (CRM tracking).
> Sách 01 (Email) Rule 25-32 (mail tổng quát).

---

## Bối cảnh / 場面
Họp đàm phán phase 2 đầu tiên với anh Ōgaki vừa xong. Đây là lần đầu Dũng làm việc với Ōgaki. Cần follow-up mail cảm ơn riêng (ngoài biên bản).

---

## Hội thoại XẤU — không gửi follow-up + chỉ gửi biên bản
*chỉ gửi biên bản, không có thank-you mail · với chị Hương 1 tuần sau*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「ズンさんは議事録だけで、初対面のお礼もないですね…」 |

**Vì sao xấu:** Khách Nhật rất quý "お礼の文化". Lần đầu gặp + không có thank-you mail = personal connection yếu.

---

## Hội thoại TỐT — follow-up mail riêng
📐 **Xem template chi tiết** trong `conversation.json:templates[0]`. Cấu trúc:

1. **Subject:** 「御礼：〇月〇日の打合せ」
2. **Mở:** 「お世話になっております。本日はお忙しい中、貴重なお時間を頂戴し、誠にありがとうございました。」
3. **3 điểm chính:** "今回の打合せでは、以下3点が特に印象に残りました — ①〜 ②〜 ③〜"
4. **Next step:** "つきましては〇月〇日までに〇〇をお送りいたします。"
5. **Closing:** "今後ともどうぞよろしくお願い申し上げます。"

📝 **Phân biệt với biên bản:**
- 議事録 = formal record (8 elements, structured).
- お礼メール = personal touch (warm, ngắn ~150 từ JP).
- Cả 2 gửi trong 24h.

---

## Cụm từ mẫu
> **「御礼：〇月〇日の打合せ」 → cảm ơn → 3 takeaway → next step → 結語. ~150 từ.**

---

## Tránh
- Chỉ gửi biên bản, bỏ qua thank-you mail.
- Subject 「ありがとうございました」 trống không.
- Follow-up mail dài như biên bản.
- Quên next step → khách không biết phải chờ gì.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 御礼 | おんれい | Cảm ơn (formal) |
| 貴重 | きちょう | Quý báu |
| 印象に残る | いんしょうにのこる | Để lại ấn tượng |
| 頂戴する | ちょうだいする | Xin nhận / lấy mất |
| 結語 | けつご | Câu kết |', 'system', 47, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004048, 8004, NULL, 'markdown_book', 'Rule 48 — Cập nhật người vắng mặt / 欠席者へのフィードバック', '# Rule 48 — Cập nhật người vắng mặt / 欠席者へのフィードバック
> **Luận điểm.** Người vắng (đã báo trước) PHẢI nhận đủ info + có cơ hội comment. Quy trình: (1) **gửi biên bản** trong 24h như mọi người, (2) **kèm câu mở** acknowledge "không dự được", (3) **đề xuất 15 phút catch-up** nếu có topic quan trọng. Không bao giờ "skip" người vắng.
>
> 欠席者には議事録+catch-up提案で情報非対称を解消。「いなかったから」と切り捨てない。
>
> **Liên quan:** Rule 18 (báo vắng), Rule 45 (biên bản), Rule 47 (follow-up).

---

## Bối cảnh / 場面
Chị Loan (Kế toán trưởng) đã báo trước không dự được họp đàm phán phase 2 (do trùng lịch ngân hàng). Em Dũng cần follow-up.

---

## Hội thoại XẤU — chỉ forward biên bản
*forward biên bản, no body text · 2 ngày sau*

| Speaker | Câu |
|---------|-----|
| **ズン** |  |
| **ロアン** | 「ズン、議事録読んだけど、QA増員の件、私の意見も聞いてほしかった…」 |

**Vì sao xấu:** Forward thuần → ngụ ý "đọc đi, OK?" mà không acknowledge người này có insight quan trọng (kế toán = budget owner).

---

## Cách TỐT — acknowledge + offer catch-up
*viết mail riêng cho chị Loan*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ロアン経理部長、お世話になっております。ズンでございます【1】。」 |
| **ズン** | 「本日の Phase 2 交渉会議、ご都合つかずお出ましいただけなかったこと、改めて承知しております【2】。」 |
| **ズン** | 「議事録を添付いたします。特に **6番（QA増員）** および **7番（未決事項：予算）** につきまして、経理視点でのご意見を頂戴したく存じます【3】。」 |
| **ズン** | 「もしよろしければ、明日午前中に15分ほどお時間頂戴し、catch-up させていただけませんでしょうか【4】？」 |
| **ロアン** | 「ありがとう。明日10時、15分でOK。」 |

📝 **Ghi chú:**
- 【1】**Mail riêng** — không CC tất cả group. Personal acknowledgment.
- 【2】**「ご都合つかずお出ましいただけなかった」** — formal ack vắng mặt, không trách.
- 【3】**Chỉ rõ items relevant** — không làm chị Loan đọc cả biên bản. "items 6 và 7 cần ý chị".
- 【4】**Đề xuất 15 phút catch-up** — bridge information gap.

---

## Cụm từ mẫu
> **欠席者 = mail riêng + ack + items relevant + 15 phút catch-up đề xuất.**

---

## Tránh
- Forward biên bản trống không.
- Bỏ qua người vắng → họ thấy không quan trọng.
- Catch-up không có time-box → 30-60 phút phí.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 欠席者 | けっせきしゃ | Người vắng |
| ご都合つかず | ごつごうつかず | Không tiện lịch |
| お出まし | おでまし | Tham dự (formal) |
| 経理視点 | けいりしてん | Góc nhìn kế toán |
| catch-up | catch-up | Bù lại |', 'system', 48, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004049, 8004, NULL, 'markdown_book', 'Rule 49 — Tracking decisions trong CRM / 決定事項の社内管理', '# Rule 49 — Tracking decisions trong CRM / 決定事項の社内管理
> **Luận điểm.** Decisions từ họp PHẢI lưu vào hệ thống nội bộ (Notion/Slack/CRM) trong **48h** với 4 trường: **(1) Decision**, **(2) Source meeting + date**, **(3) Owner**, **(4) Status (open/closed)**. Mục đích: traceable cho audit + onboarding nhân viên mới + tránh "đã quyết rồi vẫn cãi lại".
>
> 決定事項は48時間以内にNotion/CRMに記録：①decision ②会議源 ③owner ④status の4フィールド。
>
> **Liên quan:** Rule 31 (quyết định), Rule 45 (biên bản), Rule 50 (self-reflection).

---

## Bối cảnh / 場面
3 tuần sau buổi đàm phán phase 2, có thành viên dev mới onboard. Hỏi "scope phase 2 chốt thế nào?". Em Dũng cần chỉ tới CRM record.

---

## Hội thoại XẤU — biên bản đâu đó trong email
| Speaker | Câu |
|---------|-----|
| **新人** | 「ズンさん、Phase 2 のスコープって最終的にどう決まったんですか？」 |
| **ズン** | 「えーと、メールどこかに議事録あったはず…」 *(15 phút search)* |
| **新人** | 「…」 |

**Vì sao xấu:** Decision không có "single source of truth". Mỗi lần ai hỏi → search email → mất 15 phút. Onboarding inefficient.

---

## Quy trình TỐT — Notion record
*Notion table · thấy record*

| Speaker | Câu |
|---------|-----|
| **新人** | 「ズンさん、Phase 2 のスコープって最終的にどう決まったんですか？」 |
| **ズン** | 「Notion の『決定事項一覧』に記録があります。リンク送りますね【1】。」 |
| **新人** | 「あ、4/28会議で A 案確定、ownerはトゥアンリーダー、status: closed って書いてありますね。明確で助かります。」 |

📐 **CRM/Notion record format:**

| Field | Example |
|---|---|
| Decision | Phase 2 scope = A 案 (優先度高機能のみ) |
| Source | 4月度月例会議 (2026-04-28) — 議事録 link |
| Owner | トゥアンリーダー |
| Status | closed |
| Related issues | QA体制 (open), 予算値引き率 (open) |
| Last updated | 2026-04-28 by ズン |

📝 **Ghi chú:**
- 【1】**Single source of truth** — 1 link Notion thay vì email scavenger hunt.
- **Status:** open (chưa làm) / in-progress / closed.
- **Related issues** — link decisions phụ thuộc lẫn nhau.

---

## Cụm từ mẫu
> **48h. 4 fields. 1 source of truth. Searchable.**

---

## Tránh
- Decision chỉ trong biên bản email → mất khả năng search.
- Không có owner → trách nhiệm bị share.
- Không có status → không biết decision còn live không.
- Quên update khi decision bị overrule sau này.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 決定事項 | けっていじこう | Item đã quyết |
| 社内管理 | しゃないかんり | Quản lý nội bộ |
| 一覧 | いちらん | Danh sách / list |
| 記録 | きろく | Ghi chép / record |
| 追跡 | ついせき | Track / theo dõi |', 'system', 49, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8004050, 8004, NULL, 'markdown_book', 'Rule 50 — Self-reflection cải tiến / 振り返りと改善', '# Rule 50 — Self-reflection cải tiến / 振り返りと改善
> **Luận điểm.** Sau mỗi tuần có nhiều họp, dành **15 phút Friday afternoon** để nhìn lại: gì work, gì cần đổi. Dùng **10-item checklist** (準備/進行/参加/締め). Ghi vào **diary file riêng** — không gửi ai. Mục đích: kỹ năng họp tăng từng tuần, không bị plateau.
>
> 週末15分の振り返り：10項目チェックリストで会議スキルを継続改善。日記形式で個人ファイルに記録。
>
> **Liên quan:** Rule 39 (1on1), Rule 41 (feedback), Rule 49 (decisions tracking).

---

## Bối cảnh / 場面
Friday 5pm. Em Dũng đã chủ trì 4 buổi họp tuần này. Mở file `meeting_diary.md` để self-reflect.

---

## Pattern XẤU — không reflect
| Tuần | Câu của em Dũng | Hệ quả |
|---|---|---|
| Week 1 | 「終わった、よかった」 | Không học gì mới |
| Week 4 | Cùng mistake lặp lại — agenda send 2h trước | Khách lại complain |
| Week 12 | Skills plateau, performance review ko cải thiện |

---

## Pattern TỐT — 10-item checklist Friday
📐 **Checklist 10 items** — xem `conversation.json:templates[0]`. 4 nhóm:

**A. Chuẩn bị (3 items)**
- [ ] Agenda gửi ≥24h trước?
- [ ] Tài liệu pre-read send ≥24h?
- [ ] Pre-meeting check-in nội bộ?

**B. Tiến hành (3 items)**
- [ ] Bắt đầu đúng giờ?
- [ ] Tất cả ý kiến được nghe (kể cả junior)?
- [ ] Time-box mỗi item respected?

**C. Tham gia (2 items)**
- [ ] Em có dùng cushion trước khi phản đối?
- [ ] Em paraphrase + confirm hiểu đúng?

**D. Kết thúc (2 items)**
- [ ] Action items với owner + deadline confirmed?
- [ ] 議事録 gửi trong 24h?

📝 **Format diary entry:**

```
=== Week 17 (4/22 - 4/26) — Reflection ===
Buổi họp: 4 (Phase 2 negot, định kỳ x2, 1on1)

✅ Đã làm tốt:
  - Agenda gửi 48h trước cho Phase 2 negot
  - Cushion + counter-proposal khi anh Ōgaki yêu cầu 20%

⚠ Cần cải thiện:
  - Họp định kỳ thứ 4 — quên xin lượt nói (cắt lời anh Matsumoto)
  - 議事録 buổi 1on1 gửi trễ 6h

🎯 Tuần tới sẽ thử:
  - Đặt phone reminder "raise hand" ở mọi buổi
  - Block calendar 30 phút sau mỗi họp để viết biên bản
```

---

## Cụm từ mẫu
> **Friday 15 phút. 10 items. Diary file riêng. Tuần sau thử 1-2 thay đổi cụ thể.**

---

## Tránh
- Không reflect → skills plateau.
- Reflect chung chung "tốt/không tốt" → không actionable.
- Quá nhiều thay đổi 1 lần → confused. 1-2 thay đổi/tuần đủ.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 振り返り | ふりかえり | Nhìn lại / reflection |
| 改善 | かいぜん | Cải thiện |
| 継続 | けいぞく | Liên tục |
| 日記 | にっき | Nhật ký |
| チェックリスト | chekkurisuto | Checklist |', 'system', 50, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
