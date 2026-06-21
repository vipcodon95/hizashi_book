-- Hizashi book SQL — Họp / 会議
-- curriculum_id = 800000004
-- node count = 50
-- generated từ release/books/03_meeting/
-- KHÔNG sửa thủ công file này. Chạy lại scripts/build_sql_from_release.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, introduction_jp, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000004, NULL, 'markdown_book', 'BJT', 'Họp', 'Bộ sách Hizashi — Họp', 'Hizashi シリーズ — 会議', 'system', TRUE, TRUE, TRUE, FALSE, 20, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, introduction = EXCLUDED.introduction, introduction_jp = EXCLUDED.introduction_jp, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000001, 800000004, NULL, 'markdown_book', 'Rule 01 — Lập chương trình họp chuẩn 5W1H / アジェンダ作成の5W1H', '# Rule 01 — Lập chương trình họp chuẩn 5W1H / アジェンダ作成の5W1H
> **Luận điểm.** Chương trình họp thiếu = họp lan man. Chương trình họp chuẩn phải có 5 yếu tố 5W1H: **(1) Mục đích — Why**, **(2) Nội dung — What**, **(3) Người tham dự — Who**, **(4) Thời lượng — How long**, **(5) Kết quả mong đợi — What outcome**. Thiếu 1 trong 5 = họp dễ kéo dài quá giờ + không quyết được gì.
>
> アジェンダの5要素：①目的 ②議題 ③出席者 ④所要時間 ⑤期待されるアウトプット。1つでも欠けると会議は迷走する。
>
> **Liên quan:** Rule 02 (gửi mời họp), Rule 13 (giới thiệu chương trình họp khi mở họp), Rule 45 (biên bản).
> Sách 01 (Email) Rule 09 (subject họp).

---

## Bối cảnh / 場面
Cuối quý 1, em Dũng được giao tổ chức buổi họp định kỳ tháng 4 với khách 白鷗 (anh Matsumoto + anh 大垣 営業部長). Chị Hương yêu cầu Dũng soạn dự thảo chương trình họp trước khi gửi mail mời.

---

## Hội thoại XẤU — chương trình họp mơ hồ
*gửi qua Slack cho chị Hương · mở file*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>月例会議<rt>げつれいかいぎ</rt></ruby>のアジェンダを<ruby>作<rt>つく</rt></ruby>りました。ご<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Chị Hương, em đã làm chương trình họp cho buổi họp định kỳ tuần sau. Phiền chị xem giúp em ạ.* |
| **フオン** | 「<ruby>議題<rt>ぎだい</rt></ruby>：プロジェクト<ruby>進捗<rt>しんちょく</rt></ruby>、<ruby>次回<rt>じかい</rt></ruby>のタスク。これだけ？」 <br/>*Chương trình họp: Tiến độ dự án, việc cần làm lần tới. Chỉ vậy thôi à?* |
| **ズン** | 「はい、進捗<ruby>報告<rt>ほうこく</rt></ruby>と<ruby>次<rt>つぎ</rt></ruby>のタスクを<ruby>話<rt>はな</rt></ruby>そうかと…」 <br/>*Vâng, em định nói về tiến độ và việc cần làm tiếp theo ạ...* |
| **フオン** | 「<ruby>目的<rt>もくてき</rt></ruby>は？<ruby>何<rt>なに</rt></ruby>を<ruby>決<rt>き</rt></ruby>める会議？<ruby>時間<rt>じかん</rt></ruby>は？<ruby>大垣<rt>おおがき</rt></ruby>さんも<ruby>入<rt>はい</rt></ruby>る？<ruby>資料<rt>しりょう</rt></ruby>は？……これじゃ会議が<ruby>始<rt>はじ</rt></ruby>まらないよ。」 <br/>*Mục đích là gì? Quyết cái gì? Thời gian bao lâu? Anh Ōgaki có vào không? Tài liệu? Như này họp không bắt đầu được đâu.* |

**Vì sao xấu:** Chương trình họp chỉ có "議題" mà thiếu **mục đích / kết quả mong đợi / thời lượng / người tham dự / chuẩn bị**. Khách Nhật nhận được sẽ không biết phải chuẩn bị gì → họp đến nơi mới hỏi → mất 15-30 phút đầu mới vào việc.

---

## Hội thoại TỐT — chương trình họp 5W1H đủ
*đọc file*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、4<ruby>月度<rt>がつど</rt></ruby>月例会議のアジェンダ<ruby>案<rt>あん</rt></ruby>でございます【1】。」 <br/>*Chị Hương, đây là dự thảo chương trình họp cho buổi họp định kỳ tháng 4 ạ.* |
| **フオン** | 「うん、目的が<ruby>明確<rt>めいかく</rt></ruby>で出席者と<ruby>時間配分<rt>じかんはいぶん</rt></ruby>もある。アウトプットも『<ruby>次月<rt>じげつ</rt></ruby>のスプリント<ruby>計画<rt>けいかく</rt></ruby><ruby>決定<rt>けってい</rt></ruby>』と<ruby>書<rt>か</rt></ruby>いてあるね。」 <br/>*Ừ, mục đích rõ ràng, có cả người tham dự và phân chia thời gian. Kết quả mong đợi cũng ghi ''quyết kế hoạch sprint tháng sau'' rồi nhỉ.* |
| **ズン** | 「はい、Phase 2 の進捗<ruby>共有<rt>きょうゆう</rt></ruby>と来月の計画を1<ruby>時間<rt>じかん</rt></ruby>で決めたい<ruby>旨<rt>むね</rt></ruby>を<ruby>冒頭<rt>ぼうとう</rt></ruby>に書きました【2】。」 <br/>*Vâng, em đã ghi rõ ngay đầu là chia sẻ tiến độ Phase 2 và quyết kế hoạch tháng sau trong 1 tiếng ạ.* |
| **フオン** | 「いいね。あとは大垣<ruby>営業部長<rt>えいぎょうぶちょう</rt></ruby>の<ruby>出席可否<rt>しゅっせきかひ</rt></ruby>を確認してから<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>送<rt>おく</rt></ruby>ろう。」 <br/>*Tốt rồi. Còn lại em check anh Ōgaki có dự được không, rồi gửi cho anh Matsumoto nhé.* |

 **Ghi chú:**
- 【1】**「アジェンダ案でございます」** — chương trình họp được gọi là 「案」 (đề xuất) cho đến khi khách xác nhận. Không gọi là "確定" trước khi gửi.
- 【2】**「〜旨」(むね)** = "ý là...". Câu chuẩn: "〜決めたい旨を冒頭に書きました". Mẫu câu chuẩn trong tiếng Nhật công sở.

---

## Cụm từ mẫu
> **「目的・議題・出席者・所要時間・アウトプット — この5点が揃ってアジェンダ。」**
>
> *5 yếu tố đủ → mới gọi là chương trình họp. Thiếu 1 = ghi chú họp, không phải chương trình họp.*

---

## Khung mẫu Chương trình Họp 5W1H
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
- Chương trình họp chỉ có "議題" 1 dòng → khách Nhật sẽ hoài nghi về độ chuẩn bị.
- Không ghi **アウトプット** → họp dễ chỉ "trao đổi" rồi tan, không quyết.
- Không ghi **出席者** → ai cũng nghĩ "không phải mình bắt buộc".
- Gửi chương trình họp < 24h trước → khách không kịp đọc trước.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 議題 | ぎだい | NGHỊ ĐỀ | Chủ đề bàn / mục chương trình họp |
| アジェンダ | あじぇんだ | — | Chương trình họp |
| 出席者 | しゅっせきしゃ | XUẤT TỊCH GIẢ | Người tham dự |
| 所要時間 | しょようじかん | SỞ YẾU THỜI GIAN | Thời lượng cần |
| アウトプット | あうとぷっと | — | Kết quả mong đợi |
| 旨 | むね | — | Ý là... / nội dung |
| 月例 | げつれい | NGUYỆT LỆ | Định kỳ tháng |
| 案 | あん | ÁN | Đề xuất / dự thảo |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000002, 800000004, NULL, 'markdown_book', 'Rule 02 — Gửi thông báo họp đúng cách / 会議招待メールの書き方', '# Rule 02 — Gửi thông báo họp đúng cách / 会議招待メールの書き方
> **Luận điểm.** Email mời họp ≠ chỉ ghi giờ + link. Phải có **tiêu đề rõ ràng (会議名+日付)**, **mục đích 1 dòng**, **chương trình họp kèm hoặc đính kèm**, **hạn chót xác nhận tham dự**. Thiếu hạn chót xác nhận = khách không reply, ngày họp không biết ai đến.
>
> 会議招待メールの必須要素：①件名（会議名＋日付）②目的1行 ③アジェンダ添付 ④出欠の返信期限。返信期限がないと当日まで参加者が確定しない。
>
> **Liên quan:** Rule 01 (chương trình họp 5W1H), Rule 05 (gửi tài liệu trước), Rule 18 (xử lý người vắng).
> Sách 01 (Email) Rule 09 (subject họp), Rule 14 (CC chuẩn).

---

## Bối cảnh / 場面
Sau khi chị Hương xem lại chương trình họp (rule 01), em Dũng được giao gửi mail mời họp cho phía 白鷗 (松本PM, 大垣営業部長) + nội bộ (chị Hương, Tuấn leader). Đây là mail mời lần đầu trong quý 2.

---

## Hội thoại XẤU — mail mời cộc lốc
*gửi mail tối hôm trước, subject:「会議について」 · reply sáng hôm sau · 慌てて*

| Vai | Câu |
|---------|-----|
| **ズン** | 「松本様、来週<ruby>月曜<rt>げつよう</rt></ruby>15時から<ruby>会議<rt>かいぎ</rt></ruby>します。Zoomリンク<ruby>添付<rt>てんぷ</rt></ruby>。よろしくお願いします。」 <br/>*Anh Matsumoto, thứ hai tuần sau 15h họp ạ. Link Zoom đính kèm. Phiền anh nhé.* |
| **松本** | 「ズンさん、何の会議でしょうか？<ruby>大垣<rt>おおがき</rt></ruby>も<ruby>同席<rt>どうせき</rt></ruby>必要ですか？<ruby>資料<rt>しりょう</rt></ruby>は？」 <br/>*Dũng, họp gì vậy? Anh Ōgaki có cần ngồi cùng không? Tài liệu thì sao?* |
| **ズン** | 「すみません、<ruby>月例<rt>げつれい</rt></ruby>会議です。大垣様もご<ruby>出席<rt>しゅっせき</rt></ruby>いただければ…資料は今作っております。」 <br/>*Em xin lỗi, là họp định kỳ ạ. Nếu anh Ōgaki dự được thì... tài liệu em đang làm ạ.* |
| **松本** | 「<ruby>申<rt>もう</rt></ruby>し訳ない、来週月曜は<ruby>別件<rt>べっけん</rt></ruby>があります。アジェンダと<ruby>目的<rt>もくてき</rt></ruby>を見て<ruby>調整<rt>ちょうせい</rt></ruby>したかったので…」 <br/>*Xin lỗi, thứ hai tuần sau tôi có việc khác. Tôi muốn xem chương trình họp và mục đích để xếp lịch nhưng...* |

**Vì sao xấu:** Tiêu đề 「会議について」 quá mơ hồ → khách không nhận diện được mức ưu tiên. Không ghi mục đích, không đính kèm chương trình họp, không có hạn chót xác nhận tham dự. Khách Nhật phản hồi chậm → đến lúc rõ thì lịch đã trôi.

---

## Hội thoại TỐT — mail mời đủ thông tin
*gửi mail subject:「【会議招待】4月度月例会議（4/28 15:00-16:00 JST）」 · body · closing · reply 翌朝*

| Vai | Câu |
|---------|-----|
| **ズン** | 「松本様、お世話になっております。ティエンファットのズンでございます。<ruby>下記<rt>かき</rt></ruby>のとおり4月度月例会議を<ruby>開催<rt>かいさい</rt></ruby>いたしたく、ご<ruby>案内<rt>あんない</rt></ruby>申し上げます【1】。」 <br/>*Anh Matsumoto, lúc nào cũng cảm ơn anh giúp đỡ ạ. Em Dũng bên Thiên Phát đây ạ. Em xin trân trọng thông báo về buổi họp định kỳ tháng 4 như dưới đây ạ.* |
| **ズン** | 「目的はPhase 2 <ruby>進捗<rt>しんちょく</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>と5月スコープ<ruby>合意<rt>ごうい</rt></ruby>の2点でございます。アジェンダを添付いたしましたので、ご<ruby>確認<rt>かくにん</rt></ruby>のほどお願い申し上げます。」 <br/>*Mục đích gồm 2 điểm: chia sẻ tiến độ Phase 2 và thống nhất scope tháng 5 ạ. Em đã đính kèm chương trình họp, phiền anh xem giúp em ạ.* |
| **ズン** | 「ご<ruby>出欠<rt>しゅっけつ</rt></ruby>を 4月25日（金）17時まで にご<ruby>返信<rt>へんしん</rt></ruby>いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです【2】。」 <br/>*Phiền anh xác nhận tham dự giúp em trước 17h thứ Sáu ngày 25/4 ạ.* |
| **松本** | 「ご案内ありがとうございます。出席いたします。大垣にも共有しておきます。」 <br/>*Cảm ơn Dũng đã thông báo. Tôi sẽ tham dự. Tôi cũng sẽ chia sẻ cho anh Ōgaki nhé.* |

 **Ghi chú:**
- 【1】**「ご案内申し上げます」** — trang trọng hơn 「ご案内します」. Mail mời họp khách Nhật nên dùng. Cùng cấp với 「ご連絡申し上げます」.
- 【2】**「〜までにご返信いただけますと幸いです」** — câu xác nhận tham dự chuẩn. Không dùng 「〜までに返信してください」 (mệnh lệnh, lỗ mãng với khách).

---

## Cụm từ mẫu
> **「<ruby>件名<rt>けんめい</rt></ruby>・目的・アジェンダ・<ruby>返信期限<rt>へんしんきげん</rt></ruby> — この4点が<ruby>揃<rt>そろ</rt></ruby>って<ruby>招待<rt>しょうたい</rt></ruby>メール。」**
>
> *Tiêu đề + mục đích + chương trình họp + hạn chót xác nhận — đủ 4 mới gọi là mail mời họp.*

---

## Khung mẫu Email Mời Họp
```
件名：【会議招待】4月度月例会議（4/28 15:00-16:00 JST）

松本様
（CC：大垣様）

お世話になっております。
ティエンファット社のズンでございます。

下記のとおり4月度月例会議を開催いたしたく、ご案内申し上げます。

----------------------
■ 日時：2026年4月28日（火） 15:00〜16:00（JST）
■ 形式：Zoom（リンク：https://...）
■ 目的：① Phase 2 進捗共有
        ② 5月スコープ合意
■ アジェンダ：添付ファイル参照
■ 事前資料：4/26までに別途共有予定
----------------------

ご出欠を 4月25日（金）17時まで にご返信いただけますと幸いです。

何卒よろしくお願い申し上げます。

--
ティエンファット社 営業部
ズン（Trần Văn Dũng）
```

---

## Tránh
- Tiêu đề mơ hồ kiểu「会議について」「ご相談」 → khách không phân biệt mức ưu tiên.
- Không đính kèm chương trình họp → khách phải hỏi lại = mất 1 vòng email.
- Không ghi hạn chót xác nhận → đến hôm họp không biết ai đến.
- Gửi mail mời < 3 ngày trước họp → khách Nhật chưa kịp đồng bộ lịch nội bộ.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 招待メール | しょうたいメール | CHIÊU ĐÃI | Email mời |
| ご案内申し上げます | ごあんないもうしあげます | ÁN NỘI | Xin trân trọng thông báo |
| 出欠 | しゅっけつ | XUẤT KHUYẾT | Tham dự / vắng |
| 返信期限 | へんしんきげん | PHẢN TÍN KỲ HẠN | Hạn chót phản hồi |
| 〜までに | までに | — | Trước thời điểm... |
| 開催 | かいさい | KHAI THÔI | Tổ chức (họp/sự kiện) |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000003, 800000004, NULL, 'markdown_book', 'Rule 03 — Đặt phòng + Chuẩn bị hậu cần / 会議室予約・設備確認', '# Rule 03 — Đặt phòng + Chuẩn bị hậu cần / 会議室予約・設備確認
> **Luận điểm.** Phòng họp thiếu projector / dây HDMI / mạng / nước = 5 phút đầu tan biến vì loay hoay. Trước họp 1 ngày phải có **danh sách kiểm tra 7 mục**: phòng đủ chỗ, projector test OK, HDMI/USB-C, mật khẩu Wi-Fi, bảng trắng + bút, nước/茶, bảng tên chỗ ngồi.
>
> 会議室予約と設備確認は前日までに完了。チェックリスト7項目：①席数 ②プロジェクター ③ケーブル ④Wi-Fi ⑤ホワイトボード ⑥お茶・お水 ⑦ネームプレート。
>
> **Liên quan:** Rule 04 (chuẩn bị họp trực tuyến), Rule 06 (đến sớm 5 phút), Rule 12 (giới thiệu出席者).

---

## Bối cảnh / 場面
Em Linh (mới gia nhập, được Dũng mentor) được giao đặt phòng + kiểm tra thiết bị cho buổi họp với 白鷗 vào thứ Ba. Linh báo Dũng "đã đặt phòng rồi" — Dũng kiểm tra lại.

---

## Hội thoại XẤU — chỉ đặt phòng, không kiểm tra thiết bị
*当日朝、部屋に入って*

| Vai | Câu |
|---------|-----|
| **リン** | 「ズン<ruby>先輩<rt>せんぱい</rt></ruby>、火曜の<ruby>会議室<rt>かいぎしつ</rt></ruby>、3階の会議室Aを<ruby>押<rt>お</rt></ruby>さえました。」 <br/>*Anh Dũng, em đã giữ phòng họp thứ Ba — phòng A tầng 3 ạ.* |
| **ズン** | 「OK、<ruby>設備<rt>せつび</rt></ruby>は確認した？プロジェクター、ケーブル、Wi-Fi…」 <br/>*OK, em kiểm tra thiết bị chưa? Máy chiếu, cáp, Wi-Fi...* |
| **リン** | 「あっ、部屋を<ruby>予約<rt>よやく</rt></ruby>しただけで…プロジェクターがあるかは…」 <br/>*À... em mới chỉ đặt phòng thôi ạ... có projector hay không thì em chưa...* |
| **ズン** | 「HDMIケーブルがない。リンさん、<ruby>急<rt>いそ</rt></ruby>ぎ<ruby>総務<rt>そうむ</rt></ruby>に<ruby>借<rt>か</rt></ruby>りに行って！<ruby>松本<rt>まつもと</rt></ruby>様あと10分で来る。」 <br/>*Không có cáp HDMI. Linh, em chạy xuống văn phòng tổng vụ mượn ngay! Anh Matsumoto 10 phút nữa tới.* |

**Vì sao xấu:** "Đặt phòng" ≠ "Chuẩn bị xong cho buổi họp". Nhân viên trẻ thường chỉ làm 1 bước rồi báo xong. Đến hôm họp khách Nhật vào → phải chạy đi tìm cáp = lỗi mất mặt nghiêm trọng với khách.

---

## Hội thoại TỐT — danh sách kiểm tra 7 mục đầy đủ
| Vai | Câu |
|---------|-----|
| **リン** | 「ズン先輩、火曜の会議室Aを予約し、設備チェックリストも<ruby>完了<rt>かんりょう</rt></ruby>しました【1】。」 <br/>*Anh Dũng, em đã đặt phòng họp A thứ Ba và xong cả danh sách kiểm tra thiết bị ạ.* |
| **ズン** | 「ありがとう。プロジェクター・HDMI・Wi-Fiは？」 <br/>*Cảm ơn em. Máy chiếu, HDMI, Wi-Fi thì sao?* |
| **リン** | 「プロジェクターは<ruby>昨日<rt>きのう</rt></ruby>テスト<ruby>済<rt>ず</rt></ruby>み、HDMIとUSB-C<ruby>両方<rt>りょうほう</rt></ruby><ruby>備品<rt>びひん</rt></ruby>あり、Wi-Fi パスワードはネームプレートに<ruby>記載<rt>きさい</rt></ruby>しました。お茶とお水も<ruby>人数分<rt>にんずうぶん</rt></ruby><ruby>用意<rt>ようい</rt></ruby>しております【2】。」 <br/>*Máy chiếu hôm qua kiểm tra rồi ạ, HDMI và USB-C có sẵn cả hai loại, mật khẩu Wi-Fi em viết lên bảng tên. Trà với nước em chuẩn bị đủ số người ạ.* |
| **ズン** | 「<ruby>完璧<rt>かんぺき</rt></ruby>。ネームプレートは<ruby>席順<rt>せきじゅん</rt></ruby>どおり<ruby>配置<rt>はいち</rt></ruby>してね。当日は10分前に<ruby>最終<rt>さいしゅう</rt></ruby>チェックしよう。」 <br/>*Hoàn hảo. Bảng tên em xếp đúng thứ tự chỗ ngồi nhé. Hôm họp mình kiểm tra lại lần cuối 10 phút trước.* |

 **Ghi chú:**
- 【1】**「設備チェックリスト」** — không chỉ "予約しました" mà là "予約 + danh sách kiểm tra hoàn thành". Phân biệt rõ 2 bước.
- 【2】**「人数分」** = "đủ số người". Cụm chuẩn khi báo cáo về số lượng nước/tài liệu/ghế. Native dùng nhiều.

---

## Cụm từ mẫu
> **「予約 ≠ <ruby>準備<rt>じゅんび</rt></ruby>完了。チェックリストが完了して<ruby>初<rt>はじ</rt></ruby>めて『準備完了』。」**
>
> *Đặt phòng không bằng chuẩn bị xong. Danh sách kiểm tra tick hết mới là "chuẩn bị xong".*

---

## Danh sách Kiểm tra Chuẩn bị Phòng Họp
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
- "予約しました" mà không kiểm tra cáp / máy chiếu → 90% bị thiếu HDMI hôm họp.
- Mật khẩu Wi-Fi viết trên giấy ghim → khách Nhật ngại hỏi → ngồi không có mạng.
- Không có bảng tên → khách lúng túng chỗ ngồi (sách 07 sẽ chi tiết).
- Quên 延長コード → laptop hết pin giữa họp.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 会議室 | かいぎしつ | HỘI NGHỊ THẤT | Phòng họp |
| 予約 | よやく | DỰ ƯỚC | Đặt trước |
| 設備 | せつび | THIẾT BỊ | Trang thiết bị |
| プロジェクター | ぷろじぇくたー | — | Máy chiếu |
| ネームプレート | ねーむぷれーと | — | Bảng tên / chỗ ngồi |
| 人数分 | にんずうぶん | NHÂN SỐ PHẦN | Đủ số người |
| 押さえる | おさえる | — | Giữ chỗ / đặt trước |
| 備品 | びひん | BỊ PHẨM | Đồ dùng văn phòng |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000004, 800000004, NULL, 'markdown_book', 'Rule 04 — Thiết lập video call (Zoom/Teams) / オンライン会議のセットアップ', '# Rule 04 — Thiết lập video call (Zoom/Teams) / オンライン会議のセットアップ
> **Luận điểm.** Họp trực tuyến thất bại thường ở 5 điểm: (1) link sai/hết hạn, (2) âm thanh không nghe, (3) chia sẻ màn hình không thấy, (4) nền hình lộ thông tin nội bộ, (5) ghi hình chưa xin phép. Mỗi mục kiểm tra trước họp 30 phút.
>
> オンライン会議のチェック5項目：①リンク有効性 ②音声 ③画面共有 ④背景 ⑤録画許可。30分前にテスト必須。
>
> **Liên quan:** Rule 03 (thiết lập phòng họp trực tiếp), Rule 33 (bật/tắt mic giữa họp), Rule 35 (rớt mạng), Rule 36 (画面共有 — chia sẻ màn hình).

---

## Bối cảnh / 場面
Buổi họp với 白鷗 chuyển sang Zoom vì 大垣営業部長 đi công tác Osaka. Em Hải (phụ trách hệ thống) phụ Dũng thiết lập. Hải giỏi kỹ thuật nhưng chưa quen nhịp làm việc kiểu Nhật nên Dũng nhắc thêm.

---

## Hội thoại XẤU — không kiểm tra trước
*họp bắt đầu 1 phút trước · panic · チャットで · 慌てて新リンク発行 → 5分遅刻スタート*

| Vai | Câu |
|---------|-----|
| **ハイ** | 「ズン、Zoomリンクこれでいいよね？<ruby>昨日<rt>きのう</rt></ruby>のリンクそのまま<ruby>使<rt>つか</rt></ruby>ったけど。」 <br/>*Dũng, link Zoom dùng cái này nhé? Anh dùng lại link hôm qua đấy.* |
| **ズン** | 「<ruby>待<rt>ま</rt></ruby>って、そのリンク 24h で expire するやつじゃない？<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>もう<ruby>入<rt>はい</rt></ruby>れない<ruby>可能性<rt>かのうせい</rt></ruby>ある。」 <br/>*Khoan đã, link đó loại 24h hết hạn đúng không? Anh Matsumoto có khi không vào được rồi.* |
| **松本** | 「ズンさん、リンクが invalid と<ruby>出<rt>で</rt></ruby>ます。<ruby>新<rt>あたら</rt></ruby>しいリンクをお<ruby>送<rt>おく</rt></ruby>りいただけますか？」 <br/>*Dũng, link báo invalid ạ. Em gửi giúp anh link mới nhé?* |
| **ズン** | 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、ただ<ruby>今<rt>いま</rt></ruby><ruby>新<rt>あたら</rt></ruby>しいリンクをお<ruby>送<rt>おく</rt></ruby>りします…」 <br/>*Em xin lỗi anh ạ, em gửi link mới ngay đây ạ.* |

**Vì sao xấu:** Link Zoom có tùy chọn hết hạn / dùng một lần mà Hải không kiểm tra. Không kiểm tra trước = phát hiện lỗi đúng lúc khách đang chờ. Trễ 5 phút mở đầu = mất ấn tượng nghề nghiệp.

---

## Hội thoại TỐT — kiểm tra 30 phút trước
*30分前、ズンと内部テスト*

| Vai | Câu |
|---------|-----|
| **ハイ** | 「ズン、Zoom<ruby>新<rt>しん</rt></ruby>リンク<ruby>発行<rt>はっこう</rt></ruby><ruby>済<rt>ず</rt></ruby>み、<ruby>有効期限<rt>ゆうこうきげん</rt></ruby>は<ruby>明日<rt>あした</rt></ruby>まで。<ruby>音声<rt>おんせい</rt></ruby>と<ruby>画面共有<rt>がめんきょうゆう</rt></ruby>もテスト OK です【1】。」 <br/>*Dũng, anh phát link Zoom mới rồi, hạn đến ngày mai. Âm thanh với chia sẻ màn hình cũng kiểm tra OK.* |
| **ズン** | 「サンキュ。<ruby>背景<rt>はいけい</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>ロゴの blur <ruby>設定<rt>せってい</rt></ruby>にして。<ruby>録画<rt>ろくが</rt></ruby>は<ruby>冒頭<rt>ぼうとう</rt></ruby>で<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>にご<ruby>確認<rt>かくにん</rt></ruby>しよう【2】。」 <br/>*Cảm ơn anh. Nền hình đặt làm mờ có logo công ty nhé. Ghi hình thì đầu họp mình xin phép anh Matsumoto.* |
| **ハイ** | 「<ruby>了解<rt>りょうかい</rt></ruby>。リンクを<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>再送<rt>さいそう</rt></ruby>し、Wi-Fi <ruby>不安定<rt>ふあんてい</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>電話番号<rt>でんわばんごう</rt></ruby>も<ruby>併記<rt>へいき</rt></ruby>しました。」 <br/>*OK em. Anh gửi lại link cho Matsumoto rồi, có ghi kèm số điện thoại phòng khi Wi-Fi yếu nữa.* |
| **ズン** | 「<ruby>完璧<rt>かんぺき</rt></ruby>。15<ruby>分前<rt>ふんまえ</rt></ruby>に<ruby>再<rt>さい</rt></ruby>ログインして<ruby>待機<rt>たいき</rt></ruby>しよう。」 <br/>*Hoàn hảo. 15 phút trước họp mình re-login đứng chờ luôn nhé.* |

 **Ghi chú:**
- 【1】**「テストOK」** — báo cáo kỹ thuật ngắn gọn, người Nhật bản xứ hay dùng. Không cần 「テストが完了しました」 dài dòng giữa nhóm nội bộ.
- 【2】**「録画は冒頭でご確認しよう」** — *Bắt buộc* xin phép ghi hình đầu họp với khách Nhật. Chưa xin = vi phạm 個人情報保護 (bảo vệ thông tin cá nhân). Nền hình không nên lộ bảng nội bộ.

---

## Cụm từ mẫu
> **「リンク・音声・画面・背景・録画 — 5点を30分前にテスト。」**
>
> *Link, âm thanh, chia sẻ màn hình, nền hình, ghi hình — kiểm tra đủ 5 điểm trước họp 30 phút.*

---

## Danh sách Kiểm tra Thiết lập Họp Trực tuyến
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
- Dùng lại link cũ → hết hạn / lọt bộ lọc spam / sai phòng họp.
- Nền hình lộ bảng trắng nội bộ / đường dẫn file → rò rỉ thông tin khách hàng khác.
- Ghi hình không xin phép → khách Nhật sẽ tỏ thái độ ngay lập tức.
- Mic mặc định để bật → tạp âm lúc khách đang nói.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| オンライン会議 | おんらいんかいぎ | HỘI NGHỊ | Họp trực tuyến |
| リンク | りんく | — | Đường link (URL) |
| 画面共有 | がめんきょうゆう | HỌA DIỆN CỘNG HỮU | Chia sẻ màn hình |
| 録画 | ろくが | LỤC HỌA | Ghi hình |
| 音声 | おんせい | ÂM THANH | Âm thanh |
| 背景 | はいけい | BỐI CẢNH | Nền hình |
| 待機室 | たいきしつ | ĐÃI CƠ THẤT | Phòng chờ vào họp |
| 有効期限 | ゆうこうきげん | HỮU HIỆU KỲ HẠN | Hạn dùng |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000005, 800000004, NULL, 'markdown_book', 'Rule 05 — Gửi tài liệu trước 24h / 資料の事前配布', '# Rule 05 — Gửi tài liệu trước 24h / 資料の事前配布
> **Luận điểm.** Tài liệu họp gửi đúng lúc khách bước vào phòng = khách Nhật không kịp đọc trước = họp trở thành **phiên đọc tài liệu**, không phải họp ra quyết định. Quy chuẩn: **24h trước**, định dạng **PDF (file size < 5MB)**, ghi rõ **phiên bản (v1.0/v1.1)**, kèm **dòng "ご一読のうえご参加ください"**.
>
> 会議資料は24時間前にPDFで送付。バージョン番号必須。「ご一読のうえご参加ください」と添える。
>
> **Liên quan:** Rule 01 (chương trình họp), Rule 02 (mời họp), Rule 13 (giới thiệu chương trình họp khi mở họp).

---

## Bối cảnh / 場面
Họp với 白鷗 chiều thứ Ba 15:00. Em Dũng đang viết draft 資料 (slides + Excel). Anh Tuấn (tech lead) yêu cầu Dũng phải xong trước thứ Hai 15:00 để gửi đi.

---

## Hội thoại XẤU — gửi tài liệu sát giờ
*火曜 14:30、会議30分前 · reply 5分後 · 15:00 開始*

| Vai | Câu |
|---------|-----|
| **ズン** | 「松本様、本日の会議<ruby>資料<rt>しりょう</rt></ruby>をお送りいたします。」 <br/>*Anh Matsumoto, em gửi anh tài liệu cho buổi họp hôm nay ạ.* |
| **松本** | 「ズンさん、ありがとうございます。ただ、これから読むのは時間が<ruby>足<rt>た</rt></ruby>りないので、会議内で説明していただけますか？」 <br/>*Cảm ơn em. Nhưng từ giờ tới họp đọc không kịp đâu, em giải thích trực tiếp trong buổi họp giúp anh nhé.* |
| **ズン** | *(資料を一枚一枚スライドし、読み上げる…質疑なし、ただの<ruby>朗読<rt>ろうどく</rt></ruby>会議に)* <br/>*(Lật từng trang tài liệu rồi đọc to lên… không có hỏi đáp, buổi họp thành buổi đọc bài.)* |
| **ハー (CTO、終了後)** | 「あの会議、ほぼ資料説明だったね。<ruby>意思決定<rt>いしけってい</rt></ruby>の<ruby>議題<rt>ぎだい</rt></ruby>に20分しか取れなかった。」 <br/>*Cái buổi họp đấy gần như là giải thích tài liệu ấy nhỉ. Phần ra quyết định chỉ còn 20 phút.* |

**Vì sao xấu:** Khách Nhật cần thời gian đọc trước để chuẩn bị câu hỏi. Gửi sát giờ = mất giai đoạn 検討 (xem xét) → buổi họp biến thành "đọc tài liệu" thay vì bàn bạc ra quyết định.

---

## Hội thoại TỐT — gửi 24h trước, version rõ
*月曜 14:00、会議25時間前 · reply 月曜夕方 · 火曜朝、軽微な修正後*

| Vai | Câu |
|---------|-----|
| **ズン** | 「松本様、明日の<ruby>月例<rt>げつれい</rt></ruby>会議の<ruby>資料<rt>しりょう</rt></ruby> v1.0 をお送りいたします【1】。ご<ruby>一読<rt>いちどく</rt></ruby>のうえご参加いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです【2】。」 <br/>*Anh Matsumoto, em gửi anh tài liệu v1.0 cho buổi họp định kỳ ngày mai ạ. Em mong anh đọc qua một lượt rồi tham dự ạ.* |
| **松本** | 「ズンさん、ありがとうございます。Phase 2 <ruby>進捗<rt>しんちょく</rt></ruby>の8ページ目について明日<ruby>確認<rt>かくにん</rt></ruby>させてください。」 <br/>*Cảm ơn em. Phần tiến độ Phase 2 trang 8, mai để anh xác nhận với em nhé.* |
| **ズン** | 「松本様、<ruby>修正版<rt>しゅうせいばん</rt></ruby> v1.1 をお送りいたします。8ページ目の<ruby>数値<rt>すうち</rt></ruby>を<ruby>最新化<rt>さいしんか</rt></ruby>いたしました。<ruby>差分<rt>さぶん</rt></ruby>はハイライト表示してあります【3】。」 <br/>*Anh Matsumoto, em gửi anh bản chỉnh sửa v1.1 ạ. Em đã cập nhật con số trang 8. Phần thay đổi em có highlight ạ.* |
| **松本** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。差分<ruby>明確<rt>めいかく</rt></ruby>で助かります。」 <br/>*Anh rõ rồi. Em ghi diff rõ thế này tiện lắm.* |

 **Ghi chú:**
- 【1】**「v1.0」「v1.1」** — cách ghi số phiên bản. Khách Nhật doanh nghiệp lớn đặc biệt thích vì dễ truy vết thay đổi.
- 【2】**「ご一読のうえ」** = "sau khi đọc qua". Cụm chuẩn để đề nghị khách đọc trước mà không ra lệnh.
- 【3】**「差分はハイライト表示」** — khi gửi bản version mới, phải highlight chỗ thay đổi. Không bắt khách đọc lại từ đầu.

---

## Cụm từ mẫu
> **「24時間前・PDF・バージョン番号・<ruby>差分<rt>さぶん</rt></ruby><ruby>明示<rt>めいじ</rt></ruby> — 4点で<ruby>資料<rt>しりょう</rt></ruby><ruby>配布<rt>はいふ</rt></ruby>。」**
>
> *24h trước, PDF, có phiên bản, đánh dấu phần thay đổi — 4 điểm chuẩn gửi tài liệu trước họp.*

---

## Tránh
- Gửi tài liệu sáng hôm họp → khách không kịp đọc trước.
- File Word/PowerPoint cho phép chỉnh sửa → khách lo bị sửa nhầm. Dùng PDF.
- Không có số phiên bản → khách bị rối giữa các bản gửi qua mail.
- File > 10MB → máy chủ mail của khách trả về lỗi. Dùng link Drive nếu file nặng.
- Sửa lại bản v1.0 mà không đánh dấu phần thay đổi → khách phải đọc lại từ đầu = phí thời gian.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 資料 | しりょう | TƯ LIỆU | Tài liệu |
| 事前配布 | じぜんはいふ | SỰ TIỀN PHỐI BỐ | Phát trước |
| 一読 | いちどく | NHẤT ĐỌC | Đọc qua một lượt |
| バージョン / 版 | ばーじょん / はん | — / BẢN | Phiên bản |
| 差分 | さぶん | SAI PHÂN | Phần thay đổi |
| ハイライト | はいらいと | — | Đánh dấu nổi bật |
| 修正版 | しゅうせいばん | TU CHÍNH BẢN | Bản chỉnh sửa |
| 最新化 | さいしんか | TỐI TÂN HÓA | Cập nhật mới nhất |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000006, 800000004, NULL, 'markdown_book', 'Rule 06 — Tới sớm 5 phút (オン・タイム文化) / 5分前到着の文化', '# Rule 06 — Tới sớm 5 phút (オン・タイム文化) / 5分前到着の文化
> **Luận điểm.** Văn hóa Nhật: **「5分前行動」**. Đến đúng giờ = trễ. Đến trước 5 phút = đúng giờ chuẩn. Trễ dù 1 phút = mất uy tín. Áp dụng cả với họp trực tiếp (vào phòng) và họp trực tuyến (đăng nhập Zoom).
>
> 日本の業務文化「5分前行動」：定刻到着＝遅刻、5分前＝定時。1分でも遅れると信頼を失う。オフライン入室・オンラインログイン両方に適用。
>
> **Liên quan:** Rule 03 (chuẩn bị họp trực tiếp), Rule 04 (chuẩn bị họp trực tuyến), Rule 17 (đến muộn).
> Sách 02 Rule 18 (gọi điện đúng giờ).

---

## Bối cảnh / 場面
Em Linh — nhân viên mới, lần đầu tham dự họp với khách 白鷗. Thường có thói quen "tới đúng giờ" theo kiểu Việt Nam. Dũng nhắc trước.

---

## Hội thoại XẤU — đến đúng giờ = trễ
*15:00 ちょうどに会議室へ向かう · 慌てて · 15:02 入室 · 笑顔だが…*

| Vai | Câu |
|---------|-----|
| **リン** | 「ズン<ruby>先輩<rt>せんぱい</rt></ruby>、15時ちょうどなので<ruby>会議室<rt>かいぎしつ</rt></ruby>向かいます！」 <br/>*Anh Dũng, đúng 15h rồi, em đi qua phòng họp đây ạ!* |
| **ズン** | 「もう<ruby>松本<rt>まつもと</rt></ruby>様は5分前から待っているよ。今 15:00 は<ruby>遅刻<rt>ちこく</rt></ruby>と同じ。」 <br/>*Anh Matsumoto đợi từ 5 phút trước rồi đấy. Bây giờ 15h vào là tính như trễ luôn.* |
| **リン** | 「お待たせしました…遅れて<ruby>申<rt>もう</rt></ruby>し訳ございません。」 <br/>*Để anh đợi rồi ạ... Em xin lỗi vì đến muộn ạ.* |
| **松本** | 「いえいえ、大丈夫ですよ。」 *(<ruby>内心<rt>ないしん</rt></ruby>：<ruby>定刻<rt>ていこく</rt></ruby> = ベトナム流かな)* <br/>*Không sao, không sao đâu. (Trong bụng: Đúng giờ kiểu Việt Nam chăng?)* |

**Vì sao xấu:** "đúng giờ" theo Nhật = **5 phút trước**. 15:00 đến cửa = thực tế ngồi xuống 15:02 = trễ. Khách không nói thẳng nhưng ấn tượng để lại là: "không hiểu văn hóa Nhật". Lặp lại 2-3 lần là mất tin cậy.

---

## Hội thoại TỐT — 5 phút trước, name plate sẵn
*14:50 入室、設備最終チェック · 14:55、松本様の到着 · 15:00、定刻スタート*

| Vai | Câu |
|---------|-----|
| **リン** | 「ズン先輩、14:50 です。<ruby>設備<rt>せつび</rt></ruby>、ネームプレート、お茶、すべて<ruby>完了<rt>かんりょう</rt></ruby>しています【1】。」 <br/>*Anh Dũng, 14:50 rồi ạ. Thiết bị, name plate, trà nước — tất cả xong hết rồi ạ.* |
| **ズン** | 「松本様、お<ruby>早<rt>はや</rt></ruby>めのお<ruby>越<rt>こ</rt></ruby>しありがとうございます。お<ruby>席<rt>せき</rt></ruby>にご<ruby>案内<rt>あんない</rt></ruby>いたします。」 <br/>*Anh Matsumoto, cảm ơn anh đến sớm ạ. Em mời anh vào chỗ ngồi ạ.* |
| **松本** | 「お<ruby>気遣<rt>きづか</rt></ruby>いありがとうございます。本日もよろしくお願いいたします。」 <br/>*Cảm ơn em chu đáo. Hôm nay phiền em nhé.* |
| **リン** | 「<ruby>皆様<rt>みなさま</rt></ruby>お<ruby>揃<rt>そろ</rt></ruby>いでいらっしゃいますので、これより4月度<ruby>月例<rt>げつれい</rt></ruby>会議を<ruby>開始<rt>かいし</rt></ruby>いたします【2】。」 <br/>*Mọi người đã đông đủ rồi, em xin phép bắt đầu buổi họp định kỳ tháng 4 ạ.* |

 **Ghi chú:**
- 【1】**「14:50 です。設備、ネームプレート、お茶、すべて完了しています」** — báo cáo thời điểm + tình trạng, đúng kiểu người Nhật. Có mốc giờ + danh sách hoàn tất.
- 【2】**「皆様お揃いでいらっしゃいますので」** — câu mở chuẩn khi đủ người. 「お揃い」(おそろい) = "đông đủ". Đi với 「いらっしゃる」 (尊敬語).

---

## Cụm từ mẫu
> **「定刻到着 = 遅刻。5分前 = 定時。10分前 = 余裕。」**
>
> *Đến đúng giờ = trễ. Trước 5 phút = đúng giờ chuẩn. Trước 10 phút = có dư.*

---

## Tránh
- "Đúng 15:00 ra khỏi bàn làm việc" → đến phòng họp 15:02 = trễ.
- Họp trực tuyến: 14:59 mới click vào Zoom → tải mất 30s = vào lúc 15:00:30 = trễ.
- "Đường tắc" / "thang máy chậm" — không phải lý do chấp nhận được. Phải tính dư 10 phút.
- Đến trước 30 phút → cũng không tốt: phòng có khi đang chuẩn bị, gây phiền.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 5分前行動 | ごふんまえこうどう | PHÂN TIỀN HÀNH ĐỘNG | "Quy tắc 5 phút trước" |
| 定刻 | ていこく | ĐỊNH KHẮC | Đúng giờ (giờ định) |
| 遅刻 | ちこく | TRÌ KHẮC | Trễ giờ |
| お早めのお越し | おはやめのおこし | — | "(Cảm ơn) anh/chị đến sớm" |
| お揃い | おそろい | — | Đông đủ |
| 余裕 | よゆう | DƯ DỤ | Có dư / thong thả |
| 開始する | かいしする | KHAI THỈ | Bắt đầu |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000007, 800000004, NULL, 'markdown_book', 'Rule 07 — Thống nhất nội bộ trước họp / 事前すり合わせ', '# Rule 07 — Thống nhất nội bộ trước họp / 事前すり合わせ
> **Luận điểm.** Trước họp khách 30 phút phải có **「事前すり合わせ」** (thống nhất nội bộ trước) trong nhóm mình: (1) ai nói cái gì (役割分担), (2) chỗ có thể mâu thuẫn ý kiến nội bộ → thống nhất trước, (3) ranh giới không nhượng (giá / phạm vi công việc).
>
> 客との会議の30分前に内部すり合わせ：①誰が何を話すか ②内部で意見が割れる論点を先に統一 ③譲れない条件（価格・スコープ）の確認。
>
> **Liên quan:** Rule 08 (Plan B), Rule 14 (phân vai trong họp), Rule 25 (持ち帰り).

---

## Bối cảnh / 場面
Họp đàm phán phase 2 với 大垣営業部長 + 松本PM. Chị Hương (Phó phòng), Dũng (kinh doanh), anh Tuấn (tech lead) sẽ ngồi cùng. Trước khi vào, chị Hương triệu tập 30 phút すり合わせ.

---

## Hội thoại XẤU — không すり合わせ trước, mâu thuẫn trong họp
*会議内、急に · 反射的に · ズンを見て驚く · 冷たく*

| Vai | Câu |
|---------|-----|
| **大垣** | 「Phase 2 の<ruby>納期<rt>のうき</rt></ruby>、5月末 → 5月15日に<ruby>前倒<rt>まえだお</rt></ruby>しできますか？」 <br/>*Deadline Phase 2 — đẩy từ cuối tháng 5 lên 15/5 được không?* |
| **ズン** | 「がんばります、<ruby>何<rt>なん</rt></ruby>とか<ruby>調整<rt>ちょうせい</rt></ruby>いたします。」 <br/>*Em sẽ cố gắng ạ, em sẽ thu xếp ạ.* |
| **トゥアン** | 「いや待って…<ruby>技術的<rt>ぎじゅつてき</rt></ruby>に5月15日は<ruby>厳<rt>きび</rt></ruby>しいです。テストフェーズで2週間<ruby>必要<rt>ひつよう</rt></ruby>で…」 <br/>*Khoan đã... mặt kỹ thuật 15/5 khó lắm. Phase test cần 2 tuần...* |
| **大垣** | 「お二人で<ruby>意見<rt>いけん</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うようですね。<ruby>社内<rt>しゃない</rt></ruby>で先に<ruby>話<rt>はな</rt></ruby>し合っていただいたほうが…」 <br/>*Hai bạn ý kiến khác nhau nhỉ. Nội bộ nên thống nhất trước thì hơn...* |

**Vì sao xấu:** Nhân viên kinh doanh phản xạ "がんばります" trong khi kỹ thuật chưa đồng ý = nhóm chưa thống nhất nội bộ. Khách nhìn thấy mâu thuẫn = mất tin tưởng. Phải giải quyết trong nội bộ TRƯỚC khi vào họp.

---

## Hội thoại TỐT — 30 phút すり合わせ trước
*30分前、社内会議室*

| Vai | Câu |
|---------|-----|
| **フオン** | 「<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>納期<rt>のうき</rt></ruby><ruby>前倒<rt>まえだお</rt></ruby>しの話が出る<ruby>可能性<rt>かのうせい</rt></ruby>が高い。トゥアン、<ruby>技術的<rt>ぎじゅつてき</rt></ruby>に5月20日が<ruby>現実的<rt>げんじつてき</rt></ruby>なライン？【1】」 <br/>*Hôm nay khả năng cao bên kia sẽ đề nghị đẩy hạn chót. Tuấn, mặt kỹ thuật 20/5 có phải lằn ranh thực tế?* |
| **トゥアン** | 「はい、5月20日まで<ruby>前倒<rt>まえだお</rt></ruby>し<ruby>可能<rt>かのう</rt></ruby>。それより前は<ruby>品質<rt>ひんしつ</rt></ruby>リスクあります。」 <br/>*Vâng, đẩy lên 20/5 được. Sớm hơn nữa thì có rủi ro chất lượng.* |
| **フオン** | 「<ruby>了解<rt>りょうかい</rt></ruby>。ズン、もし<ruby>大垣<rt>おおがき</rt></ruby>様が『5月15日』と言っても<ruby>即答<rt>そくとう</rt></ruby>せず、『5月20日であればコミットできます』と返してね【2】。私が<ruby>必要<rt>ひつよう</rt></ruby>に応じてフォローする。」 <br/>*OK. Dũng, nếu anh Ōgaki nói ''15/5'' thì đừng trả lời ngay, em đáp ''nếu 20/5 thì em commit được'' nhé. Khi cần chị sẽ follow thêm.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。Plan B として『5月15日<ruby>要望<rt>ようぼう</rt></ruby>なら<ruby>追加<rt>ついか</rt></ruby>リソース3人分の<ruby>見積<rt>みつ</rt></ruby>もり』も<ruby>用意<rt>ようい</rt></ruby>しておきます。」 <br/>*Em rõ rồi ạ. Phương án dự phòng em chuẩn bị sẵn báo giá 3 người nhân lực bổ sung trong trường hợp họ muốn 15/5 ạ.* |

 **Ghi chú:**
- 【1】**「現実的なライン」** = "lằn ranh thực tế". Cụm tech lead / quản lý dùng nhiều khi thống nhất trước họp.
- 【2】**「即答せず」** = "đừng trả lời ngay". Chỉ thị quan trọng cho nhân viên cấp dưới khi vào họp đàm phán.

---

## Cụm từ mẫu
> **「客の前で社内意見が割れる = 信頼喪失。すり合わせは会議より前。」**
>
> *Trước mặt khách mà nội bộ conflict = mất uy tín. すり合わせ phải xong TRƯỚC họp.*

---

## Tránh
- Nhân viên kinh doanh phản xạ "がんばります" mà chưa hỏi kỹ thuật → kỹ thuật lập tức bị đặt vào tình huống khó.
- Không xác định ranh giới không nhượng về giá / phạm vi công việc → đàm phán xong mới phát hiện vượt giới hạn.
- すり合わせ làm 5 phút trước họp ở hành lang → không đủ thời gian thống nhất.
- Nhân viên trẻ nói nhiều hơn cấp trên trong すり合わせ → cấp trên chưa kịp định chiến lược.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 事前すり合わせ | じぜんすりあわせ | SỰ TIỀN | Thống nhất nội bộ trước họp |
| 役割分担 | やくわりぶんたん | DỊCH CÁT PHÂN ĐẢM | Phân vai |
| 前倒し | まえだおし | TIỀN ĐÃO | Đẩy lên sớm hơn |
| 即答 | そくとう | TỨC ĐÁP | Trả lời ngay |
| 現実的 | げんじつてき | HIỆN THỰC ĐÍCH | Thực tế / khả thi |
| 譲れない | ゆずれない | — | Không nhượng được |
| コミット | こみっと | — | Cam kết |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000008, 800000004, NULL, 'markdown_book', 'Rule 08 — Chuẩn bị Plan B + phản biện / 想定問答集の準備', '# Rule 08 — Chuẩn bị Plan B + phản biện / 想定問答集の準備
> **Luận điểm.** Khách Nhật giỏi đặt **「想定外の質問」** (câu hỏi bất ngờ). Trước họp phải có **想定問答集 (danh sách câu hỏi dự đoán)** liệt kê 3-5 câu khách dễ hỏi + kịch bản trả lời sẵn. Thêm nữa: 1-2 câu hỏi khó nhất → cần **phương án dự phòng**.
>
> 客が聞きそうな質問3〜5件をリスト化し、回答スクリプトを準備。一番難しい質問には方案準備も。
>
> **Liên quan:** Rule 07 (すり合わせ), Rule 25 (持ち帰り), Rule 28 (xin thêm data), Rule 29 (deadlock).

---

## Bối cảnh / 場面
Sáng thứ Ba, 1 tiếng trước họp đàm phán phase 2. Em Dũng đã có chương trình họp + すり合わせ với chị Hương. Anh Hà CTO ghé qua, hỏi "想定問答集 đâu?".

---

## Hội thoại XẤU — không có 想定問答集
*慌てて*

| Vai | Câu |
|---------|-----|
| **ハー (CTO)** | 「ズン、本日の<ruby>想定問答集<rt>そうていもんどうしゅう</rt></ruby>はある？」 <br/>*Dũng, danh sách câu hỏi dự đoán cho buổi hôm nay có chưa em?* |
| **ズン** | 「あ…アジェンダと<ruby>資料<rt>しりょう</rt></ruby>は<ruby>揃<rt>そろ</rt></ruby>えましたが、想定問答集はまだ…」 <br/>*À... chương trình họp với tài liệu em xong rồi nhưng danh sách câu hỏi dự đoán thì chưa ạ...* |
| **ハー** | 「<ruby>客<rt>きゃく</rt></ruby>は『<ruby>価格<rt>かかく</rt></ruby>を10%<ruby>下<rt>さ</rt></ruby>げられないか』『<ruby>納期<rt>のうき</rt></ruby>を2<ruby>週間<rt>しゅうかん</rt></ruby><ruby>早<rt>はや</rt></ruby>められないか』『<ruby>他社<rt>たしゃ</rt></ruby><ruby>事例<rt>じれい</rt></ruby>は』を<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>くよ。<ruby>回答<rt>かいとう</rt></ruby><ruby>用意<rt>ようい</rt></ruby>してる？」 <br/>*Khách kiểu gì cũng hỏi ''giảm 10% giá được không'', ''rút hạn chót 2 tuần được không'', ''thực tế bên khác như thế nào''. Có chuẩn bị câu trả lời chưa?* |
| **ズン** | 「す、すみません、これから<ruby>準備<rt>じゅんび</rt></ruby>します…」 <br/>*Em... em xin lỗi anh, em chuẩn bị ngay đây ạ...* |

**Vì sao xấu:** Nhân viên trẻ thường nghĩ "chương trình họp + tài liệu đủ rồi". Nhưng khách Nhật giỏi đẩy câu hỏi ngoài chương trình. Không chuẩn bị = trong họp hoảng loạn + im lặng + 「持ち帰ります」.

---

## Hội thoại TỐT — Q&A list + Plan B sẵn
| Vai | Câu |
|---------|-----|
| **ハー (CTO)** | 「ズン、本日の想定問答集はある？」 <br/>*Dũng, danh sách câu hỏi dự đoán cho buổi hôm nay có chưa em?* |
| **ズン** | 「はい、想定質問5件と<ruby>回答案<rt>かいとうあん</rt></ruby>、それから<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しい『5月15日納期<ruby>前倒<rt>まえだお</rt></ruby>し』には Plan B として<ruby>追加<rt>ついか</rt></ruby>リソース3<ruby>人分<rt>にんぶん</rt></ruby>の<ruby>見積<rt>みつ</rt></ruby>もりも<ruby>用意済<rt>よういず</rt></ruby>みです【1】。」 <br/>*Vâng, em có 5 câu hỏi dự đoán + dự thảo trả lời, và câu khó nhất ''đẩy hạn chót lên 15/5'' em chuẩn bị phương án dự phòng là báo giá thêm 3 người nhân lực ạ.* |
| **ハー** | 「いいね。<ruby>価格<rt>かかく</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>の<ruby>質問<rt>しつもん</rt></ruby>、<ruby>想定<rt>そうてい</rt></ruby><ruby>回答<rt>かいとう</rt></ruby>は？」 <br/>*Tốt. Câu đàm phán giá, em định trả lời sao?* |
| **ズン** | 「『<ruby>現行<rt>げんこう</rt></ruby>価格はスコープに<ruby>最適化<rt>さいてきか</rt></ruby>されており、スコープ<ruby>縮小<rt>しゅくしょう</rt></ruby>なら<ruby>見直<rt>みなお</rt></ruby>し<ruby>可能<rt>かのう</rt></ruby>』とお<ruby>返<rt>かえ</rt></ruby>しします。<ruby>即<rt>そく</rt></ruby><ruby>値引<rt>ねび</rt></ruby>きには<ruby>応<rt>おう</rt></ruby>じない<ruby>方針<rt>ほうしん</rt></ruby>でフオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>と<ruby>統一済<rt>とういつず</rt></ruby>みです【2】。」 <br/>*Em sẽ trả lời ''giá hiện tại đã tối ưu theo scope, nếu giảm scope thì xem lại được''. Phương châm là không giảm giá ngay, em đã thống nhất với chị Hương ạ.* |

 **Ghi chú:**
- 【1】**「〜も用意済み」** — 「用意済み」 = "đã chuẩn bị xong". Cụm gọn của business JP. Cấp trên hỏi "có chưa?" → trả lời 「〜済みです」 là đẹp nhất.
- 【2】**「方針で統一済み」** = "đã thống nhất phương châm". Báo cáo cấp trên rằng "không phải chỉ tôi nghĩ vậy mà cả nhóm đã thống nhất".

---

## Cụm từ mẫu
> **「想定問答集なき会議 = 持ち帰り会議。」**
>
> *Họp mà không có danh sách câu hỏi dự đoán = họp xong xin "mang về" suy nghĩ.*

---

## Khung mẫu 想定問答集
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
- 想定問答集 chỉ trong đầu, không viết ra → vào họp lúng túng là quên.
- Chỉ chuẩn bị câu hỏi dễ → khách hỏi câu khó là 「持ち帰ります」.
- Phương án dự phòng cũng không có → "5月15日無理です" → đàm phán dừng.
- Trả lời chưa thống nhất với cấp trên → cấp trên phải bồi thêm = mất uy tín người phụ trách kinh doanh.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 想定問答集 | そうていもんどうしゅう | TƯỞNG ĐỊNH VẤN ĐÁP TẬP | Danh sách câu hỏi và trả lời dự đoán |
| 想定質問 | そうていしつもん | TƯỞNG ĐỊNH CHẤT VẤN | Câu hỏi dự đoán |
| 〜済み | ずみ | — | Đã xong |
| 値引き | ねびき | TRỊ DẪN | Giảm giá |
| 方針 | ほうしん | PHƯƠNG CHÂM | Phương châm |
| 見直し | みなおし | — | Xem xét lại |
| エスカレーション | えすかれーしょん | — | Leo thang báo cáo |
| 顕在化 | けんざいか | HIỂN TẠI HÓA | Hiện ra (rủi ro → thực tế) |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000009, 800000004, NULL, 'markdown_book', 'Rule 09 — Câu chào mở đầu chuẩn / 会議冒頭の第一声', '# Rule 09 — Câu chào mở đầu chuẩn / 会議冒頭の第一声
> **Luận điểm.** Câu đầu chủ trì phải có 3 yếu tố: (1) **cảm ơn vì đã đến** 「お忙しい中お集まりいただき」, (2) **giới thiệu mình** 「司会を務めさせていただく〇〇」, (3) **vào chương trình họp** 「早速ですが」. Thiếu 1 = cảm giác hụt hẫng.
>
> 会議冒頭の第一声3要素：①来場感謝 ②司会自己紹介 ③議事への移行。「本日はお忙しい中、お集まりいただきありがとうございます。」が定型。
>
> **Liên quan:** Rule 06 (đến đúng giờ), Rule 10 (giới thiệu khi có người mới), Rule 13 (giới thiệu chương trình họp), Rule 14 (phân vai).

---

## Bối cảnh / 場面
Buổi họp 4月度月例 với 白鷗 (松本PM, 大垣営業部長). Em Dũng được giao司会 (chủ trì). Đã 15:00, đủ người.

---

## Hội thoại XẤU — câu mở thiếu, vào nội dung luôn
*15:00 · 困惑 · 慌てて*

| Vai | Câu |
|---------|-----|
| **ズン** | 「では、Phase 2 <ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。」 <br/>*Vâng, mình bắt đầu từ báo cáo tiến độ Phase 2 nhé.* |
| **松本** | *(え、ご<ruby>挨拶<rt>あいさつ</rt></ruby>もなく？まだ<ruby>全員紹介<rt>ぜんいんしょうかい</rt></ruby>もしていないのに？)* <br/>*(Ơ, không có cả lời chào sao? Còn chưa giới thiệu hết mọi người mà?)* |
| **大垣** | 「ズンさん、まずは<ruby>皆様<rt>みなさま</rt></ruby>への<ruby>一言<rt>ひとこと</rt></ruby>があるかと…」 <br/>*Dũng à, đầu tiên nên có 1 câu chào mọi người đã chứ nhỉ...* |
| **ズン** | 「あ、すみません。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>集<rt>あつ</rt></ruby>まりいただきありがとうございます…」 <br/>*Ồ, em xin lỗi ạ. Cảm ơn quý anh chị đã đến hôm nay ạ...* |

**Vì sao xấu:** Bỏ qua câu mở chuẩn = bất lịch sự với khách (đặc biệt khách Nhật cấp cao). 「で、〜から始めます」 quá khô. Khách bị hụt hẫng ngay từ giây đầu.

---

## Hội thoại TỐT — 3 yếu tố đầy đủ
*15:00 ちょうど · うなずく*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>皆様<rt>みなさま</rt></ruby>、本日はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>お<ruby>集<rt>あつ</rt></ruby>まりいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます【1】。」 <br/>*Kính thưa quý anh chị, em xin chân thành cảm ơn quý anh chị đã dành thời gian đến tham dự hôm nay ạ.* |
| **ズン** | 「本日の<ruby>司会<rt>しかい</rt></ruby>を<ruby>務<rt>つと</rt></ruby>めさせていただきます、ティエンファットのズンでございます【2】。」 <br/>*Em là Dũng bên Thiên Phát, em xin phép làm chủ trì buổi họp hôm nay ạ.* |
| **ズン** | 「<ruby>早速<rt>さっそく</rt></ruby>ではございますが、本日のアジェンダに<ruby>沿<rt>そ</rt></ruby>って<ruby>進<rt>すす</rt></ruby>めさせていただきます【3】。」 <br/>*Em xin phép vào nội dung luôn, em sẽ tiến hành theo chương trình họp hôm nay ạ.* |
| **松本 / 大垣** | 「よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。」 <br/>*Phiền em nhé.* |

 **Ghi chú:**
- 【1】**「お忙しい中」「誠に」** — bộ đôi tăng cấp lễ phép. Không có 「お忙しい中」 → cảm thấy thiếu. 「誠に」 mạnh hơn 「本当に」.
- 【2】**「司会を務めさせていただきます」** — câu chuẩn người chủ trì. 「務める」 = đảm nhận. 「させていただく」 = formal hơn 「します」.
- 【3】**「早速ではございますが」** — chuyển tiếp lịch sự từ chào sang nội dung. Cụm chuẩn business JP.

---

## Cụm từ mẫu
> **「本日はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>お<ruby>集<rt>あつ</rt></ruby>まりいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。」**
>
> *Câu này là câu mặc định mở mọi cuộc họp khách Nhật. Học thuộc.*

---

## Tránh
- 「では始めます」 cộc lốc — không có cảm ơn.
- Quên giới thiệu mình là 司会 → khách không biết ai chủ trì.
- 「えーと、本日は…」 dùng từ đệm trong câu mở → thiếu tự tin.
- Cảm ơn xong thì cười khá lâu — vào chương trình họp luôn, đừng kéo dài.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 第一声 | だいいっせい | ĐỆ NHẤT THANH | Câu mở đầu |
| 司会 | しかい | TƯ HỘI | Chủ trì / MC |
| 務める | つとめる | — | Đảm nhận |
| 早速 | さっそく | TẢO TỐC | Ngay lập tức |
| 誠に | まことに | THÀNH | Thật sự (formal) |
| お集まりいただく | おあつまりいただく | — | (Quý vị) đã đến tham dự |
| 〜に沿って | にそって | — | Theo (kế hoạch / chương trình họp) |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000010, 800000004, NULL, 'markdown_book', 'Rule 10 — Tự giới thiệu khi có người mới / 自己紹介の標準', '# Rule 10 — Tự giới thiệu khi có người mới / 自己紹介の標準
> **Luận điểm.** Tự giới thiệu chuẩn business JP = **Cty → Phòng → Tên → Vai trò trong dự án**. 4 yếu tố trong 3 câu (~10 giây). Không nói tuổi / quê quán / sở thích như phỏng vấn xin việc.
>
> 業務の自己紹介は4要素：①会社 ②部署 ③氏名 ④プロジェクト内の役割。3文・10秒以内が目安。年齢・出身・趣味は不要。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 11 (danh thiếp), Rule 12 (giới thiệu出席者).

---

## Bối cảnh / 場面
Buổi họp đầu tiên của em Linh (vừa tham gia dự án) với 白鷗. Khi 司会 Dũng giới thiệu xong các thành viên cũ, đến lượt Linh tự giới thiệu vì là người mới.

---

## Hội thoại XẤU — kể lể quá nhiều
*小声で割り込み · 微笑だが*

| Vai | Câu |
|---------|-----|
| **ズン** | 「では、新メンバーのリンさんから<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Vâng, mời em Linh — thành viên mới — tự giới thiệu ạ.* |
| **リン** | 「は、はい！リンと<ruby>申<rt>もう</rt></ruby>します。23<ruby>歳<rt>さい</rt></ruby>で、ハノイ<ruby>出身<rt>しゅっしん</rt></ruby>で、ハノイ<ruby>大学<rt>だいがく</rt></ruby>を<ruby>卒業<rt>そつぎょう</rt></ruby>して、<ruby>入社<rt>にゅうしゃ</rt></ruby>2ヶ<ruby>月目<rt>げつめ</rt></ruby>で、よろしくお<ruby>願<rt>ねが</rt></ruby>いします！<ruby>趣味<rt>しゅみ</rt></ruby>は…」 <br/>*D... dạ! Em là Linh ạ. Em 23 tuổi, quê Hà Nội, học Đại học Hà Nội, em vào công ty được 2 tháng rồi ạ, mong được mọi người giúp đỡ! Sở thích của em là...* |
| **ズン** | 「リンさん、<ruby>業務<rt>ぎょうむ</rt></ruby>の自己紹介は<ruby>会社<rt>かいしゃ</rt></ruby>・<ruby>部署<rt>ぶしょ</rt></ruby>・<ruby>名前<rt>なまえ</rt></ruby>・<ruby>役割<rt>やくわり</rt></ruby>でいいよ。」 <br/>*Linh, tự giới thiệu trong họp business chỉ cần công ty / phòng / tên / vai trò là được nhé.* |
| **大垣** | *(まだ<ruby>慣<rt>な</rt></ruby>れていない<ruby>感<rt>かん</rt></ruby>じだな)* <br/>*(Có vẻ vẫn chưa quen nhỉ)* |

**Vì sao xấu:** Tự giới thiệu kiểu **学校面接** (phỏng vấn vào trường) → khách Nhật cảm thấy "nhân viên mới chưa được đào tạo". Tuổi / quê / trường / sở thích = không cần trong buổi họp. Mất 30 giây mà không cho khách thông tin công việc nào.

---

## Hội thoại TỐT — 4 element trong 3 câu
| Vai | Câu |
|---------|-----|
| **ズン** | 「では、新メンバーのリンさんから<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Vâng, mời em Linh — thành viên mới — tự giới thiệu ạ.* |
| **リン** | 「ティエンファット<ruby>社<rt>しゃ</rt></ruby>、マーケティング<ruby>部<rt>ぶ</rt></ruby>のリンと<ruby>申<rt>もう</rt></ruby>します【1】。」 <br/>*Em là Linh, phòng Marketing bên Thiên Phát ạ.* |
| **リン** | 「<ruby>本<rt>ほん</rt></ruby>プロジェクトでは、<ruby>議事録<rt>ぎじろく</rt></ruby>および<ruby>資料管理<rt>しりょうかんり</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>いたします【2】。」 <br/>*Trong dự án này em phụ trách biên bản và quản lý tài liệu ạ.* |
| **リン** | 「<ruby>不慣<rt>ふな</rt></ruby>れな<ruby>点<rt>てん</rt></ruby>もございますが、<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします【3】。」 <br/>*Em còn nhiều điều chưa thạo, rất mong mọi người chỉ bảo giúp em ạ.* |

 **Ghi chú:**
- 【1】**「〇〇社、〇〇部の〇〇と申します」** — công thức chuẩn, 1 câu chứa 3 yếu tố. 「と申します」 khiêm nhường hơn 「です」.
- 【2】**「〇〇および〇〇を担当いたします」** — 「および」 = "và (trang trọng)". Dùng khi liệt kê vai trò.
- 【3】**「不慣れな点もございますが」** — câu kết khiêm nhường đẹp khi mới vào. Không khiêm tốn quá đà.

---

## Cụm từ mẫu
> **「会社 → 部署 → 名前 → 役割。10秒・3文で完結。」**
>
> *Cty → Phòng → Tên → Vai trò. 4 yếu tố / 10 giây / 3 câu là hết.*

---

## Mẫu tự giới thiệu
```
1. ティエンファット社、〇〇部の〇〇と申します。
2. 本プロジェクトでは、〇〇および〇〇を担当いたします。
3. （新人の場合）不慣れな点もございますが、
   （ベテランの場合）これまで〇〇の経験を活かし、
   何卒よろしくお願いいたします。
```

---

## Tránh
- Nói tuổi / quê / trường → không phải buổi phỏng vấn.
- 「えーと、私は…えーと…」 lắp bắp "à... ờ..." nhiều → mất tự tin.
- "Cú phang" hỏi lại 「あ、すみません、もう一度お名前を…」 → khách nói lại 1 lần thôi, lần 2 phải nhớ.
- Cười khúc khích cuối câu → casual quá với khách Nhật.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | Tự giới thiệu |
| 〜と申します | ともうします | — | "Tôi tên là..." (khiêm nhường) |
| 担当する | たんとうする | ĐẢM ĐƯƠNG | Phụ trách |
| および | および | — | Và (formal) |
| 不慣れ | ふなれ | BẤT QUÁN | Chưa quen |
| 役割 | やくわり | DỊCH CÁT | Vai trò |
| 経験を活かす | けいけんをいかす | KINH NGHIỆM — | Tận dụng kinh nghiệm |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000011, 800000004, NULL, 'markdown_book', 'Rule 11 — Trao danh thiếp đúng cách / 名刺交換の流れ', '# Rule 11 — Trao danh thiếp đúng cách / 名刺交換の流れ
> **Luận điểm.** Danh thiếp Nhật = "khuôn mặt thứ 2" của người. Quy tắc: (1) **2 tay**, hướng chữ **về phía người nhận**, (2) câu kèm 「〇〇社の〇〇でございます。よろしくお願いいたします」, (3) **đọc tên** sau khi nhận, (4) **đặt trên bàn theo vị trí ngồi** suốt buổi họp, (5) **không viết / không gập** trước mặt khách.
>
> 名刺交換5原則：①両手 ②自社→氏名→挨拶 ③受領後に氏名を声に出す ④席順どおり卓上に並べる ⑤書き込み・折り曲げ厳禁。
>
> **Liên quan:** Rule 10 (tự giới thiệu), Rule 12 (giới thiệu出席者). 詳細は Sách 07 (Visit/Card) Rule 12-15.

---

## Bối cảnh / 場面
Buổi họp đầu tiên của em Linh với 大垣営業部長. Lần đầu Linh trao danh thiếp với khách Nhật cấp cao. Dũng đã dặn trước.

---

## Hội thoại XẤU — 1 tay, đặt vào ví ngay
*両手で名刺を差し出す · 片手で受け取り、自分の名刺は1枚指で渡す · 受け取った名刺をすぐ財布へ · 笑顔は崩さないが…*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>白鷗<rt>はくおう</rt></ruby><ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>、<ruby>営業<rt>えいぎょう</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>の<ruby>大垣<rt>おおがき</rt></ruby>でございます。」 <br/>*Tôi là Ōgaki, Trưởng phòng Kinh doanh bên Cty Hakuō.* |
| **リン** | 「リンです、よろしくお願いします！」 <br/>*Em là Linh, mong được anh giúp đỡ ạ!* |
| **リン** | *(チラッと見て、<ruby>財布<rt>さいふ</rt></ruby>のポケットに<ruby>収納<rt>しゅうのう</rt></ruby>)* <br/>*(Liếc nhìn qua rồi cất luôn vào túi ví)* |
| **大垣** | 「（<ruby>笑顔<rt>えがお</rt></ruby>は<ruby>保<rt>たも</rt></ruby>つが）リンさん、<ruby>頑張<rt>がんば</rt></ruby>ってください。」 <br/>*(Vẫn giữ nụ cười) Linh nhé, em cố gắng.* |

**Vì sao xấu:** (1) 1 tay = bất kính, (2) tự xưng "リンです" cộc lốc, (3) bỏ vào ví ngay = "không tôn trọng card này". Khách Nhật cấp cao nhìn thấy = chấm âm mạnh ấn tượng đầu.

---

## Hội thoại TỐT — đủ 5 nguyên tắc
*両手で差し出す · 両手で受け取り、文字方向を確認、軽くお辞儀 · 自分の名刺を両手で文字を客向きに差し出す · 受け取った名刺を自席の卓上、大垣の座席位置に合わせて置く*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>白鷗<rt>はくおう</rt></ruby><ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>、<ruby>営業<rt>えいぎょう</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>の<ruby>大垣<rt>おおがき</rt></ruby>でございます。」 <br/>*Tôi là Ōgaki, Trưởng phòng Kinh doanh bên Cty Hakuō.* |
| **リン** | 「<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<ruby>大垣<rt>おおがき</rt></ruby><ruby>様<rt>さま</rt></ruby>、ティエンファット<ruby>社<rt>しゃ</rt></ruby>、マーケティング<ruby>部<rt>ぶ</rt></ruby>のリンでございます【1】。」 <br/>*Em xin phép nhận ạ. Anh Ōgaki, em là Linh — phòng Marketing bên Thiên Phát ạ.* |
| **リン** | 「よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします【2】。」 <br/>*Em rất mong được anh giúp đỡ ạ.* |
| **リン** | *(<ruby>席順<rt>せきじゅん</rt></ruby>どおり<ruby>配置<rt>はいち</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>【3】)* <br/>*(Đã xếp xong danh thiếp theo đúng thứ tự chỗ ngồi)* |

 **Ghi chú:**
- 【1】**「頂戴いたします」** (ちょうだいいたします) — câu chuẩn lúc nhận. Khiêm nhường hơn 「いただきます」. Sau câu này phải đọc tên người 1 lần để xác nhận.
- 【2】Khi đưa danh thiếp mình: chữ phải hướng về phía khách (đọc được). Tay đặt ở mép, không che logo.
- 【3】**「席順どおり卓上に並べる」** — danh thiếp khách đặt trên bàn cho tới hết họp, vị trí khớp với chỗ ngồi → không quên tên ai. Cuối họp mới cất.

---

## Cụm từ mẫu
> **「<ruby>両手<rt>りょうて</rt></ruby>・<ruby>氏名<rt>しめい</rt></ruby><ruby>復唱<rt>ふくしょう</rt></ruby>・<ruby>席順<rt>せきじゅん</rt></ruby><ruby>配置<rt>はいち</rt></ruby> — <ruby>名刺<rt>めいし</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>の3<ruby>不変則<rt>ふへんそく</rt></ruby>。」**
>
> *Hai tay, đọc lại tên, đặt theo vị trí ngồi — 3 quy tắc không đổi.*

---

## Tránh
- 1 tay nhận / đưa.
- Để danh thiếp khách trên bàn dưới điện thoại / cốc nước.
- Viết ghi chú lên danh thiếp trước mặt khách.
- Gập danh thiếp khi cất.
- Đưa danh thiếp đã quăn / bẩn.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 名刺 | めいし | DANH THIẾP | Danh thiếp |
| 名刺交換 | めいしこうかん | DANH THIẾP GIAO HOÁN | Trao danh thiếp |
| 頂戴いたします | ちょうだいいたします | ĐỈNH ĐÁI | Em xin nhận ạ (lúc nhận danh thiếp) |
| 両手 | りょうて | LƯỠNG THỦ | Hai tay |
| 席順 | せきじゅん | TỊCH THUẬN | Thứ tự chỗ ngồi |
| 卓上 | たくじょう | TRÁC THƯỢNG | Trên bàn |
| 折り曲げる | おりまげる | — | Gập / nhăn |
| 書き込み | かきこみ | — | Viết ghi chú vào |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000012, 800000004, NULL, 'markdown_book', 'Rule 12 — Giới thiệu các bên tham dự / 出席者紹介', '# Rule 12 — Giới thiệu các bên tham dự / 出席者紹介
> **Luận điểm.** Sau câu mở (rule 09) và trước khi vào chương trình họp, 司会 phải **giới thiệu lần lượt cả 2 bên**. Thứ tự: **phía mình trước (内 — uchi), phía khách sau (外 — soto)**. Trong mỗi bên: **chức vụ cao → thấp**. Lúc giới thiệu phía mình bỏ chức danh đặt trước tên (nội bộ — 内, không gọi "副部長フオン様").
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

| Vai | Câu |
|---------|-----|
| **ズン** | 「では<ruby>出席者<rt>しゅっせきしゃ</rt></ruby><ruby>紹介<rt>しょうかい</rt></ruby>です。フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>様、トゥアンリーダー様、リンさんです。」 <br/>*Vâng, em xin giới thiệu người tham dự. "Phó phòng Hương sama", "Leader Tuấn sama", "Linh san" ạ.* |
| **ズン** | 「<ruby>白鷗<rt>はくおう</rt></ruby>様より、<ruby>大垣<rt>おおがき</rt></ruby>様と<ruby>松本<rt>まつもと</rt></ruby>様にもご<ruby>出席<rt>しゅっせき</rt></ruby>いただいております。」 <br/>*Phía Cty Hakuō có anh Ōgaki và anh Matsumoto tham dự ạ.* |
| **大垣** | *(<ruby>自社<rt>じしゃ</rt></ruby>の<ruby>人間<rt>にんげん</rt></ruby>に「様」を<ruby>付<rt>つ</rt></ruby>けるのは…)* <br/>*(Gắn "sama" cho người trong công ty mình thì…)* |
| **松本** | 「ズンさん、自社の<ruby>方<rt>かた</rt></ruby>を紹介する時は『様』も<ruby>役職名<rt>やくしょくめい</rt></ruby>も付けず、『<ruby>弊社<rt>へいしゃ</rt></ruby>の〇〇』が<ruby>正解<rt>せいかい</rt></ruby>ですよ。」 <br/>*Dũng à, lúc giới thiệu người Cty mình thì không gắn 「様」 hay chức danh, gọi 「弊社の〇〇」 là đúng nhé.* |

**Vì sao xấu:** Gọi nội bộ (内) bằng 「様」 → khách Nhật cảm thấy **uchi-soto** chưa nắm vững. Đây là lỗi keigo căn bản nhất — sách 02 đã đề cập (bỏ chức danh cho 内 = phía mình).

---

## Hội thoại TỐT — uchi-soto đúng
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>出席者<rt>しゅっせきしゃ</rt></ruby>をご<ruby>紹介<rt>しょうかい</rt></ruby>いたします。まずは<ruby>弊社<rt>へいしゃ</rt></ruby>より【1】、<ruby>副部長<rt>ふくぶちょう</rt></ruby>のフオン、<ruby>技術<rt>ぎじゅつ</rt></ruby>リーダーのトゥアン、アシスタントのリン、そして<ruby>司会<rt>しかい</rt></ruby>のズンの4<ruby>名<rt>めい</rt></ruby>でございます。」 <br/>*Em xin giới thiệu người tham dự hôm nay. Đầu tiên phía Thiên Phát chúng em gồm 4 người: chị Hương — Phó phòng, anh Tuấn — Tech lead, em Linh — Trợ lý, và em Dũng — chủ trì ạ.* |
| **ズン** | 「<ruby>続<rt>つづ</rt></ruby>きまして、<ruby>白鷗株式会社<rt>はくおうかぶしきがいしゃ</rt></ruby>様より【2】、<ruby>大垣<rt>おおがき</rt></ruby> <ruby>営業部長<rt>えいぎょうぶちょう</rt></ruby>様、<ruby>松本<rt>まつもと</rt></ruby> プロジェクトマネージャー様の2名にご<ruby>出席<rt>しゅっせき</rt></ruby>いただいております。」 <br/>*Tiếp theo phía Cty Hakuō có 2 vị: anh Ōgaki — Trưởng phòng Kinh doanh và anh Matsumoto — Project Manager đã tới tham dự ạ.* |
| **大垣 / 松本** | 「よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。」 <br/>*Phiền các anh/chị giúp đỡ ạ.* |
| **ズン** | 「本日もどうぞよろしくお願いいたします【3】。」 <br/>*Hôm nay rất mong các anh giúp đỡ ạ.* |

 **Ghi chú:**
- 【1】**「弊社より、副部長のフオン」** — bỏ 「様」、 bỏ chức danh đặt trước tên. Công thức: 「弊社 [役職] の [氏名]」. KHÔNG nói 「フオン副部長」 trước khách.
- 【2】**「白鷗株式会社様より、大垣 営業部長様」** — GIỮ 「様」 cho cả công ty + cá nhân khách. Chức danh đặt **sau** tên là được.
- 【3】Sau khi giới thiệu xong cả 2 bên, câu chốt 「本日もどうぞよろしくお願いいたします」 = chuyển sang rule 13 (giới thiệu chương trình họp).

---

## Cụm từ mẫu
> **「<ruby>弊社<rt>へいしゃ</rt></ruby> → <ruby>他社<rt>たしゃ</rt></ruby>、<ruby>役職<rt>やくしょく</rt></ruby><ruby>高<rt>たか</rt></ruby> → <ruby>低<rt>ひく</rt></ruby>、<ruby>内<rt>うち</rt></ruby>には<ruby>敬称<rt>けいしょう</rt></ruby>なし、<ruby>外<rt>そと</rt></ruby>には敬称あり。」**
>
> *Cty mình trước → Cty khách sau. Cao → thấp. Nội bộ không 様, khách có 様.*

---

## Tránh
- 「フオン副部長様」 「リンさん」 trước mặt khách → 内に敬称 = lỗi keigo điển hình.
- Quên giới thiệu mình (司会) → khách sẽ không rõ "ai chủ trì".
- Giới thiệu bên khách trước bên mình → ngược thứ tự uchi-soto.
- Bỏ title của khách → 大垣様 (không có 営業部長) = thiếu rõ vai trò.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 出席者 | しゅっせきしゃ | XUẤT TỊCH GIẢ | Người tham dự |
| 弊社 | へいしゃ | TỆ XÃ | Công ty (chúng) tôi (humble) |
| 〇〇株式会社様 | かぶしきがいしゃさま | CỔ THỨC HỘI XÃ | Cty 〇〇 (kính ngữ) |
| 役職 | やくしょく | DỊCH CHỨC | Chức vụ |
| 続きまして | つづきまして | — | "Tiếp đến..." |
| 〜より | より | — | Phía / từ phía... |
| まずは | まずは | — | "Đầu tiên là..." |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000013, 800000004, NULL, 'markdown_book', 'Rule 13 — Giới thiệu chương trình họp + thời lượng / アジェンダ説明', '# Rule 13 — Giới thiệu chương trình họp + thời lượng / アジェンダ説明
> **Luận điểm.** Sau giới thiệu出席者 (rule 12), 司会 nói **「本日のアジェンダは〇点ございます」** rồi lần lượt liệt kê. Mỗi mục: **(số) → tiêu đề → thời lượng → người phụ trách**. Khách hiểu ngay mạch nội dung trong 30 giây.
>
> アジェンダ説明：「本日のアジェンダは〇点ございます」と宣言→各議題を「番号→タイトル→所要時間→担当」で1議題15秒以内。
>
> **Liên quan:** Rule 01 (lập chương trình họp), Rule 09 (mở đầu), Rule 14 (phân vai), Rule 15 (chốt mục tiêu), Rule 16 (phân bổ thời gian mỗi mục).

---

## Bối cảnh / 場面
司会 Dũng vừa giới thiệu xong出席者 (rule 12). Tiếp theo là giới thiệu chương trình họp đã gửi trước (rule 01).

---

## Hội thoại XẤU — đọc chương trình họp lỏng lẻo
*慌ててアジェンダを見る*

| Vai | Câu |
|---------|-----|
| **ズン** | 「では今日のアジェンダ、いくつかあります。<ruby>進捗<rt>しんちょく</rt></ruby>とか、<ruby>課題<rt>かだい</rt></ruby>とか…」 <br/>*Vâng, chương trình họp hôm nay có vài cái. Kiểu tiến độ, vấn đề các kiểu...* |
| **大垣** | 「ズンさん、<ruby>何分<rt>なんぷん</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>で<ruby>何議題<rt>なんぎだい</rt></ruby>でしょうか？<ruby>時間<rt>じかん</rt></ruby>が<ruby>読<rt>よ</rt></ruby>めなくて…」 <br/>*Dũng à, họp bao nhiêu phút và bao nhiêu mục vậy? Anh không tính được thời gian...* |
| **ズン** | 「あ、4<ruby>議題<rt>ぎだい</rt></ruby>で60<ruby>分<rt>ぷん</rt></ruby>です。1<ruby>番目<rt>ばんめ</rt></ruby>から…」 <br/>*Ồ, 4 mục, 60 phút ạ. Bắt đầu mục 1...* |
| **大垣** | 「<ruby>先<rt>さき</rt></ruby>に<ruby>全体像<rt>ぜんたいぞう</rt></ruby>をいただけますか。<ruby>後<rt>あと</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>もあるので。」 <br/>*Cho anh xem toàn cảnh tổng trước nhé. Anh còn lịch sau nữa.* |

**Vì sao xấu:** "いくつかあります", "とか" → mơ hồ, thiếu chuyên nghiệp. Khách Nhật cấp cao luôn quan tâm "60分で何が終わるか" → phải đưa toàn cảnh đầy đủ trước.

---

## Hội thoại TỐT — tổng quan rõ, mỗi mục 15s
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダは4<ruby>点<rt>てん</rt></ruby>ございます【1】。<ruby>所要時間<rt>しょようじかん</rt></ruby>は<ruby>合計<rt>ごうけい</rt></ruby>60<ruby>分<rt>ぷん</rt></ruby>でございます。」 <br/>*Chương trình họp hôm nay gồm 4 mục ạ. Tổng thời lượng là 60 phút ạ.* |
| **ズン** | 「1<ruby>点目<rt>てんめ</rt></ruby>、4<ruby>月<rt>がつ</rt></ruby><ruby>進捗報告<rt>しんちょくほうこく</rt></ruby> — 10<ruby>分<rt>ぷん</rt></ruby>、ズン。2点目、<ruby>課題<rt>かだい</rt></ruby>と<ruby>対応策<rt>たいおうさく</rt></ruby> — 15分、トゥアン。3点目、5月<ruby>スコープ協議<rt>スコープきょうぎ</rt></ruby> — 25分、<ruby>皆様<rt>みなさま</rt></ruby>で。4点目、<ruby>次回日程<rt>じかいにってい</rt></ruby>・TODO <ruby>確認<rt>かくにん</rt></ruby> — 10分、ズン【2】。」 <br/>*Mục 1: Báo cáo tiến độ tháng 4 — 10 phút, em Dũng. Mục 2: Vấn đề và phương án — 15 phút, anh Tuấn. Mục 3: Trao đổi scope tháng 5 — 25 phút, tất cả. Mục 4: Confirm ngày họp tới + TODO — 10 phút, em Dũng.* |
| **ズン** | 「<ruby>事前<rt>じぜん</rt></ruby>にお<ruby>送<rt>おく</rt></ruby>りした<ruby>資料<rt>しりょう</rt></ruby> v1.1 に<ruby>沿<rt>そ</rt></ruby>って<ruby>進<rt>すす</rt></ruby>めさせていただきます。<ruby>各議題<rt>かくぎだい</rt></ruby><ruby>終了時<rt>しゅうりょうじ</rt></ruby>に<ruby>簡単<rt>かんたん</rt></ruby>な<ruby>合意確認<rt>ごういかくにん</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます【3】。」 <br/>*Em xin phép tiến hành theo tài liệu v1.1 đã gửi trước. Cuối mỗi mục em sẽ chốt thống nhất ngắn ạ.* |
| **大垣 / 松本** | 「<ruby>承知<rt>しょうち</rt></ruby>いたしました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。」 <br/>*Tôi rõ rồi. Phiền em nhé.* |

 **Ghi chú:**
- 【1】**「〇点ございます」** = "có 〇 mục". 「点」 dùng cho mục trong chương trình họp. Chuẩn hơn 「〇個」「〇つ」 trong business.
- 【2】Công thức mỗi mục: 「〇点目、[タイトル]、[時間]、[担当]」. Cố định cấu trúc → khách dễ ghi chú.
- 【3】**「合意確認を入れます」** — báo trước rằng cuối mỗi議題 sẽ chốt 1 lần. Tránh "trao đổi xong rồi tan" mà không rõ kết quả.

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
- Đọc chương trình họp quá nhanh / quá chậm → 1 mục ~15s là vừa.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| アジェンダ | あじぇんだ | — | Chương trình họp |
| 〇点 | てん | ĐIỂM | 〇 mục (đếm cho議題) |
| 所要時間 | しょようじかん | SỞ YẾU THỜI GIAN | Thời lượng |
| 合計 | ごうけい | HỢP KẾ | Tổng |
| 〇点目 | てんめ | ĐIỂM MỤC | Mục thứ〇 |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Người phụ trách |
| 合意確認 | ごういかくにん | HỢP Ý XÁC NHẬN | Xác nhận thống nhất |
| 沿って | そって | — | Theo (kế hoạch) |', 'system', 13, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000014, 800000004, NULL, 'markdown_book', 'Rule 14 — Phân vai chủ trì / người ghi biên bản / 司会・書記の役割確認', '# Rule 14 — Phân vai chủ trì / người ghi biên bản / 司会・書記の役割確認
> **Luận điểm.** Trước khi vào nội dung đầu tiên: **công bố ai là chủ trì (司会), ai là người ghi biên bản (書記)**. Cả phòng phải biết "ai chủ trì nhịp họp, ai ghi biên bản". Không có người ghi biên bản = biên bản không đáng tin, không theo dõi công việc tiếp được.
>
> 議題開始前：『司会は〇〇、書記は〇〇』を明示。書記は議事録ドラフトを当日中に作成。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 13 (giới thiệu chương trình họp), Rule 44 (action items), Rule 45 (gửi biên bản 24h).

---

## Bối cảnh / 場面
Sau khi giới thiệu người tham dự + chương trình họp, em Dũng phân vai. Tự xác nhận chủ trì (司会), đề cử em Linh làm người ghi biên bản (書記).

---

## Hội thoại XẤU — không phân vai
*挙手 · 振り返って · 困惑*

| Vai | Câu |
|---------|-----|
| **ズン** | 「では、<ruby>議題<rt>ぎだい</rt></ruby>1から<ruby>入<rt>はい</rt></ruby>ります。」 <br/>*Vâng, mình vào mục 1 nhé.* |
| **大垣** | 「すみません、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>書記<rt>しょき</rt></ruby>はどなたでしょうか？<ruby>決定事項<rt>けっていじこう</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>が<ruby>記録<rt>きろく</rt></ruby>？」 <br/>*Cho hỏi người ghi biên bản hôm nay là ai vậy? Quyết định ai sẽ ghi lại?* |
| **ズン** | 「あ…リンさんお<ruby>願<rt>ねが</rt></ruby>いしていいですか？」 <br/>*À... em Linh giúp anh được không?* |
| **リン** | 「は、はい、<ruby>急<rt>きゅう</rt></ruby>ですが…」 <br/>*D... dạ, em làm bất ngờ vậy ạ...* |

**Vì sao xấu:** Người ghi biên bản (書記) quyết định ai giữ được thông tin sau họp. Phân vai giữa chừng = lộn xộn, không kịp chuẩn bị mẫu biên bản, biên bản hỏng.

---

## Hội thoại TỐT — Công bố vai trò trước nội dung
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>議題<rt>ぎだい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>をご<ruby>確認<rt>かくにん</rt></ruby>させていただきます【1】。」 <br/>*Trước khi vào mục, em xin phép xác nhận vai trò hôm nay ạ.* |
| **ズン** | 「<ruby>司会<rt>しかい</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>ズンが<ruby>務<rt>つと</rt></ruby>めます。<ruby>書記<rt>しょき</rt></ruby>はリンが<ruby>担当<rt>たんとう</rt></ruby>し、<ruby>議事録<rt>ぎじろく</rt></ruby>は<ruby>本日中<rt>ほんじつちゅう</rt></ruby>にドラフトを<ruby>共有<rt>きょうゆう</rt></ruby>いたします【2】。」 <br/>*Em Dũng làm chủ trì ạ. Em Linh làm người ghi biên bản, biên bản draft em sẽ chia sẻ ngay trong hôm nay ạ.* |
| **リン** | 「<ruby>議事録<rt>ぎじろく</rt></ruby>テンプレートは<ruby>準備済<rt>じゅんびず</rt></ruby>みです。<ruby>決定事項<rt>けっていじこう</rt></ruby>とTODOを<ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>いたします。」 <br/>*Em đã chuẩn bị mẫu biên bản rồi ạ. Em sẽ ghi tập trung vào phần quyết định và việc cần làm ạ.* |
| **大垣** | 「ありがとうございます。<ruby>安心<rt>あんしん</rt></ruby>しました。」 <br/>*Cảm ơn em. Anh yên tâm rồi.* |

 **Ghi chú:**
- 【1】**「役割をご確認させていただきます」** — câu chuyển ý lịch sự. 「ご確認」 dùng được vì 確認 là về thông tin chung, không phải hành động của riêng mình.
- 【2】**「本日中にドラフトを共有」** — cam kết thời hạn cho bản nháp biên bản (xem rule 45). Khách Nhật đặc biệt thích vì biết được "khi nào nhận biên bản".

---

## Cụm từ mẫu
> **「議題前に司会・書記を公表。書記は当日中にドラフト共有。」**
>
> *Trước nội dung phải báo chủ trì (司会) + người ghi biên bản (書記). Người ghi biên bản cam kết bản nháp trong ngày.*

---

## Vai trò người ghi biên bản (書記) phải làm
| Lúc nào | Việc gì |
|---------|---------|
| Trước họp | Mở mẫu biên bản (rule 46), chép danh sách 出席者 (người dự) |
| Trong họp | Ghi quyết định + việc cần làm + người phụ trách + hạn chót |
| Cuối họp | Đọc to các việc cần làm để xác nhận (rule 44) |
| Sau họp 24h | Gửi biên bản (rule 45) |

---

## Tránh
- Chủ trì + người ghi biên bản cùng 1 người → chủ trì phải tập trung điều phối, không kịp ghi.
- 書記 là nhân viên trẻ chưa từng viết biên bản → biên bản thiếu các quyết định quan trọng.
- Không công bố 書記 trước mục họp → khách hoang mang.
- 書記 ghi tay thay vì gõ máy → không kịp tốc độ họp.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 司会 | しかい | TƯ HỘI | Chủ trì / điều phối viên |
| 書記 | しょき | THƯ KÝ | Người ghi biên bản |
| 役割 | やくわり | DỊCH CÁT | Vai trò |
| 議事録 | ぎじろく | NGHỊ SỰ LỤC | Biên bản họp |
| ドラフト | どらふと | — | Bản nháp |
| 決定事項 | けっていじこう | QUYẾT ĐỊNH SỰ HẠNG | Mục đã quyết |
| 共有 | きょうゆう | CỘNG HỮU | Chia sẻ |
| 担当する | たんとうする | ĐẢM ĐƯƠNG | Phụ trách |', 'system', 14, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000015, 800000004, NULL, 'markdown_book', 'Rule 15 — Chốt mục tiêu output cuộc họp / 本日のゴール確認', '# Rule 15 — Chốt mục tiêu output cuộc họp / 本日のゴール確認
> **Luận điểm.** Sau khi giới thiệu chương trình họp + phân vai, người điều phối chốt **「本日のゴール」**: cuối họp phải **quyết được cái gì** (1-3 mục cụ thể, có thể hành động). Mục tiêu không rõ = họp xong "trao đổi tốt nhỉ" mà không quyết được gì.
>
> 議題前に『本日決めたいのは〇〇』と goal を明示。1〜3個に絞る。決定事項として議事録に記録できる粒度で書く。
>
> **Liên quan:** Rule 01 (output mong đợi trong chương trình họp), Rule 13 (giới thiệu chương trình họp), Rule 31 (đi đến quyết định), Rule 44 (action items).

---

## Bối cảnh / 場面
Người điều phối Dũng đã làm xong rules 09-14. Trước議題 1, chốt mục tiêu để tất cả thống nhất hướng đi.

---

## Hội thoại XẤU — mục tiêu mơ hồ
| Vai | Câu |
|---------|-----|
| **ズン** | 「本日は<ruby>皆様<rt>みなさま</rt></ruby>で<ruby>意見交換<rt>いけんこうかん</rt></ruby>させていただければと思います。」 <br/>*Hôm nay em mong được trao đổi ý kiến cùng quý anh chị ạ.* |
| **大垣** | 「ズンさん、本日 何を<ruby>決<rt>き</rt></ruby>めたいのか<ruby>教<rt>おし</rt></ruby>えていただけますか。」 <br/>*Dũng à, hôm nay muốn quyết cái gì thì cho anh biết được không?* |
| **ズン** | 「えーと、<ruby>進捗確認<rt>しんちょくかくにん</rt></ruby>と、できれば 5月のスコープも…」 <br/>*Ờ thì... xác nhận tiến độ, và nếu được thì cả scope tháng 5...* |
| **大垣** | 「『できれば』ですか…<ruby>明確<rt>めいかく</rt></ruby>に決めたい<ruby>点<rt>てん</rt></ruby>は？」 <br/>*''Nếu được'' à... vậy điểm muốn quyết rõ là gì?* |

**Vì sao xấu:** "意見交換" = "trao đổi ý kiến" nghe tốt nhưng không có kết quả cụ thể. "できれば" = chần chừ. Khách Nhật cấp cao luôn hỏi "quyết cái gì" → mơ hồ = không chuẩn bị.

---

## Hội thoại TỐT — mục tiêu cụ thể, 2 mục
| Vai | Câu |
|---------|-----|
| **ズン** | 「本日のゴールを2<ruby>点<rt>てん</rt></ruby>ご<ruby>共有<rt>きょうゆう</rt></ruby>させていただきます【1】。」 <br/>*Em xin chia sẻ 2 mục tiêu của hôm nay ạ.* |
| **ズン** | 「1点目、5月<ruby>開発<rt>かいはつ</rt></ruby>スコープの<ruby>合意<rt>ごうい</rt></ruby>。2点目、<ruby>次回会議日程<rt>じかいかいぎにってい</rt></ruby>の<ruby>決定<rt>けってい</rt></ruby>でございます【2】。」 <br/>*Điểm 1: thống nhất scope phát triển tháng 5. Điểm 2: quyết ngày buổi họp tiếp ạ.* |
| **ズン** | 「この2点を本日の<ruby>議事録<rt>ぎじろく</rt></ruby>に<ruby>決定事項<rt>けっていじこう</rt></ruby>として<ruby>記録<rt>きろく</rt></ruby>できる<ruby>状態<rt>じょうたい</rt></ruby>に<ruby>持<rt>も</rt></ruby>っていく、というのが本日のゴールです【3】。」 <br/>*Đưa được 2 điểm này vào biên bản hôm nay dưới dạng quyết định — đó là goal của hôm nay ạ.* |
| **大垣 / 松本** | 「明確で<ruby>良<rt>よ</rt></ruby>いですね。<ruby>承知<rt>しょうち</rt></ruby>しました。」 <br/>*Rõ ràng, tốt đấy. Tôi hiểu rồi ạ.* |

 **Ghi chú:**
- 【1】**「ゴールを〇点ご共有」** — 「ゴール」 (katakana) hơn 「目標」 vì hợp bối cảnh business JP hiện đại.
- 【2】Mục tiêu phải có động từ: **合意 / 決定 / 確認**. Tránh động từ mơ hồ như 共有 / 検討.
- 【3】**「議事録に決定事項として記録できる状態」** — định nghĩa mục tiêu qua "ghi vào biên bản được". Khái niệm thực chiến, khách Nhật rất thích.

---

## Cụm từ mẫu
> **「本日のゴールは〇〇 — 議事録に書ける粒度で。」**
>
> *Mục tiêu hôm nay là 〇〇 — viết được vào biên bản dạng quyết định.*

---

## Định dạng mục tiêu chuẩn
| Mơ hồ | Cụ thể |
|---------|----------|
| Phase 2 について話す | Phase 2 のスコープを **合意** する |
| 進捗を共有する | 4月の遅延2件への **対応策を決定** する |
| 来月のことを考える | 5月スプリントの **タスク優先順位を確定** する |
| 検討する | 来週 **A案 / B案 のどちらに進むか決定** する |

---

## Tránh
- Mục tiêu mơ hồ: 「意見交換」「進捗共有」「検討」 → không quyết được.
- Quá nhiều mục tiêu (>3) → 60分 không đủ.
- Mục tiêu không thể hành động: 「Phase 2 について理解する」 → không đo được.
- Mục tiêu lệch chương trình họp → khách lúng túng.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ゴール | ごーる | — | Mục tiêu |
| 合意 | ごうい | HỢP Ý | Thống nhất |
| 決定 | けってい | QUYẾT ĐỊNH | Quyết định |
| 決定事項 | けっていじこう | QUYẾT ĐỊNH SỰ HẠNG | Mục đã quyết |
| 粒度 | りゅうど | LẠP ĐỘ | Mức độ chi tiết |
| 〜状態 | じょうたい | TRẠNG THÁI | Trạng thái |
| 持っていく | もっていく | — | Đưa tới |', 'system', 15, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000016, 800000004, NULL, 'markdown_book', 'Rule 16 — Xác nhận phân bổ thời gian mỗi mục / 各議題の時間配分', '# Rule 16 — Xác nhận phân bổ thời gian mỗi mục / 各議題の時間配分
> **Luận điểm.** Sau khi giới thiệu chương trình họp (rule 13) + chốt mục tiêu (rule 15), người chủ trì xác nhận **lịch giờ thực tế cho mỗi議題**: thời gian bắt đầu / kết thúc cụ thể (ví dụ "15:05-15:15"). Mỗi議題 có người chịu trách nhiệm về giờ giấc — nếu vượt giờ thì dừng lại + xin phép.
>
> 各議題の所要時間を時計で明示（『〇〇は15:05〜15:15』）。超過時は司会が一度止め、延長合意を取る。
>
> **Liên quan:** Rule 13 (giới thiệu chương trình họp), Rule 14 (司会), Rule 29 (deadlock), Rule 42 (時間切れ).

---

## Bối cảnh / 場面
Sau rule 15, Dũng xác nhận lịch giờ bằng giờ đồng hồ cụ thể để khách kiểm soát kỳ vọng.

---

## Hội thoại XẤU — không gắn giờ đồng hồ cụ thể
| Vai | Câu |
|---------|-----|
| **ズン** | 「では<ruby>議題<rt>ぎだい</rt></ruby>1から、<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby> 10<ruby>分<rt>ぷん</rt></ruby>、<ruby>課題<rt>かだい</rt></ruby> 15分、スコープ 25分、<ruby>確認<rt>かくにん</rt></ruby> 10分です。」 <br/>*Vâng, mục 1 — báo cáo tiến độ 10 phút, vấn đề 15 phút, scope 25 phút, confirm 10 phút ạ.* |
| **大垣** | 「<ruby>終了<rt>しゅうりょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>？」 <br/>*Vậy mấy giờ kết thúc?* |
| **ズン** | 「えーと、<ruby>足<rt>た</rt></ruby>し<ruby>算<rt>ざん</rt></ruby>すると…16<ruby>時<rt>じ</rt></ruby>です。」 <br/>*Ơ... cộng lại thì... 16h ạ.* |
| **大垣** | 「<ruby>最初<rt>さいしょ</rt></ruby>から『15:00 <ruby>開始<rt>かいし</rt></ruby>、16:00 終了』と<ruby>言<rt>い</rt></ruby>ってもらえれば…」 <br/>*Ngay từ đầu nói ''15h vào, 16h xong'' luôn thì hơn...* |

**Vì sao xấu:** Chỉ nói "số phút" mà không kèm giờ đồng hồ cụ thể → khách phải tự cộng. Khách Nhật cấp cao có lịch kín liền mạch, cần giờ giấc chính xác.

---

## Hội thoại TỐT — giờ đồng hồ cụ thể mỗi議題
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>時間配分<rt>じかんはいぶん</rt></ruby>をご<ruby>確認<rt>かくにん</rt></ruby>ください。15:00 <ruby>開始<rt>かいし</rt></ruby>、16:00 <ruby>終了<rt>しゅうりょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>でございます【1】。」 <br/>*Xin các anh confirm timeline hôm nay. 15h bắt đầu, 16h dự kiến kết thúc ạ.* |
| **ズン** | 「<ruby>議題<rt>ぎだい</rt></ruby>1: <ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby> 15:00〜15:10。議題2: <ruby>課題<rt>かだい</rt></ruby><ruby>対応<rt>たいおう</rt></ruby> 15:10〜15:25。議題3: スコープ<ruby>協議<rt>きょうぎ</rt></ruby> 15:25〜15:50。議題4: <ruby>次回<rt>じかい</rt></ruby>確認 15:50〜16:00【2】。」 <br/>*Mục 1: báo cáo tiến độ 15:00-15:10. Mục 2: xử lý vấn đề 15:10-15:25. Mục 3: trao đổi scope 15:25-15:50. Mục 4: confirm tiếp 15:50-16:00 ạ.* |
| **ズン** | 「もし<ruby>時間<rt>じかん</rt></ruby>が<ruby>押<rt>お</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>は、議題3の<ruby>途中<rt>とちゅう</rt></ruby>で<ruby>一度<rt>いちど</rt></ruby><ruby>止<rt>と</rt></ruby>めて、<ruby>延長<rt>えんちょう</rt></ruby><ruby>可否<rt>かひ</rt></ruby>をご<ruby>相談<rt>そうだん</rt></ruby>させていただきます【3】。」 <br/>*Nếu thời gian bị trễ thì giữa mục 3 em sẽ dừng lại để xin các anh ý kiến về việc kéo dài ạ.* |
| **大垣** | 「<ruby>了解<rt>りょうかい</rt></ruby>しました。その<ruby>方針<rt>ほうしん</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めましょう。」 <br/>*Anh rõ rồi. Mình theo hướng đó nhé.* |

 **Ghi chú:**
- 【1】**「15:00 開始、16:00 終了予定」** — thông báo giờ kết thúc là quan trọng nhất. Khách Nhật sắp lịch theo giờ kết thúc.
- 【2】Công thức cố định: 「議題〇: タイトル 〇〇:〇〇〜〇〇:〇〇」. Cố định để khách nhìn chương trình họp đối chiếu được.
- 【3】**「延長可否をご相談」** — báo trước sẽ xin phép nếu vượt giờ. Tránh trường hợp đến phút 60 vẫn nói "tiếp 10 phút nữa nhé" → không xin phép = thất lễ.

---

## Cụm từ mẫu
> **「分単位ではなく時刻単位で confirm。延長は事前合意で。」**
>
> *Ghi theo giờ đồng hồ (HH:MM), không phải số phút. Vượt giờ phải xin phép trước.*

---

## Tránh
- Chỉ nói "10 phút", "15 phút" mà không gắn giờ đồng hồ cụ thể.
- Quên giờ kết thúc → khách không lên kế hoạch tiếp được.
- Vượt giờ mà không xin phép → khách bực bội.
- Mỗi議題 không có người phụ trách → ai chịu trách nhiệm về giờ giấc?

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 時間配分 | じかんはいぶん | THỜI GIAN PHỐI PHẦN | Phân bổ thời gian |
| 開始 | かいし | KHAI THỈ | Bắt đầu |
| 終了 | しゅうりょう | CHUNG LIỄU | Kết thúc |
| 延長 | えんちょう | DIÊN TRƯỞNG | Kéo dài |
| 押す | おす | — | (時間が押す) Trễ giờ |
| 可否 | かひ | KHẢ PHỦ | Có / không |
| 〜途中 | とちゅう | ĐỒ TRUNG | Giữa chừng |
| 相談 | そうだん | TƯƠNG ĐÀM | Tham vấn / xin phép |', 'system', 16, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000017, 800000004, NULL, 'markdown_book', 'Rule 17 — Khi đến muộn — vào họp giữa chừng / 遅れて入室する場合', '# Rule 17 — Khi đến muộn — vào họp giữa chừng / 遅れて入室する場合
> **Luận điểm.** Khi bắt buộc phải đến trễ: (1) liên lạc trước qua chat / SMS, (2) vào phòng KHẼ KHÀNG, gấp người chào, (3) câu xin lỗi NGẮN: 「失礼いたします、遅れて申し訳ございません」, (4) ngồi xuống NHANH, KHÔNG xin lại chương trình họp giữa chừng.
>
> 遅刻時の入室4ステップ：①事前連絡 ②静かに入室 ③一言謝罪「失礼いたします、遅れて申し訳ございません」 ④速やかに着席。途中で議題確認はしない。
>
> **Liên quan:** Rule 06 (5分前到着), Rule 18 (vắng mặt), Rule 38 (hoãn họp). Sách 02 Rule 25 (gọi báo trễ).

---

## Bối cảnh / 場面
Anh Tuấn (tech lead) bị kẹt ở buổi họp trước. Báo Dũng qua Slack rằng sẽ trễ 10 phút. Đến 15:12 mới vào được phòng họp. Buổi họp đang ở mục 1 (議題1) — phần báo cáo tiến độ.

---

## Hội thoại XẤU — vào ầm ĩ, hỏi lại chương trình họp
*15:12 ドアを開けて入る · 進行を止めて説明 · 時計を見て*

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「すみませんすみません！前の<ruby>会議<rt>かいぎ</rt></ruby>が<ruby>長引<rt>ながび</rt></ruby>いて…えーと、今どこの<ruby>議題<rt>ぎだい</rt></ruby>ですか？<ruby>資料<rt>しりょう</rt></ruby>は何ページ？」 <br/>*Xin lỗi xin lỗi! Buổi họp trước nó dài quá... ờ, đang ở mục nào thế? Tài liệu trang mấy?* |
| **ズン** | 「議題1の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>の<ruby>最後<rt>さいご</rt></ruby>で…」 <br/>*Đang ở mục 1 phần cuối báo cáo tiến độ ạ...* |
| **トゥアン** | 「あ、でもさっき<ruby>自分<rt>じぶん</rt></ruby>が報告する話、もう<ruby>終<rt>お</rt></ruby>わってます？」 <br/>*À nhưng phần em báo cáo lúc nãy xong rồi à?* |
| **大垣** | *(<ruby>進行<rt>しんこう</rt></ruby>が止まった…)* <br/>*(Mạch buổi họp bị dừng lại…)* |

**Vì sao xấu:** Vào ầm ĩ + xin cập nhật giữa họp → cả phòng phải dừng lại để tóm tắt lại cho mình. Mất 2-3 phút của khách. 「すみませんすみません」 lặp lại nhiều = không chuyên nghiệp.

---

## Hội thoại TỐT — vào khẽ, 1 câu, ngồi xuống
*事前にSlackで「10分遅れます、進めてください」と連絡済み — 15:12 ドアを少し開ける · 軽くお辞儀し、空席へ静かに移動、着席 · 進行を止めずに自然に挿入*

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「<ruby>失礼<rt>しつれい</rt></ruby>いたします、<ruby>遅<rt>おく</rt></ruby>れて<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません【1】。」 <br/>*Em xin phép, em xin lỗi vì đến muộn ạ.* |
| **トゥアン** | *(<ruby>軽<rt>かる</rt></ruby>くお<ruby>辞儀<rt>じぎ</rt></ruby>して<ruby>空席<rt>くうせき</rt></ruby>へ静かに<ruby>移動<rt>いどう</rt></ruby>、<ruby>無言<rt>むごん</rt></ruby>で資料を開き、<ruby>議事<rt>ぎじ</rt></ruby>に<ruby>追<rt>お</rt></ruby>いつく【2】)* <br/>*(Cúi nhẹ chào, đi qua chỗ trống lặng lẽ, mở tài liệu im lặng, theo kịp nội dung)* |
| **ズン** | 「トゥアンさん、議題1の<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認中<rt>かくにんちゅう</rt></ruby>です。<ruby>問題<rt>もんだい</rt></ruby>なければ<ruby>続<rt>つづ</rt></ruby>けます。」 <br/>*Anh Tuấn, mình đang ở phần xác nhận cuối mục 1. Không vấn đề gì thì mình tiếp nhé.* |
| **トゥアン** | 「ありがとうございます。お<ruby>続<rt>つづ</rt></ruby>けください【3】。」 <br/>*Cảm ơn em. Mời em tiếp tục ạ.* |

 **Ghi chú:**
- 【1】**「失礼いたします、遅れて申し訳ございません」** — Câu duy nhất nói khi vào. Đầy đủ rồi. Không thêm "前の会議が…" (biện minh) → chia sẻ lý do qua chat ngoài giờ.
- 【2】**「無言で資料を開き、議事に追いつく」** — đến trễ là trách nhiệm tự theo kịp nội dung, không phiền cả phòng.
- 【3】**「お続けください」** — cụm khiêm nhường để司会 tiếp tục. Tránh 「続けてください」 (mệnh lệnh).

---

## Cụm từ mẫu
> **「失礼いたします、遅れて申し訳ございません — それだけ。」**
>
> *Chỉ 1 câu này. Không xin lại chương trình họp, không kể lý do trong họp.*

---

## Quy trình đến trễ
| Khi nào | Việc cần làm |
|---------|-------------|
| Biết sẽ trễ | Nhắn 司会 qua tin nhắn: "〇分遅れます、進めてください" |
| Vào phòng | Mở cửa nhẹ, gấp người chào |
| Câu chào | 「失礼いたします、遅れて申し訳ございません」 |
| Ngồi xuống | Im lặng, mở tài liệu, theo kịp nội dung |
| Sau họp | Cảm ơn 司会 + xin lỗi đối tác (nếu cần thêm) |

---

## Tránh
- 「すみませんすみません」 lặp lại nhiều lần.
- Hỏi lại chương trình họp / số trang tài liệu giữa họp.
- Kể lý do dài 「前の会議が長引いて…」.
- Đến muộn mà không báo trước qua chat.
- Đến muộn 2 lần liên tiếp → cần email xin lỗi cá nhân với khách Nhật.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 遅刻 | ちこく | TRÌ KHẮC | Trễ giờ |
| 入室 | にゅうしつ | NHẬP THẤT | Vào phòng |
| 失礼いたします | しつれいいたします | THẤT LỄ | "Em xin phép..." (formal) |
| 遅れる | おくれる | — | Trễ |
| 申し訳ございません | もうしわけございません | — | Em vô cùng xin lỗi |
| 着席 | ちゃくせき | TRƯỚC TỊCH | Ngồi xuống |
| 追いつく | おいつく | — | Bắt kịp |
| お続けください | おつづけください | — | Mời anh/chị tiếp tục |', 'system', 17, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000018, 800000004, NULL, 'markdown_book', 'Rule 18 — Khi có người vắng mặt / 欠席者の対応', '# Rule 18 — Khi có người vắng mặt / 欠席者の対応
> **Luận điểm.** Khi có người không đến: 司会 phải **公表 ngay đầu họp**: (1) ai vắng, (2) lý do **ngắn gọn** (không kể chi tiết riêng tư), (3) **báo kế hoạch gửi lại biên bản**, (4) nếu cần ý kiến của họ → **持ち帰り** xác nhận sau. Cấm "vẫn quyết tiếp" mà không nói gì.
>
> 欠席者の対応：①氏名公表 ②簡潔な理由 ③議事録の共有方針 ④input 必要なら持ち帰り合意。黙って進めるのは禁。
>
> **Liên quan:** Rule 17 (đến muộn), Rule 25 (持ち帰り), Rule 45 (gửi biên bản 24h), Rule 48 (cập nhật người vắng).

---

## Bối cảnh / 場面
Trước nội dung 1, em Linh báo Dũng: chị Hương副部長 bị sốt sáng nay, không tới được. Đã báo trước cho 松本様 qua mail, nhưng anh 大垣 chưa biết.

---

## Hội thoại XẤU — không công bố, vẫn quyết tiếp
*vào thẳng nội dung 1*

| Vai | Câu |
|---------|-----|
| **ズン** | 「では、4月<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>から…」 <br/>*Vâng, mình bắt đầu từ báo cáo tiến độ tháng 4 nhé...* |
| **大垣** | 「あれ、フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>は？」 <br/>*Ơ, chị Hương Phó phòng đâu?* |
| **ズン** | 「あ、すみません、フオンは本日<ruby>体調不良<rt>たいちょうふりょう</rt></ruby>で…」 <br/>*À em xin lỗi, chị Hương hôm nay không khỏe ạ...* |
| **大垣** | 「なるほど。ただ、5月スコープの<ruby>最終<rt>さいしゅう</rt></ruby><ruby>決裁<rt>けっさい</rt></ruby>はフオン副部長の<ruby>権限<rt>けんげん</rt></ruby>と聞いているのですが、本日<ruby>決定<rt>けってい</rt></ruby>できますか？」 <br/>*À ra vậy. Nhưng anh nghe nói quyết cuối scope tháng 5 thuộc thẩm quyền chị Hương — hôm nay có quyết được không?* |

**Vì sao xấu:** Không thông báo ngay → khách phát hiện giữa chừng. Nguy hiểm hơn: anh Ōgaki không biết người có quyền quyết vắng → có thể đi đến một quyết định hớ mà người có thẩm quyền sau đó lại từ chối.

---

## Hội thoại TỐT — 公表 + plan rõ
*rule 12 出席者紹介の直後*

| Vai | Câu |
|---------|-----|
| **ズン** | 「なお、本日 <ruby>弊社<rt>へいしゃ</rt></ruby> 副部長のフオンは体調不良のため<ruby>欠席<rt>けっせき</rt></ruby>となります【1】。<ruby>事前<rt>じぜん</rt></ruby>に松本様にはご<ruby>連絡済<rt>れんらくず</rt></ruby>みでございます。」 <br/>*Em xin báo thêm, hôm nay phía bên em chị Hương Phó phòng vắng vì không khỏe ạ. Em đã liên hệ trước với anh Matsumoto rồi ạ.* |
| **ズン** | 「<ruby>議事録<rt>ぎじろく</rt></ruby>は<ruby>終了後<rt>しゅうりょうご</rt></ruby>本日中にフオンへ<ruby>共有<rt>きょうゆう</rt></ruby>いたします【2】。」 <br/>*Biên bản em sẽ chia sẻ cho chị Hương ngay trong hôm nay sau khi họp xong ạ.* |
| **ズン** | 「5月スコープの最終決裁はフオンの権限のため、本日は『<ruby>方向性<rt>ほうこうせい</rt></ruby><ruby>合意<rt>ごうい</rt></ruby>』までとさせていただき、<ruby>最終確定<rt>さいしゅうかくてい</rt></ruby>はフオン<ruby>確認後<rt>かくにんご</rt></ruby> 明日中にメールでご連絡いたします【3】。」 <br/>*Phần phê duyệt cuối scope tháng 5 thuộc thẩm quyền chị Hương, nên hôm nay em xin phép dừng ở mức ''thống nhất hướng'', sau đó chốt cuối em sẽ mail báo trong ngày mai khi chị Hương xác nhận ạ.* |
| **大垣** | 「<ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>明確<rt>めいかく</rt></ruby>で<ruby>助<rt>たす</rt></ruby>かります。」 <br/>*Anh hiểu rồi. Em nói rõ thế này hay lắm.* |

 **Ghi chú:**
- 【1】**「弊社 副部長のフオンは体調不良のため欠席」** — người nhà 内 (uchi) thì bỏ kính ngữ chức danh. Lý do ngắn 「体調不良」 đủ rồi, không kể "sốt 38度" hay "đi bệnh viện".
- 【2】**「議事録は本日中に〇〇へ共有」** — cam kết thời hạn. Liên kết rule 45 + rule 48.
- 【3】**「方向性合意までとさせていただき、最終確定は…」** — nêu rõ rằng quyết định cuối cần người vắng xác nhận. Đây là cách tránh "quyết hớ rồi rút lại".

---

## Cụm từ mẫu
> **「欠席者は冒頭公表 + 議事録共有 + 持ち帰り合意。黙って進めない。」**
>
> *Người vắng phải báo ngay đầu + báo kế hoạch gửi biên bản + giữ lại (持ち帰り) quyết định nào cần xác nhận sau.*

---

## Tránh
- Không 公表 → khách tự phát hiện = mất uy tín.
- Kể chi tiết lý do (bệnh / việc cá nhân) → không cần thiết.
- Quyết "thay" người vắng nếu không có thẩm quyền → quyết bị rút lại = thất hứa.
- Quên gửi biên bản cho người vắng → họ không theo kịp được (rule 48).

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 欠席 | けっせき | KHUYẾT TỊCH | Vắng mặt |
| 体調不良 | たいちょうふりょう | THỂ ĐIỀU BẤT LƯƠNG | Không khỏe (lý do thông dụng) |
| 決裁 | けっさい | QUYẾT TÀI | Phê duyệt / ký duyệt |
| 権限 | けんげん | QUYỀN HẠN | Thẩm quyền |
| 方向性 | ほうこうせい | PHƯƠNG HƯỚNG TÍNH | Định hướng |
| 最終確定 | さいしゅうかくてい | TỐI CHUNG XÁC ĐỊNH | Chốt cuối |
| 共有 | きょうゆう | CỘNG HỮU | Chia sẻ |
| 〜のため | のため | — | Vì lý do... |', 'system', 18, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000019, 800000004, NULL, 'markdown_book', 'Rule 19 — Phát biểu xin lượt nói / 発言の挙手', '# Rule 19 — Phát biểu xin lượt nói / 発言の挙手
> **Luận điểm.** Trong họp với khách Nhật, **không cắt lời**. Muốn phát biểu phải xin lượt: 「恐れ入りますが、一点よろしいでしょうか？」. Câu xin lượt làm 3 việc: (1) báo có ý muốn nói, (2) xin phép, (3) cho người đang nói cơ hội kết thúc câu.
>
> 日本の会議では割り込みは失礼。発言前に「恐れ入りますが、一点よろしいでしょうか？」で挙手する。
>
> **Liên quan:** Rule 20 (đặt câu hỏi), Rule 21 (xin làm rõ), Rule 23 (phản đối).

---

## Bối cảnh / 場面
Họp định kỳ tháng 4 đang đi vào phần báo cáo tiến độ. Anh Matsumoto đang trình bày, em Dũng phát hiện một số liệu cần xác nhận lại nhưng chưa đến lượt mình.

---

## Hội thoại XẤU — cắt lời giữa câu
*cắt ngang · dừng, hơi khựng*

| Vai | Câu |
|---------|-----|
| **松本** | 「4月の<ruby>進捗<rt>しんちょく</rt></ruby>ですが、API<ruby>連携<rt>れんけい</rt></ruby>の部分で…」 <br/>*Về tiến độ tháng 4, phần kết nối API thì...* |
| **ズン** | 「あ、その部分なんですけど、<ruby>数字<rt>すうじ</rt></ruby>が違うと思います。」 <br/>*À, phần đó ấy, em nghĩ số liệu sai ạ.* |
| **松本** | 「…そうですか。<ruby>最後<rt>さいご</rt></ruby>まで聞いていただけますか？」 <br/>*...Vậy à. Phiền Dũng nghe hết câu đã được không?* |
| **ズン** | 「すみません…」 <br/>*Em xin lỗi ạ...* |

**Vì sao xấu:** Cắt lời = mất mặt cho người đang nói + phá nhịp cuộc họp. Khách Nhật cảm thấy bị thiếu tôn trọng, dù nội dung em Dũng nói có đúng.

---

## Hội thoại TỐT — xin lượt nói
*đợi câu kết thúc, giơ tay nhẹ*

| Vai | Câu |
|---------|-----|
| **松本** | 「4月の<ruby>進捗<rt>しんちょく</rt></ruby>ですが、API<ruby>連携<rt>れんけい</rt></ruby>の部分で<ruby>予定<rt>よてい</rt></ruby>通り<ruby>進<rt>すす</rt></ruby>んでおります。」 <br/>*Về tiến độ tháng 4, phần kết nối API đang tiến triển đúng kế hoạch ạ.* |
| **ズン** | 「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、<ruby>一点<rt>いってん</rt></ruby>よろしいでしょうか？【1】」 <br/>*Xin lỗi anh, cho em hỏi 1 điểm được không ạ?* |
| **松本** | 「どうぞ。」 <br/>*Mời Dũng.* |
| **ズン** | 「API<ruby>連携<rt>れんけい</rt></ruby>の<ruby>進捗率<rt>しんちょくりつ</rt></ruby>の<ruby>数字<rt>すうじ</rt></ruby>について、<ruby>確認<rt>かくにん</rt></ruby>させていただきたい点がございます【2】。」 <br/>*Về số liệu tỷ lệ tiến độ kết nối API, em có 1 điểm muốn xin xác nhận lại ạ.* |

 **Ghi chú:**
- 【1】**「恐れ入りますが、一点よろしいでしょうか？」** — câu xin lượt nói chuẩn phong cách công sở Nhật. 「一点」 báo trước "chỉ 1 điểm" → không chiếm thời gian.
- 【2】**「確認させていただきたい点がございます」** — không nói thẳng "数字が違う". Mở bằng "muốn xác nhận lại" → để người đang nói tự rà lại, giữ thể diện.

---

## Cụm từ mẫu
> **「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、<ruby>一点<rt>いってん</rt></ruby>よろしいでしょうか？」**
>
> *Câu vạn năng để xin lượt nói. Nhớ đợi câu hiện tại kết thúc rồi mới xen vào.*

---

## Tránh
- Cắt giữa câu — kể cả khi mình thấy thông tin sai.
- Bỏ qua xin lượt, nói thẳng nội dung — dù lời lẽ trang trọng vẫn bị coi là 失礼.
- Dùng 「ちょっと」 quá nhiều — trong họp formal, 「恐れ入りますが」 chuẩn hơn.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 恐れ入りますが | おそれいりますが | — | Xin lỗi cho phép em... |
| 一点 | いってん | NHẤT ĐIỂM | Một điểm |
| 挙手 | きょしゅ | CỬ THỦ | Giơ tay |
| 発言 | はつげん | PHÁT NGÔN | Phát biểu |
| 割り込み | わりこみ | — | Cắt ngang |
| 確認させていただく | かくにんさせていただく | — | Xin được xác nhận |', 'system', 19, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000020, 800000004, NULL, 'markdown_book', 'Rule 20 — Đặt câu hỏi 5W1H / 質問の5W1H', '# Rule 20 — Đặt câu hỏi 5W1H / 質問の5W1H
> **Luận điểm.** Câu hỏi vòng vo = lãng phí thời gian họp. Hỏi chuẩn trong tiếng Nhật công sở cần (1) **đóng khung 5W1H** rõ — ai/cái gì/khi nào/ở đâu/tại sao/thế nào, (2) **1 câu hỏi 1 lần**, (3) **mở bằng** 「〜について確認させていただきたいのですが」 và **đóng bằng** 「〜でしょうか？」.
>
> 質問は5W1Hを絞り、1問1答が原則。「〜について確認させていただきたいのですが、〜でしょうか？」が標準形。
>
> **Liên quan:** Rule 19 (xin lượt), Rule 21 (xin hỏi lại cho rõ), Rule 28 (xin dữ liệu).

---

## Bối cảnh / 場面
Em Dũng đang nghe anh Ōgaki trình bày phạm vi giai đoạn 2. Em muốn hỏi rõ hạn chót + người phụ trách phía 白鷗 nhưng đặt câu hỏi vòng vo.

---

## Hội thoại XẤU — câu hỏi vòng vo, gộp nhiều câu
*hơi khó chịu*

| Vai | Câu |
|---------|-----|
| **大垣** | 「Phase 2では、<ruby>新規<rt>しんき</rt></ruby>モジュールを3つ<ruby>追加<rt>ついか</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。」 <br/>*Phase 2 chúng tôi dự kiến thêm 3 module mới.* |
| **ズン** | 「あ、それで、いつとか<ruby>誰<rt>だれ</rt></ruby>がとか、あと<ruby>何<rt>なん</rt></ruby>の<ruby>機能<rt>きのう</rt></ruby>で、どこにデプロイするかとか、<ruby>色々<rt>いろいろ</rt></ruby>お<ruby>聞<rt>き</rt></ruby>きしたいのですが…」 <br/>*À thế thì, khi nào ấy, ai làm ấy, rồi tính năng gì, deploy ở đâu, em muốn hỏi nhiều thứ ạ...* |
| **大垣** | 「…<ruby>一<rt>ひと</rt></ruby>つずつお<ruby>願<rt>ねが</rt></ruby>いできますか？」 <br/>*...Phiền Dũng hỏi từng câu một được không?* |

**Vì sao xấu:** Hỏi 4 câu (when / who / what / where) trong 1 câu → đối phương không biết trả lời cái nào trước. 「色々」 mơ hồ → không chuyên nghiệp.

---

## Hội thoại TỐT — đóng khung từng câu hỏi
| Vai | Câu |
|---------|-----|
| **大垣** | 「Phase 2では、<ruby>新規<rt>しんき</rt></ruby>モジュールを3つ<ruby>追加<rt>ついか</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。」 <br/>*Phase 2 chúng tôi dự kiến thêm 3 module mới.* |
| **ズン** | 「ありがとうございます。3<ruby>点<rt>てん</rt></ruby>、<ruby>順番<rt>じゅんばん</rt></ruby>にお<ruby>伺<rt>うかが</rt></ruby>いしたく<ruby>存<rt>ぞん</rt></ruby>じます【1】。まず、リリース<ruby>予定日<rt>よていび</rt></ruby>について<ruby>確認<rt>かくにん</rt></ruby>させていただきたいのですが、いつ<ruby>頃<rt>ごろ</rt></ruby>をお<ruby>考<rt>かんが</rt></ruby>えでしょうか【2】？」 <br/>*Cảm ơn anh. Em xin được hỏi 3 điểm theo thứ tự ạ. Đầu tiên, về ngày dự kiến release, anh đang nghĩ khoảng bao giờ ạ?* |
| **大垣** | 「7<ruby>月末<rt>がつまつ</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>にしています。」 <br/>*Chúng tôi đặt mục tiêu cuối tháng 7.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>次<rt>つぎ</rt></ruby>に、<ruby>白鷗<rt>はくおう</rt></ruby><ruby>様<rt>さま</rt></ruby>側の<ruby>主担当<rt>しゅたんとう</rt></ruby>はどなた<ruby>様<rt>さま</rt></ruby>になりますでしょうか？」 <br/>*Vâng em rõ ạ. Tiếp theo, người phụ trách chính bên 白鷗 sẽ là ai ạ?* |

 **Ghi chú:**
- 【1】**「3点、順番にお伺いしたく存じます」** — báo trước số câu hỏi để đối phương quản lý nhịp + biết là không lan man.
- 【2】**「〜について確認させていただきたいのですが、〜でしょうか？」** — cấu trúc chuẩn: mở khung → câu hỏi cụ thể.

---

## Cụm từ mẫu
> **「〜について<ruby>確認<rt>かくにん</rt></ruby>させていただきたいのですが、〜でしょうか？」**
>
> *Mỗi câu hỏi 1 W. Hỏi xong câu này rồi mới sang câu kế tiếp.*

---

## Tránh
- Gộp 3-4 câu hỏi vào 1 câu → rối.
- Dùng 「色々」「とか」「あと」 — câu hỏi mất sắc nét.
- Hỏi xong không đợi trả lời, nói luôn ý kiến mình.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 順番に | じゅんばんに | THUẬN PHIÊN | Theo thứ tự |
| お伺いする | おうかがいする | — | Xin được hỏi (kenjō) |
| 主担当 | しゅたんとう | CHỦ ĐẢM ĐƯƠNG | Người phụ trách chính |
| リリース予定日 | リリースよていび | — | Ngày dự kiến release |
| デプロイ | でぷろい | — | Deploy |', 'system', 20, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000021, 800000004, NULL, 'markdown_book', 'Rule 21 — Xin làm rõ khi không hiểu / 不明点の確認', '# Rule 21 — Xin làm rõ khi không hiểu / 不明点の確認
> **Luận điểm.** Không hiểu → **PHẢI** hỏi lại. Im lặng = đối phương tưởng đã đồng ý → sau này phát sinh sai sót lớn. Câu xin làm rõ chuẩn: 「申し訳ございません、〇〇という点をもう一度ご説明いただけますでしょうか？」 — chỉ rõ điểm không hiểu, không nói "tất cả" mơ hồ.
>
> 不明点はその場で確認する。曖昧なまま進めると後の手戻りが大きい。
>
> **Liên quan:** Rule 19 (xin lượt), Rule 20 (đặt câu hỏi 5W1H), Rule 24 (tóm tắt).

---

## Bối cảnh / 場面
Anh Matsumoto đang giải thích về cấu trúc phân quyền mới (RBAC) bằng thuật ngữ chuyên môn. Em Dũng nghe lướt qua nhưng có 1 phần không hiểu. Theo phản xạ, em định gật đầu cho qua.

---

## Hội thoại XẤU — gật đầu cho qua
*không hiểu nhưng gật đầu · 2 tuần sau, thiết kế sai → phải làm lại · sau cuộc họp tiếp theo*

| Vai | Câu |
|---------|-----|
| **松本** | 「<ruby>権限<rt>けんげん</rt></ruby>は<ruby>組織<rt>そしき</rt></ruby><ruby>階層<rt>かいそう</rt></ruby>と<ruby>職務<rt>しょくむ</rt></ruby><ruby>属性<rt>ぞくせい</rt></ruby>のクロスマトリックスで<ruby>管理<rt>かんり</rt></ruby>します。」 <br/>*Quyền sẽ được quản lý theo cross-matrix giữa phân cấp tổ chức và thuộc tính chức trách.* |
| **ズン** | 「はい、<ruby>承知<rt>しょうち</rt></ruby>しました。」 <br/>*Vâng em rõ ạ.* |
| **フオン** | 「ズン、なんでその<ruby>場<rt>ば</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>しなかったの？2<ruby>週間<rt>しゅうかん</rt></ruby>ロスしたよ。」 <br/>*Dũng, sao lúc đó em không hỏi lại? Mất 2 tuần đấy.* |

**Vì sao xấu:** 「承知しました」 = "đã hiểu". Nói khi không hiểu → cam kết sai → 2 tuần sau phát hiện thì phải làm lại rất tốn. Khách Nhật không trách, nhưng lòng tin giảm.

---

## Hội thoại TỐT — chỉ rõ điểm không hiểu
| Vai | Câu |
|---------|-----|
| **松本** | 「権限は組織階層と職務属性のクロスマトリックスで管理します。」 <br/>*Quyền sẽ được quản lý theo cross-matrix giữa phân cấp tổ chức và thuộc tính chức trách.* |
| **ズン** | 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、『クロスマトリックス』という<ruby>点<rt>てん</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby>ご<ruby>説明<rt>せつめい</rt></ruby>いただけますでしょうか【1】？」 <br/>*Xin lỗi anh, phần ''cross-matrix'' phiền anh giải thích lại giúp em được không ạ?* |
| **松本** | 「はい。<ruby>例<rt>たと</rt></ruby>えば、<ruby>部長<rt>ぶちょう</rt></ruby>という階層と、<ruby>経理<rt>けいり</rt></ruby>という職務、<ruby>両方<rt>りょうほう</rt></ruby>を<ruby>満<rt>み</rt></ruby>たす<ruby>人<rt>ひと</rt></ruby>だけが<ruby>見<rt>み</rt></ruby>られる、という<ruby>設計<rt>せっけい</rt></ruby>です。」 <br/>*Vâng. Ví dụ chỉ những người vừa có cấp trưởng phòng vừa có chức vụ kế toán mới được xem, là thiết kế như vậy.* |
| **ズン** | 「ありがとうございます。階層 AND 職務、両方の<ruby>条件<rt>じょうけん</rt></ruby>を満たす<ruby>場合<rt>ばあい</rt></ruby>のみアクセス<ruby>可<rt>か</rt></ruby>、という<ruby>認識<rt>にんしき</rt></ruby>でよろしいでしょうか【2】？」 <br/>*Em cảm ơn ạ. Vậy là phải thoả mãn cả 2 điều kiện cấp bậc AND chức vụ thì mới truy cập được — em hiểu đúng không ạ?* |

 **Ghi chú:**
- 【1】**「〇〇という点をもう一度ご説明いただけますでしょうか？」** — chỉ rõ thuật ngữ không hiểu (「クロスマトリックス」). Không nói 「全部分からない」 — sẽ làm đối phương phải giải thích lại từ đầu.
- 【2】**「〜という認識でよろしいでしょうか？」** — sau khi nghe giải thích, diễn đạt lại để xác nhận đã hiểu đúng. Đây là kỹ thuật lắng nghe tích cực chuẩn trong giao tiếp công sở Nhật.

---

## Cụm từ mẫu
> **「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、〇〇という<ruby>点<rt>てん</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby>ご<ruby>説明<rt>せつめい</rt></ruby>いただけますでしょうか？」**
>
> *Hỏi ngay, đừng giả vờ hiểu. Nhật rất ghét "yes" giả.*

---

## Tránh
- Gật đầu, nói 「承知しました」 khi chưa thực sự hiểu.
- Nói 「全部分かりません」 — đối phương phải giải thích lại từ đầu, mất 5-10 phút.
- Hỏi sau cuộc họp qua tin nhắn — lỡ mất cơ hội xác nhận ngay trước mặt người trong cuộc.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 不明点 | ふめいてん | BẤT MINH ĐIỂM | Điểm không rõ |
| 認識 | にんしき | NHẬN THỨC | Nhận thức / cách hiểu |
| 階層 | かいそう | GIAI TẦNG | Phân cấp |
| 職務 | しょくむ | CHỨC VỤ | Chức trách / nhiệm vụ |
| 権限 | けんげん | QUYỀN HẠN | Quyền hạn |
| 手戻り | てもどり | — | Phải làm lại / rework |', 'system', 21, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000022, 800000004, NULL, 'markdown_book', 'Rule 22 — Đồng ý lịch sự — 5 levels / 同意の表現（5段階）', '# Rule 22 — Đồng ý lịch sự — 5 levels / 同意の表現（5段階）
> **Luận điểm.** Đồng ý không phải chỉ "はい". Có **5 mức**: (1) Hoàn toàn đồng ý / 完全同意 → (2) Đại thể đồng ý / 概ね同意 → (3) Đồng ý một phần / 部分同意 → (4) Trung lập / 中立 → (5) Có ý kiến trái / 異論あり. Chọn đúng level → đối phương biết mức độ đồng thuận.
>
> 同意は「はい」だけではない。完全同意・概ね同意・部分同意・中立・異論ありの5段階を使い分ける。
>
> **Liên quan:** Rule 23 (phản đối), Rule 24 (tóm tắt), Rule 31 (bỏ phiếu).

---

## Bối cảnh / 場面
Anh Matsumoto đề xuất "triển khai phase 2 vào cuối tháng 7". Em Dũng cảm thấy tiến độ gấp nhưng cũng không hoàn toàn phản đối. Cần biểu đạt đúng mức độ đồng ý.

---

## Hội thoại XẤU — chỉ "はい" cho tất cả
*thực ra lo tiến độ gấp · 2 tuần sau trễ lịch, em Dũng phải xin gia hạn*

| Vai | Câu |
|---------|-----|
| **松本** | 「7月末<ruby>リリース<rt>りりーす</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めたいと<ruby>考<rt>かんが</rt></ruby>えております。」 <br/>*Tôi muốn tiến hành theo hướng release cuối tháng 7.* |
| **ズン** | 「はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。」 <br/>*Vâng, OK ạ.* |
| **松本** | 「では、その<ruby>方向<rt>ほうこう</rt></ruby>で<ruby>確定<rt>かくてい</rt></ruby>します。」 <br/>*Vậy chốt theo hướng đó nhé.* |

**Vì sao xấu:** Nói "はい、大丈夫です" = cam kết toàn bộ. Khi sau đó trễ tiến độ → vi phạm cam kết. Lẽ ra phải nói "đồng ý về ý tưởng, nhưng cần kiểm tra tính khả thi".

---

## Hội thoại TỐT — chọn đúng level đồng ý
| Vai | Câu |
|---------|-----|
| **松本** | 「7月末リリースで進めたいと考えております。」 <br/>*Tôi muốn tiến hành theo hướng release cuối tháng 7.* |
| **ズン** | 「<ruby>方向性<rt>ほうこうせい</rt></ruby>につきましては<ruby>概<rt>おお</rt></ruby>ね<ruby>同意<rt>どうい</rt></ruby>でございます【1】。ただ、<ruby>スコープ<rt>すこーぷ</rt></ruby>の<ruby>内訳<rt>うちわけ</rt></ruby>によっては<ruby>時間<rt>じかん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>箇所<rt>かしょ</rt></ruby>もございますので、<ruby>概要<rt>がいよう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させていただいた<ruby>上<rt>うえ</rt></ruby>で、<ruby>改<rt>あらた</rt></ruby>めて<ruby>フィージビリティ<rt>ふぃーじびりてぃ</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>したく<ruby>存<rt>ぞん</rt></ruby>じます【2】。」 <br/>*Về hướng tổng thể em đồng ý đại thể ạ. Tuy nhiên tuỳ phạm vi chi tiết có thể có phần cần thêm thời gian, em xin được kiểm tra tổng quan rồi báo lại tính khả thi ạ.* |
| **松本** | 「なるほど。ではスコープを<ruby>共有<rt>きょうゆう</rt></ruby>しますので、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby>までに feasibility をいただけますか？」 <br/>*Vậy à. Tôi sẽ chia sẻ phạm vi, Dũng cho tôi đánh giá tính khả thi trước thứ Tư tuần sau được không?* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。」 <br/>*Vâng em rõ ạ.* |

 **Ghi chú 5 levels:**
- **Level 1 — 完全同意** 「全くおっしゃるとおりでございます」
- **Level 2 — 概ね同意** 「方向性につきましては概ね同意でございます」 ← dùng trong ví dụ
- **Level 3 — 部分同意** 「〇〇の点は同意しますが、△△につきましては…」
- **Level 4 — 中立** 「現時点では判断しかねます。持ち帰って検討させてください」
- **Level 5 — 異論あり** 「ご意見はよく分かりました。ただ〜」 (xem rule 23)

【1】**「概ね同意」**(おおむねどうい) — đồng ý phần lớn nhưng có 1-2 điểm cần check.
【2】**「フィージビリティをご報告したく存じます」** — không cam kết ngay, xin thêm thời gian kiểm tra tính khả thi.

---

## Cụm từ mẫu
> **「方向性は概ね同意でございます。ただ、〜の点は確認させてください。」**
>
> *Đồng ý về ý tưởng nhưng chi tiết cần kiểm tra = mức 2. An toàn nhất.*

---

## Tránh
- Nói 「はい、大丈夫です」 cho mọi đề xuất → khi có vấn đề bị coi là phản bội cam kết.
- Im lặng = trong văn hóa JP có thể bị hiểu là 同意 hoặc 不同意 — phải nói rõ.
- Dùng level 5 (異論あり) khi thực ra chỉ là 部分同意.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 同意 | どうい | ĐỒNG Ý | Đồng ý |
| 概ね | おおむね | — | Đại thể / phần lớn |
| 方向性 | ほうこうせい | PHƯƠNG HƯỚNG TÍNH | Hướng / định hướng |
| 内訳 | うちわけ | NỘI DỊCH | Chi tiết phân tách |
| フィージビリティ | ふぃーじびりてぃ | — | Tính khả thi |
| 改めて | あらためて | — | Lại / cẩn thận một lần nữa |', 'system', 22, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000023, 800000004, NULL, 'markdown_book', 'Rule 23 — Phản đối lịch sự / 異論の表現', '# Rule 23 — Phản đối lịch sự / 異論の表現
> **Luận điểm.** Phản đối thẳng = mất quan hệ. Cấu trúc chuẩn trong giao tiếp công việc với khách Nhật: **(1) Đệm mở 「ご意見はよく分かりました」 → (2) Chuyển hướng 「ただ〜」 → (3) Lý do/quan điểm 「〇〇という観点もあるかと存じます」**. Không bao giờ dùng 「いいえ」 đơn lẻ với khách Nhật.
>
> 異論を述べる際は「ご意見はよく分かりました。ただ、〇〇という観点もあるかと存じます」のクッション構造を使う。
>
> **Liên quan:** Rule 22 (đồng ý), Rule 24 (tóm tắt), Rule 27 (phản biện có cơ sở).

---

## Bối cảnh / 場面
Họp đàm phán phase 2. Anh Ōgaki đề xuất giảm ngân sách 20% vẫn giữ nguyên phạm vi. Anh Tuấn (trưởng nhóm kỹ thuật) thấy không khả thi nhưng phải nói khéo.

---

## Hội thoại XẤU — phản đối thẳng
*không khí lạnh*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>予算<rt>よさん</rt></ruby>を20%<ruby>削減<rt>さくげん</rt></ruby>し、スコープは<ruby>維持<rt>いじ</rt></ruby>する<ruby>方向<rt>ほうこう</rt></ruby>でいかがでしょうか？」 <br/>*Hướng giảm ngân sách 20% nhưng giữ nguyên phạm vi, các anh thấy thế nào?* |
| **トゥアン** | 「いいえ、それは<ruby>無理<rt>むり</rt></ruby>です。」 <br/>*Không, cái đó không được ạ.* |
| **大垣** | 「…<ruby>無理<rt>むり</rt></ruby>、ですか。」 <br/>*...Không được, à.* |

**Vì sao xấu:** 「いいえ、無理です」= từ chối thẳng. Trong văn hóa làm việc của người Nhật, câu này gần như mang nghĩa "tôi từ chối thương lượng". Sẽ làm anh Ōgaki mất mặt + chặn đường thương lượng.

---

## Hội thoại TỐT — đệm mở + chuyển hướng + nêu góc nhìn
*tiếp*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>予算<rt>よさん</rt></ruby>を20%<ruby>削減<rt>さくげん</rt></ruby>し、スコープは<ruby>維持<rt>いじ</rt></ruby>する<ruby>方向<rt>ほうこう</rt></ruby>でいかがでしょうか？」 <br/>*Hướng giảm ngân sách 20% nhưng giữ nguyên phạm vi, các anh thấy thế nào?* |
| **トゥアン** | 「ご<ruby>意見<rt>いけん</rt></ruby>はよく<ruby>分<rt>わ</rt></ruby>かりました【1】。ただ、<ruby>現状<rt>げんじょう</rt></ruby>のスコープを<ruby>維持<rt>いじ</rt></ruby>しますと、<ruby>品質保証<rt>ひんしつほしょう</rt></ruby><ruby>工数<rt>こうすう</rt></ruby>の<ruby>確保<rt>かくほ</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しくなる<ruby>観点<rt>かんてん</rt></ruby>もあるかと<ruby>存<rt>ぞん</rt></ruby>じます【2】。」 <br/>*Em đã nhận được ý anh rồi ạ. Tuy nhiên nếu giữ nguyên phạm vi hiện tại, có một góc nhìn là sẽ khó đảm bảo số công cho QA ạ.* |
| **トゥアン** | 「もしよろしければ、スコープを<ruby>優先度別<rt>ゆうせんどべつ</rt></ruby>に<ruby>再整理<rt>さいせいり</rt></ruby>し、<ruby>削減案<rt>さくげんあん</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>にご<ruby>検討<rt>けんとう</rt></ruby>させていただけませんでしょうか【3】？」 <br/>*Nếu được, em xin phép sắp xếp lại phạm vi theo độ ưu tiên rồi cùng anh xem xét phương án cắt giảm có được không ạ?* |
| **大垣** | 「なるほど。それは<ruby>理<rt>り</rt></ruby>にかなっていますね。<ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>優先度<rt>ゆうせんど</rt></ruby>マトリックスを<ruby>共有<rt>きょうゆう</rt></ruby>してください。」 <br/>*Vậy à. Cách đó hợp lý đấy. Tuần sau gửi tôi ma trận ưu tiên nhé.* |

 **Ghi chú:**
- 【1】**「ご意見はよく分かりました」** — câu đệm mở chuẩn. Ghi nhận trước, không bác ngay.
- 【2】**「〇〇という観点もあるかと存じます」** — không nói "ý anh sai" mà nói "có góc nhìn khác". Cấu trúc giữ thể diện 2 bên.
- 【3】**「ご検討させていただけませんでしょうか」** — đề xuất giải pháp thay thế (sắp xếp lại phạm vi theo độ ưu tiên). Phản đối phải kèm phương án đối lại.

---

## Cụm từ mẫu
> **「ご<ruby>意見<rt>いけん</rt></ruby>はよく<ruby>分<rt>わ</rt></ruby>かりました。ただ、〇〇という<ruby>観点<rt>かんてん</rt></ruby>もあるかと<ruby>存<rt>ぞん</rt></ruby>じます。」**
>
> *3 bước: đệm mở → chuyển hướng → nêu góc nhìn. Không bao giờ "いいえ" đơn lẻ.*

---

## Tránh
- 「いいえ、それは違います」 — thẳng quá, trong giao tiếp công việc với khách Nhật không dùng.
- 「無理です」「できません」 đầu câu → đóng cửa thương lượng.
- Phản đối mà không có phương án đối lại → bị coi là phá đám.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 異論 | いろん | DỊ LUẬN | Ý kiến trái chiều |
| 観点 | かんてん | QUAN ĐIỂM | Góc nhìn |
| 工数 | こうすう | CÔNG SỐ | Số công / nhân công |
| 品質保証 | ひんしつほしょう | PHẨM CHẤT BẢO CHỨNG | Đảm bảo chất lượng |
| 優先度 | ゆうせんど | ƯU TIÊN ĐỘ | Mức độ ưu tiên |
| 削減 | さくげん | SÁC GIẢM | Cắt giảm |
| 理にかなう | りにかなう | — | Hợp lý |', 'system', 23, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000024, 800000004, NULL, 'markdown_book', 'Rule 24 — Tóm tắt ý kiến của người khác / 相手の発言を要約', '# Rule 24 — Tóm tắt ý kiến của người khác / 相手の発言を要約
> **Luận điểm.** Sau khi đối phương nói dài, **tóm tắt ngắn lại** để xác nhận mình hiểu đúng. Cấu trúc: 「〇〇様のおっしゃるのは〜という認識でよろしいでしょうか？」. Mục đích: (1) tránh hiểu sai, (2) tạo cơ hội cho đối phương đính chính mình, (3) đẩy cuộc họp tiến.
>
> 相手の発言を自分の言葉で要約し直し、「〜という認識でよろしいでしょうか？」で確認する。
>
> **Liên quan:** Rule 21 (làm rõ thông tin), Rule 22 (đồng ý), Rule 44 (việc cần làm).

---

## Bối cảnh / 場面
Anh Matsumoto vừa giải thích 5 phút về thay đổi yêu cầu module thanh toán: cần thêm 2 cổng (PayPay + LINE Pay), sửa quy trình hoàn tiền, và cập nhật thông báo tiếng Việt. Em Dũng cần xác nhận mình hiểu đúng trước khi ghi chép.

---

## Hội thoại XẤU — không tóm tắt, ghi nhận mơ hồ
*sau 5 phút giải thích · 1 tuần sau, code chỉ thêm PayPay, quên LINE Pay + quy trình hoàn tiền*

| Vai | Câu |
|---------|-----|
| **松本** | 「…<ruby>以上<rt>いじょう</rt></ruby>が<ruby>変更点<rt>へんこうてん</rt></ruby>となります。」 <br/>*...Trên đây là các điểm thay đổi.* |
| **ズン** | 「はい、<ruby>了解<rt>りょうかい</rt></ruby>しました。」 <br/>*Vâng em rõ ạ.* |
| **松本** | 「LINE Pay と<ruby>返金<rt>へんきん</rt></ruby>フローはどうなっていますか？<ruby>前回<rt>ぜんかい</rt></ruby>お<ruby>話<rt>はな</rt></ruby>したと<ruby>思<rt>おも</rt></ruby>うのですが…」 <br/>*LINE Pay và flow hoàn tiền thì sao? Tôi nghĩ lần trước đã nói rồi mà...* |

**Vì sao xấu:** "了解しました" không chứng minh đã hiểu đủ 3 điểm. Khách không có cơ hội đính chính → 1 tuần sau phát sinh hiểu sai lệch.

---

## Hội thoại TỐT — paraphrase 3 điểm
*sau 5 phút giải thích*

| Vai | Câu |
|---------|-----|
| **松本** | 「…以上が変更点となります。」 <br/>*...Trên đây là các điểm thay đổi.* |
| **ズン** | 「松本様のおっしゃるのは、<ruby>3点<rt>さんてん</rt></ruby>【1】の<ruby>変更<rt>へんこう</rt></ruby>——①<ruby>決済<rt>けっさい</rt></ruby>ゲートウェイにPayPayとLINE Payの<ruby>追加<rt>ついか</rt></ruby>、②<ruby>返金<rt>へんきん</rt></ruby>ワークフローの<ruby>修正<rt>しゅうせい</rt></ruby>、③ベトナム<ruby>語<rt>ご</rt></ruby>メッセージの<ruby>更新<rt>こうしん</rt></ruby>——という<ruby>認識<rt>にんしき</rt></ruby>でよろしいでしょうか【2】？」 <br/>*Anh Matsumoto, anh nói gồm 3 điểm thay đổi — (1) thêm PayPay và LINE Pay vào cổng thanh toán, (2) sửa workflow hoàn tiền, (3) update message tiếng Việt — em hiểu đúng không ạ?* |
| **松本** | 「はい、その<ruby>通<rt>とお</rt></ruby>りです。ただ、③については<ruby>優先度<rt>ゆうせんど</rt></ruby><ruby>低<rt>てい</rt></ruby>でも<ruby>構<rt>かま</rt></ruby>いません。」 <br/>*Đúng rồi. Riêng (3) thì độ ưu tiên thấp cũng được nhé.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。①と②を<ruby>最優先<rt>さいゆうせん</rt></ruby>、③は<ruby>後回<rt>あとまわ</rt></ruby>し<ruby>可能<rt>かのう</rt></ruby>、と<ruby>理解<rt>りかい</rt></ruby>いたしました【3】。」 <br/>*Vâng em rõ ạ. Em hiểu là (1) và (2) ưu tiên cao nhất, (3) có thể để sau ạ.* |

 **Ghi chú:**
- 【1】**「3点」** — đếm số điểm cụ thể giúp đối phương kiểm tra thiếu/đủ.
- 【2】**「〜という認識でよろしいでしょうか？」** — câu chốt để xác nhận. Cho phép đối phương sửa nếu mình hiểu sai.
- 【3】**「①と②を最優先、③は後回し可能、と理解いたしました」** — sau khi đối phương đính chính, nhắc lại với cập nhật mới. Xác nhận 2 lần = không sai.

---

## Cụm từ mẫu
> **「〇〇様のおっしゃるのは〜という認識でよろしいでしょうか？」**
>
> *Tóm tắt ngắn → đối phương đính chính được → tránh hiểu sai lệch 1 tuần.*

---

## Tránh
- "了解しました" cho phần giải thích dài 5 phút → không chứng minh hiểu.
- Tóm tắt quá dài (lặp gần như nguyên văn) → phí thời gian.
- Không đếm số điểm → khi có nhiều điểm dễ sót.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 要約 | ようやく | YẾU ƯỚC | Tóm tắt |
| 認識 | にんしき | NHẬN THỨC | Cách hiểu |
| 決済ゲートウェイ | けっさいゲートウェイ | QUYẾT TẾ | Cổng thanh toán |
| 返金 | へんきん | HOÀN KIM | Hoàn tiền |
| ワークフロー | ワークフロー | — | Quy trình xử lý |
| 後回し | あとまわし | — | Để lại sau |
| 最優先 | さいゆうせん | TỐI ƯU TIÊN | Ưu tiên cao nhất |', 'system', 24, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000025, 800000004, NULL, 'markdown_book', 'Rule 25 — Xin thêm thời gian suy nghĩ / 持ち帰って検討', '# Rule 25 — Xin thêm thời gian suy nghĩ / 持ち帰って検討
> **Luận điểm.** Khi không thể quyết ngay → KHÔNG đoán bừa. Cụm chuẩn: 「**持ち帰って検討させてください**」(mochikaette kentō sasete kudasai) — "xin mang về xem xét". Đây là khái niệm cốt lõi trong văn hoá doanh nghiệp Nhật: ra quyết định cần sự đồng thuận nội bộ (稟議 ringi). Nói "持ち帰り" = chuyên nghiệp, không nói = bị ép quyết sai.
>
> 即決できない時は「持ち帰って検討させてください」と素直に伝える。日本では稟議文化のため、即決を求められない。
>
> **Liên quan:** Rule 22 (đồng ý), Rule 29 (bế tắc), Rule 32 (hoãn quyết định).

---

## Bối cảnh / 場面
Anh Ōgaki đột ngột yêu cầu giảm giá 15% ngay trong họp. Em Dũng không có thẩm quyền quyết và cần hỏi ý kiến chị Hương + anh Hà. Phải xin "持ち帰り" khéo léo.

---

## Hội thoại XẤU — quyết bừa hoặc từ chối thẳng
*không có thẩm quyền nhưng muốn chốt thương vụ · về công ty, chị Hương phát hiện 15% = lỗ → yêu cầu Dũng đàm phán lại · khi Dũng quay lại đàm*

| Vai | Câu |
|---------|-----|
| **大垣** | 「もし15%の<ruby>値引<rt>ねび</rt></ruby>きが<ruby>可能<rt>かのう</rt></ruby>であれば、<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>契約<rt>けいやく</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めたいのですが。」 <br/>*Nếu giảm được 15% thì chúng tôi muốn ký luôn hôm nay.* |
| **ズン** | 「はい、それで<ruby>問題<rt>もんだい</rt></ruby>ありません！」 <br/>*Vâng, không vấn đề gì ạ!* |
| **大垣** | 「<ruby>先<rt>さき</rt></ruby>ほど『問題ない』とおっしゃったではないですか…」 <br/>*Lúc nãy Dũng đã nói ''không vấn đề gì'' rồi mà...* |

**Vì sao xấu:** Quyết quá quyền hạn → khi nội bộ lật lại thì mất uy tín toàn diện. Hoặc nếu Dũng từ chối thẳng "それは無理です" cũng làm 大垣 mất hứng đàm.

---

## Hội thoại TỐT — xin持ち帰り検討
*tiếp*

| Vai | Câu |
|---------|-----|
| **大垣** | 「もし15%の値引きが可能であれば、本日中に契約を進めたいのですが。」 <br/>*Nếu giảm được 15% thì chúng tôi muốn ký luôn hôm nay.* |
| **ズン** | 「ご<ruby>提案<rt>ていあん</rt></ruby>いただきありがとうございます。15%という<ruby>大<rt>おお</rt></ruby>きなご<ruby>要望<rt>ようぼう</rt></ruby>でございますので、<ruby>一度<rt>いちど</rt></ruby><ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>って<ruby>社内<rt>しゃない</rt></ruby>で<ruby>検討<rt>けんとう</rt></ruby>させていただけませんでしょうか【1】？」 <br/>*Em cảm ơn anh đã đề xuất ạ. 15% là yêu cầu khá lớn, em xin phép mang về xem xét nội bộ trước được không ạ?* |
| **ズン** | 「<ruby>明日中<rt>あすじゅう</rt></ruby>に<ruby>上長<rt>じょうちょう</rt></ruby>と<ruby>協議<rt>きょうぎ</rt></ruby>し、<ruby>明後日<rt>あさって</rt></ruby><ruby>午前中<rt>ごぜんちゅう</rt></ruby>までにご<ruby>回答<rt>かいとう</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます【2】。」 <br/>*Em sẽ trao đổi với cấp trên trong ngày mai, và xin trả lời anh trước trưa ngày kia ạ.* |
| **大垣** | 「<ruby>分<rt>わ</rt></ruby>かりました。では明後日のご<ruby>連絡<rt>れんらく</rt></ruby>をお<ruby>待<rt>ま</rt></ruby>ちしております。」 <br/>*Tôi hiểu rồi. Vậy ngày kia tôi sẽ chờ phản hồi của Dũng.* |

 **Ghi chú:**
- 【1】**「持ち帰って社内で検討させていただけませんでしょうか」** — câu chuẩn trong doanh nghiệp Nhật. 「持ち帰り」 = mang về (cụm cốt lõi của JP). Không phải xấu hổ — ngược lại JP coi là chuẩn quy trình.
- 【2】**「明後日午前中までにご回答申し上げます」** — phải kèm **thời hạn cụ thể** trả lời. Không có thời hạn = lý do để khách thúc ép tiếp.

---

## Cụm từ mẫu
> **「一度持ち帰って社内で検討させていただけませんでしょうか？」**
>
> *Mua thời gian + giữ thể diện + có thời hạn. 3 trong 1.*

---

## Tránh
- Quyết ngay vượt thẩm quyền → đảo ngược lại rất tốn uy tín.
- Xin 持ち帰り mà không kèm thời hạn → khách không biết bao giờ có hồi đáp.
- Dùng 「持ち帰り」 cho mọi câu hỏi → bị coi là không chuẩn bị / né tránh.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 持ち帰る | もちかえる | — | Mang về (xem xét) |
| 検討 | けんとう | KIỂM THẢO | Xem xét / cân nhắc |
| 社内 | しゃない | XÃ NỘI | Trong công ty |
| 上長 | じょうちょう | THƯỢNG TRƯỞNG | Cấp trên |
| 値引き | ねびき | — | Giảm giá |
| 稟議 | りんぎ | BẨM NGHỊ | Quy trình duyệt nội bộ JP |
| 即決 | そっけつ | TỨC QUYẾT | Quyết ngay |', 'system', 25, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000026, 800000004, NULL, 'markdown_book', 'Rule 26 — Đề xuất ý tưởng mới / 提案の表現', '# Rule 26 — Đề xuất ý tưởng mới / 提案の表現
> **Luận điểm.** Đề xuất tốt = (1) **xin phép** đề xuất 「ひとつご提案させていただいてもよろしいでしょうか？」, (2) **đặt vấn đề** ngắn (3) **giải pháp** (4) **mời góp ý**. Không tự ý 「私の意見では…」 ngay đầu — nghe áp đặt trong tiếng Nhật.
>
> 提案は「ひとつご提案させていただいてもよろしいでしょうか？」と切り出し、課題→解→意見聞きの順で。
>
> **Liên quan:** Rule 19 (xin lượt), Rule 23 (phản đối), Rule 27 (phản biện).

---

## Bối cảnh / 場面
Đang họp phase 2. Em Hải (FE) thấy có thể tách backlog thành 2 sprint nhỏ thay vì 1 sprint dài → giảm rủi ro slip. Muốn đề xuất.

---

## Hội thoại XẤU — đề xuất áp đặt
*không khí lạnh*

| Vai | Câu |
|---------|-----|
| **ハイ** | 「私の意見では、1つの sprint じゃ無理です。2つに分けるべきです。」 <br/>*Theo ý em, 1 sprint không được đâu. Phải chia thành 2 ạ.* |
| **大垣** | 「…『〜べき』ですか。なるほど。」 <br/>*...''Phải'' à. Vậy à.* |

**Vì sao xấu:** 「〜べき」(nên/phải) trong họp tiếng Nhật hơi mệnh lệnh khi nói với khách. 「私の意見では」 ngay đầu = đề cao cái tôi.

---

## Hội thoại TỐT — xin phép + đề xuất + mời góp ý
| Vai | Câu |
|---------|-----|
| **ハイ** | 「ひとつご<ruby>提案<rt>ていあん</rt></ruby>させていただいてもよろしいでしょうか【1】？」 <br/>*Em xin được đề xuất 1 ý có được không ạ?* |
| **大垣** | 「どうぞ。」 <br/>*Mời em.* |
| **ハイ** | 「<ruby>現在<rt>げんざい</rt></ruby>のバックログ<ruby>規模<rt>きぼ</rt></ruby>ですと、1スプリントで<ruby>完了<rt>かんりょう</rt></ruby>するにはリスクがあるかと<ruby>存<rt>ぞん</rt></ruby>じます。【課題】そこで、<ruby>優先度<rt>ゆうせんど</rt></ruby><ruby>別<rt>べつ</rt></ruby>に2スプリントに<ruby>分割<rt>ぶんかつ</rt></ruby>し、<ruby>第<rt>だい</rt></ruby>1スプリントでコア<ruby>機能<rt>きのう</rt></ruby>、第2スプリントで<ruby>拡張機能<rt>かくちょうきのう</rt></ruby>、という<ruby>構成<rt>こうせい</rt></ruby>はいかがでしょうか【2】？【解】<ruby>皆様<rt>みなさま</rt></ruby>のご<ruby>意見<rt>いけん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できればと存じます【3】。【意見聞き】」 <br/>*Với khối lượng backlog hiện tại, em e là làm 1 sprint sẽ có rủi ro ạ. Nên em xin đề xuất chia thành 2 sprint theo độ ưu tiên — sprint 1 làm core, sprint 2 làm tính năng mở rộng — anh/chị thấy thế nào ạ? Em rất mong nhận được góp ý ạ.* |
| **大垣** | 「<ruby>面白<rt>おもしろ</rt></ruby>い提案ですね。スプリント1のスコープ<ruby>案<rt>あん</rt></ruby>をいただけますか？」 <br/>*Đề xuất hay đấy. Cho tôi xem dự thảo phạm vi sprint 1 nhé?* |

 **Ghi chú:**
- 【1】**「ひとつご提案させていただいてもよろしいでしょうか？」** — xin phép. Cho đối phương cảm giác kiểm soát.
- 【2】**「〜という構成はいかがでしょうか？」** — không nói "nên/phải" mà mời gọi "thế nào ạ?".
- 【3】**「ご意見を頂戴できればと存じます」** — đóng bằng câu mời góp ý. Giọng điệu khiêm tốn.

---

## Cụm từ mẫu
> **「ひとつご提案させていただいてもよろしいでしょうか？〜という構成はいかがでしょうか？」**
>
> *Xin phép → Nêu vấn đề → Giải pháp → 「いかがでしょうか」. 4 bước.*

---

## Tránh
- 「〜べきです」 với khách Nhật → quá thẳng.
- 「私の意見では」 đầu câu → đặt cái tôi lên trước.
- Đề xuất mà không kèm 課題 (nêu vấn đề) → không thuyết phục.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 提案 | ていあん | ĐỀ ÁN | Đề xuất |
| 構成 | こうせい | CẤU THÀNH | Cấu trúc / phối hợp |
| バックログ | ばっくろぐ | — | Backlog |
| スプリント | すぷりんと | — | Sprint |
| 拡張機能 | かくちょうきのう | KHUẾCH TRƯƠNG CƠ NĂNG | Tính năng mở rộng |
| 頂戴する | ちょうだいする | ĐÍNH ĐÁI | Xin nhận (kenjō) |', 'system', 26, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000027, 800000004, NULL, 'markdown_book', 'Rule 27 — Phản biện có cơ sở / 根拠を伴った反論', '# Rule 27 — Phản biện có cơ sở / 根拠を伴った反論
> **Luận điểm.** Phản biện không có dữ liệu = ý kiến cá nhân. Cấu trúc chuẩn: **(1) Ghi nhận** → **(2) "ただ"** → **(3) Dữ liệu / thông tin cụ thể** → **(4) Đề xuất khác**. Khác rule 23 (phản đối lịch sự) ở chỗ rule 27 phải kèm số liệu / dẫn chứng.
>
> 反論には必ず根拠（数値・データ・事実）を伴う。「思います」ではなく「数字では〜」と裏付ける。
>
> **Liên quan:** Rule 23 (phản đối), Rule 26 (đề xuất), Rule 28 (xin dữ liệu).

---

## Bối cảnh / 場面
Anh Ōgaki cho rằng "team Việt có năng suất tương đương Ấn Độ → 6 người đủ làm phase 2 trong 8 tuần". Anh Tuấn (trưởng kỹ thuật) có dữ liệu thực tế của team — cần phản biện có cơ sở.

---

## Hội thoại XẤU — phản biện cảm tính
| Vai | Câu |
|---------|-----|
| **大垣** | 「インドのチームでは6名・8週間で<ruby>同等<rt>どうとう</rt></ruby>のスコープを<ruby>完了<rt>かんりょう</rt></ruby>しています。<ruby>御社<rt>おんしゃ</rt></ruby>も<ruby>同様<rt>どうよう</rt></ruby>で<ruby>問題<rt>もんだい</rt></ruby>ないかと。」 <br/>*Team Ấn Độ làm 6 người 8 tuần xong phạm vi tương đương. Tôi nghĩ phía các anh cũng vậy không vấn đề.* |
| **トゥアン** | 「いや、それは<ruby>無理<rt>むり</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。チームによって<ruby>違<rt>ちが</rt></ruby>いますし…」 <br/>*Không, em nghĩ cái đó không được đâu. Mỗi nhóm khác nhau mà...* |
| **大垣** | 「『<ruby>思<rt>おも</rt></ruby>います』は<ruby>根拠<rt>こんきょ</rt></ruby>にならないですよね。」 <br/>*「Em nghĩ」 không phải căn cứ đâu nhỉ.* |

**Vì sao xấu:** 「思います」+「違いますし」 không có dữ liệu → đối phương dễ bác bỏ. Khách Nhật rất quý số liệu → phản biện cảm tính = mất uy tín về kỹ thuật.

---

## Hội thoại TỐT — ghi nhận + dữ liệu + đề xuất
*tiếp*

| Vai | Câu |
|---------|-----|
| **大垣** | 「インドのチームでは6名・8週間で<ruby>同等<rt>どうとう</rt></ruby>のスコープを<ruby>完了<rt>かんりょう</rt></ruby>しています。<ruby>御社<rt>おんしゃ</rt></ruby>も<ruby>同様<rt>どうよう</rt></ruby>で<ruby>問題<rt>もんだい</rt></ruby>ないかと。」 <br/>*Team Ấn Độ làm 6 người 8 tuần xong phạm vi tương đương. Tôi nghĩ phía các anh cũng vậy không vấn đề.* |
| **トゥアン** | 「インドチームのご<ruby>実績<rt>じっせき</rt></ruby>、<ruby>参考<rt>さんこう</rt></ruby>になります【1】。ただ、<ruby>弊社<rt>へいしゃ</rt></ruby>の Phase 1 <ruby>実績<rt>じっせき</rt></ruby>データを<ruby>共有<rt>きょうゆう</rt></ruby>させていただきますと、<ruby>類似<rt>るいじ</rt></ruby>スコープにおいて6名<ruby>換算<rt>かんさん</rt></ruby>で<ruby>平均<rt>へいきん</rt></ruby>10.5週間を<ruby>要<rt>よう</rt></ruby>しております【2】。」 <br/>*Thành tích team Ấn rất đáng tham khảo ạ. Tuy nhiên xin được chia sẻ dữ liệu thực tế Phase 1 bên em — với phạm vi tương tự, quy đổi 6 người trung bình mất 10.5 tuần ạ.* |
| **トゥアン** | 「<ruby>内訳<rt>うちわけ</rt></ruby>としては、QA<ruby>工程<rt>こうてい</rt></ruby>に<ruby>約<rt>やく</rt></ruby>2週間、<ruby>結合試験<rt>けつごうしけん</rt></ruby>に<ruby>約<rt>やく</rt></ruby>1.5週間が<ruby>必要<rt>ひつよう</rt></ruby>でございました。8週間で<ruby>完遂<rt>かんすい</rt></ruby>するには、QAスコープの<ruby>調整<rt>ちょうせい</rt></ruby>、もしくは8名<ruby>体制<rt>たいせい</rt></ruby>への<ruby>増員<rt>ぞういん</rt></ruby>のいずれかをご<ruby>検討<rt>けんとう</rt></ruby>いただけますでしょうか【3】？」 <br/>*Trong đó QA mất khoảng 2 tuần, kiểm thử tích hợp khoảng 1.5 tuần ạ. Để xong trong 8 tuần, em xin anh xem xét 1 trong 2 hướng: điều chỉnh phạm vi QA, hoặc tăng người lên 8 ạ.* |
| **大垣** | 「Phase 1の<ruby>実績<rt>じっせき</rt></ruby>ですか。それなら<ruby>根拠<rt>こんきょ</rt></ruby>がありますね。8名<ruby>体制<rt>たいせい</rt></ruby>で<ruby>再見積<rt>さいみつ</rt></ruby>もりをいただけますか？」 <br/>*Thực tế Phase 1 à. Vậy có căn cứ rồi. Phía anh cho tôi báo giá lại theo 8 người được không?* |

 **Ghi chú:**
- 【1】**「ご実績、参考になります」** — không bác dữ liệu Ấn Độ. Ghi nhận → giữ thể diện.
- 【2】**「弊社の Phase 1 実績データを共有させていただきますと、〜10.5週間を要しております」** — dẫn dữ liệu nội bộ cụ thể. Con số chính xác (10.5) > "khoảng 10".
- 【3】**「QAスコープの調整、もしくは8名体制への増員のいずれかをご検討いただけますでしょうか」** — luôn kèm 2 lựa chọn → đối phương dễ chọn.

---

## Cụm từ mẫu
> **「ご実績、参考になります。ただ、弊社の〇〇データでは〜という事実がございます。」**
>
> *4 bước: ghi nhận → ただ → dữ liệu → phương án. Không bao giờ "思います" rỗng.*

---

## Tránh
- 「思います」「違いますし」 không kèm dữ liệu.
- Phủ nhận dữ liệu đối phương ("Ấn Độ không tính") thay vì đối chiếu với dữ liệu của mình.
- Phản biện nhưng không kèm 2-3 phương án thay thế.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 根拠 | こんきょ | CĂN CỨ | Căn cứ |
| 反論 | はんろん | PHẢN LUẬN | Phản biện |
| 実績 | じっせき | THỰC TÍCH | Kết quả thực tế |
| 換算 | かんさん | HOÁN TOÁN | Quy đổi |
| 結合試験 | けつごうしけん | KẾT HỢP THÍ NGHIỆM | Kiểm thử tích hợp |
| 増員 | ぞういん | TĂNG VIÊN | Tăng người |
| 見積もり | みつもり | — | Báo giá / ước lượng |', 'system', 27, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000028, 800000004, NULL, 'markdown_book', 'Rule 28 — Xin thêm thông tin / dữ liệu / データ・情報を求める', '# Rule 28 — Xin thêm thông tin / dữ liệu / データ・情報を求める
> **Luận điểm.** Quyết định chính xác cần dữ liệu đầy đủ. Khi thiếu → xin thẳng nhưng có **lý do** + **mục đích sử dụng**: 「判断するために、〇〇のデータをいただけますでしょうか？」. Khách Nhật sẽ sẵn sàng cung cấp khi biết dữ liệu dùng vào đâu.
>
> 「判断するために、〇〇のデータをいただけますでしょうか？」— 用途を添えると相手は応じやすい。
>
> **Liên quan:** Rule 20 (5W1H), Rule 21 (hỏi lại cho rõ), Rule 27 (phản biện có dữ liệu).

---

## Bối cảnh / 場面
Em Dũng cần ước lượng tải hệ thống mới. Anh Matsumoto nói "lượng truy cập sẽ tăng nhiều" mà không có số. Em Dũng phải xin DAU/MAU và khung giờ cao điểm.

---

## Hội thoại XẤU — xin chung chung
*không hiểu xin gì*

| Vai | Câu |
|---------|-----|
| **松本** | 「リリース<ruby>後<rt>ご</rt></ruby>、アクセス<ruby>数<rt>すう</rt></ruby>はかなり<ruby>増<rt>ふ</rt></ruby>える<ruby>見込<rt>みこ</rt></ruby>みです。」 <br/>*Sau khi release, lượng truy cập dự kiến tăng đáng kể.* |
| **ズン** | 「データください。」 <br/>*Anh cho em xin dữ liệu ạ.* |
| **松本** | 「…どのデータでしょうか？」 <br/>*...Data nào nhỉ?* |
| **ズン** | 「えーと、<ruby>何<rt>なん</rt></ruby>でもいいんですが…」 <br/>*Ơ... Cái gì cũng được ạ...* |

**Vì sao xấu:** "データください" mơ hồ. 「何でもいい」 = không chuyên nghiệp. Khách Nhật cần yêu cầu cụ thể.

---

## Hội thoại TỐT — dữ liệu cụ thể + lý do
*tiếp*

| Vai | Câu |
|---------|-----|
| **松本** | 「リリース<ruby>後<rt>ご</rt></ruby>、アクセス<ruby>数<rt>すう</rt></ruby>はかなり<ruby>増<rt>ふ</rt></ruby>える<ruby>見込<rt>みこ</rt></ruby>みです。」 <br/>*Sau khi release, lượng truy cập dự kiến tăng đáng kể.* |
| **ズン** | 「ありがとうございます。サーバーの<ruby>キャパシティ<rt>きゃぱしてぃ</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めるために【1】、3<ruby>点<rt>てん</rt></ruby>のデータをいただけますでしょうか？」 <br/>*Em cảm ơn ạ. Để thiết kế năng lực server, em xin anh 3 loại dữ liệu ạ.* |
| **ズン** | 「①<ruby>現状<rt>げんじょう</rt></ruby>のDAU・MAU、②<ruby>ピーク時間帯<rt>ピークじかんたい</rt></ruby>のリクエスト<ruby>数<rt>すう</rt></ruby>、③<ruby>想定<rt>そうてい</rt></ruby><ruby>成長率<rt>せいちょうりつ</rt></ruby>の3<ruby>点<rt>てん</rt></ruby>でございます【2】。<ruby>月次<rt>げつじ</rt></ruby>データで<ruby>構<rt>かま</rt></ruby>いません。」 <br/>*Cụ thể là (1) DAU/MAU hiện tại, (2) số lượt yêu cầu giờ cao điểm, (3) tỷ lệ tăng trưởng dự kiến ạ. Dữ liệu hàng tháng là được ạ.* |
| **松本** | 「<ruby>分<rt>わ</rt></ruby>かりました。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby>までに<ruby>共有<rt>きょうゆう</rt></ruby>します。」 <br/>*OK rồi. Tôi share trước thứ Hai tuần sau.* |

 **Ghi chú:**
- 【1】**「〜するために、〇〇をいただけますでしょうか？」** — kèm mục đích sử dụng. Đối phương biết dữ liệu dùng vào đâu → sẵn sàng cung cấp.
- 【2】**「3点のデータ」** + danh sách cụ thể → không cãi nhau "dữ liệu nào". Đếm số + liệt kê = chuẩn.

---

## Cụm từ mẫu
> **「〜するために、〇〇のデータをいただけますでしょうか？」**
>
> *Mục đích + dữ liệu cụ thể = nhận được nhanh.*

---

## Tránh
- "データください" — xin dữ liệu chung chung, trống không.
- Xin nhiều dữ liệu 1 lúc mà không nói dùng làm gì → khách lo lộ thông tin.
- Không nói hạn chót cần dữ liệu → có thể bị chậm.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| キャパシティ | きゃぱしてぃ | — | Sức chứa / năng lực xử lý |
| ピーク時間帯 | ぴーくじかんたい | THỜI GIAN ĐỚI | Khung giờ cao điểm |
| DAU/MAU | DAU/MAU | — | Daily/Monthly Active User |
| 想定 | そうてい | TƯỞNG ĐỊNH | Giả định |
| 成長率 | せいちょうりつ | THÀNH TRƯỞNG SUẤT | Tỷ lệ tăng trưởng |
| 月次 | げつじ | NGUYỆT THỨ | Hàng tháng |', 'system', 28, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000029, 800000004, NULL, 'markdown_book', 'Rule 29 — Khi gặp bế tắc / 行き詰まった場合', '# Rule 29 — Khi gặp bế tắc / 行き詰まった場合
> **Luận điểm.** Khi tranh luận đi vào ngõ cụt (cả 2 bên không nhúc nhích) → KHÔNG ép quyết. Câu chuẩn: 「**一度持ち帰って、別途ご相談する形でいかがでしょうか**」. Mục đích: hạ nhiệt + chuẩn bị thêm dữ liệu + tham vấn cấp trên 2 bên.
>
> 行き詰まった時は「一度持ち帰って、別途ご相談する」で時間を確保。冷却期間を作る。
>
> **Liên quan:** Rule 25 (持ち帰り), Rule 32 (hoãn quyết), Rule 42 (kết thúc sớm).

---

## Bối cảnh / 場面
Họp đàm phán phase 2. Anh Ōgaki yêu cầu giảm 20%, anh Hà (CTO) chỉ đồng ý 10%. Cả 2 bên đã trao đổi 30 phút mà không nhúc nhích. Em Dũng (chủ trì) cần hạ nhiệt tình huống.

---

## Hội thoại XẤU — ép tiếp tục
*sau 30 phút · căng thẳng, ép tiếp · lạnh giọng · không khí cứng*

| Vai | Câu |
|---------|-----|
| **大垣** | 「やはり20%でなければ<ruby>難<rt>むずか</rt></ruby>しいです。」 <br/>*Vẫn phải 20% thì mới được.* |
| **ハー** | 「10%が<ruby>限界<rt>げんかい</rt></ruby>です。」 <br/>*10% là giới hạn rồi.* |
| **ズン** | 「あの…どこかで<ruby>折<rt>お</rt></ruby>り<ruby>合<rt>あ</rt></ruby>えませんか？15%でいかがでしょう？」 <br/>*Anh... có chỗ nào cùng nhau dung hoà được không ạ? 15% được không ạ?* |
| **ハー** | 「ズン、それは<ruby>本社<rt>ほんしゃ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>だ。<ruby>今<rt>いま</rt></ruby>ここで<ruby>決<rt>き</rt></ruby>められない。」 <br/>*Dũng, cái đó cần duyệt trên. Không quyết tại đây được.* |
| **大垣** | 「…」 <br/>*...* |

**Vì sao xấu:** Em Dũng đề xuất con số 15% mà chưa hỏi ý kiến CTO → CTO bị phủ quyết trước khách → mất mặt nội bộ. Ép tiếp khi đang bế tắc = tệ hơn.

---

## Hội thoại TỐT — hạ nhiệt + 持ち帰り (mang về)
*sau 30 phút · tiếp · nhìn Dũng, gật đầu*

| Vai | Câu |
|---------|-----|
| **大垣** | 「やはり20%でなければ難しいです。」 <br/>*Vẫn phải 20% thì mới được.* |
| **ハー** | 「10%が限界です。」 <br/>*10% là giới hạn rồi.* |
| **ズン** | 「お<ruby>互<rt>たが</rt></ruby>いの<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>いただきありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>この<ruby>場<rt>ば</rt></ruby>で<ruby>結論<rt>けつろん</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すのは難しいかと<ruby>存<rt>ぞん</rt></ruby>じますので【1】、<ruby>一度<rt>いちど</rt></ruby><ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>って、<ruby>別途<rt>べっと</rt></ruby>ご<ruby>相談<rt>そうだん</rt></ruby>する<ruby>形<rt>かたち</rt></ruby>でいかがでしょうか【2】？」 <br/>*Cảm ơn cả hai bên đã chia sẻ tình hình ạ. Em e là khó kết luận tại đây hôm nay, hai bên xin phép mang về và bàn riêng có được không ạ?* |
| **ズン** | 「<ruby>弊社<rt>へいしゃ</rt></ruby>では本日のご<ruby>要望<rt>ようぼう</rt></ruby>をもとに<ruby>再検討<rt>さいけんとう</rt></ruby>し、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby>までに<ruby>修正案<rt>しゅうせいあん</rt></ruby>をお出しいたします【3】。」 <br/>*Bên em sẽ xem xét lại theo yêu cầu hôm nay và xin gửi phương án sửa trước thứ Tư tuần sau ạ.* |
| **大垣** | 「ありがとうございます。それで<ruby>問題<rt>もんだい</rt></ruby>ありません。」 <br/>*Cảm ơn Dũng. Vậy không vấn đề gì.* |
| **ハー** | 「お<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Phiền các anh nhé.* |

 **Ghi chú:**
- 【1】**「本日この場で結論を出すのは難しいかと存じます」** — phán đoán bế tắc một cách trung lập. Không đổ lỗi bên nào.
- 【2】**「一度持ち帰って、別途ご相談する形でいかがでしょうか？」** — câu chuẩn tháo gỡ bế tắc.
- 【3】**「来週水曜までに修正案をお出しいたします」** — kèm thời hạn + cam kết gửi lại phương án để khách yên tâm.

---

## Cụm từ mẫu
> **「本日この場で結論を出すのは難しいかと存じます。一度持ち帰って、別途ご相談する形でいかがでしょうか？」**
>
> *Hạ nhiệt + 持ち帰り (mang về) + thời hạn + gửi lại phương án = 4 bước thoát bế tắc.*

---

## Tránh
- Ép quyết khi cả 2 bên đã căng → tổn hại quan hệ.
- Tự đề xuất con số "妥協" (dung hoà) mà chưa hỏi ý kiến cấp trên → mất mặt nội bộ.
- 持ち帰り (mang về) mà không kèm thời hạn → khách lo bị bỏ lơ, không nhận phản hồi.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 行き詰まる | いきづまる | — | Bế tắc |
| 冷却期間 | れいきゃくきかん | LÃNH KHƯỚC KỲ GIAN | Thời gian giải nhiệt |
| 折り合う | おりあう | — | Tìm điểm dung hoà |
| 限界 | げんかい | HẠN GIỚI | Giới hạn |
| 別途 | べっと | BIỆT ĐỒ | Riêng / khác buổi |
| 修正案 | しゅうせいあん | TU CHÍNH ÁN | Phương án sửa |', 'system', 29, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000030, 800000004, NULL, 'markdown_book', 'Rule 30 — Khi cấp trên nói câu khó hiểu / 上司・顧客の曖昧な発言', '# Rule 30 — Khi cấp trên nói câu khó hiểu / 上司・顧客の曖昧な発言
> **Luận điểm.** Cấp trên / khách Nhật hay nói gián tiếp ("ちょっと厳しいかな…", "前向きに検討します"). Đoán bừa = sai 50%. Câu chuẩn để xác nhận: 「**確認させていただきたいのですが、〜という意味でしょうか？**」 — diễn đạt lại ý suy đoán, để cấp trên khẳng định/đính chính.
>
> 上司・顧客の曖昧発言を勝手に解釈しない。「〜という意味でしょうか？」と確認する。
>
> **Liên quan:** Rule 21 (xin làm rõ), Rule 24 (tóm tắt), Rule 22 (đồng ý).

---

## Bối cảnh / 場面
Anh Matsumoto: 「来月のリリース、ちょっと厳しいかもしれませんね…」. Em Dũng cần biết là **hoãn lại** hay là **đang lo nhưng vẫn cố** — 2 ý hoàn toàn khác. Phải hỏi lại.

---

## Hội thoại XẤU — đoán bừa
*đoán = hoãn lại · thực ra chỉ muốn chia sẻ lo, chưa quyết*

| Vai | Câu |
|---------|-----|
| **松本** | 「<ruby>来月<rt>らいげつ</rt></ruby>のリリース、ちょっと<ruby>厳<rt>きび</rt></ruby>しいかもしれませんね…」 <br/>*Release tháng sau, có vẻ hơi khó nhỉ...* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。では<ruby>再来月<rt>さらいげつ</rt></ruby>に<ruby>延期<rt>えんき</rt></ruby>しますね。」 <br/>*Vâng em rõ. Vậy hoãn sang tháng kia nhé ạ.* |
| **松本** | 「あ、いや、まだ<ruby>確定<rt>かくてい</rt></ruby>ではなくて…」 <br/>*À không, tôi chưa quyết...* |

**Vì sao xấu:** 「ちょっと厳しい」 = "hơi khó" — có thể là (a) hoãn lại, (b) cố nhưng cần tăng resource, (c) chỉ chia sẻ tâm trạng. Đoán = trật.

---

## Hội thoại TỐT — xác nhận ý nghĩa cụ thể
| Vai | Câu |
|---------|-----|
| **松本** | 「<ruby>来月<rt>らいげつ</rt></ruby>のリリース、ちょっと<ruby>厳<rt>きび</rt></ruby>しいかもしれませんね…」 <br/>*Release tháng sau, có vẻ hơi khó nhỉ...* |
| **ズン** | 「<ruby>確認<rt>かくにん</rt></ruby>させていただきたいのですが、リリース<ruby>日<rt>び</rt></ruby>の<ruby>延期<rt>えんき</rt></ruby>をご<ruby>検討中<rt>けんとうちゅう</rt></ruby>という<ruby>意味<rt>いみ</rt></ruby>でしょうか【1】？それとも、<ruby>現<rt>げん</rt></ruby>スケジュールで<ruby>進<rt>すす</rt></ruby>めるための<ruby>支援<rt>しえん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ということでしょうか【2】？」 <br/>*Em xin được xác nhận lại ạ — anh đang cân nhắc lùi ngày release, hay cần thêm support để giữ lịch hiện tại ạ?* |
| **松本** | 「<ruby>後者<rt>こうしゃ</rt></ruby>です。スケジュールは<ruby>死守<rt>ししゅ</rt></ruby>したいので、QAリソースを1<ruby>名<rt>めい</rt></ruby><ruby>追加<rt>ついか</rt></ruby>できればと。」 <br/>*Cái sau ạ. Tôi muốn giữ lịch, nếu có thể thêm 1 QA thì tốt.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>追加<rt>ついか</rt></ruby>リソースの<ruby>可否<rt>かひ</rt></ruby>を<ruby>社内<rt>しゃない</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>し、ご<ruby>報告<rt>ほうこく</rt></ruby>いたします。」 <br/>*Vâng em rõ ạ. Em sẽ check khả năng tăng resource trong nội bộ ngay hôm nay và báo lại anh ạ.* |

 **Ghi chú:**
- 【1】**「〜という意味でしょうか？」** — câu chuẩn xác nhận ý định.
- 【2】Đưa **2 cách hiểu** (A hay B) → cấp trên dễ chọn → câu trả lời rõ.

---

## Cụm từ mẫu
> **「確認させていただきたいのですが、〜という意味でしょうか？それとも〜でしょうか？」**
>
> *Đưa 2 ý suy đoán → cấp trên chọn → tránh đoán mò.*

---

## Tránh
- Đoán 1 ý duy nhất → 50% sai.
- Hỏi lại kiểu mở ("どういう意味ですか？") → cấp trên phải giải thích từ đầu.
- Bỏ qua câu mơ hồ → sau này phát sinh.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 曖昧 | あいまい | ÁI MUỘI | Mơ hồ |
| 延期 | えんき | DIÊN KỲ | Hoãn lại |
| 死守 | ししゅ | TỬ THỦ | Giữ chặt / không thay đổi |
| 支援 | しえん | CHI VIỆN | Hỗ trợ |
| 後者 | こうしゃ | HẬU GIẢ | Cái thứ 2 |
| リソース | りそーす | — | Nguồn lực / nhân lực |', 'system', 30, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000031, 800000004, NULL, 'markdown_book', 'Rule 31 — Bỏ phiếu / Đi đến quyết định / 多数決・意思決定', '# Rule 31 — Bỏ phiếu / Đi đến quyết định / 多数決・意思決定
> **Luận điểm.** Đến cuối cuộc họp, **chủ trì PHẢI đề xuất 1 phương án** rồi xác nhận. Câu chuẩn: 「**では、A案で進めるという方向でよろしいでしょうか？**」. Nhật hiếm khi bỏ phiếu số đông — chủ trì đề xuất → ai im lặng = 同意 (im lặng tức đồng ý), ai phản đối phải nói rõ.
>
> 「では、A案で進めるという方向でよろしいでしょうか？」— 司会が方向を提示し、沈黙＝同意とみなす。
>
> **Liên quan:** Rule 22 (đồng ý), Rule 23 (phản đối), Rule 44 (việc cần làm).

---

## Bối cảnh / 場面
Sau 40 phút bàn 3 phương án phạm vi (A/B/C). Cả 2 bên đều có ý thiên về A nhưng chưa ai chốt. Em Dũng (chủ trì) cần đưa quyết định.

---

## Hội thoại XẤU — bỏ ngỏ phần kết thúc
| Vai | Câu |
|---------|-----|
| **ズン** | 「えーと、3案ありますね。どうしましょうか？」 <br/>*Ơ... có 3 phương án nhỉ. Mình làm thế nào ạ?* |
| **大垣** | 「うーん…」 <br/>*Hmm...* |
| **松本** | 「…」 <br/>*(im lặng)* |
| **ズン** | 「じゃあ、また<ruby>次回<rt>じかい</rt></ruby>ということで…」 <br/>*Vậy thôi để lần sau ạ...* |

**Vì sao xấu:** Chủ trì không đề xuất → 40 phút bàn vô ích. Họp xong không có quyết định = thất bại.

---

## Hội thoại TỐT — đề xuất + xác nhận + ai phản đối nói rõ
*tiếp · 2-3 giây pause*

| Vai | Câu |
|---------|-----|
| **ズン** | 「ここまでのご<ruby>議論<rt>ぎろん</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>まえまして、3案のうち A 案——<ruby>優先度<rt>ゆうせんど</rt></ruby><ruby>高機能<rt>こうきのう</rt></ruby>のみを Phase 2 で<ruby>実施<rt>じっし</rt></ruby>——が<ruby>最<rt>もっと</rt></ruby>も<ruby>現実的<rt>げんじつてき</rt></ruby>かと<ruby>存<rt>ぞん</rt></ruby>じます【1】。」 <br/>*Dựa trên trao đổi đến giờ, em thấy phương án A — chỉ làm các tính năng ưu tiên cao trong Phase 2 — là khả thi nhất ạ.* |
| **ズン** | 「では、A 案で<ruby>進<rt>すす</rt></ruby>めるという<ruby>方向<rt>ほうこう</rt></ruby>でよろしいでしょうか【2】？ご<ruby>異論<rt>いろん</rt></ruby>があればお<ruby>聞<rt>き</rt></ruby>かせください【3】。」 <br/>*Vậy mình đi theo phương án A có được không ạ? Nếu có ý kiến phản đối xin chia sẻ ạ.* |
| **大垣** | 「私は A 案で<ruby>問題<rt>もんだい</rt></ruby>ありません。」 <br/>*Tôi A là OK.* |
| **松本** | 「<ruby>同意<rt>どうい</rt></ruby>します。」 <br/>*Tôi đồng ý.* |
| **ズン** | 「ありがとうございます。では、A案で<ruby>確定<rt>かくてい</rt></ruby>とさせていただきます【4】。」 <br/>*Em cảm ơn ạ. Vậy em xin chốt phương án A ạ.* |

 **Ghi chú:**
- 【1】**「ここまでのご議論を踏まえまして、〜が最も現実的かと存じます」** — chủ trì tổng hợp → đề xuất. Không hỏi 「どうしましょう」 trống không.
- 【2】**「〜という方向でよろしいでしょうか？」** — câu xác nhận chuẩn.
- 【3】**「ご異論があればお聞かせください」** — mở cửa cho phản đối. Im lặng = đồng ý (im lặng tức đồng thuận).
- 【4】**「確定とさせていただきます」** — chốt quyết. Phải nói "確定" rõ ràng → ghi vào biên bản.

---

## Cụm từ mẫu
> **「では、A案で進めるという方向でよろしいでしょうか？ご異論があればお聞かせください。」**
>
> *Đề xuất → xác nhận → mời phản đối → im lặng = OK. Khẳng định 「確定」 cuối cùng.*

---

## Tránh
- Hỏi 「どうしましょうか？」 trống không → ai cũng đợi ai.
- Quyết bừa khi chưa có đồng thuận → phản đối ngầm.
- Không đóng bằng 「確定」 → biên bản không rõ.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 多数決 | たすうけつ | ĐA SỐ QUYẾT | Bỏ phiếu đa số |
| 意思決定 | いしけってい | Ý CHÍ QUYẾT ĐỊNH | Ra quyết định |
| 確定 | かくてい | XÁC ĐỊNH | Chốt |
| 踏まえる | ふまえる | — | Dựa trên |
| 異論 | いろん | DỊ LUẬN | Phản đối |
| 現実的 | げんじつてき | HIỆN THỰC ĐÍCH | Khả thi |', 'system', 31, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000032, 800000004, NULL, 'markdown_book', 'Rule 32 — Hoãn quyết định / 結論先送り', '# Rule 32 — Hoãn quyết định / 結論先送り
> **Luận điểm.** Khi không thể quyết trong họp này → KHÔNG nói "また今度" mơ hồ. Cấu trúc chuẩn: **(1) lý do** → **(2) "持ち帰り"** → **(3) hạn trả lời cụ thể** → **(4) kênh trả lời**. Câu chuẩn: 「**本件は持ち帰り、〇月〇日までにご回答いたします**」.
>
> 「本件は持ち帰り、〇月〇日までにメールにてご回答いたします」— 期限+チャネル必須。
>
> **Liên quan:** Rule 25 (持ち帰り xin), Rule 29 (bế tắc), Rule 31 (quyết định).

---

## Bối cảnh / 場面
Họp đang bàn về việc dùng AWS hay Azure. Em Dũng cần hỏi anh Hà CTO + kiểm tra ngân sách với chị Loan kế toán → không thể quyết tại chỗ. Phải thông báo hoãn quyết định đúng cách.

---

## Hội thoại XẤU — hoãn mơ hồ
| Vai | Câu |
|---------|-----|
| **大垣** | 「クラウド<ruby>選定<rt>せんてい</rt></ruby>について、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>決定<rt>けってい</rt></ruby>したいのですが。」 <br/>*Về chọn cloud, tôi muốn quyết hôm nay.* |
| **ズン** | 「あの…ちょっと<ruby>難<rt>むずか</rt></ruby>しいので、また<ruby>今度<rt>こんど</rt></ruby>…」 <br/>*Ơ... cái đó hơi khó, để lần sau ạ...* |
| **大垣** | 「『また<ruby>今度<rt>こんど</rt></ruby>』とは<ruby>具体的<rt>ぐたいてき</rt></ruby>にいつでしょうか？」 <br/>*「Lần sau」 cụ thể là khi nào?* |
| **ズン** | 「えーと…」 <br/>*Ờ thì... ạ...* |

**Vì sao xấu:** 「また今度」 không có hạn trả lời. Khách Nhật cần cụ thể. Không kèm kênh trả lời (email/họp/tin nhắn?) → khó theo dõi.

---

## Hội thoại TỐT — lý do + hạn trả lời + kênh trả lời
*tiếp*

| Vai | Câu |
|---------|-----|
| **大垣** | 「クラウド<ruby>選定<rt>せんてい</rt></ruby>について、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>決定<rt>けってい</rt></ruby>したいのですが。」 <br/>*Về chọn cloud, tôi muốn quyết hôm nay.* |
| **ズン** | 「ご<ruby>要望<rt>ようぼう</rt></ruby>ありがとうございます。クラウド<ruby>選定<rt>せんてい</rt></ruby>はインフラとコストの<ruby>両面<rt>りょうめん</rt></ruby>から<ruby>弊社<rt>へいしゃ</rt></ruby>のCTOとCFOの<ruby>確認<rt>かくにん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>でございますので【1】、<ruby>本件<rt>ほんけん</rt></ruby>は<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り、4<ruby>月<rt>がつ</rt></ruby>30<ruby>日<rt>にち</rt></ruby>（<ruby>水<rt>すい</rt></ruby>）17<ruby>時<rt>じ</rt></ruby>までにメールにてご<ruby>回答<rt>かいとう</rt></ruby>いたします【2】。」 <br/>*Em cảm ơn anh. Việc chọn cloud cần CTO và CFO bên em duyệt cả về infra và cost ạ. Em xin mang về và trả lời anh qua email trước 17h thứ Tư 30/4 ạ.* |
| **ズン** | 「ご<ruby>回答<rt>かいとう</rt></ruby>にはAWS / Azure <ruby>比較表<rt>ひかくひょう</rt></ruby>とコスト<ruby>試算<rt>しさん</rt></ruby>を<ruby>添付<rt>てんぷ</rt></ruby>いたします【3】。」 <br/>*Trả lời em sẽ đính kèm bảng so sánh AWS/Azure và bảng tính cost ạ.* |
| **大垣** | 「ありがとうございます。<ruby>期限<rt>きげん</rt></ruby>つきでしたら<ruby>問題<rt>もんだい</rt></ruby>ありません。お<ruby>待<rt>ま</rt></ruby>ちしております。」 <br/>*Cảm ơn Dũng. Có hạn chót cụ thể là không vấn đề gì. Tôi sẽ chờ.* |

 **Ghi chú:**
- 【1】**「インフラとコストの両面から弊社のCTOとCFOの確認が必要」** — nêu lý do cụ thể (cần ai duyệt) + uchi-soto: 「弊社の」 đứng trước CTO/CFO khi nói với khách. Không nói 「ちょっと」 mơ hồ.
- 【2】**「本件は持ち帰り、〇月〇日〇時までにメールにてご回答いたします」** — câu chuẩn. Có hạn trả lời + kênh trả lời.
- 【3】**「比較表とコスト試算を添付」** — kèm cam kết sản phẩm bàn giao cụ thể → khách hài lòng.

---

## Cụm từ mẫu
> **「<ruby>本件<rt>ほんけん</rt></ruby>は<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り、〇<ruby>月<rt>がつ</rt></ruby>〇<ruby>日<rt>にち</rt></ruby>〇<ruby>時<rt>じ</rt></ruby>までにメールにてご<ruby>回答<rt>かいとう</rt></ruby>いたします。」**
>
> *Lý do → 持ち帰り → hạn trả lời → kênh trả lời → sản phẩm bàn giao. 5 yếu tố.*

---

## Tránh
- 「また今度」「後ほど」 không có hạn trả lời.
- Không nói kênh trả lời (email/tin nhắn/họp?) → khách không biết kiểm tra ở đâu.
- Hoãn mà không nêu lý do → khách nghĩ là né tránh.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 先送り | さきおくり | — | Hoãn lại |
| クラウド選定 | クラウドせんてい | TUYỂN ĐỊNH | Lựa chọn cloud |
| 比較表 | ひかくひょう | TỶ GIẢO BIỂU | Bảng so sánh |
| 試算 | しさん | THÍ TOÁN | Tính thử / estimate |
| インフラ | いんふら | — | Hạ tầng |
| 添付 | てんぷ | THIÊM PHÚ | Đính kèm |', 'system', 32, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000033, 800000004, NULL, 'markdown_book', 'Rule 33 — Họp trực tuyến — nghi thức tắt/bật mic / オンライン会議のマナー', '# Rule 33 — Họp trực tuyến — nghi thức tắt/bật mic / オンライン会議のマナー
> **Luận điểm.** Họp trực tuyến có 4 quy tắc bất thành văn ở Nhật: (1) **mặc định tắt mic** khi không nói, (2) **bật camera khi phát biểu**, (3) **giơ tay trên ứng dụng** thay vì cắt lời, (4) **không cắt lời** vì độ trễ đường truyền. Bỏ qua = thiếu chuyên nghiệp ngay từ phút đầu.
>
> オンライン会議4原則：①既定でミュート、②発言時カメラオン、③挙手機能で発言要求、④遅延を考慮し割り込まない。
>
> **Liên quan:** Rule 04 (chuẩn bị), Rule 19 (xin lượt), Rule 36 (chia sẻ màn hình).

---

## Bối cảnh / 場面
Họp Zoom định kỳ tháng 4. Em Linh (nhân viên mới) là một trong 8 người tham dự. Chưa quen quy tắc họp trực tuyến kiểu Nhật.

---

## Hội thoại XẤU — Linh không nắm quy tắc
*Linh không tắt mic, gõ phím lạch cạch · đang trình bày · không tắt mic, đột ngột nói chen · khó chịu*

| Vai | Câu |
|---------|-----|
| **松本** | 「では、<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。まずズンさんお<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Vậy mình bắt đầu từ phần báo cáo tiến độ. Đầu tiên phiền Dũng nhé.* |
|  | 「カチカチカチ…」 <br/>*(Lạch cạch lạch cạch...)* |
| **ズン** | 「4<ruby>月<rt>がつ</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>ですが…」 <br/>*Về tiến độ tháng 4...* |
| **リン** | 「ズンさん、その<ruby>数字<rt>すうじ</rt></ruby>って<ruby>合<rt>あ</rt></ruby>ってます？」 *(camera off, không thấy mặt)* <br/>*Anh Dũng, số đó đúng không ạ?* |
| **松本** | 「…どなたでしょうか？」 <br/>*...Ai vậy nhỉ?* |

**Vì sao xấu:** (a) Tiếng gõ phím làm phiền cả họp. (b) Cắt lời. (c) Tắt camera khi phát biểu = đối phương không biết là ai → mất ngữ cảnh.

---

## Hội thoại TỐT — Linh tuân thủ 4 quy tắc
*bật camera, bật mic · tắt mic, giơ tay trên Zoom · bật camera + bật mic · nói xong, tắt mic lại*

| Vai | Câu |
|---------|-----|
| **松本** | 「では、進捗報告から始めます。まずズンさんお願いします。」 <br/>*Vậy mình bắt đầu từ phần báo cáo tiến độ. Đầu tiên phiền Dũng nhé.* |
| **ズン** | 「4月の進捗ですが…」 <br/>*Về tiến độ tháng 4...* |
| **リン** |  |
| **松本** | 「リンさん、<ruby>何<rt>なに</rt></ruby>か<ruby>質問<rt>しつもん</rt></ruby>でしょうか？」 <br/>*Linh có câu hỏi gì à?* |
| **リン** 【1】 | 「<ruby>失礼<rt>しつれい</rt></ruby>します。リンで<ruby>御座<rt>ござ</rt></ruby>います【2】。<ruby>先<rt>さき</rt></ruby>ほどの<ruby>数字<rt>すうじ</rt></ruby>について、<ruby>確認<rt>かくにん</rt></ruby>させていただきたい<ruby>点<rt>てん</rt></ruby>がございます。」 <br/>*Em xin phép ạ. Em là Linh ạ. Em có 1 điểm muốn xin xác nhận về số liệu vừa rồi ạ.* |
| **リン** 【3】 |  |

 **Ghi chú:**
- 【1】**Bật camera + bật mic khi phát biểu** — đối phương cần thấy mặt + nghe rõ.
- 【2】**Tự xưng tên trước khi nói** — khi họp trực tuyến, nhiều người không nhớ giọng. Nói tên giúp ai nghe cũng biết là ai → ghi biên bản chính xác.
- 【3】**Tắt mic lại sau khi nói xong** — tiếng ồn nền (gõ phím, gia đình, xe ngoài) sẽ làm phiền.

---

## Cụm từ mẫu
> **Mặc định tắt mic. Bật camera khi nói. Giơ tay trên ứng dụng. Tự xưng tên khi bật mic.**

---

## Tránh
- Để mic bật cả họp → tiếng ồn nền.
- Tắt camera cả buổi → đối phương cảm giác không có mặt.
- Cắt lời (họp trực tuyến có độ trễ 0.5-1s → chồng tiếng).
- Không tự giới thiệu tên → khó nhận biết ai nói gì.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ミュート | みゅーと | — | Tắt mic |
| ミュート解除 | ミュートかいじょ | GIẢI TRỪ | Bật lại mic |
| カメラオン/オフ | かめらおん/おふ | — | Bật/tắt camera |
| 挙手機能 | きょしゅきのう | CỬ THỦ CƠ NĂNG | Tính năng giơ tay |
| 遅延 | ちえん | TRÌ DIÊN | Độ trễ đường truyền |
| 既定 | きてい | KÝ ĐỊNH | Mặc định |', 'system', 33, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000034, 800000004, NULL, 'markdown_book', 'Rule 34 — Hybrid meeting cân bằng / ハイブリッド会議の運営', '# Rule 34 — Hybrid meeting cân bằng / ハイブリッド会議の運営
> **Luận điểm.** Họp hỗn hợp (nửa trực tiếp + nửa trực tuyến) DỄ làm phía trực tuyến cảm thấy bị xem là "hạng hai". Chủ trì PHẢI: (1) **chủ động hỏi phía trực tuyến** trước phía trực tiếp ở mỗi mục trong chương trình họp, (2) **tóm tắt lại** cho bên trực tuyến khi bên trực tiếp trao đổi nhanh, (3) **dùng mic chuyên dụng** cho phòng họp.
>
> ハイブリッド会議では司会がオンライン参加者に最初に発言機会を与える。「online first」原則。
>
> **Liên quan:** Rule 33 (họp trực tuyến), Rule 36 (chia sẻ màn hình), Rule 14 (chủ trì).

---

## Bối cảnh / 場面
Họp phase 2: 4 người tại văn phòng VN (Dũng, Tuấn, Hải, Hà), 2 người Nhật tham gia qua Zoom (Matsumoto, Ōgaki). Em Dũng làm chủ trì.

---

## Hội thoại XẤU — bỏ rơi phía trực tuyến
*trong phòng · nói nhỏ với Hải, không qua mic · cũng nói nhỏ · qua màn hình*

| Vai | Câu |
|---------|-----|
| **ズン** | 「では、Phase 2スコープについて。トゥアンさん、どう思いますか？」 <br/>*Vậy về phạm vi phase 2. Anh Tuấn, anh thấy thế nào ạ?* |
| **トゥアン** | 「これね、ハイ的にはどう？」 <br/>*Cái này ấy, theo Hải thì sao?* |
| **ハイ** | 「うーん、<ruby>難<rt>むずか</rt></ruby>しいかも…」 <br/>*Ừm, có khi khó đấy…* |
| **松本** | 「…すみません、<ruby>聞<rt>き</rt></ruby>こえません。」 <br/>*...Xin lỗi, tôi không nghe được.* |
| **大垣** | 「<ruby>我々<rt>われわれ</rt></ruby>の<ruby>意見<rt>いけん</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>しないのですか？」 <br/>*Phía chúng tôi không cần hỏi ý kiến à?* |

**Vì sao xấu:** Tuấn và Hải nói nhỏ ngoài mic → phía trực tuyến không nghe. Chủ trì không chủ động mời ý kiến phía Nhật → khách cảm giác bị bỏ rơi.

---

## Hội thoại TỐT — trực tuyến được hỏi trước + tóm tắt lại
*qua màn hình · nói qua mic chính · sau Tuấn nói xong, tóm tắt cho phía trực tuyến*

| Vai | Câu |
|---------|-----|
| **ズン** | 「では、Phase 2スコープについて。まずオンラインでご<ruby>参加<rt>さんか</rt></ruby>の松本様、大垣様、ご<ruby>意見<rt>いけん</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせいただけますでしょうか【1】？」 <br/>*Vậy về phạm vi phase 2. Trước tiên xin được nghe ý kiến của anh Matsumoto và anh Ōgaki đang kết nối trực tuyến ạ.* |
| **大垣** | 「<ruby>優先度<rt>ゆうせんど</rt></ruby><ruby>高<rt>たか</rt></ruby><ruby>機能<rt>きのう</rt></ruby>を<ruby>絞<rt>しぼ</rt></ruby>った A <ruby>案<rt>あん</rt></ruby>がよろしいかと<ruby>存<rt>ぞん</rt></ruby>じます。」 <br/>*Tôi nghĩ phương án A — giới hạn ở tính năng ưu tiên cao — là tốt.* |
| **松本** | 「<ruby>同意<rt>どうい</rt></ruby>します。」 <br/>*Tôi đồng ý.* |
| **ズン** | 「ありがとうございます。<ruby>続<rt>つづ</rt></ruby>きまして、こちらVN<ruby>側<rt>がわ</rt></ruby>の意見を<ruby>共有<rt>きょうゆう</rt></ruby>いたします。トゥアンさん、いかがでしょうか？」 <br/>*Em cảm ơn ạ. Tiếp theo em xin chia sẻ ý kiến phía VN. Anh Tuấn cho ý kiến ạ?* |
| **トゥアン** | 「QA<ruby>工数<rt>こうすう</rt></ruby>を<ruby>考慮<rt>こうりょ</rt></ruby>すると、A案にQA<ruby>工程<rt>こうてい</rt></ruby>2週間を追加すれば<ruby>実現可能<rt>じつげんかのう</rt></ruby>と考えます。」 <br/>*Nếu tính man-hour QA, thêm 2 tuần QA vào phương án A là khả thi.* |
| **ズン** | 「<ruby>今<rt>いま</rt></ruby>のトゥアンさんの<ruby>発言<rt>はつげん</rt></ruby>を<ruby>要約<rt>ようやく</rt></ruby>いたしますと、A案にQA工程を2週間<ruby>追加<rt>ついか</rt></ruby>でフィージブル、ということでございます【2】。」 <br/>*Em xin tóm tắt ý anh Tuấn vừa rồi ạ — tức là phương án A + thêm 2 tuần QA thì khả thi ạ.* |
| **松本** | 「ありがとうございます、よく分かりました。」 <br/>*Cảm ơn Dũng, tôi hiểu rõ rồi.* |

 **Ghi chú:**
- 【1】**「まずオンラインでご参加の〇〇様、〇〇様、ご意見を…」** — chủ động mời phía trực tuyến TRƯỚC. Đây là nguyên tắc "trực tuyến được hỏi trước".
- 【2】**「今の〇〇さんの発言を要約いたしますと〜」** — khi phía trực tiếp trao đổi qua lại nhanh, tóm tắt lại cho phía trực tuyến. Tránh để phía trực tuyến bị tụt lại phía sau.

---

## Cụm từ mẫu
> **Trực tuyến được hỏi trước. Tóm tắt lại cho phía trực tuyến. Mic chuyên dụng. 3 nguyên tắc của họp hỗn hợp.**

---

## Tránh
- Hỏi phía trực tiếp trước → phía trực tuyến cảm giác là "phụ".
- Trao đổi nhanh giữa những người trực tiếp mà không qua mic chính.
- Quên tóm tắt → phía trực tuyến mất ngữ cảnh, không theo kịp nội dung.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ハイブリッド | はいぶりっど | — | Hỗn hợp (trực tiếp + trực tuyến) |
| 司会 | しかい | TƯ HỘI | Chủ trì |
| 要約 | ようやく | YẾU ƯỚC | Tóm tắt |
| マイク | まいく | — | Mic |
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| フィージブル | ふぃーじぶる | — | Khả thi |', 'system', 34, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000035, 800000004, NULL, 'markdown_book', 'Rule 35 — Khi mất kết nối / 接続不良への対応', '# Rule 35 — Khi mất kết nối / 接続不良への対応
> **Luận điểm.** Khi mạng lag / rớt → KHÔNG biến mất im lặng. Có quy trình 3 bước: (1) **báo nhanh trong hộp trò chuyện** "接続不安定です", (2) **vào lại** trong 60 giây, (3) **xin lỗi + xác nhận đoạn bị sót** sau khi trở lại. Câu chuẩn: 「申し訳ございません、接続が不安定でございまして、〜」.
>
> 接続不良時：①チャットで状況報告 ②60秒以内に再接続 ③復帰後に謝罪+情報確認の3ステップ。
>
> **Liên quan:** Rule 33 (nghi thức họp trực tuyến), Rule 38 (hủy/dời họp).

---

## Bối cảnh / 場面
Họp Zoom, em Dũng đang trình bày → mạng Việt Nam bị lag, video đứng hình 30 giây. Đối phương phía Nhật chờ.

---

## Hội thoại XẤU — biến mất + quay lại không xin lỗi
*đang nói · đợi 1 phút · 2 phút sau Dũng vào lại*

| Vai | Câu |
|---------|-----|
| **ズン** | 「4月のKPIは…」 *(freeze 30 giây, drop)* <br/>*KPI tháng 4 là...* |
| **松本** | 「ズンさん？<ruby>聞<rt>き</rt></ruby>こえますか？」 <br/>*Dũng? Có nghe không?* |
| **ズン** | 「あ、<ruby>戻<rt>もど</rt></ruby>りました。<ruby>続<rt>つづ</rt></ruby>きですが…」 <br/>*À, em quay lại rồi. Tiếp theo là...* |

**Vì sao xấu:** Không báo trong hộp trò chuyện lúc rớt mạng → khách lo "có chuyện gì". Quay lại không xin lỗi + không xác nhận xem đối phương nghe được đến đâu.

---

## Hội thoại TỐT — protocol 3 bước
*đang nói · gõ vào hộp trò chuyện từ điện thoại · 45 giây sau vào lại · tiếp*

| Vai | Câu |
|---------|-----|
| **ズン** | 「4月のKPIは…」 *(freeze)* <br/>*KPI tháng 4 là...* |
| **ズン** 【1】 | 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、<ruby>接続<rt>せつぞく</rt></ruby>が<ruby>不安定<rt>ふあんてい</rt></ruby>です。<ruby>再接続<rt>さいせつぞく</rt></ruby>いたします。」 <br/>*Em xin lỗi, mạng không ổn định ạ. Em xin kết nối lại.* |
| **松本** | 「<ruby>了解<rt>りょうかい</rt></ruby>です、お<ruby>待<rt>ま</rt></ruby>ちしています。」 <br/>*OK, tôi đợi nhé.* |
| **ズン** | 「申し訳ございません、接続が不安定でございまして、お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>してしまいました【2】。」 <br/>*Em xin lỗi anh, mạng không ổn định nên đã làm anh mất thời gian ạ.* |
| **ズン** | 「<ruby>先<rt>さき</rt></ruby>ほどの続きを<ruby>再開<rt>さいかい</rt></ruby>する<ruby>前<rt>まえ</rt></ruby>に、4月KPIのスライドはどこまでお<ruby>見<rt>み</rt></ruby>せできていましたでしょうか【3】？」 <br/>*Trước khi tiếp tục, em xin hỏi slide KPI tháng 4 anh đã thấy đến đâu rồi ạ?* |
| **松本** | 「『<ruby>達成率<rt>たっせいりつ</rt></ruby>82%』のところまで見えていました。」 <br/>*Tôi thấy đến chỗ 「tỷ lệ đạt 82%」.* |
| **ズン** | 「ありがとうございます。では、その続きから再開いたします。」 <br/>*Em cảm ơn ạ. Vậy em xin tiếp tục từ chỗ đó.* |

 **Ghi chú:**
- 【1】**Báo trong hộp trò chuyện** — khách bớt lo lắng khi biết "đang kết nối lại". Dùng điểm phát sóng điện thoại nếu máy tính mất mạng.
- 【2】**「接続が不安定でございまして、お時間を頂戴してしまいました」** — câu xin lỗi chuẩn.
- 【3】**「どこまでお見せできていましたでしょうか？」** — xác nhận điểm khách thấy cuối cùng → tránh lặp lại / sót.

---

## Cụm từ mẫu
> **「<ruby>接続<rt>せつぞく</rt></ruby>が<ruby>不安定<rt>ふあんてい</rt></ruby>でございまして、お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>してしまいました。<ruby>先<rt>さき</rt></ruby>ほどはどこまでお<ruby>見<rt>み</rt></ruby>せできていましたでしょうか？」**
>
> *Xin lỗi → xác nhận điểm cuối khách thấy → tiếp tục.*

---

## Tránh
- Rớt mạng im lặng không báo trong hộp trò chuyện.
- Quay lại không xin lỗi → khách cảm giác "không trân trọng".
- Tiếp tục từ đầu mà không xác nhận → lặp / sót.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 接続 | せつぞく | TIẾP TỤC | Kết nối |
| 不安定 | ふあんてい | BẤT AN ĐỊNH | Không ổn định |
| 再接続 | さいせつぞく | TÁI TIẾP TỤC | Kết nối lại |
| 頂戴する | ちょうだいする | ĐÍNH ĐÁI | Xin nhận / lấy mất (kenjō) |
| 復帰 | ふっき | PHỤC QUY | Trở lại |
| 達成率 | たっせいりつ | ĐẠT THÀNH SUẤT | Tỷ lệ đạt |', 'system', 35, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000036, 800000004, NULL, 'markdown_book', 'Rule 36 — Chia sẻ màn hình / 画面共有の声かけ', '# Rule 36 — Chia sẻ màn hình / 画面共有の声かけ
> **Luận điểm.** Chia sẻ màn hình có 4 bước chuẩn: (1) **báo trước** 「画面を共有させていただきます」, (2) **đợi 2-3s** rồi chia sẻ, (3) **xác nhận** 「ご覧いただけますでしょうか？」, (4) **dừng** chính thức 「画面共有を終了いたします」. Bỏ qua bước 3 = đối phương có thể không thấy mà ngại nói.
>
> 画面共有4ステップ：①予告 ②2-3秒待つ ③「ご覧いただけますでしょうか」確認 ④終了宣言。
>
> **Liên quan:** Rule 04 (chuẩn bị), Rule 33 (nghi thức họp trực tuyến), Rule 35 (mất kết nối).

---

## Bối cảnh / 場面
Họp Zoom, em Dũng cần chia sẻ slide báo cáo. Đợi đến lượt mình.

---

## Hội thoại XẤU — chia sẻ không báo, không xác nhận
*share luôn · thực ra đang loading slow · tưởng đối phương đang đọc · sau 1 phút*

| Vai | Câu |
|---------|-----|
| **ズン** | 「これが4月のKPIです。」 <br/>*Đây là KPI tháng 4 ạ.* |
| **松本** | 「…」 <br/>*...* |
| **ズン** | 「<ruby>達成率<rt>たっせいりつ</rt></ruby>82%でして…」 <br/>*Tỷ lệ đạt 82% ạ...* |
| **松本** | 「すみません、<ruby>画面<rt>がめん</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>黒<rt>くろ</rt></ruby>のままで…」 <br/>*Xin lỗi, màn hình tôi vẫn đen...* |

**Vì sao xấu:** Không báo trước → khách bất ngờ. Không xác nhận 「見えますか？」 → khách ngại nói "không thấy" → lãng phí 1 phút.

---

## Hội thoại TỐT — 4 bước chuẩn
*chờ 2-3s · sau khi giải thích xong*

| Vai | Câu |
|---------|-----|
| **ズン** | 「これより、4月KPIレポートの<ruby>画面<rt>がめん</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>させていただきます【1】。」 <br/>*Em xin được share màn hình báo cáo KPI tháng 4 ạ.* |
| 【2】 |  |
| **ズン** | 「ご<ruby>覧<rt>らん</rt></ruby>いただけますでしょうか【3】？」 <br/>*Anh/chị có thấy được không ạ?* |
| **松本** | 「はい、見えています。」 <br/>*Có, tôi thấy rồi.* |
| **ズン** | 「ありがとうございます。それでは、<ruby>達成率<rt>たっせいりつ</rt></ruby>82%の<ruby>内訳<rt>うちわけ</rt></ruby>から…」 <br/>*Em cảm ơn ạ. Em xin bắt đầu từ chi tiết tỷ lệ đạt 82%...* |
| **ズン** | 「<ruby>画面共有<rt>がめんきょうゆう</rt></ruby>を<ruby>終了<rt>しゅうりょう</rt></ruby>いたします【4】。」 <br/>*Em xin dừng share màn hình ạ.* |

 **Ghi chú:**
- 【1】**「これより、〜の画面を共有させていただきます」** — báo trước cụ thể: chia sẻ gì.
- 【2】**Chờ 2-3 giây** — thời gian tải hình + người họp trực tuyến cần chuyển sang chế độ xem.
- 【3】**「ご覧いただけますでしょうか？」** — xác nhận. Không bỏ qua bước này.
- 【4】**「画面共有を終了いたします」** — báo dừng chính thức để đối phương biết quay về danh sách xem.

---

## Cụm từ mẫu
> **予告 → 待つ → 「ご覧いただけますでしょうか？」 → 終了宣言. 4 bước.**

---

## Tránh
- Chia sẻ đột ngột không báo.
- Bỏ qua xác nhận 「見えますか？」.
- Quên dừng chia sẻ → trang sau bị đè bởi màn hình cũ.
- Chia sẻ toàn bộ màn hình khi còn cửa sổ riêng tư → lộ dữ liệu.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 画面共有 | がめんきょうゆう | HOẠ DIỆN CỘNG HỮU | Chia sẻ màn hình |
| ご覧いただく | ごらんいただく | — | Phiền xem (sonkei) |
| 内訳 | うちわけ | NỘI DỊCH | Chi tiết phân tách |
| 達成率 | たっせいりつ | ĐẠT THÀNH SUẤT | Tỷ lệ đạt |
| 終了 | しゅうりょう | CHUNG LIỄU | Kết thúc |', 'system', 36, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000037, 800000004, NULL, 'markdown_book', 'Rule 37 — Crisis meeting họp gấp / 緊急会議の運営', '# Rule 37 — Crisis meeting họp gấp / 緊急会議の運営
> **Luận điểm.** Họp gấp (sự cố, lỗi nghiêm trọng) cần cấu trúc 4 bước ngắn gọn: **Fact → Impact → Action → Owner**. Tối đa 30 phút. Không có chương trình họp dài, không tán gẫu. Câu chuẩn mở đầu: 「**緊急会議のため、簡潔に進めさせていただきます**」.
>
> 緊急会議は30分以内、Fact→Impact→Action→Owner の順で進める。雑談・前置きなし。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 31 (quyết định), Rule 44 (việc cần làm).

---

## Bối cảnh / 場面
Server production crash 7h sáng. Em Dũng triệu tập họp khẩn 7h30 với Tuấn (tech lead), Hải (devops), và anh Matsumoto (báo cáo).

---

## Hội thoại XẤU — họp khẩn nhưng lan man
*căng*

| Vai | Câu |
|---------|-----|
| **ズン** | 「お<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、お<ruby>集<rt>あつ</rt></ruby>まりいただきありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>天気<rt>てんき</rt></ruby>は…えっと、<ruby>本題<rt>ほんだい</rt></ruby>ですが、サーバーの<ruby>件<rt>けん</rt></ruby>で…」 <br/>*Cảm ơn các anh đã sắp xếp dự ạ. Hôm nay thời tiết... à mà vào việc, vụ server...* |
| **トゥアン** | 「あ、それね、<ruby>昨日<rt>きのう</rt></ruby>のデプロイで…<ruby>多分<rt>たぶん</rt></ruby>…」 <br/>*À cái đó ấy, có thể do deploy hôm qua... chắc...* |
| **ハイ** | 「いや、デプロイじゃないと<ruby>思<rt>おも</rt></ruby>いますよ。たぶんネットワーク…」 <br/>*Không, em nghĩ không phải deploy đâu. Có lẽ network...* |
| **松本** | 「<ruby>現在<rt>げんざい</rt></ruby>の<ruby>影響範囲<rt>えいきょうはんい</rt></ruby>だけ<ruby>教<rt>おし</rt></ruby>えてもらえますか。」 <br/>*Cho tôi biết phạm vi ảnh hưởng hiện tại thôi được không.* |

**Vì sao xấu:** Mở đầu lan man (chào hỏi xã giao không cần thiết), kỹ thuật bàn nguyên nhân chưa rõ, không có cấu trúc → khách Nhật mất kiên nhẫn vì đang lo.

---

## Hội thoại TỐT — Fact / Impact / Action / Owner
*tiếp*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>皆様<rt>みなさま</rt></ruby>、<ruby>緊急会議<rt>きんきゅうかいぎ</rt></ruby>のため<ruby>簡潔<rt>かんけつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めさせていただきます【1】。」 <br/>*Mọi người, vì là họp khẩn nên em xin phép tiến hành ngắn gọn ạ.* |
| **ズン** | 「**【Fact】**<ruby>本日<rt>ほんじつ</rt></ruby>7<ruby>時<rt>じ</rt></ruby>05<ruby>分<rt>ふん</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby>サーバーがダウンいたしました。<ruby>現在<rt>げんざい</rt></ruby>も<ruby>復旧中<rt>ふっきゅうちゅう</rt></ruby>でございます。」 <br/>*[Fact] 7h05 hôm nay, server prod đã down. Hiện đang khôi phục ạ.* |
| **ズン** | 「**【Impact】**<ruby>全<rt>ぜん</rt></ruby>ユーザーログイン<ruby>不可<rt>ふか</rt></ruby>、<ruby>推定影響<rt>すいていえいきょう</rt></ruby>ユーザー<ruby>数<rt>すう</rt></ruby>は1,200<ruby>名<rt>めい</rt></ruby>でございます【2】。」 <br/>*[Impact] Toàn bộ user không login được, ước tính 1,200 người bị ảnh hưởng ạ.* |
| **ズン** | 「**【Action】**①ハイがDBロールバック<ruby>実施中<rt>じっしちゅう</rt></ruby>、②トゥアンが<ruby>原因調査<rt>げんいんちょうさ</rt></ruby>、③<ruby>私<rt>わたし</rt></ruby>が<ruby>顧客向<rt>こきゃくむ</rt></ruby>け<ruby>一報<rt>いっぽう</rt></ruby>を<ruby>起草中<rt>きそうちゅう</rt></ruby>、でございます。」 <br/>*[Action] (1) Hải đang rollback DB, (2) Tuấn điều tra nguyên nhân, (3) em đang draft thông báo gửi user ạ.* |
| **ズン** | 「**【Owner & ETA】**<ruby>復旧目処<rt>ふっきゅうめど</rt></ruby>は8<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>、<ruby>最終報告<rt>さいしゅうほうこく</rt></ruby>は<ruby>本日<rt>ほんじつ</rt></ruby>10<ruby>時<rt>じ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>が<ruby>責任者<rt>せきにんしゃ</rt></ruby>でございます【3】。」 <br/>*[Owner & ETA] Mục tiêu khôi phục 8h30, báo cáo cuối hôm nay 10h, em là người chịu trách nhiệm ạ.* |
| **松本** | 「<ruby>明確<rt>めいかく</rt></ruby>で<ruby>助<rt>たす</rt></ruby>かります。10<ruby>時<rt>じ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ちます。」 <br/>*Rõ ràng, đỡ quá. Tôi chờ báo cáo 10h.* |

 **Ghi chú:**
- 【1】**「緊急会議のため、簡潔に進めさせていただきます」** — báo trước "không nghi thức rườm rà" → cho phép cắt ngắn phần chào hỏi.
- 【2】**Số cụ thể** (7時05分, 1,200名) — dựa trên sự thật, không nói 「たぶん」 (chắc là).
- 【3】**「責任者」 rõ ràng** — văn hóa doanh nghiệp Nhật rất quý việc có 1 người chịu trách nhiệm duy nhất.

---

## Cụm từ mẫu
> **「<ruby>緊急会議<rt>きんきゅうかいぎ</rt></ruby>のため、<ruby>簡潔<rt>かんけつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めさせていただきます。Fact→Impact→Action→Owner の<ruby>順<rt>じゅん</rt></ruby>でご<ruby>報告<rt>ほうこく</rt></ruby>いたします。」**
>
> *4F: Fact (sự thật), Felt impact (ảnh hưởng), plan of Action (kế hoạch xử lý), single Owner (một người chịu trách nhiệm). 30 phút.*

---

## Tránh
- Mở đầu chào hỏi dài → khách đang lo lại bị lãng phí thời gian.
- Bộ phận kỹ thuật bàn nguyên nhân chưa rõ trong họp khẩn (để xử lý sau).
- Không có 1 người chịu trách nhiệm duy nhất → trách nhiệm bị chia → không ai làm.
- Quá 30 phút → mệt + chất lượng quyết định giảm.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 緊急会議 | きんきゅうかいぎ | KHẨN CẤP HỘI NGHỊ | Họp khẩn |
| 簡潔 | かんけつ | GIẢN KHIẾT | Ngắn gọn / súc tích |
| 影響範囲 | えいきょうはんい | ẢNH HƯỞNG PHẠM VI | Phạm vi ảnh hưởng |
| 復旧 | ふっきゅう | PHỤC CỰU | Khôi phục |
| 目処 | めど | — | Mục đích / mốc dự kiến |
| 責任者 | せきにんしゃ | TRÁCH NHIỆM GIẢ | Người phụ trách |
| ロールバック | ろーるばっく | — | Rollback |', 'system', 37, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000038, 800000004, NULL, 'markdown_book', 'Rule 38 — Dời/hủy họp sát giờ / 直前のリスケ', '# Rule 38 — Dời/hủy họp sát giờ / 直前のリスケ
> **Luận điểm.** Hoãn họp gấp = mất uy tín nếu xử lý sai. Cấu trúc chuẩn: **(1) Xin lỗi sâu** 「急遽申し訳ございません」 → **(2) Lý do** (chân thật, không bịa) → **(3) Đề xuất 2-3 lịch thay thế** → **(4) Cam kết tài liệu sẽ gửi**. Không bao giờ "急用" mơ hồ.
>
> 直前リスケは「謝罪+理由+代替日3案+資料コミット」の4要素。曖昧な理由は信頼を損なう。
>
> **Liên quan:** Rule 02 (mời họp), Rule 17 (đến muộn), Rule 25 (xin mang về xem xét).

---

## Bối cảnh / 場面
Họp với anh Matsumoto lúc 14h. Đến 13h30, anh Hà CTO có cuộc họp khẩn với CFO ngân hàng → không thể tham dự. Em Dũng phải gọi báo dời họp gấp.

---

## Hội thoại XẤU — xin lỗi mơ hồ + không có lịch thay thế
*điện thoại · thực ra đã chuẩn bị 1 tiếng cho buổi này*

| Vai | Câu |
|---------|-----|
| **ズン** | 「松本さん、すみません、<ruby>急用<rt>きゅうよう</rt></ruby>があって<ruby>今日<rt>きょう</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby><ruby>無理<rt>むり</rt></ruby>になりました…また<ruby>連絡<rt>れんらく</rt></ruby>します。」 <br/>*Anh Matsumoto, em xin lỗi, có việc gấp nên họp hôm nay không được... em sẽ liên lạc lại.* |
| **松本** | 「…そうですか。」 <br/>*...Vậy à.* |

**Vì sao xấu:** 「急用」 = mơ hồ → khách không biết đánh giá mức độ tôn trọng. Không đề xuất lịch thay thế → khách phải chờ. 「また連絡」 không có hạn chót cụ thể.

---

## Hội thoại TỐT — 4 yếu tố
*điện thoại 13h30 · tiếp · tiếp*

| Vai | Câu |
|---------|-----|
| **ズン** | 「松本様、ティエンファットのズンでございます。<ruby>直前<rt>ちょくぜん</rt></ruby>のご<ruby>連絡<rt>れんらく</rt></ruby>となり、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません【1】。」 <br/>*Anh Matsumoto, em Dũng bên Thiên Phát đây ạ. Em báo sát giờ thế này, thật sự xin lỗi anh ạ.* |
| **ズン** | 「<ruby>弊社<rt>へいしゃ</rt></ruby>CTOが<ruby>本日<rt>ほんじつ</rt></ruby><ruby>突発的<rt>とっぱつてき</rt></ruby>に<ruby>銀行<rt>ぎんこう</rt></ruby>CFOとの<ruby>会議<rt>かいぎ</rt></ruby>が<ruby>入<rt>はい</rt></ruby>り、本日14<ruby>時<rt>じ</rt></ruby>の会議に<ruby>出席<rt>しゅっせき</rt></ruby>できない<ruby>状況<rt>じょうきょう</rt></ruby>となりました【2】。」 <br/>*CTO bên em đột xuất có họp với CFO ngân hàng hôm nay, không thể dự buổi 14h hôm nay được ạ.* |
| **ズン** | 「<ruby>大変<rt>たいへん</rt></ruby><ruby>恐縮<rt>きょうしゅく</rt></ruby>ながら、本日のお<ruby>打合<rt>うちあわ</rt></ruby>せをリスケジュールさせていただけませんでしょうか？<ruby>代替日<rt>だいたいび</rt></ruby>として、<ruby>明日<rt>あした</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby>10時、<ruby>明後日<rt>あさって</rt></ruby>午前11時、もしくは<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby><ruby>午後<rt>ごご</rt></ruby>2時、いずれかでご<ruby>都合<rt>つごう</rt></ruby>いかがでしょうか【3】？」 <br/>*Em rất áy náy, em xin được dời buổi họp hôm nay được không ạ? Lịch thay em đề xuất: 10h sáng mai, 11h sáng kia, hoặc 2h chiều thứ Hai tuần sau — anh thấy giờ nào tiện ạ?* |
| **ズン** | 「なお、本日お<ruby>見<rt>み</rt></ruby>せ<ruby>予定<rt>よてい</rt></ruby>だった<ruby>資料<rt>しりょう</rt></ruby>は、本日<ruby>中<rt>じゅう</rt></ruby>にメールにてお<ruby>送<rt>おく</rt></ruby>りいたします【4】。」 <br/>*Ngoài ra, tài liệu định trình hôm nay em sẽ gửi qua email trong hôm nay ạ.* |
| **松本** | 「<ruby>了解<rt>りょうかい</rt></ruby>しました。明日10時で<ruby>問題<rt>もんだい</rt></ruby>ありません。資料お<ruby>待<rt>ま</rt></ruby>ちしております。」 <br/>*OK rồi. 10h sáng mai không vấn đề. Tôi chờ tài liệu nhé.* |

 **Ghi chú:**
- 【1】**「直前のご連絡となり、誠に申し訳ございません」** — câu xin lỗi sâu chuẩn khi báo dời sát giờ.
- 【2】**Lý do cụ thể** — không 「急用」. Có tên người (CTO) + lý do (CFO銀行).
- 【3】**3 lịch thay thế** — không hỏi 「いつがいいですか？」. Đưa sẵn phương án để khách chọn nhanh.
- 【4】**Cam kết gửi tài liệu** — bù đắp bằng cách gửi tài liệu trước → khách thấy "vẫn được tôn trọng".

---

## Cụm từ mẫu
> **「直前のご連絡となり、誠に申し訳ございません。代替日として〇/〇、〇/〇、〇/〇、いずれかでご都合いかがでしょうか？」**
>
> *Xin lỗi sâu + lý do thật + 3 phương án lịch + cam kết tài liệu = 4 yếu tố cứu uy tín.*

---

## Tránh
- 「急用」「事情があり」 mơ hồ.
- 「また連絡します」 không có hạn chót cụ thể.
- Không đưa phương án lịch thay thế.
- Chỉ hủy qua email mà không gọi điện → chưa đủ trang trọng.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 直前 | ちょくぜん | TRỰC TIỀN | Sát giờ / ngay trước |
| リスケジュール | りすけじゅーる | — | Dời lịch / sắp xếp lại lịch |
| 突発的 | とっぱつてき | ĐỘT PHÁT ĐÍCH | Đột xuất |
| 代替日 | だいたいび | ĐẠI THẾ NHẬT | Ngày thay thế |
| 恐縮 | きょうしゅく | KHỦNG SÚC | Áy náy |
| 打合せ | うちあわせ | — | Buổi trao đổi |', 'system', 38, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000039, 800000004, NULL, 'markdown_book', 'Rule 39 — 1-on-1 với cấp trên Nhật / 1on1ミーティング', '# Rule 39 — 1-on-1 với cấp trên Nhật / 1on1ミーティング
> **Luận điểm.** 1on1 (1 đối 1) với cấp trên Nhật KHÔNG phải buổi tán gẫu. Cấu trúc 4 phần: (1) **Tiến độ** — gì đã làm, (2) **Vấn đề** — gì đang vướng, (3) **Đề nghị** — cần gì từ cấp trên, (4) **Bước tiếp theo**. Nhân viên cấp dưới chuẩn bị ghi chú trước, cấp trên nhận ghi chú. Câu chuẩn mở: 「**本日の1on1、4点ご報告と1点ご相談がございます**」.
>
> 1on1構成：①進捗 ②課題 ③相談したいこと ④次のステップ。雑談ではなく構造化された対話。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 41 (nhận xét hiệu suất), Rule 50 (tự nhìn lại).

---

## Bối cảnh / 場面
Em Dũng có 1on1 hàng tuần với chị Hương (Phó phòng) — buổi đầu sau khi Dũng được giao chủ trì họp đàm phán phase 2.

---

## Hội thoại XẤU — Nói chuyện lan man
*15 phút trôi qua không có thông tin*

| Vai | Câu |
|---------|-----|
| **フオン** | 「ズン、<ruby>最近<rt>さいきん</rt></ruby>どう？」 <br/>*Dũng, dạo này thế nào?* |
| **ズン** | 「えーと、まあまあです。なんか<ruby>色々<rt>いろいろ</rt></ruby><ruby>忙<rt>いそが</rt></ruby>しくて…」 <br/>*Ơ... cũng được ạ. Cũng nhiều việc...* |
| **フオン** | 「<ruby>具体的<rt>ぐたいてき</rt></ruby>には？」 <br/>*Cụ thể là gì?* |
| **ズン** | 「うーん、Phase 2 とかが…<ruby>大変<rt>たいへん</rt></ruby>です。」 <br/>*Ừm, phase 2 ấy ạ... vất vả ạ.* |
| **フオン** | 「ズン、<ruby>次回<rt>じかい</rt></ruby>はメモ<ruby>準備<rt>じゅんび</rt></ruby>してきて。」 <br/>*Dũng, lần sau chuẩn bị ghi chú nhé.* |

**Vì sao xấu:** Không chuẩn bị → 1on1 trở thành nói chuyện lan man → cấp trên không hỗ trợ được → lãng phí 30 phút.

---

## Hội thoại TỐT — cấu trúc 4 phần
*mở ghi chú trên Notion*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の1on1、4<ruby>点<rt>てん</rt></ruby>ご<ruby>報告<rt>ほうこく</rt></ruby>と1点ご<ruby>相談<rt>そうだん</rt></ruby>がございます【1】。」 <br/>*Chị Hương, 1on1 hôm nay em xin báo cáo 4 điểm và xin tham vấn 1 điểm ạ.* |
| **ズン** | 「**【<ruby>進捗<rt>しんちょく</rt></ruby>】**①Phase 2の<ruby>スコープ<rt>すこーぷ</rt></ruby><ruby>協議<rt>きょうぎ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、A<ruby>案<rt>あん</rt></ruby>で<ruby>確定<rt>かくてい</rt></ruby> ②<ruby>議事録<rt>ぎじろく</rt></ruby>は本日<ruby>中<rt>ちゅう</rt></ruby><ruby>送付<rt>そうふ</rt></ruby><ruby>予定<rt>よてい</rt></ruby> ③<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>より<ruby>追加<rt>ついか</rt></ruby><ruby>要件<rt>ようけん</rt></ruby>3<ruby>件<rt>けん</rt></ruby><ruby>受領<rt>じゅりょう</rt></ruby>、<ruby>対応<rt>たいおう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>」 <br/>*[Tiến độ] (1) Đã xong bàn phạm vi phase 2, chốt phương án A, (2) biên bản gửi trong hôm nay, (3) anh Matsumoto gửi thêm 3 yêu cầu, đang xử lý.* |
| **ズン** | 「**【<ruby>課題<rt>かだい</rt></ruby>】**QAリソースが<ruby>現在<rt>げんざい</rt></ruby>2<ruby>名<rt>めい</rt></ruby>のみで、5<ruby>月末<rt>がつまつ</rt></ruby>リリースまで<ruby>足<rt>た</rt></ruby>りない<ruby>見込<rt>みこ</rt></ruby>みでございます。」 <br/>*[Vấn đề] Hiện chỉ có 2 QA, dự kiến không đủ cho đến release cuối tháng 5 ạ.* |
| **ズン** | 「**【ご相談】**もう1名、6月までQAを<ruby>アサイン<rt>あさいん</rt></ruby>いただくことは<ruby>可能<rt>かのう</rt></ruby>でしょうか【2】？」 <br/>*[Tham vấn] Có thể assign thêm 1 QA đến tháng 6 được không ạ?* |
| **フオン** | 「<ruby>了解<rt>りょうかい</rt></ruby>。<ruby>経理<rt>けいり</rt></ruby>と<ruby>調整<rt>ちょうせい</rt></ruby>して、<ruby>今週中<rt>こんしゅうちゅう</rt></ruby>に<ruby>回答<rt>かいとう</rt></ruby>するね。」 <br/>*OK em. Để chị bàn với kế toán, trong tuần này chị trả lời nhé.* |
| **ズン** | 「ありがとうございます。**【次のステップ】**フオン副部長からのご<ruby>回答<rt>かいとう</rt></ruby><ruby>後<rt>ご</rt></ruby>、QAリーダーと<ruby>工数<rt>こうすう</rt></ruby><ruby>再見積<rt>さいみつ</rt></ruby>もりを<ruby>実施<rt>じっし</rt></ruby>いたします。」 <br/>*Em cảm ơn chị ạ. [Bước tiếp theo] Sau khi nhận trả lời của chị, em sẽ làm re-estimate man-hour với QA leader ạ.* |

 **Ghi chú:**
- 【1】**「4点ご報告と1点ご相談がございます」** — báo trước số mục → cấp trên biết cần dành bao nhiêu thời gian.
- 【2】**「ご相談」** rõ ràng — KHÔNG nói "có lẽ", "không biết". Hỏi thẳng "có thể bố trí thêm 1 QA không?".

---

## Cụm từ mẫu
> **「本日の1on1、〇点ご報告と〇点ご相談がございます。」**
>
> *Tiến độ / Vấn đề / Đề nghị / Bước tiếp theo. 4 phần. Có ghi chú chuẩn bị trước.*

---

## Tránh
- 1on1 không chuẩn bị ghi chú → cấp trên phải hỏi từng câu.
- 「色々」「大変」 không cụ thể.
- Nói vấn đề mà không kèm "đề nghị hỗ trợ" → cấp trên không biết phải hỗ trợ gì.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 1on1 | わんおんわん | — | 1 đối 1 |
| 進捗 | しんちょく | TIẾN TIỆP | Tiến độ |
| 課題 | かだい | KHÓA ĐỀ | Vấn đề / điểm vướng |
| 相談 | そうだん | TƯƠNG ĐÀM | Tham vấn / xin ý kiến |
| アサイン | あさいん | — | Bố trí / phân công người |
| 工数 | こうすう | CÔNG SỐ | Số công / nhân công |
| 再見積もり | さいみつもり | — | Ước lượng lại |', 'system', 39, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000040, 800000004, NULL, 'markdown_book', 'Rule 40 — Động não / Hội thảo / ブレストの進行', '# Rule 40 — Động não / Hội thảo / ブレストの進行
> **Luận điểm.** Động não kiểu Nhật khác phương Tây: vẫn có nguyên tắc "không phán xét" nhưng cần **chủ trì rõ ràng** + **giới hạn thời gian** + **xây dựng trên ý nhau**. 4 nguyên tắc: (1) **批判禁止** (không phê bình), (2) **量重視** (lúc đầu coi trọng số lượng hơn chất lượng), (3) **便乗歓迎** (xây dựng trên ý nhau), (4) **時間制限** (giới hạn thời gian). Nhân viên trẻ cũng được phát biểu bình đẳng.
>
> ブレスト4原則：批判禁止・量重視・便乗歓迎・時間制限。司会が冒頭に明示する。
>
> **Liên quan:** Rule 14 (chủ trì cuộc họp), Rule 19 (xin lượt), Rule 26 (đề xuất).

---

## Bối cảnh / 場面
Hội thảo nội bộ tìm ý tưởng giảm tỷ lệ người dùng rời bỏ. Em Dũng chủ trì, có Hà CTO + Tuấn + Hải + Linh tham gia.

---

## Hội thoại XẤU — không có nguyên tắc, nhân viên trẻ bị chặn ý kiến
*rụt rè · cắt ngang · im luôn cả phiên*

| Vai | Câu |
|---------|-----|
| **ズン** | 「じゃあ、アイデア<ruby>出<rt>だ</rt></ruby>してください。」 <br/>*Vậy, mọi người ý tưởng đi.* |
| **リン** | 「あの…ユーザーにアンケート<ruby>送<rt>おく</rt></ruby>るのは…」 <br/>*Ơ... gửi survey cho user thì...* |
| **トゥアン** | 「アンケート？<ruby>古<rt>ふる</rt></ruby>いよ。<ruby>誰<rt>だれ</rt></ruby>も<ruby>答<rt>こた</rt></ruby>えないし。」 <br/>*Survey? Cũ rồi. Chẳng ai trả lời đâu.* |
| **リン** | 「…」 <br/>*(im lặng)* |

**Vì sao xấu:** Không có nguyên tắc "không phê bình" → cấp trên bác ý nhân viên trẻ → nhân viên trẻ bị dập tắt → mất đa dạng ý tưởng.

---

## Hội thoại TỐT — tuyên bố nguyên tắc + chủ trì điều phối
*ghi lên bảng trắng · thay vì phê bình thì xây dựng thêm trên ý nhau · 15 phút sau*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>本日<rt>ほんじつ</rt></ruby>のブレスト、4<ruby>原則<rt>げんそく</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください【1】。①<ruby>批判禁止<rt>ひはんきんし</rt></ruby> ②<ruby>量重視<rt>りょうじゅうし</rt></ruby> ③<ruby>便乗歓迎<rt>びんじょうかんげい</rt></ruby> ④15<ruby>分<rt>ふん</rt></ruby>タイムボックス。よろしいでしょうか？」 <br/>*Động não hôm nay em xin xác nhận 4 nguyên tắc ạ. (1) không phê bình, (2) coi trọng số lượng, (3) hoan nghênh xây dựng trên ý nhau, (4) giới hạn 15 phút. Mọi người đồng ý chứ ạ?* |
| **全員** | 「OK。」 <br/>*OK.* |
| **リン** | 「ユーザーにアンケート<ruby>送<rt>おく</rt></ruby>るのは…」 <br/>*Gửi khảo sát cho người dùng thì sao ạ...* |
| **ズン** | 「アンケート、いいですね。<ruby>次<rt>つぎ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>？」 <br/>*Khảo sát, ý hay đấy. Tiếp theo nào?* |
| **トゥアン** | 「アンケートに<ruby>便乗<rt>びんじょう</rt></ruby>で、<ruby>解約<rt>かいやく</rt></ruby><ruby>直前<rt>ちょくぜん</rt></ruby>のユーザーだけに<ruby>送<rt>おく</rt></ruby>る、というのは【2】？」 <br/>*Xây dựng tiếp ý khảo sát đó, gửi riêng cho người dùng sắp hủy thì sao?* |
| **ハイ** | 「<ruby>便乗<rt>びんじょう</rt></ruby>で、<ruby>退会<rt>たいかい</rt></ruby><ruby>理由<rt>りゆう</rt></ruby>を<ruby>選択式<rt>せんたくしき</rt></ruby>にすると<ruby>回答率<rt>かいとうりつ</rt></ruby><ruby>上<rt>あ</rt></ruby>がるかも。」 <br/>*Xây dựng tiếp, để lý do hủy dạng lựa chọn thì tỷ lệ trả lời sẽ tăng đấy.* |
| **ズン** | 「タイムアップ。アイデア<ruby>合計<rt>ごうけい</rt></ruby>14<ruby>件<rt>けん</rt></ruby>。<ruby>次<rt>つぎ</rt></ruby>は priority <ruby>投票<rt>とうひょう</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります【3】。」 <br/>*Hết giờ ạ. Tổng 14 ý tưởng. Tiếp theo mình chuyển sang bỏ phiếu ưu tiên ạ.* |

 **Ghi chú:**
- 【1】**Tuyên bố 4 nguyên tắc ngay đầu** — quan trọng nhất là 「批判禁止」.
- 【2】**「便乗で〜」** — câu chuẩn JP để xây dựng trên ý nhau. Tốt hơn cách nói tách bạch 「私のアイデアは…」.
- 【3】**Giới hạn thời gian rõ** + chuyển sang bước sau (bỏ phiếu ưu tiên) → hội thảo cho ra kết quả cụ thể.

---

## Cụm từ mẫu
> **「<ruby>批判禁止<rt>ひはんきんし</rt></ruby>・<ruby>量重視<rt>りょうじゅうし</rt></ruby>・<ruby>便乗歓迎<rt>びんじょうかんげい</rt></ruby>・<ruby>時間制限<rt>じかんせいげん</rt></ruby>」 — 4<ruby>原則<rt>げんそく</rt></ruby>を<ruby>冒頭<rt>ぼうとう</rt></ruby>で<ruby>宣言<rt>せんげん</rt></ruby>。**

---

## Tránh
- 「じゃあ、自由に」 mơ hồ → không ai dám nói trước.
- Cấp trên phủ nhận ý kiến nhân viên trẻ → triệt tiêu sự đa dạng.
- Không giới hạn thời gian → hội thảo trôi 2 tiếng không kết quả.
- Quên 「便乗歓迎」 → ý tưởng rời rạc, không phát triển.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ブレスト | ぶれすと | — | Động não |
| 批判禁止 | ひはんきんし | PHÊ PHÁN CẤM CHỈ | Không phê bình |
| 量重視 | りょうじゅうし | LƯỢNG TRỌNG THỊ | Coi trọng số lượng |
| 便乗 | びんじょう | TIỆN THỪA | Xây dựng tiếp trên ý nhau |
| タイムボックス | たいむぼっくす | — | Giới hạn thời gian |
| 解約 | かいやく | GIẢI ƯỚC | Hủy hợp đồng |
| 投票 | とうひょう | ĐẦU PHIẾU | Bỏ phiếu |', 'system', 40, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000041, 800000004, NULL, 'markdown_book', 'Rule 41 — Đánh giá hiệu suất / フィードバック面談', '# Rule 41 — Đánh giá hiệu suất / フィードバック面談
> **Luận điểm.** Nhận xét kiểu Nhật KHÔNG dùng cách "khen-chê-khen" thẳng tuột. Dùng **mô hình GROW** + giọng điệu **định hướng phát triển**: (1) **G**oal đã đạt gì, (2) **R**eality — gì cần cải thiện (dựa trên sự thật, không cảm xúc), (3) **O**ptions — phương án phát triển, (4) **W**ill — cam kết đôi bên. Tránh 「君は…」 mang tính cá nhân.
>
> フィードバックはGROW（Goal/Reality/Options/Will）モデルで。事実ベース、人格批判なし。
>
> **Liên quan:** Rule 39 (1 đối 1), Rule 50 (tự nhìn lại).

---

## Bối cảnh / 場面
Cuối Q1, chị Hương đánh giá hiệu suất em Dũng. Có điểm tốt (Phase 1 ra mắt thành công) và điểm cần cải thiện (đôi khi cam kết hạn chót quá lạc quan).

---

## Hội thoại XẤU — phê bình cá nhân
*im, defensive*

| Vai | Câu |
|---------|-----|
| **フオン** | 「ズン、君は時々<ruby>楽観的<rt>らっかんてき</rt></ruby>すぎるよね。デッドラインを<ruby>甘<rt>あま</rt></ruby>く見ている。」 <br/>*Dũng, em đôi khi quá lạc quan đấy. Coi nhẹ hạn chót.* |
| **ズン** | 「…はい。」 <br/>*...Vâng ạ.* |
| **フオン** | 「次から気をつけて。」 <br/>*Lần sau cẩn thận nhé.* |

**Vì sao xấu:** 「君は楽観的すぎる」 = phê bình tính cách cá nhân → người nghe phòng thủ. Không có hướng dẫn cụ thể để hành động → không cải thiện được. Người Nhật đặc biệt né cách nói này.

---

## Hội thoại TỐT — GROW model
| Vai | Câu |
|---------|-----|
| **フオン** | 「ズン、Q1の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りをしましょう。【Goal】まず、Phase 1 launchを<ruby>期日<rt>きじつ</rt></ruby>通り<ruby>完遂<rt>かんすい</rt></ruby>できたこと、本当に<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>成果<rt>せいか</rt></ruby>でした【1】。」 <br/>*Dũng, mình review Q1 nhé. [Goal] Trước tiên, em đã launch Phase 1 đúng hạn — thành quả rất xuất sắc.* |
| **フオン** | 「【Reality】一方、3月のスプリントで2件、deadline の<ruby>見積<rt>みつ</rt></ruby>もりが20%短く<ruby>設定<rt>せってい</rt></ruby>されていた<ruby>事実<rt>じじつ</rt></ruby>がありました【2】。<ruby>結果<rt>けっか</rt></ruby>として QA が<ruby>逼迫<rt>ひっぱく</rt></ruby>しました。」 <br/>*[Thực trạng] Mặt khác, trong sprint tháng 3 có 2 vụ ước lượng hạn chót ngắn 20%. Kết quả là QA bị căng.* |
| **フオン** | 「【Options】今後の見積もりに、<ruby>過去<rt>かこ</rt></ruby><ruby>実績<rt>じっせき</rt></ruby>データの<ruby>参照<rt>さんしょう</rt></ruby>と、senior レビューを<ruby>追加<rt>ついか</rt></ruby>するアプローチが<ruby>考<rt>かんが</rt></ruby>えられます。どちらがズンに合うと思いますか【3】？」 <br/>*[Phương án] Lần sau ước lượng có 2 hướng: tham chiếu dữ liệu thực tế quá khứ, hoặc thêm người có kinh nghiệm hơn xem lại. Em thấy hướng nào hợp?* |
| **ズン** | 「Senior レビューの方が<ruby>即効性<rt>そっこうせい</rt></ruby>ありそうです。」 <br/>*Em thấy nhờ người có kinh nghiệm hơn xem lại sẽ nhanh hiệu quả hơn ạ.* |
| **フオン** | 「【Will】では、来月から見積もり時にトゥアンリーダーの30分レビューを<ruby>導入<rt>どうにゅう</rt></ruby>しましょう。<ruby>月末<rt>げつまつ</rt></ruby>1on1で振り返りましょう【4】。」 <br/>*[Will] Vậy tháng sau, mỗi lần estimate em đưa anh Tuấn review 30 phút nhé. Cuối tháng 1on1 mình rà lại.* |

 **Ghi chú:**
- 【1】**Goal — bắt đầu bằng thành tích cụ thể** (Phase 1 launch). Không khen suông mà nói cụ thể.
- 【2】**Reality — dựa trên sự thật, không mang tính cá nhân** ("見積もりが20%短く設定されていた事実" — sự thật ước lượng ngắn 20% — thay vì "君は甘い" — em dễ dãi quá).
- 【3】**Options — để người đó tự chọn** → tạo cảm giác làm chủ.
- 【4】**Will — cam kết cụ thể** + ngày kiểm tra tiến độ.

---

## Cụm từ mẫu
> **Mô hình GROW: Goal → Reality (sự thật, không cá nhân) → Options (cho chọn) → Will (cam kết + ngày kiểm tra tiến độ).**

---

## Tránh
- 「君は〜すぎる」 phê bình tính cách cá nhân → người nghe bị động, phòng thủ.
- Nhận xét không kèm phương án (Options) → không cải thiện được.
- Không có ngày kiểm tra tiến độ → nhận xét bị quên.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 振り返り | ふりかえり | — | Nhìn lại / review |
| 完遂 | かんすい | HOÀN TÙY | Hoàn thành trọn vẹn |
| 楽観的 | らっかんてき | LẠC QUAN ĐÍCH | Lạc quan |
| 逼迫 | ひっぱく | BỨC BÁCH | Bị ép / căng |
| 見積もり | みつもり | — | Ước lượng |
| 即効性 | そっこうせい | TỨC HIỆU TÍNH | Hiệu quả nhanh |', 'system', 41, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000042, 800000004, NULL, 'markdown_book', 'Rule 42 — Đột xuất kết thúc sớm vì thiếu thời gian / 時間切れの締め方', '# Rule 42 — Đột xuất kết thúc sớm vì thiếu thời gian / 時間切れの締め方
> **Luận điểm.** Họp gần hết giờ mà chưa xong nội dung → KHÔNG kéo dài quá. Câu chuẩn: 「**お時間が来てしまいましたので、続きは別途〜**」. Cấu trúc 3 bước: (1) **Báo đã hết giờ** → (2) **Xác nhận gì đã quyết** → (3) **Chuyển tiếp phần còn lại** kèm hạn chót + kênh trao đổi.
>
> 「お時間が来てしまいましたので、続きは別途〜」— 時間→決定済み確認→積み残しの3ステップ。
>
> **Liên quan:** Rule 16 (phân bổ thời gian), Rule 32 (hoãn quyết định), Rule 43 (đóng họp).

---

## Bối cảnh / 場面
Họp 60 phút, đến phút 58 chỉ mới bàn xong 2/3 các mục trong chương trình. Em Dũng (chủ trì) cần đóng họp đúng giờ.

---

## Hội thoại XẤU — kéo dài tuỳ tiện
*phút 58 · thực ra có buổi tiếp theo*

| Vai | Câu |
|---------|-----|
| **ズン** | 「あ、もう時間ですけど…まあ、もう少し続けましょうか？」 <br/>*À hết giờ rồi nhỉ... mà thôi, tiếp tý nữa được không ạ?* |
| **大垣** | 「…次の<ruby>予定<rt>よてい</rt></ruby>があるんですが…」 <br/>*...Tôi có buổi tiếp theo...* |

**Vì sao xấu:** Khách Nhật rất chặt giờ — cuộc họp tiếp theo liền sau. Hỏi 「続けましょうか？」 = ép khách phải lúng túng từ chối.

---

## Hội thoại TỐT — 3 bước đóng
*phút 58*

| Vai | Câu |
|---------|-----|
| **ズン** | 「お時間が来てしまいましたので、本日はここまでとさせていただきます【1】。」 <br/>*Đã đến giờ rồi nên hôm nay em xin dừng tại đây ạ.* |
| **ズン** | 「**【決定済み】**本日決定したのは、Phase 2スコープA案、リリース7月末、<ruby>責任者<rt>せきにんしゃ</rt></ruby>はトゥアンリーダー、の3点でございます【2】。」 <br/>*[Đã quyết] Hôm nay mình chốt 3 điểm: phạm vi phase 2 phương án A, ra mắt cuối tháng 7, người phụ trách là anh Tuấn ạ.* |
| **ズン** | 「**【積み残し】**残るスケジュール<ruby>詳細<rt>しょうさい</rt></ruby>とコスト<ruby>試算<rt>しさん</rt></ruby>につきましては、<ruby>別途<rt>べっと</rt></ruby><ruby>打合<rt>うちあわ</rt></ruby>せにてご相談させていただきます。来週水曜午後で30分のお時間<ruby>頂戴<rt>ちょうだい</rt></ruby>できますでしょうか【3】？」 <br/>*[Còn lại] Phần chi tiết schedule và tính cost em xin được bàn ở buổi riêng ạ. Anh dành cho em 30 phút chiều thứ Tư tuần sau được không ạ?* |
| **大垣** | 「水曜15時で問題ありません。」 <br/>*15h thứ Tư OK.* |
| **ズン** | 「ありがとうございます。本日はお時間頂戴し誠にありがとうございました。」 <br/>*Em cảm ơn anh ạ. Hôm nay em xin cảm ơn anh đã dành thời gian ạ.* |

 **Ghi chú:**
- 【1】**「お時間が来てしまいましたので」** — câu chuẩn báo hết giờ. Không hỏi 「続けますか？」.
- 【2】**Xác nhận lại các điểm đã quyết** — biên bản viết ngay.
- 【3】**Chuyển tiếp phần còn lại + đề xuất luôn khung giờ buổi sau** — không bỏ ngỏ.

---

## Cụm từ mẫu
> **「お時間が来てしまいましたので、本日はここまで。決定事項は〇、続きは〇月〇日にご相談。」**
>
> *3 bước: báo hết giờ → chốt điểm đã quyết → chuyển tiếp phần còn lại + khung giờ mới.*

---

## Tránh
- 「もう少し続けましょうか？」 → khách phải lúng túng từ chối.
- Kết thúc mơ hồ không xác nhận lại các điểm đã chốt.
- 「また別途」 không kèm khung giờ cụ thể.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 時間切れ | じかんぎれ | — | Hết giờ |
| 積み残し | つみのこし | — | Còn lại / chưa xong |
| 別途 | べっと | BIỆT ĐỒ | Riêng / khác buổi |
| 打合せ | うちあわせ | — | Buổi trao đổi |
| 試算 | しさん | THÍ TOÁN | Tính thử |
| 詳細 | しょうさい | TƯỜNG TẾ | Chi tiết |', 'system', 42, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000043, 800000004, NULL, 'markdown_book', 'Rule 43 — Câu chào kết thúc / 会議終了の挨拶', '# Rule 43 — Câu chào kết thúc / 会議終了の挨拶
> **Luận điểm.** Họp xong cần đóng một cách trang trọng, có lễ nghi. Câu chuẩn: 「**本日はお時間いただき誠にありがとうございました**」. Cấu trúc: (1) **Cảm ơn thời gian** → (2) **Tóm 1 dòng thành quả** → (3) **Cam kết việc kế tiếp** → (4) **Lời chào cuối**. Không "じゃあ、お疲れ様でした" thẳng — quá suồng sã với khách Nhật.
>
> 終了挨拶：①時間への感謝 ②本日のアウトプット要約 ③次のコミット ④結びの挨拶。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 42 (kết thúc sớm), Rule 44 (việc cần làm), Rule 47 (mail cảm ơn).

---

## Bối cảnh / 場面
Họp định kỳ tháng 4 vừa kết thúc đúng giờ với thành quả rõ ràng. Em Dũng (chủ trì) đóng họp.

---

## Hội thoại XẤU — kết thúc suồng sã
*im một lúc*

| Vai | Câu |
|---------|-----|
| **ズン** | 「じゃあ、お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>でした！」 <br/>*Vậy, mọi người vất vả rồi ạ!* |
| **大垣** | 「…はい、お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>でした。」 <br/>*...Vâng, vất vả rồi.* |

**Vì sao xấu:** 「お疲れ様でした」 ổn với đồng nghiệp, nhưng với khách Nhật + sau buổi họp trang trọng → quá suồng sã. Không có lời cảm ơn + phần tóm tắt.

---

## Hội thoại TỐT — 4 bước đóng
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>いただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございました【1】。」 <br/>*Hôm nay anh chị bận mà vẫn dành thời gian, em xin chân thành cảm ơn ạ.* |
| **ズン** | 「本日はPhase 2 スコープA<ruby>案<rt>あん</rt></ruby>の<ruby>確定<rt>かくてい</rt></ruby>と、5<ruby>月<rt>がつ</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>の<ruby>合意<rt>ごうい</rt></ruby>ができました【2】。」 <br/>*Hôm nay mình đã chốt scope phase 2 phương án A và đồng thuận kế hoạch dev tháng 5 ạ.* |
| **ズン** | 「<ruby>議事録<rt>ぎじろく</rt></ruby>は本日<ruby>中<rt>ちゅう</rt></ruby>、<ruby>資料<rt>しりょう</rt></ruby><ruby>一式<rt>いっしき</rt></ruby>は<ruby>明日<rt>あす</rt></ruby><ruby>午前中<rt>ごぜんちゅう</rt></ruby>までにメールにてお<ruby>送<rt>おく</rt></ruby>りいたします【3】。<ruby>次回<rt>じかい</rt></ruby>は5月10<ruby>日<rt>か</rt></ruby>の<ruby>月例<rt>げつれい</rt></ruby><ruby>会議<rt>かいぎ</rt></ruby>でお<ruby>会<rt>あ</rt></ruby>いしたく<ruby>存<rt>ぞん</rt></ruby>じます。」 <br/>*Biên bản em gửi trong hôm nay, tài liệu trọn bộ trước trưa mai qua email ạ. Lần tới em mong gặp lại anh tại họp định kỳ ngày 10/5 ạ.* |
| **ズン** | 「本日は誠にありがとうございました。<ruby>今後<rt>こんご</rt></ruby>ともどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます【4】。」 <br/>*Hôm nay em xin chân thành cảm ơn ạ. Mong tiếp tục được anh chị giúp đỡ ạ.* |
| **大垣・松本** | 「ありがとうございました。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きよろしくお願いします。」 <br/>*Cảm ơn nhé. Tiếp tục phối hợp nhé.* |

 **Ghi chú:**
- 【1】**「お忙しい中、お時間いただき誠にありがとうございました」** — câu chuẩn cảm ơn.
- 【2】**1 dòng tóm thành quả** — khách rời họp với cảm giác "có thành quả".
- 【3】**Cam kết việc kế tiếp** — biên bản 24h, tài liệu có thời hạn cụ thể, ngày họp tới.
- 【4】**「今後ともどうぞよろしくお願い申し上げます」** — câu kết quan hệ chuẩn trong giao tiếp công việc tiếng Nhật.

---

## Cụm từ mẫu
> **「<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>いただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<ruby>今後<rt>こんご</rt></ruby>ともどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。」**
>
> *Cảm ơn → tóm thành quả → cam kết việc kế tiếp → kết. 4 bước.*

---

## Tránh
- 「お疲れ様」 thẳng với khách → suồng sã quá.
- Không tóm thành quả → khách rời với cảm giác mơ hồ.
- Không cam kết việc kế tiếp → biên bản dễ bị trễ.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 終了 | しゅうりょう | CHUNG LIỄU | Kết thúc |
| 引き続き | ひきつづき | — | Tiếp tục |
| 一式 | いっしき | NHẤT THỨC | Trọn bộ |
| 月例 | げつれい | NGUYỆT LỆ | Định kỳ tháng |
| 合意 | ごうい | HỢP Ý | Đồng thuận |', 'system', 43, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000044, 800000004, NULL, 'markdown_book', 'Rule 44 — Xác nhận việc cần làm + người phụ trách / アクションアイテムの確認', '# Rule 44 — Xác nhận việc cần làm + người phụ trách / アクションアイテムの確認
> **Luận điểm.** Trước khi tan họp, **PHẢI** rà lại 3 thứ cho mỗi việc cần làm: **Who / What / When** (Ai / Làm gì / Khi nào). Câu chuẩn: 「**本日のアクションアイテムを確認させていただきます**」 → liệt kê từng mục → xác nhận người phụ trách. Không rà lại = 50% việc bị quên.
>
> アクションアイテムは『誰が・何を・いつまでに』の3要素を会議終了前に必ず読み上げて確認。
>
> **Liên quan:** Rule 31 (quyết định), Rule 43 (kết thúc), Rule 45 (biên bản).

---

## Bối cảnh / 場面
Họp Phase 2 đã quyết xong phạm vi (scope). 5 phút trước khi tan, em Dũng phải rà lại các việc cần làm cùng người phụ trách cụ thể.

---

## Hội thoại XẤU — bỏ qua confirm
*1 tuần sau, 2/4 actions chưa làm vì không nhớ ai phụ trách*

| Vai | Câu |
|---------|-----|
| **ズン** | 「では、皆さんよろしくお願いします。」 <br/>*Vậy, mọi người làm tốt nhé ạ.* |

**Vì sao xấu:** Không rà lại → việc bị bỏ lửng không rõ ai phụ trách. Khách Nhật đặc biệt cần rõ người chịu trách nhiệm.

---

## Hội thoại TỐT — đọc rõ việc cần làm / người phụ trách / hạn chót
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>会議<rt>かいぎ</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>前に、本日のアクションアイテムを<ruby>確認<rt>かくにん</rt></ruby>させていただきます【1】。4<ruby>件<rt>けん</rt></ruby>ございます。」 <br/>*Trước khi kết thúc, em xin được rà lại các việc cần làm hôm nay ạ. Có 4 mục ạ.* |
| **ズン** | 「① **scope A 案の<ruby>詳細<rt>しょうさい</rt></ruby><ruby>仕様書<rt>しようしょ</rt></ruby><ruby>作成<rt>さくせい</rt></ruby>** — トゥアンリーダー、5月2日まで。よろしいでしょうか【2】？」 <br/>*(1) Viết spec chi tiết scope A — anh Tuấn, hạn 2/5. OK không ạ?* |
| **トゥアン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。」 <br/>*Vâng em rõ ạ.* |
| **ズン** | 「② **5月<ruby>開発<rt>かいはつ</rt></ruby>スプリント<ruby>計画書<rt>けいかくしょ</rt></ruby>** — 私（ズン）、4月30日まで。」 <br/>*(2) Kế hoạch sprint phát triển tháng 5 — em Dũng, hạn 30/4.* |
| **ズン** | 「③ **<ruby>追加<rt>ついか</rt></ruby>QAリソース<ruby>可否<rt>かひ</rt></ruby><ruby>回答<rt>かいとう</rt></ruby>** — 大垣様、5月7日まで。」 <br/>*(3) Trả lời khả năng bổ sung QA — anh Ōgaki, hạn 7/5.* |
| **大垣** | 「<ruby>了解<rt>りょうかい</rt></ruby>です、確認します。」 <br/>*OK ạ, tôi sẽ kiểm tra.* |
| **ズン** | 「④ **<ruby>議事録<rt>ぎじろく</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>** — 私（ズン）、本日中。<ruby>以上<rt>いじょう</rt></ruby>4件、よろしくお願いいたします【3】。」 <br/>*(4) Gửi biên bản — em Dũng, trong hôm nay. Trên đây 4 mục, em xin nhờ mọi người ạ.* |

 **Ghi chú:**
- 【1】**「アクションアイテムを確認させていただきます」** — câu mở chuẩn. Báo trước số mục → đối phương biết tập trung nghe.
- 【2】**Mỗi mục: việc cần làm + người phụ trách + hạn chót + xác nhận** — đọc xong hỏi 「よろしいでしょうか？」, người phụ trách phải đáp "承知".
- 【3】**Tổng kết** số mục → biên bản dễ đối chiếu.

---

## Cụm từ mẫu
> **「① [What] — [Who]、[When]まで。よろしいでしょうか？」**
>
> *3W cho mỗi mục. Người phụ trách phải xác nhận bằng tiếng nói.*

---

## Tránh
- "皆さんよろしく" trống không.
- Bỏ qua xác nhận bằng tiếng nói → biên bản ghi một chiều.
- Không có hạn chót cụ thể.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| アクションアイテム | あくしょんあいてむ | — | Việc cần làm |
| 仕様書 | しようしょ | SĨ DẠNG THƯ | Bản đặc tả / spec |
| 計画書 | けいかくしょ | KẾ HOẠCH THƯ | Bản kế hoạch |
| 可否 | かひ | KHẢ PHỦ | Được hay không |
| 議事録 | ぎじろく | NGHỊ SỰ LỤC | Biên bản họp |
| 共有 | きょうゆう | CỘNG HỮU | Chia sẻ |', 'system', 44, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000045, 800000004, NULL, 'markdown_book', 'Rule 45 — Gửi biên bản trong 24h / 議事録の作成と配布', '# Rule 45 — Gửi biên bản trong 24h / 議事録の作成と配布
> **Luận điểm.** Biên bản (議事録 gijiroku) phải gửi **trong 24h** sau họp. Quá 48h = mất giá trị. Định dạng chuẩn 6 mục: **日時 / 出席者 / 議題 / 決定事項 / TODO / 次回**. Gửi qua email với tiêu đề 「**【議事録】〇〇会議 (〇月〇日)**」.
>
> 議事録は24時間以内、6項目（日時/出席者/議題/決定/TODO/次回）でメール配布。
>
> **Liên quan:** Rule 44 (việc cần làm), Rule 46 (định dạng chi tiết), Rule 47 (mail theo dõi sau họp).

---

## Bối cảnh / 場面
Họp định kỳ tháng 4 đã xong lúc 16h. Em Dũng cần gửi biên bản cho Matsumoto + Ōgaki trước cuối ngày.

---

## Hội thoại XẤU — gửi muộn + thiếu định dạng
*3 ngày sau · chat Dũng · gửi tới CC chị Hương*

| Vai | Câu |
|---------|-----|
| **松本** | 「ズンさん、先週の<ruby>議事録<rt>ぎじろく</rt></ruby>、まだですか？」 <br/>*Dũng, biên bản tuần trước chưa có à?* |
| **ズン** | 「すみません、明日送ります…」 <br/>*Em xin lỗi, mai em gửi ạ...* |
| **松本** | 「議事録の<ruby>遅延<rt>ちえん</rt></ruby>が続くと、record が<ruby>曖昧<rt>あいまい</rt></ruby>になり困ります。」 <br/>*Biên bản cứ trễ thì dữ liệu mơ hồ, tôi gặp khó đấy.* |

**Vì sao xấu:** Quá 48h → khách Nhật đặc biệt không hài lòng. CC sếp → leo thang vấn đề lên cấp trên.

---

## Quy trình TỐT — gửi 24h, định dạng 6 mục
*viết biên bản 17h, gửi 18h cùng ngày · email · body · tiếp · reply 翌朝*

| Vai | Câu |
|---------|-----|
| **ズン** |  |
| **ズン** | 「Subject: 【議事録】4月度<ruby>月例会議<rt>げつれいかいぎ</rt></ruby> (4月28日)」 <br/>*Tiêu đề: 【Biên bản】Họp định kỳ tháng 4 (28/4)* |
| **ズン** | 「松本様、大垣様 / お世話になっております。本日4月28日に<ruby>開催<rt>かいさい</rt></ruby>いたしました月例会議の議事録をお送り<ruby>申<rt>もう</rt></ruby>し上げます【1】。」 <br/>*Anh Matsumoto, anh Ōgaki, lúc nào cũng cảm ơn anh ạ. Em xin gửi biên bản buổi họp định kỳ ngày 28/4 hôm nay ạ.* |
| **ズン** | 「ご確認の上、ご質問・<ruby>修正点<rt>しゅうせいてん</rt></ruby>ございましたら、5月1日（水）17時までにご<ruby>返信<rt>へんしん</rt></ruby>いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです【2】。」 <br/>*Sau khi anh check, nếu có câu hỏi hoặc cần sửa, phiền anh reply trước 17h thứ Tư 1/5 ạ.* |
| **松本** | 「<ruby>迅速<rt>じんそく</rt></ruby>な<ruby>共有<rt>きょうゆう</rt></ruby>ありがとうございます。確認のうえ、特に修正なしでよろしくお願いいたします。」 <br/>*Cảm ơn chia sẻ nhanh nhé. Tôi đã check, không cần sửa, OK luôn.* |

 **Ghi chú:**
- 【1】**「本日〜開催いたしました〇〇会議の議事録をお送り申し上げます」** — câu mở mail chuẩn.
- 【2】**Hạn chót phản hồi** (例：5/1 17h) — ai có ý kiến thì reply, không có = coi như đã duyệt.

 **Mẫu biên bản 6 mục — xem Phụ lục D**

---

## Cụm từ mẫu
> **24h. 6 mục. Tiêu đề 「【議事録】〇〇会議 (〇月〇日)」. Có hạn chót phản hồi.**

---

## Tránh
- Gửi sau 48h → uy tín giảm.
- Định dạng không có 「決定事項」 + 「TODO」 → biên bản vô dụng.
- Không có hạn chót phản hồi → khách không biết khi nào phải reply.
- Tiêu đề mơ hồ "会議の件" → khó tìm kiếm.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 議事録 | ぎじろく | NGHỊ SỰ LỤC | Biên bản |
| 配布 | はいふ | PHỐI BỐ | Phân phát |
| 修正点 | しゅうせいてん | TU CHÍNH ĐIỂM | Điểm cần sửa |
| 迅速 | じんそく | TẤN TỐC | Nhanh chóng |
| 開催 | かいさい | KHAI THÔI | Tổ chức |
| 決定事項 | けっていじこう | QUYẾT ĐỊNH SỰ HẠNG | Mục đã quyết |', 'system', 45, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000046, 800000004, NULL, 'markdown_book', 'Rule 46 — Format biên bản chuẩn / 議事録のフォーマット', '# Rule 46 — Format biên bản chuẩn / 議事録のフォーマット
> **Luận điểm.** Định dạng biên bản chuẩn trong doanh nghiệp Nhật có 8 thành phần + 3 quy ước: (1) **件名 chuẩn** 「【議事録】〇〇会議」, (2) **責任者明記** mỗi đầu việc (TODO), (3) **quyết định tách rời việc cần làm**. Bản mở rộng (rule này) khác bản cơ bản (rule 45) ở chỗ có **theo dõi điểm chưa quyết** + **xem trước nội dung họp lần sau**.
>
> 議事録の標準フォーマット8要素 + 3慣習：件名・責任者明記・決定/TODO分離。
>
> **Liên quan:** Rule 45 (gửi 24h), Rule 47 (mail cảm ơn), Rule 48 (vắng mặt).

---

## Bối cảnh / 場面
Em Dũng cần biên bản đàm phán Phase 2 — buổi quan trọng (đàm phán giá), sẽ là bằng chứng cho hợp đồng. Format phải chuẩn doanh nghiệp, bản extended.

---

## Format XẤU — sơ sài, thiếu cấu trúc
```
4/28 会議

参加：松本、大垣、ズン、トゥアン
内容：Phase 2 のスコープを話した。A 案で行く。
TODO：仕様書を書く。
```

**Hội thoại minh hoạ:**

| Vai | Câu |
|-----|-----|
| **ズン** | （議事録の中身）4/28 <ruby>会議<rt>かいぎ</rt></ruby>。<ruby>参加<rt>さんか</rt></ruby>：松本、大垣、ズン、トゥアン。<ruby>内容<rt>ないよう</rt></ruby>：Phase 2 のスコープを話した。A 案で行く。TODO：<ruby>仕様書<rt>しようしょ</rt></ruby>を書く。 <br/>*(Nội dung biên bản) Họp 28/4. Tham dự: Matsumoto, Ōgaki, Dũng, Tuấn. Nội dung: bàn phạm vi phase 2. Đi theo phương án A. TODO: viết bản đặc tả.* |
| **フオン** | ズン、これじゃ後で<ruby>揉<rt>も</rt></ruby>めた時に<ruby>証拠<rt>しょうこ</rt></ruby>にならないよ。誰がいつまでに、<ruby>決定<rt>けってい</rt></ruby>とTODOの<ruby>分離<rt>ぶんり</rt></ruby>が必要。 <br/>*Dũng, biên bản này sau có tranh chấp thì không làm bằng chứng được đâu. Phải có ai/khi nào, quyết định tách rời TODO.* |

**Vì sao xấu:** Không có thời gian cụ thể, không có mục đích, không tách 決定 / TODO, không có người phụ trách cho TODO, không có lịch họp tiếp theo → không thể dùng làm bằng chứng.

---

## Format TỐT — extended, đầy đủ cấu trúc
**Hội thoại minh hoạ:**

| Vai | Câu |
|-----|-----|
| **フオン** | ズン、これは<ruby>契約<rt>けいやく</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>だから extended フォーマットね。8<ruby>要素<rt>ようそ</rt></ruby>で。 <br/>*Dũng, vụ này là đàm phán hợp đồng nên dùng định dạng mở rộng nhé. Đủ 8 thành phần.* |
| **ズン** | <ruby>承知<rt>しょうち</rt></ruby>しました。テンプレートに<ruby>沿<rt>そ</rt></ruby>って<ruby>作成<rt>さくせい</rt></ruby>いたします。 <br/>*Vâng em rõ ạ. Em sẽ làm theo mẫu ạ.* |

 **Xem mẫu biên bản chi tiết đã điền dữ liệu mẫu** trong Phụ lục D. Định dạng gồm 8 thành phần:

1. **件名** (tiêu đề) - Chuẩn: 「【議事録】〇〇会議」
2. **会議概要** - 日時 / 場所 / 形式 / 出席 / 欠席
3. **目的** - Tại sao họp
4. **議題** - Danh sách hạng mục
5. **議論の要旨** (tóm tắt thảo luận) - Quan trọng nhất, ghi 1-2 câu mỗi hạng mục
6. **決定事項** - Quyết định (ghi rõ "確定")
7. **アクションアイテム** - Theo công thức Ai / Làm gì / Khi nào
8. **次回会議** - Ngày + xem trước nội dung

 **3 quy ước riêng:**
- **責任者を必ず1人明記** mỗi TODO (không ghi chung chung là "cả nhóm").
- **決定事項 và TODO TÁCH RỜI** — quyết định = "đã quyết", TODO = "việc cần làm tiếp".
- **未決事項 (theo dõi điểm chưa quyết)** — liệt kê những điểm CHƯA quyết được, để theo dõi ở họp sau.

---

## Cụm từ mẫu
> **8 thành phần + 3 quy ước. Quyết định ≠ việc cần làm. Mỗi việc cần làm 1 người phụ trách duy nhất.**

---

## Tránh
- Gộp quyết định và việc cần làm → khó truy vết, đối chiếu sau này.
- Việc cần làm không có người phụ trách cụ thể → trách nhiệm bị chia mơ hồ.
- Quên 「未決事項」 → các điểm tồn đọng bị quên giữa các buổi họp.
- Format khác nhau giữa các buổi họp → khó so sánh.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 概要 | がいよう | KHÁI YẾU | Tổng quan |
| 要旨 | ようし | YẾU CHỈ | Tóm ý |
| 未決事項 | みけつじこう | VỊ QUYẾT SỰ HẠNG | Hạng mục chưa quyết |
| 補足 | ほそく | BỔ TÚC | Bổ sung |
| 議論 | ぎろん | NGHỊ LUẬN | Thảo luận |', 'system', 46, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000047, 800000004, NULL, 'markdown_book', 'Rule 47 — Email cảm ơn sau họp / お礼メール', '# Rule 47 — Email cảm ơn sau họp / お礼メール
> **Luận điểm.** Sau họp quan trọng (đàm phán, khởi động dự án, lần đầu gặp), cần **email cảm ơn riêng** trong 24h, KHÁC với biên bản. Nội dung 4 phần: (1) **cảm ơn thời gian**, (2) **3 điểm chính ấn tượng**, (3) **bước tiếp theo cụ thể**, (4) **lời kết gắn kết quan hệ**. Tiêu đề: 「**御礼：〇月〇日の打合せ**」.
>
> お礼メール構成：①感謝 ②điểm chính rút ra (3 điểm) ③次のステップ ④結語。議事録とは別送。
>
> **Liên quan:** Rule 02 (mời họp), Rule 45 (biên bản), Rule 49 (CRM tracking).
> Sách 01 (Email) Rule 25-32 (mail tổng quát).

---

## Bối cảnh / 場面
Họp đàm phán phase 2 đầu tiên với anh Ōgaki vừa xong. Đây là lần đầu Dũng làm việc với Ōgaki. Cần gửi mail cảm ơn riêng (ngoài biên bản).

---

## Hội thoại XẤU — không gửi mail cảm ơn + chỉ gửi biên bản
*chỉ gửi biên bản, không có email cảm ơn · với chị Hương 1 tuần sau*

| Vai | Câu |
|---------|-----|
| **大垣** | 「ズンさんは<ruby>議事録<rt>ぎじろく</rt></ruby>だけで、<ruby>初対面<rt>しょたいめん</rt></ruby>のお<ruby>礼<rt>れい</rt></ruby>もないですね…」 <br/>*Dũng chỉ gửi biên bản, không có cảm ơn lần đầu gặp nhỉ...* |

**Vì sao xấu:** Khách Nhật rất quý "お礼の文化". Lần đầu gặp + không có thư cảm ơn = kết nối cá nhân yếu.

---

## Hội thoại TỐT — mail cảm ơn riêng
 **Xem mẫu chi tiết** trong Phụ lục D. Cấu trúc:

1. **Subject:** 「御礼：〇月〇日の打合せ」
2. **Mở:** 「お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、<ruby>貴重<rt>きちょう</rt></ruby>なお<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>し、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。」
3. **3 điểm chính:** "<ruby>今回<rt>こんかい</rt></ruby>の<ruby>打合<rt>うちあわ</rt></ruby>せでは、<ruby>以下<rt>いか</rt></ruby>3<ruby>点<rt>てん</rt></ruby>が<ruby>特<rt>とく</rt></ruby>に<ruby>印象<rt>いんしょう</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>りました — ①〜 ②〜 ③〜"
4. **Bước tiếp theo:** "つきましては〇月〇日までに〇〇をお送りいたします。"
5. **Closing:** "今後ともどうぞよろしくお願い申し上げます。"

 **Phân biệt với biên bản:**
- 議事録 = bản ghi chính thức (8 thành phần, có cấu trúc).
- お礼メール = chạm cảm xúc cá nhân (giọng ấm, ngắn ~150 từ JP).
- Cả 2 gửi trong 24h.

---

## Cụm từ mẫu
> **「御礼：〇月〇日の打合せ」 → cảm ơn → 3 điểm chính rút ra → bước tiếp theo → câu kết. ~150 từ.**

---

## Tránh
- Chỉ gửi biên bản, bỏ qua email cảm ơn.
- Tiêu đề 「ありがとうございました」 trống không.
- Mail cảm ơn dài như biên bản.
- Quên bước tiếp theo → khách không biết phải chờ gì.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 御礼 | おんれい | NGỰ LỄ | Cảm ơn (formal) |
| 貴重 | きちょう | QUÝ TRỌNG | Quý báu |
| 印象に残る | いんしょうにのこる | ẤN TƯỢNG | Để lại ấn tượng |
| 頂戴する | ちょうだいする | ĐỈNH ĐÁI | Xin nhận / lấy mất |
| 結語 | けつご | KẾT NGỮ | Câu kết thư |', 'system', 47, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000048, 800000004, NULL, 'markdown_book', 'Rule 48 — Cập nhật người vắng mặt / 欠席者へのフィードバック', '# Rule 48 — Cập nhật người vắng mặt / 欠席者へのフィードバック
> **Luận điểm.** Người vắng (đã báo trước) PHẢI nhận đủ thông tin + có cơ hội góp ý. Quy trình: (1) **gửi biên bản** trong 24h như mọi người, (2) **kèm câu mở** ghi nhận "không dự được", (3) **đề xuất 15 phút trao đổi bù lại** nếu có chủ đề quan trọng. Không bao giờ bỏ qua người vắng.
>
> 欠席者には議事録+catch-up提案で情報非対称を解消。「いなかったから」と切り捨てない。
>
> **Liên quan:** Rule 18 (báo vắng), Rule 45 (biên bản), Rule 47 (mail cảm ơn).

---

## Bối cảnh / 場面
Chị Loan (Kế toán trưởng) đã báo trước không dự được họp đàm phán phase 2 (do trùng lịch ngân hàng). Em Dũng cần theo dõi, gửi thông tin bù.

---

## Hội thoại XẤU — chỉ chuyển tiếp biên bản
*chuyển tiếp biên bản, không có nội dung · 2 ngày sau*

| Vai | Câu |
|---------|-----|
| **ズン** |  |
| **ロアン** | 「ズン、<ruby>議事録<rt>ぎじろく</rt></ruby>読んだけど、QA<ruby>増員<rt>ぞういん</rt></ruby>の件、私の意見も聞いてほしかった…」 <br/>*Dũng, chị đọc biên bản rồi, nhưng vụ tăng QA chị muốn em hỏi ý chị nữa...* |

**Vì sao xấu:** Chỉ chuyển tiếp suông → ngụ ý "đọc đi, OK?" mà không ghi nhận người này có đóng góp quan trọng (kế toán = người nắm ngân sách).

---

## Cách TỐT — ghi nhận + đề xuất trao đổi bù
*viết mail riêng cho chị Loan*

| Vai | Câu |
|---------|-----|
| **ズン** | 「ロアン<ruby>経理<rt>けいり</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になっております。ズンでございます【1】。」 <br/>*Chị Loan, lúc nào cũng cảm ơn chị giúp đỡ ạ. Em Dũng đây ạ.* |
| **ズン** | 「本日の Phase 2 <ruby>交渉<rt>こうしょう</rt></ruby><ruby>会議<rt>かいぎ</rt></ruby>、ご<ruby>都合<rt>つごう</rt></ruby>つかずお<ruby>出<rt>で</rt></ruby>ましいただけなかったこと、<ruby>改<rt>あらた</rt></ruby>めて<ruby>承知<rt>しょうち</rt></ruby>しております【2】。」 <br/>*Họp đàm phán phase 2 hôm nay chị không tiện dự được, em vẫn nhớ ạ.* |
| **ズン** | 「<ruby>議事録<rt>ぎじろく</rt></ruby>を<ruby>添付<rt>てんぷ</rt></ruby>いたします。特に **6番（QA<ruby>増員<rt>ぞういん</rt></ruby>）** および **7番（<ruby>未決<rt>みけつ</rt></ruby><ruby>事項<rt>じこう</rt></ruby>：<ruby>予算<rt>よさん</rt></ruby>）** につきまして、<ruby>経理<rt>けいり</rt></ruby><ruby>視点<rt>してん</rt></ruby>でのご意見を<ruby>頂戴<rt>ちょうだい</rt></ruby>したく<ruby>存<rt>ぞん</rt></ruby>じます【3】。」 <br/>*Em đính kèm biên bản. Đặc biệt items 6 (tăng QA) và 7 (chưa quyết: budget), em rất mong nhận được ý kiến từ góc kế toán của chị ạ.* |
| **ズン** | 「もしよろしければ、<ruby>明日<rt>あす</rt></ruby><ruby>午前中<rt>ごぜんちゅう</rt></ruby>に15分ほどお時間<ruby>頂戴<rt>ちょうだい</rt></ruby>し、catch-up させていただけませんでしょうか【4】？」 <br/>*Nếu được, em xin chị 15 phút sáng mai để trao đổi bù có được không ạ?* |
| **ロアン** | 「ありがとう。明日10時、15分でOK。」 <br/>*Cảm ơn em. 10h sáng mai, 15 phút OK.* |

 **Ghi chú:**
- 【1】**Mail riêng** — không CC cả nhóm. Ghi nhận riêng cho cá nhân.
- 【2】**「ご都合つかずお出ましいただけなかった」** — ghi nhận việc vắng mặt một cách trang trọng, không trách.
- 【3】**Chỉ rõ mục liên quan** — không bắt chị Loan đọc cả biên bản. "items 6 và 7 cần ý chị".
- 【4】**Đề xuất 15 phút trao đổi bù lại** — thu hẹp khoảng cách thông tin.

---

## Cụm từ mẫu
> **欠席者 = mail riêng + ghi nhận vắng + mục liên quan + đề xuất 15 phút trao đổi bù lại.**

---

## Tránh
- Chuyển tiếp biên bản trống không.
- Bỏ qua người vắng → họ thấy không quan trọng.
- Trao đổi bù không giới hạn thời gian → 30-60 phút lãng phí.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 欠席者 | けっせきしゃ | KHUYẾT TỊCH GIẢ | Người vắng |
| ご都合つかず | ごつごうつかず | — | Không tiện lịch |
| お出まし | おでまし | — | Tham dự (formal) |
| 経理視点 | けいりしてん | KINH LÝ THỊ ĐIỂM | Góc nhìn kế toán |
| catch-up | catch-up | — | Trao đổi bù lại |', 'system', 48, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000049, 800000004, NULL, 'markdown_book', 'Rule 49 — Lưu quyết định vào hệ thống nội bộ / 決定事項の社内管理', '# Rule 49 — Lưu quyết định vào hệ thống nội bộ / 決定事項の社内管理
> **Luận điểm.** Các quyết định từ họp PHẢI lưu vào hệ thống nội bộ (Notion/Slack/CRM) trong **48h** với 4 trường: **(1) Quyết định**, **(2) Nguồn họp + ngày**, **(3) Người phụ trách**, **(4) Trạng thái (đang mở/đã xong)**. Mục đích: có thể tra cứu cho kiểm toán + tiếp nhận nhân viên mới + tránh "đã quyết rồi vẫn cãi lại".
>
> 決定事項は48時間以内にNotion/CRMに記録：①decision ②会議源 ③owner ④status の4フィールド。
>
> **Liên quan:** Rule 31 (quyết định), Rule 45 (biên bản), Rule 50 (self-reflection).

---

## Bối cảnh / 場面
3 tuần sau buổi đàm phán phase 2, có thành viên phát triển mới gia nhập. Hỏi "phạm vi phase 2 chốt thế nào?". Em Dũng cần chỉ tới ghi chép trong CRM.

---

## Hội thoại XẤU — biên bản đâu đó trong email
| Vai | Câu |
|---------|-----|
| **新人** | 「ズンさん、Phase 2 のスコープって<ruby>最終的<rt>さいしゅうてき</rt></ruby>にどう<ruby>決<rt>き</rt></ruby>まったんですか？」 <br/>*Anh Dũng, scope phase 2 cuối cùng quyết thế nào ạ?* |
| **ズン** | 「えーと、メールどこかに<ruby>議事録<rt>ぎじろく</rt></ruby>あったはず…」 *(15 phút tìm kiếm)* <br/>*Ơ... biên bản có ở đâu đó trong email rồi...* |
| **新人** | 「…」 <br/>*(...)* |

**Vì sao xấu:** Quyết định không có nguồn tra cứu duy nhất. Mỗi lần ai hỏi → tìm trong email → mất 15 phút. Quy trình tiếp nhận nhân viên mới kém hiệu quả.

---

## Quy trình TỐT — Ghi chép trên Notion
*Bảng Notion · thấy ghi chép*

| Vai | Câu |
|---------|-----|
| **新人** | 「ズンさん、Phase 2 のスコープって<ruby>最終的<rt>さいしゅうてき</rt></ruby>にどう<ruby>決<rt>き</rt></ruby>まったんですか？」 <br/>*Anh Dũng, scope phase 2 cuối cùng quyết thế nào ạ?* |
| **ズン** | 「Notion の『<ruby>決定事項<rt>けっていじこう</rt></ruby><ruby>一覧<rt>いちらん</rt></ruby>』に<ruby>記録<rt>きろく</rt></ruby>があります。リンク<ruby>送<rt>おく</rt></ruby>りますね【1】。」 <br/>*Có ghi chép trong danh sách quyết định trên Notion đấy. Anh gửi đường dẫn nhé.* |
| **新人** | 「あ、4/28<ruby>会議<rt>かいぎ</rt></ruby>で A 案<ruby>確定<rt>かくてい</rt></ruby>、ownerはトゥアンリーダー、status: closed って<ruby>書<rt>か</rt></ruby>いてありますね。<ruby>明確<rt>めいかく</rt></ruby>で<ruby>助<rt>たす</rt></ruby>かります。」 <br/>*À, ghi rõ ''họp 28/4 chốt phương án A, người phụ trách Tuấn, trạng thái: đã xong''. Rõ ràng quá, em đỡ rồi.* |

 **Định dạng ghi chép CRM/Notion:**

| Trường | Ví dụ |
|---|---|
| Quyết định | Phạm vi Phase 2 = phương án A (chỉ tính năng ưu tiên cao) |
| Nguồn | 4月度月例会議 (2026-04-28) — link biên bản |
| Người phụ trách | トゥアンリーダー |
| Trạng thái | đã xong |
| Vấn đề liên quan | QA体制 (đang mở), 予算値引き率 (đang mở) |
| Cập nhật lần cuối | 2026-04-28 bởi ズン |

 **Ghi chú:**
- 【1】**Nguồn tra cứu duy nhất** — 1 link Notion thay vì phải lục tung email.
- **Trạng thái:** đang mở / đang xử lý / đã xong.
- **Vấn đề liên quan** — link các quyết định phụ thuộc lẫn nhau.

---

## Cụm từ mẫu
> **48h. 4 trường. 1 nguồn tra cứu duy nhất. Có thể tìm kiếm.**

---

## Tránh
- Quyết định chỉ trong biên bản email → mất khả năng tra cứu.
- Không có người phụ trách → trách nhiệm bị chia mơ hồ.
- Không có trạng thái → không biết quyết định còn hiệu lực không.
- Quên cập nhật khi quyết định bị phủ quyết sau này.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 決定事項 | けっていじこう | QUYẾT ĐỊNH SỰ HẠNG | Mục đã quyết |
| 社内管理 | しゃないかんり | XÃ NỘI QUẢN LÝ | Quản lý nội bộ |
| 一覧 | いちらん | NHẤT LÃM | Danh sách |
| 記録 | きろく | KÝ LỤC | Ghi chép |
| 追跡 | ついせき | TRUY TÍCH | Theo dõi |', 'system', 49, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (840000050, 800000004, NULL, 'markdown_book', 'Rule 50 — Tự nhìn lại và cải tiến / 振り返りと改善', '# Rule 50 — Tự nhìn lại và cải tiến / 振り返りと改善
> **Luận điểm.** Sau mỗi tuần có nhiều họp, dành **15 phút chiều thứ Sáu** để nhìn lại: gì hiệu quả, gì cần đổi. Dùng **danh sách kiểm tra 10 mục** (準備/進行/参加/締め). Ghi vào **file nhật ký riêng** — không gửi ai. Mục đích: kỹ năng họp tăng từng tuần, không bị đình trệ (chững lại).
>
> <ruby>週末<rt>しゅうまつ</rt></ruby>15<ruby>分<rt>ふん</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>り：10<ruby>項目<rt>こうもく</rt></ruby>チェックリストで<ruby>会議<rt>かいぎ</rt></ruby>スキルを<ruby>継続<rt>けいぞく</rt></ruby><ruby>改善<rt>かいぜん</rt></ruby>。<ruby>日記<rt>にっき</rt></ruby><ruby>形式<rt>けいしき</rt></ruby>で<ruby>個人<rt>こじん</rt></ruby>ファイルに<ruby>記録<rt>きろく</rt></ruby>。
>
> **Liên quan:** Rule 39 (1on1), Rule 41 (phản hồi), Rule 49 (theo dõi quyết định).

---

## Bối cảnh / 場面
Chiều thứ Sáu 5pm. Em Dũng đã chủ trì 4 buổi họp tuần này. Mở file `meeting_diary.md` để tự nhìn lại.

---

## Pattern XẤU — không reflect
| Tuần | Câu của em Dũng | Hệ quả |
|---|---|---|
| Tuần 1 | 「終わった、よかった」 | Không học gì mới |
| Tuần 4 | Cùng lỗi cũ lặp lại — chương trình họp gửi 2h trước | Khách lại phàn nàn |
| Tuần 12 | Kỹ năng giậm chân, đánh giá hiệu suất không cải thiện |

---

## Pattern TỐT — danh sách kiểm tra 10 mục chiều thứ Sáu
 **Danh sách kiểm tra 10 mục** — xem Phụ lục D. 4 nhóm:

**A. Chuẩn bị (3 mục)**
- [ ] Chương trình họp gửi ≥24h trước?
- [ ] Tài liệu đọc trước được gửi ≥24h?
- [ ] Kiểm tra nội bộ trước họp?

**B. Tiến hành (3 mục)**
- [ ] Bắt đầu đúng giờ?
- [ ] Tất cả ý kiến được nghe (kể cả nhân viên trẻ)?
- [ ] Giữ đúng thời lượng phân bổ cho mỗi mục?

**C. Tham gia (2 mục)**
- [ ] Em có dùng câu đệm trước khi phản đối?
- [ ] Em diễn đạt lại + xác nhận hiểu đúng?

**D. Kết thúc (2 mục)**
- [ ] Việc cần làm có người phụ trách + hạn chót đã xác nhận?
- [ ] 議事録 gửi trong 24h?

 **Định dạng một mục nhật ký:**

```
=== Tuần 17 (4/22 - 4/26) — Nhìn lại ===
Buổi họp: 4 (đàm phán Phase 2, định kỳ x2, 1on1)

 Đã làm tốt:
  - Chương trình họp gửi 48h trước cho buổi đàm phán Phase 2
  - Dùng câu đệm + đề xuất đối lại khi anh Ōgaki yêu cầu 20%

 Cần cải thiện:
  - Họp định kỳ thứ 4 — quên xin lượt nói (cắt lời anh Matsumoto)
  - 議事録 buổi 1on1 gửi trễ 6h

 Tuần tới sẽ thử:
  - Đặt nhắc nhở điện thoại "giơ tay xin nói" ở mọi buổi
  - Chặn lịch 30 phút sau mỗi họp để viết biên bản
```

---

## Cụm từ mẫu
> **Chiều thứ Sáu 15 phút. Danh sách kiểm tra 10 mục. File nhật ký riêng. Tuần sau thử 1-2 thay đổi cụ thể.**

---

## Tránh
- Không nhìn lại → kỹ năng đình trệ.
- Nhìn lại chung chung "tốt/không tốt" → không có hành động cụ thể.
- Quá nhiều thay đổi 1 lần → rối, khó theo. 1-2 thay đổi mỗi tuần là đủ.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 振り返り | ふりかえり | — | Nhìn lại / tự nhìn nhận |
| 改善 | かいぜん | CẢI THIỆN | Cải thiện |
| 継続 | けいぞく | KẾ TỤC | Liên tục |
| 日記 | にっき | NHẬT KÝ | Nhật ký |
| チェックリスト | ちぇっくりすと | — | Danh sách kiểm tra |', 'system', 50, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
