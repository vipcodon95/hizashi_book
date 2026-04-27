-- Hizashi book SQL — Tiếp khách · Thăm · Danh thiếp / 来客・訪問・名刺交換
-- curriculum_id = 8008
-- node count = 35
-- generated từ release/books/07_visit_card/
-- KHÔNG sửa thủ công file này. Chạy lại scripts/build_sql_from_release.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, introduction_jp, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (8008, NULL, 'markdown_book', 'BJT', 'Tiếp khách · Thăm · Danh thiếp', 'Bộ sách Hizashi — Tiếp khách · Thăm · Danh thiếp', 'Hizashi シリーズ — 来客・訪問・名刺交換', 'system', TRUE, TRUE, TRUE, FALSE, 20, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, introduction = EXCLUDED.introduction, introduction_jp = EXCLUDED.introduction_jp, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008001, 8008, NULL, 'markdown_book', 'Rule 01 — Chuẩn bị danh thiếp đúng cách / 名刺の準備', '# Rule 01 — Chuẩn bị danh thiếp đúng cách / 名刺の準備
> **Luận điểm.** Vào cuộc gặp khách Nhật mà **không có danh thiếp** = **mất uy tín 50%** trong 30 giây đầu. Chuẩn bị: hộp riêng (KHÔNG ví), mặt JP/VN bilingual, đủ số lượng × người x 2 buffer, kiểm tra 0 typo.
>
> 名刺は『専用ケース・両面(日本語+英語)・人数×2倍持参・誤字ゼロ』の4条件を満たして初めて出せる。
>
> **Liên quan:** rule 02 (nhận), rule 03 (trao), rule 04 (đồng thời), rule 05 (thứ tự).
> Sách 03 rule_11 名刺交換 (intro pattern).

---

## Bối cảnh / 場面
Tháng 6/2026, đoàn 大垣 + 松本 + 中村 (3 người 白鷗) đến HCMC visit Tiên Phát kickoff Phase 3. Đây là LẦN ĐẦU em Linh (intern) tham gia. Sáng hôm trước, Dũng dạy Linh chuẩn bị danh thiếp.

---

## Hội thoại XẤU — không chuẩn bị
*15:00 chiều ngày trước event*

| Speaker | Câu |
|---------|-----|
| **リン** | 「ズン先輩、明日の名刺、財布の中に5枚ぐらい入れておけば大丈夫ですよね？」 |
| **ズン** | 「えっ、財布？それから5枚？大垣さん・松本様・中村CFO 3人 + 通訳 + 我々 4人 + buffer = 最低 14枚必要だよ。それと、財布じゃなくて専用ケース。**今すぐ印刷部屋へ**。」 |
| **リン** | 「あっ、すみません！printer も…えっと、英語面ありませんでした…」 |
| **ズン** | 「明朝までに JP 面 + EN 面のレイアウトで 50枚印刷して。**専用ケース**は受付に予備があるはず。」 |

**Vì sao xấu:** Linh nghĩ danh thiếp = "nhân vật phụ", chuẩn bị qua loa. Nhật coi danh thiếp = đại diện công ty + cá nhân. Vào cuộc gặp với 5 tờ trong ví = lộ ngay junior chưa được train.

---

## Hội thoại TỐT — chuẩn bị 4 điều kiện
*15:00 chiều ngày trước event*

| Speaker | Câu |
|---------|-----|
| **リン** | 「ズン先輩、明日の名刺準備の **4条件チェック**完了しました【1】。」 |
| **ズン** | 「いいね、見せて。」 |
| **リン** | 「① 専用ケース: 名刺入れ持参済 ② 両面 JP/EN: 印刷完了 (見本写真) ③ 数: 14枚 + buffer 6枚 = 20枚【2】 ④ 誤字チェック: トゥアン先輩にダブルチェック済【3】。」 |
| **ズン** | 「完璧。明日朝 8:30 全員集合、名刺確認 → ロビー 9:15 待機 → 9:30 大垣ご一行到着。」 |

📝 **Ghi chú:**
- 【1】**「4条件チェック」** — name card check trước event tối thiểu chiều hôm trước. Sáng cùng ngày = quá muộn nếu cần in lại.
- 【2】**人数×2倍 + buffer** — phòng trường hợp khách dẫn theo người chưa biết (interpreter/đồng nghiệp). 6枚 buffer = 1 lần exchange-fail mà không panic.
- 【3】**誤字チェック senior** — Tuấn (tech lead) double-check. Một typo = nhớ mãi cả đời.

---

## Cụm từ mẫu
> **「名刺は『専用ケース・両面・数×2倍・誤字ゼロ』の4条件揃えて初めて出せる。」**
>
> *Danh thiếp phải đủ 4 điều kiện (hộp / 2 mặt / số lượng x2 / 0 typo) mới gọi là sẵn sàng.*

---

## Tránh
- Để danh thiếp trong **ví** → khi rút ra bị nhăn / mặt bẩn = mất face
- In **chỉ 1 mặt JP** hoặc **chỉ EN** → khách Nhật cấp cao có thể không đọc được mặt còn lại
- **Số lượng tính sát** (vừa đủ người mình thấy) → khách dẫn thêm interpreter / executive surprise = không đủ
- Để **typo** trong tên / chức vụ / công ty → khách Nhật imprint ngay, sửa lần sau cũng không quên
- Trao danh thiếp **cong / bị bẩn** → bằng không trao

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 名刺 | めいし | Danh thiếp |
| 名刺入れ | めいしいれ | Hộp đựng danh thiếp |
| 両面 | りょうめん | Hai mặt |
| 誤字 | ごじ | Lỗi typo |
| ご一行 | ごいっこう | Đoàn (formal) |
| 印刷 | いんさつ | In ấn |
| ダブルチェック | daburu chekku | Double check |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008002, 8008, NULL, 'markdown_book', 'Rule 02 — Nhận danh thiếp 2 tay / 名刺の受け取り方', '# Rule 02 — Nhận danh thiếp 2 tay / 名刺の受け取り方
> **Luận điểm.** Nhận danh thiếp = **nghi lễ 3 giây**: 2 tay đỡ ở góc dưới + nói「頂戴いたします」+ đọc tên/chức vụ ngay trước mặt khách (không cất túi). Cất ngay vào túi = "ném" mặt khách.
>
> 名刺は『両手で角を持ち・「頂戴いたします」・その場で名前と役職を読む』の3秒儀式。すぐにポケットへ仕舞うのは相手の顔を投げ捨てるのと同じ。
>
> **Liên quan:** rule 01 (chuẩn bị), rule 03 (trao), rule 04 (đồng thời), rule 06 (đặt bàn).

---

## Bối cảnh / 場面
9:30 sáng tại lobby Tiên Phát HCMC. Đoàn 大垣 + 松本 + 中村 vừa đến. Linh lần đầu nhận danh thiếp khách Nhật. Hương 副部長 đứng bên cạnh quan sát.

---

## Hội thoại XẤU — nhận một tay rồi cất
*chìa danh thiếp 2 tay · nhận bằng 1 tay phải, không đọc, nhét túi áo · thoáng dừng nửa giây, gật nhẹ · thì thầm sau lưng Linh*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「白鷗株式会社、営業部長の大垣でございます。よろしくお願いいたします。」 |
| **リン** | 「あ、はい、リンです、よろしくお願いします。」 |
| **大垣** | 「…はい。」 |
| **フオン副部長** | 「リンさん、両手で。それから名刺はその場で読むの。」 |

**Vì sao xấu:** Linh nhận 1 tay = từ chối không khí trang trọng khách đang tạo. Không đọc tên, nhét túi = tín hiệu "danh thiếp này không quan trọng". Ōgaki sẽ không nói gì nhưng ấn tượng đầu = "junior chưa được train".

---

## Hội thoại TỐT — 3 giây nghi lễ
*chìa danh thiếp 2 tay, mặt JP hướng về Linh · 2 tay đỡ góc dưới【1】, mắt nhìn danh thiếp · gật, mỉm · giữ danh thiếp ngang ngực, không cất ngay, đợi vào phòng họp*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「白鷗株式会社、営業部長の大垣でございます。よろしくお願いいたします。」 |
| **リン** | 「**頂戴いたします**【2】。ティエンファットのリンと申します。**大垣 営業部長、よろしくお願いいたします**【3】。」 |
| **大垣** | 「リンさん、こちらこそ。」 |
| **リン** | *(im lặng, đỡ trang trọng)* |

📝 **Ghi chú:**
- 【1】**両手で角を持つ** — 2 ngón cái + trỏ giữ 2 góc dưới. KHÔNG che chữ in trên danh thiếp. KHÔNG cầm chính giữa.
- 【2】**「頂戴いたします」** — câu cố định khi nhận danh thiếp. KHÔNG dùng「ありがとうございます」(quá nhẹ) hay「もらいます」(quá thường).
- 【3】**Đọc lại tên + chức vụ** — xác nhận đã đọc, đã ghi nhớ. Cũng giúp mình phát âm đúng tên khách trong meeting.

---

## Cụm từ mẫu
> **「名刺は『両手・頂戴いたします・その場で読む』の3秒儀式。」**
>
> *Danh thiếp = nghi lễ 3 giây: 2 tay / "頂戴いたします" / đọc ngay tại chỗ.*

---

## Tránh
- Nhận **1 tay** (kể cả khi đang cầm vật khác) → bỏ vật xuống trước
- **Cất túi áo / túi quần ngay** → ngang với "ném đi"
- **Để ngón tay che chữ in** (tên / chức vụ / logo) → coi thường thông tin khách
- **Không đọc** → khách không biết bạn có nhận thông tin hay không
- **Phát âm sai tên** mà không hỏi → tệ hơn là **nói "Xin lỗi tôi đọc thế nào ạ?"**
- Viết / gấp / vẽ lên danh thiếp **trước mặt khách**

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 頂戴いたします | ちょうだいいたします | Xin nhận (kính ngữ khi nhận đồ) |
| 受け取る | うけとる | Nhận |
| 両手 | りょうて | Hai tay |
| 角 | かど | Góc (của danh thiếp) |
| 役職 | やくしょく | Chức vụ |
| 確認 | かくにん | Xác nhận |
| 儀式 | ぎしき | Nghi lễ |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008003, 8008, NULL, 'markdown_book', 'Rule 03 — Trao danh thiếp 2 tay / 名刺の渡し方', '# Rule 03 — Trao danh thiếp 2 tay / 名刺の渡し方
> **Luận điểm.** Trao danh thiếp = chìa **2 tay** + **mặt JP hướng về phía khách** (đọc được luôn) + **tự xưng đầy đủ「会社名・部署・役職・氏名」** + **bow nhẹ 15°**. Trao 1 tay hoặc hướng chữ về phía mình = "vứt" thẻ.
>
> 名刺は『両手・文字を相手向き・会社部署役職氏名フルで自己紹介・15度お辞儀』。片手や自分向きは投げ捨て同然。
>
> **Liên quan:** rule 01 (chuẩn bị), rule 02 (nhận), rule 04 (đồng thời), rule 05 (thứ tự).
> Sách 03 rule_11 名刺交換 (intro pattern).

---

## Bối cảnh / 場面
Sau khi nhận danh thiếp Ōgaki (rule 02), Dũng tự giới thiệu và trao danh thiếp cho Ōgaki. Đây là first contact, Dũng cần set the tone formal cho cả meeting.

---

## Hội thoại XẤU — chìa 1 tay, hướng chữ về mình
*rút danh thiếp 1 tay từ ví, hướng chữ về phía mình · nhận, đảo ngược danh thiếp 90°để đọc, hơi nhíu mày · thì thầm*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「ズンです、よろしく。」 |
| **大垣** | 「…ズン様、ですね。」 |
| **ズン** | 「あ、はい。」 |
| **フオン副部長** | 「ズンさん、文字は相手向きにね。それから会社・部署もフルで。」 |

**Vì sao xấu:** (1) 1 tay = junior thái độ. (2) Chữ hướng về mình = khách phải xoay = họ làm việc thay bạn. (3) Tự xưng "ズンです" = thiếu "ティエンファット 営業部 BD担当" = khách không biết placement của bạn trong tổ chức.

---

## Hội thoại TỐT — 2 tay, mặt JP, full giới thiệu
*2 tay cầm danh thiếp ở 2 góc dưới, mặt JP hướng về Ōgaki, bow 15° · 2 tay đỡ · giữ tư thế bow nhẹ thêm 1 nhịp rồi đứng thẳng*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**ティエンファット 営業部 BD担当の、チャン・ヴァン・ズン**【1】**と申します。よろしくお願い申し上げます**【2】。」 |
| **大垣** | 「**頂戴いたします**。ズンさん、こちらこそよろしくお願いいたします。」 |
| **ズン** | *(giữ ánh mắt 1 giây rồi rút lui)* |

📝 **Ghi chú:**
- 【1】**会社・部署・役職・フルネーム順** — thứ tự chuẩn JP. KHÔNG đảo. KHÔNG bỏ phần. Tên VN dùng phiên âm katakana「チャン・ヴァン・ズン」để khách đọc đúng.
- 【2】**「よろしくお願い申し上げます」** > 「お願いします」trong first contact với senior. Step nâng formal level.

---

## Cụm từ mẫu
> **「名刺は『両手・文字を相手向き・会社部署役職氏名フル・15度お辞儀』で渡す。」**
>
> *Trao danh thiếp = 2 tay / mặt chữ hướng khách / xưng đủ Cty + phòng + chức + tên / bow 15°.*

---

## Tránh
- Trao **1 tay** (đặc biệt khi tay kia bận) → bỏ vật xuống trước
- Hướng chữ **về phía mình** → khách phải xoay = bất lịch sự
- Tự xưng **chỉ tên** ("Dũng です") → thiếu context tổ chức
- Đưa danh thiếp **cao hơn ngực khách** (đặc biệt khi khách senior) → trao thẳng tầm ngực-bụng
- Vừa trao vừa **nói câu khác** không liên quan ("À hôm nay trời nóng quá nhỉ") → tập trung vào nghi thức
- Trao danh thiếp **qua bàn** (reach across) → đi vòng lại đứng gần khách rồi mới trao

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 申し上げる | もうしあげる | (kính ngữ của 言う) Nói (khiêm nhường) |
| 部署 | ぶしょ | Phòng ban |
| 役職 | やくしょく | Chức vụ |
| 氏名 | しめい | Họ tên |
| お辞儀 | おじぎ | Cúi chào |
| 15度 | じゅうごど | 15 độ (bow nhẹ) |
| フルネーム | furu neemu | Họ tên đầy đủ |
| 自己紹介 | じこしょうかい | Tự giới thiệu |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008004, 8008, NULL, 'markdown_book', 'Rule 04 — Trao đổi 同時 (đồng thời) / 名刺の同時交換', '# Rule 04 — Trao đổi 同時 (đồng thời) / 名刺の同時交換
> **Luận điểm.** Khi 2 bên trao cùng lúc: **tay phải đưa danh thiếp của mình** xuống dưới (低), **tay trái nhận danh thiếp khách** ở trên (高) → **đảo lại để tay phải đỡ** danh thiếp khách 2 tay → đưa lên ngang ngực + 「頂戴いたします」. Quy tắc: **trao thấp, nhận cao** (= khiêm nhường, nâng khách).
>
> 同時交換は『右手で自分の名刺を低く差し出し・左手で相手の名刺を高く受け・両手で持ち直す』。低く出して高く受けるのが基本。
>
> **Liên quan:** rule 02 (nhận), rule 03 (trao), rule 05 (thứ tự).

---

## Bối cảnh / 場面
Sau khi Linh + Dũng đã exchange với Ōgaki riêng từng người (rule 02-03), giờ đến lượt Tuấn (Tech Lead) và Matsumoto PM. Tuấn và Matsumoto đứng đối diện, cùng chìa danh thiếp ra cùng lúc.

---

## Hội thoại XẤU — đụng tay, lúng túng
*chìa danh thiếp 2 tay ngay tầm ngực · cũng chìa 2 tay cùng lúc, đụng vào tay Tuấn · rút lại, do dự · do dự*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ティエンファットのトゥアンです、よろしく…」 |
| **松本** | 「あ…松本です…」 |
| **トゥアン** | 「あ、すみません、お先にどうぞ。」 |
| **松本** | 「いえ、こちらこそ…」 *(không khí ngượng nghịu 3 giây)* |

**Vì sao xấu:** 2 bên cùng đưa cùng tầm cao → đụng tay → lúng túng → reset = gãy nhịp lễ nghi. Ai cũng "khiêm nhường" sai cách.

---

## Hội thoại TỐT — right-give-low, left-receive-high
*tay phải chìa danh thiếp **của mình** xuống thấp【1】, tay trái sẵn nhận ở trên · cũng đồng thời: phải chìa thấp, trái nhận cao · sau khi nhận bằng tay trái, đảo sang phải, đỡ 2 tay nâng ngang ngực*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ティエンファット 技術リーダーのトゥアンと申します。**頂戴いたします**【2】。」 |
| **松本** | 「白鷗株式会社 PMの松本です。頂戴いたします。」 |
| **トゥアン** | 「**松本PM、よろしくお願いいたします**【3】。」 |
| **松本** | 「トゥアンさん、こちらこそ。」 |

📝 **Ghi chú:**
- 【1】**右手低・左手高** — quy tắc cốt lõi 同時交換: tay phải trao danh thiếp **của mình** chìa thấp (khiêm nhường) + tay trái đỡ danh thiếp **khách** ở cao (tôn trọng). Nghĩ kiểu: "danh thiếp tôi = đồ tôi đưa = thấp; danh thiếp anh = đồ tôi nhận = cao".
- 【2】**「頂戴いたします」** — nói cùng lúc nhận. Cả 2 bên đều nói. Không tranh nhau "お先にどうぞ".
- 【3】**Đảo lại 2 tay rồi đọc** — sau khi nhận bằng 1 tay (trái), ngay lập tức chuyển sang đỡ 2 tay (phải đặt dưới trái) + đọc tên + chức vụ. Toàn bộ flow ~ 3 giây.

---

## Cụm từ mẫu
> **「同時交換は『右手で低く出し、左手で高く受け、両手で持ち直す』。」**
>
> *Trao đồng thời = tay phải đưa của mình xuống thấp / tay trái nhận của họ ở cao / đảo sang đỡ 2 tay.*

---

## Tránh
- Cả 2 chìa **cùng tầm cao** → đụng tay → ngượng
- Một bên "**お先にどうぞ**" → bên kia phải đợi → gãy nhịp (chỉ dùng khi rule 05: junior trước senior, KHÔNG dùng khi 2 người cùng cấp)
- Sau khi nhận bằng tay trái, **không đảo sang đỡ 2 tay** → để tay trái cầm 1 mình = nhận xong "vứt"
- Nói "頂戴いたします" **trễ** (sau khi đã nhận xong) → câu phải đi cùng lúc với động tác nhận
- **Không bow** trong toàn bộ flow → bow nhẹ 15° đầu cuộc exchange

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 同時交換 | どうじこうかん | Trao đổi đồng thời |
| 右手 | みぎて | Tay phải |
| 左手 | ひだりて | Tay trái |
| 低く | ひくく | Thấp |
| 高く | たかく | Cao |
| 持ち直す | もちなおす | Cầm lại / chuyển tay |
| お先にどうぞ | おさきにどうぞ | Mời anh/chị trước |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008005, 8008, NULL, 'markdown_book', 'Rule 05 — Vai vế quyết định ai trao trước / 立場による順序', '# Rule 05 — Vai vế quyết định ai trao trước / 立場による順序
> **Luận điểm.** Khi bên mình có nhiều người: **junior trao trước, senior trao sau**. Khi 2 bên không cùng cấp: **cấp thấp trao trước cấp cao** (= junior 訪問者 đến trước senior, người đi tìm việc trước người được tìm). Đảo thứ tự = lộ "không hiểu hierarchy".
>
> 名刺交換は『下位者から上位者へ』の順番。自社内では junior が先、相手より格下なら自社全員が先に出す。
>
> **Liên quan:** rule 03 (trao), rule 04 (đồng thời), rule 06 (đặt bàn).

---

## Bối cảnh / 場面
Sau khi Linh + Dũng + Tuấn exchange xong với 大垣, đến giờ exchange với 中村 CFO (senior nhất đoàn) và 松本. Hương 副部長 cũng có mặt. Vấn đề: ai trao trước? Linh không biết.

**Map cấp:**
- Bên Tiên Phát (host): フオン副部長 > トゥアン Tech Lead > ズン BD > リン intern
- Bên 白鷗 (guest, more senior overall): 中村 CFO > 大垣 部長 > 松本 PM

---

## Hội thoại XẤU — sai thứ tự
*bước lên trước, chìa danh thiếp với 中村 CFO · thấy thế cũng vội bước lên, exchange với 松本 trước cả Tuấn và Dũng · im lặng nhận, ánh mắt thoáng nhìn Hương · sau, thì thầm với Linh*

| Speaker | Câu |
|---------|-----|
| **フオン副部長** | 「ティエンファット 営業 副部長のフオンでございます。」 |
| **リン** | 「リンです、よろしく…」 |
| **中村CFO** | 「中村でございます。」 |
| **フオン副部長** | 「リンさん、本来は junior から先よ。トゥアンさんの後でいいの。」 |

**Vì sao xấu:** (1) Hương senior nhất bên VN nhưng lại exchange trước → "vứt" ý tôn trọng khách (junior phải đứng ra trước). (2) Linh thì nhảy hàng (đáng lẽ là cuối) → loạn flow. JP rất sensitive với thứ tự = lộ ngay tổ chức không briefing.

---

## Hội thoại TỐT — junior trước, senior sau
*briefing trước event · bắt đầu, exchange với 中村 CFO trước · lần lượt exchange với 中村, sau đó với 大垣, rồi với 松本【3】 · cuối cùng, chìa với 中村 CFO*

| Speaker | Câu |
|---------|-----|
| **フオン副部長** | 「順番は **リン → ズン → トゥアン → 私（フオン）**【1】。相手側は中村CFOが最上位だから、**みんな最初に中村さんと交換**【2】。」 |
| **リン** | 「ティエンファット マーケティングのリンと申します。頂戴いたします。」 |
| **中村CFO** | 「中村でございます。」 |
| **ズン → トゥアン → フオン副部長** | *(theo flow đã briefing)* |
| **フオン副部長** | 「最後になり申し訳ございません。営業部 副部長のフオンでございます。」 |

📝 **Ghi chú:**
- 【1】**Junior trước senior bên mình** — Linh (intern) → Dũng (BD) → Tuấn (Lead) → Hương (副部長). Lý do: nhân vật càng nhẹ ký càng "test water" trước, senior xuất hiện cuối = climax.
- 【2】**Mọi người chào người cấp cao nhất bên kia trước** — 中村 CFO senior nhất → tất cả 4 người Tiên Phát exchange với 中村 trước, rồi mới quay sang 大垣, rồi 松本.
- 【3】**Matrix order** — viết ra: 4 host × 3 guest = 12 cặp exchange. Junior bên mình + senior bên kia = ưu tiên đầu. Senior bên mình + junior bên kia = cuối.

---

## Cụm từ mẫu
> **「名刺は『自社junior先・相手senior優先』のマトリクス順。」**
>
> *Trao danh thiếp = ma trận: junior bên mình trước, senior bên khách ưu tiên.*

---

## Tránh
- **Senior bên mình bước ra đầu tiên** → lộ "không hiểu junior phải dấn thân trước"
- **Random order** không briefing → 4 người loạn lên = không khí gãy
- Junior bên mình **bỏ qua** không exchange với senior bên khách (vì thấy "không cùng level") → BẮT BUỘC mọi người exchange với mọi người
- "**お先にどうぞ**" tùm lum → chỉ áp dụng giữa 2 bên cùng cấp, không lạm dụng
- Khi đoàn khách 5+ người, không **briefing thứ tự trước event** → loạn ngay tại lobby

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 立場 | たちば | Vị trí / vai vế |
| 順序 | じゅんじょ | Thứ tự |
| 下位者 | かいしゃ | Người cấp thấp |
| 上位者 | じょういしゃ | Người cấp cao |
| 最上位 | さいじょうい | Cấp cao nhất |
| 最後 | さいご | Cuối cùng |
| 申し訳ございません | もうしわけございません | Vô cùng xin lỗi (kính ngữ) |
| マトリクス | matorikusu | Ma trận |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008006, 8008, NULL, 'markdown_book', 'Rule 06 — Bố trí danh thiếp trên bàn / 名刺の机上配置', '# Rule 06 — Bố trí danh thiếp trên bàn / 名刺の机上配置
> **Luận điểm.** Sau khi exchange xong, vào phòng họp **đặt danh thiếp khách trên bàn theo seat order** (vị trí thật của họ ngồi đối diện) trong suốt cuộc họp. KHÔNG xếp chồng. KHÔNG cất túi. **Cất chỉ khi khách đã đứng dậy ra về**. Mục đích: gọi tên đúng + nhớ chức vụ + không nhầm lẫn senior.
>
> 名刺は会議中、相手の座席順通りに机上に並べる。重ねる/仕舞うのは相手退室後。
>
> **Liên quan:** rule 02 (nhận), rule 05 (thứ tự), rule 10 (上座下座), rule 07 (lưu trữ).

---

## Bối cảnh / 場面
Sau lobby exchange, đoàn vào phòng họp. Ōgaki - Nakamura - Matsumoto ngồi 上座 (kamiza — chỗ trang trọng, xa cửa). Tiên Phát ngồi 下座 (shimoza — chỗ gần cửa). Linh chuẩn bị đặt danh thiếp 3 người Nhật lên bàn.

---

## Hội thoại XẤU — xếp chồng + nhầm tên
*vào phòng họp, đặt 3 danh thiếp xếp chồng góc bàn · 15 phút sau, gọi nhầm · thoáng nhíu mày · thì thầm với Linh*

| Speaker | Câu |
|---------|-----|
| **リン** | *(im lặng đặt chồng)* |
| **ズン** | 「えっと、**松本部長**…あ、すみません、**大垣部長**でした…」 |
| **大垣** | 「…大垣です。」 |
| **フオン副部長** | 「リンさん、名刺は座席順に並べて。重ねたら誰が誰か分からなくなるの。」 |

**Vì sao xấu:** Linh xếp chồng → Dũng không nhìn thấy danh thiếp → gọi nhầm chức vụ "松本部長" (Matsumoto là PM, không phải 部長) → Ōgaki tưởng bị gọi nhầm người. Trong meeting JP, gọi sai tên/chức = giảm độ tin cậy ngay trong 15 phút đầu.

---

## Hội thoại TỐT — bố trí theo seat order
*vào phòng họp, đặt 3 danh thiếp **theo đúng vị trí 3 khách ngồi**【1】 · nhìn lướt danh thiếp trước mặt, gọi đúng · 15 phút sau, hỏi 大垣 · cuối meeting, sau khi khách đứng dậy*

| Speaker | Câu |
|---------|-----|
| **リン** | *(thì thầm tự nhắc) 「中村CFO…大垣部長…松本PM…」* |
| **ズン** | 「**中村CFO**、本日の最初のご質問は…」 |
| **中村CFO** | 「はい、中村です。」 |
| **フオン副部長** | 「**大垣部長**、Phase 3のスコープについて…」 |
| **大垣** | 「はい、大垣です。」 |
| **リン** | *(lúc đó mới thu lại 3 danh thiếp 2 tay xếp ngay ngắn vào hộp)*【2】 |

📝 **Ghi chú:**
- 【1】**Bố trí theo seat order** — danh thiếp Nakamura ở chỗ Nakamura ngồi, Ōgaki ở chỗ Ōgaki, Matsumoto ở chỗ Matsumoto. Như vậy Dũng nhìn lướt = đối chiếu mặt người + danh thiếp = nhớ tên/chức ngay. CFO senior nhất thường ngồi 上座 trung tâm.
- 【2】**Cất khi khách đã đứng dậy** — KHÔNG cất giữa meeting. KHÔNG cất khi nói "今日のミーティング終了". Đợi khách rời chỗ, đứng dậy mình rồi mới gom 2 tay xếp vào hộp ngay ngắn (KHÔNG nhét túi).

---

## Cụm từ mẫu
> **「名刺は会議中『相手の座席順通り机上配置・重ねず・仕舞わず』。」**
>
> *Trong meeting: danh thiếp đặt theo seat order khách / không xếp chồng / không cất.*

---

## Tránh
- **Xếp chồng** 3 danh thiếp → không nhìn được = quên tên/chức
- **Cất túi giữa meeting** → "tôi xong với anh rồi" = mất face
- Đặt danh thiếp **bừa** (không theo seat) → gọi nhầm tên = mất uy
- Để danh thiếp **rớt xuống đất** → KHÔNG dùng chân nhặt, dừng meeting cúi nhặt 2 tay + xin lỗi
- **Viết / vẽ / gấp** lên danh thiếp giữa meeting → nếu cần ghi note context, dùng sổ riêng (rule 07)
- **Đặt vật khác lên trên** danh thiếp (cốc nước, sổ) → tuyệt đối không

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 机上 | きじょう | Trên bàn |
| 配置 | はいち | Bố trí |
| 座席順 | ざせきじゅん | Thứ tự chỗ ngồi |
| 重ねる | かさねる | Xếp chồng |
| 仕舞う | しまう | Cất đi |
| 退室 | たいしつ | Rời phòng |
| 並べる | ならべる | Sắp xếp |
| 中央 | ちゅうおう | Trung tâm |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008007, 8008, NULL, 'markdown_book', 'Rule 07 — Lưu trữ sau cuộc gặp / 名刺管理', '# Rule 07 — Lưu trữ sau cuộc gặp / 名刺管理
> **Luận điểm.** Trong **24 giờ** sau cuộc gặp: (1) Nhập CRM với context (ngày/event/topic) (2) Dán memo bối cảnh ("ai giới thiệu", "topic họ quan tâm", "follow-up nào") (3) Scan + lưu cloud (4) Gửi follow-up email với link content. Không nhập trong 24h = quên 70% context = chết tài sản network.
>
> 名刺は『24時間以内に CRM 入力 + 文脈メモ + クラウドスキャン + フォローアップ送信』。24時間超えで文脈70%消失。
>
> **Liên quan:** rule 02 (nhận), rule 06 (bố trí), rule 14 (アフターケア), rule 30 (お礼メール).

---

## Bối cảnh / 場面
Tối cùng ngày event 大垣 + 松本 + 中村 visit, Dũng yêu cầu Linh xử lý 6 danh thiếp đã nhận (3 senior 白鷗 + 3 các member khác đoàn). Deadline: trước 23:00 cùng ngày → gửi mail thanks sáng hôm sau.

---

## Hội thoại XẤU — chậm + thiếu context
*3 ngày sau event*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「リンさん、先週の名刺、CRMに入れた？」 |
| **リン** | 「あ、まだです、今週やります…」 |
| **ズン** | 「中村CFOが Phase 4 の予算で気にしてた論点、覚えてる？」 |
| **リン** | 「えっと…なんでしたっけ…」 |
| **ズン** | 「**3日経つともう曖昧になる**。今日中に CRM + 文脈メモ全部やって。」 |

**Vì sao xấu:** 3 ngày trôi = Linh quên topic Nakamura quan tâm. Khi gửi follow-up email "Cảm ơn anh hôm trước" mà không reference được điểm cụ thể họ nói = generic = giảm 50% impact. Tài sản network = chỉ là tờ giấy, không có context.

---

## Hội thoại TỐT — 24h + memo bối cảnh
*20:00 tối cùng ngày event*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「リンさん、6枚名刺の処理プラン共有して。」 |
| **リン** | 「① CRM 入力: 今夜中【1】 ② 文脈メモ: 各人 1 行【2】 ③ Cloud スキャン: Google Drive 共有フォルダ ④ Follow-up: 明朝 9:00 ズン先輩経由送信。」 |
| **ズン** | 「中村CFO のメモは？」 |
| **リン** | 「**『Phase 4 予算上限を 1,500万円で気にしている。Q3 決算後に再検討と発言』**【3】 — これでいいですか？」 |
| **ズン** | 「完璧。トゥアン先輩・フオン副部長にも共有して。明朝のお礼メールにこの context 入れる。」 |

📝 **Ghi chú:**
- 【1】**24時間ルール** — não người quên 70% context sau 24h. Nhập trong cùng ngày = giữ chi tiết. Sau 3 ngày = generic mới.
- 【2】**Memo bối cảnh 1 dòng/người** — không cần dài. Format: "Topic họ quan tâm + comment đặc trưng họ nói + follow-up nào". Đủ để 6 tháng sau gặp lại = nhớ ngay context.
- 【3】**Specific quote** — "Phase 4 予算上限 1,500万円 で気にしている" >> "Phase 4 quan tâm" — câu cụ thể giúp follow-up email reference đúng = chứng minh "tôi nghe và nhớ".

---

## Cụm từ mẫu
> **「名刺は24時間以内に『CRM入力・文脈メモ1行・スキャン・フォロー送信』を完了させる。」**
>
> *Trong 24h: nhập CRM / memo bối cảnh 1 dòng / scan / gửi follow-up.*

---

## Tránh
- **Để 1 tuần** rồi mới nhập → context bay 70%
- Memo **chỉ tên + chức vụ** (đã có trên danh thiếp) → memo phải là **CONTEXT** (họ nói gì, quan tâm gì)
- **Không scan cloud** → mất danh thiếp = mất hết
- **Không share team** → senior không biết bạn đã exchange ai = double contact embarrassing
- Follow-up email **generic** ("Cảm ơn anh hôm trước") → reference cụ thể quote/topic họ nói
- Viết memo lên **chính danh thiếp** → KHÔNG bao giờ. Memo trong CRM hoặc sổ riêng.

---

## Template — Memo bối cảnh CRM
```
【名刺メモ format — 24h以内入力】

会った日: 2026-06-XX
イベント: 〇〇 (HCMC visit / Tokyo onsite / 展示会)
氏名: 〇〇
会社・役職: 〇〇
紹介者: 〇〇 (誰経由で会ったか)
話題 / 関心事: 〇〇 (1-2行)
特徴的発言: 「〇〇」 (引用)
次のアクション: 〇〇 (締切付き)
共有先: ズン / トゥアン / フオン副部長
```

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 管理 | かんり | Quản lý |
| 入力 | にゅうりょく | Nhập (data) |
| 文脈 | ぶんみゃく | Bối cảnh |
| メモ | memo | Memo / ghi chú |
| スキャン | sukyan | Scan |
| クラウド | kuraudo | Cloud |
| 共有 | きょうゆう | Chia sẻ |
| 締切 | しめきり | Deadline |
| 曖昧 | あいまい | Mơ hồ |
| 関心事 | かんしんごと | Vấn đề quan tâm |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008008, 8008, NULL, 'markdown_book', 'Rule 08 — Đón khách tại lobby / お出迎え', '# Rule 08 — Đón khách tại lobby / お出迎え
> **Luận điểm.** Đón khách Nhật = **đứng đợi tại lobby tối thiểu 5 phút trước giờ hẹn**, lễ tân được briefing trước (báo team ngay khi khách đến), team **đứng dậy bow đón** ngay khi thấy khách bước vào. Khách Nhật bước vào lobby thấy mình **đang ngồi xem điện thoại** = mất 30% goodwill.
>
> 来客 5分前にはロビーで待機・受付ブリーフィング済・到着即起立お辞儀。スマホ凝視・座ったままは即減点。
>
> **Liên quan:** rule 09 (案内), rule 13 (お見送り), rule 17 (5分前到着 — bên ngược).

---

## Bối cảnh / 場面
9:25 sáng tại lobby Tiên Phát. Đoàn 大垣 + 松本 + 中村 hẹn 9:30. Linh và Dũng được giao việc đứng đón. Hương 副部長 sẽ xuống ngay sau khi lễ tân báo.

---

## Hội thoại XẤU — đến đúng giờ + ngồi xem phone
*9:30:30 đúng, chạy xuống lobby vừa lúc 大垣 bước vào, đang nghe điện thoại · ngồi sofa lobby xem điện thoại, nhận ra muộn 5 giây · thoáng tỏ thái độ · nhận tin lễ tân chậm 2 phút*

| Speaker | Câu |
|---------|-----|
| **リン** | 「あ、あの、もしもし、後でかけ直す…」 |
| **ズン** | 「あっ！大垣さん！すみません！」 |
| **大垣** | 「…大垣でございます。ティエンファットさん、ですよね？」 |
| **フオン副部長** | *(chạy xuống thở dốc)* 「大変お待たせいたしました…」 |

**Vì sao xấu:** (1) Đến đúng giờ = muộn (đáng lẽ 9:25). (2) Linh nói điện thoại lúc khách bước vào. (3) Dũng ngồi xem phone. (4) Hương xuống chậm 2 phút. Khách Nhật quan sát chi tiết này = ấn tượng "team không serious".

---

## Hội thoại TỐT — 5 phút trước, briefing lễ tân
*9:25, briefing lễ tân · 9:27, đứng tại lobby, không phone, không sofa · 9:30, thấy đoàn 3 người bước vào · cùng tiến lên, bow 30°*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**白鷗株式会社の大垣様ご一行 3名、9:30 ご到着予定**【1】。お見えになりましたら **すぐ私の内線へ**【2】お願いいたします。」 |
| **受付** | 「承知いたしました。お見えになり次第、ご連絡いたします。」 |
| **ズン + リン** | *(im lặng đứng quan sát cửa vào)* |
| **リン** | *(quay sang Dũng, gật)* |
| **ズン + リン** | 「**大垣様、本日はようこそお越しくださいました**【3】。ティエンファットのズンとリンでございます。」 |
| **大垣** | 「お世話になります。」 |
| **ズン** | 「**会議室は3階でございます。ご案内いたします**【4】。」 |

📝 **Ghi chú:**
- 【1】**Briefing lễ tân TRƯỚC** — tên cty + số người + giờ. Lễ tân không bị bất ngờ, không hỏi lại khách "anh hẹn ai?".
- 【2】**「すぐ私の内線へ」** — lễ tân chuyển ngay đến nội bộ team. Dũng có thể đang on call upstairs vẫn xuống kịp 30 giây.
- 【3】**「ようこそお越しくださいました」** — câu cố định đón khách. Formal hơn 「いらっしゃいませ」(dùng cho retail).
- 【4】**Hướng dẫn chuyển sang rule 09** — không để khách đứng lobby quá 30 giây sau bow.

---

## Cụm từ mẫu
> **「お出迎えは『5分前ロビー待機・受付ブリーフィング済・即起立お辞儀』。」**
>
> *Đón khách = đứng lobby 5 phút trước / lễ tân đã briefing / khách đến lập tức đứng dậy bow.*

---

## Tránh
- **Đến đúng giờ** → đúng giờ là muộn. Tối thiểu 5 phút trước.
- **Ngồi sofa lobby xem phone** → đứng đợi, phone OFF / im lặng
- Lễ tân **không được briefing** → khách phải tự giới thiệu lại với lễ tân = mất face
- Senior xuống **chậm sau khi khách đến** → senior sẵn sàng từ 5 phút trước hoặc có người call ngay khi báo
- **Không bow khi khách bước vào** → bow 30° là chuẩn formal đón
- **Chạy** xuống vội → đi đúng tốc độ, đợi 5 phút trước = không bao giờ phải chạy

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| お出迎え | おでむかえ | Đón khách (kính ngữ) |
| ようこそお越しくださいました | ようこそおこしくださいました | Hân hạnh được đón anh/chị |
| 内線 | ないせん | Số nội bộ |
| ロビー | robii | Lobby |
| 受付 | うけつけ | Lễ tân |
| ご一行 | ごいっこう | Đoàn |
| 待機 | たいき | Chờ / standby |
| お見えになる | おみえになる | (kính ngữ của 来る) Đến |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008009, 8008, NULL, 'markdown_book', 'Rule 09 — Hướng dẫn vào phòng họp / 会議室へのご案内', '# Rule 09 — Hướng dẫn vào phòng họp / 会議室へのご案内
> **Luận điểm.** Dẫn khách đi = **đi trước 1-2 bước phía trước-bên trái** (chỉ đường) + **không bao giờ quay lưng** + chỉ tay mở cửa cho khách vào trước. Ở thang máy: bấm nút giữ + để khách vào trước + mình vào sau, đứng cạnh bảng điều khiển.
>
> 案内は『前1-2歩・斜め左前・背中見せず・ドア手を添えて先に通す』。エレベーターは操作盤側に立って客を先に。
>
> **Liên quan:** rule 08 (お出迎え), rule 10 (上座), rule 13 (お見送り — flow ngược).

---

## Bối cảnh / 場面
Sau bow đón ở lobby (rule 08), Dũng dẫn 3 khách 大垣 + 中村 + 松本 lên phòng họp tầng 3. Đi qua: lobby → thang máy → hành lang tầng 3 → phòng họp.

---

## Hội thoại XẤU — đi sau khách + quay lưng
*đi sau khách, vừa đi vừa hỏi · không biết hướng nào, dừng lại nhìn quanh · vào thang máy đầu tiên, tự mình bấm tầng · theo sau, đứng chen chúc gần cửa thang máy · ra khỏi thang trước khách, quay lưng đi nhanh*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「あの、どっちですかね…3階ですよね？」 |
| **大垣** | 「えーと…」 |
| **ズン** | 「3階ですね。」 |
| **大垣 + 中村 + 松本** | *(im lặng)* |
| **ズン** | 「こちらです…」 |

**Vì sao xấu:** (1) Đi sau = khách phải tự tìm đường = guide thất bại. (2) Vào thang trước khách = chiếm không gian. (3) Quay lưng đi nhanh = mất khách phía sau.

---

## Hội thoại TỐT — đi trước, mở đường, không quay lưng
*đi trước 1-2 bước, chéo bên trái, tay phải chỉ hướng · theo sau · đến thang máy, bấm nút, đứng giữ cửa · vào thang máy · vào sau cùng, đứng cạnh bảng nút điều khiển · thang đến, **giữ nút mở**, để khách ra trước · ra sau, đi trước dẫn đến cửa phòng họp, gõ nhẹ 2 lần, mở cửa giữ*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**こちらへどうぞ**【1】。会議室は3階でございます。」 |
| **大垣 + 中村 + 松本** | *(theo)* |
| **ズン** | 「**お先にどうぞ**【2】。」 |
| **大垣 + 中村 + 松本** | 「失礼します。」 |
| **ズン**【3】 | 「3階に参ります。」 |
| **ズン** | 「**3階に到着いたしました。お先にどうぞ**。」 |
| **ズン** | 「**会議室はこちらでございます**【4】。」 |

📝 **Ghi chú:**
- 【1】**「こちらへどうぞ」** — câu chuẩn dẫn đường. Tay phải mở 90° chỉ hướng.
- 【2】**「お先にどうぞ」** — khi vào thang máy / cửa: khách trước, mình sau. Đảo ngược khi RA THANG = mình giữ nút, khách ra trước (an toàn — không kẹt cửa).
- 【3】**Đứng cạnh bảng nút** — host trong thang máy luôn đứng cạnh nút để bấm tầng + giữ mở. Khách đứng phía trong (上座 trong thang máy = góc xa cửa).
- 【4】**Mở cửa phòng giữ** — gõ nhẹ 2 lần (kể cả phòng trống) → mở → giữ cửa cho 3 khách vào trước → mình vào sau cùng → đóng cửa.

---

## Cụm từ mẫu
> **「案内は『斜め前1-2歩・背中見せず・ドアもエレベーターも操作は host・客先』。」**
>
> *Dẫn đường = đi trước 1-2 bước chéo / không quay lưng / cửa-thang máy host thao tác / khách trước.*

---

## Tránh
- Đi **sau khách** → khách lạc đường = guide vô ích
- Vào thang máy / phòng **trước khách** → chiếm space (trừ trường hợp ra thang — host ra sau)
- **Quay lưng** đi nhanh → khách rớt phía sau
- Đứng **giữa** thang máy / chắn cửa → đứng cạnh bảng nút
- **Không gõ cửa** phòng họp dù phòng trống → luôn gõ 2 lần
- Mở cửa rồi **bước vào trước** khách → giữ cửa, khách vào trước
- **Im lặng** suốt đường đi → có thể chêm "weather" / "Tokyo はいかがでしたか" small talk nhẹ

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ご案内 | ごあんない | Dẫn đường (kính ngữ) |
| こちらへどうぞ | こちらへどうぞ | Mời đi theo hướng này |
| お先にどうぞ | おさきにどうぞ | Mời vào trước |
| 操作盤 | そうさばん | Bảng điều khiển (thang máy) |
| 会議室 | かいぎしつ | Phòng họp |
| 廊下 | ろうか | Hành lang |
| ノック | nokku | Gõ cửa |
| 参る | まいる | (khiêm nhường của 行く) Đi |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008010, 8008, NULL, 'markdown_book', 'Rule 10 — Vị trí ngồi (kamiza/shimoza) / 上座・下座', '# Rule 10 — Vị trí ngồi (kamiza/shimoza) / 上座・下座
> **Luận điểm.** **Khách ngồi 上座 (kamiza — chỗ trang trọng, xa cửa nhất, lưng dựa tường)**, **chủ ngồi 下座 (shimoza — gần cửa, giữa khách và cửa ra vào)**. Trong đoàn khách, **người cấp cao nhất ngồi 上座 trung tâm**, các người khác bậc thang giảm dần. Mời sai chỗ = "tôi không biết anh là senior" = mất face.
>
> 客は上座(入口から最も遠い壁背)、host は下座(出入口側)。客団内最上位は上座中央。
>
> **Liên quan:** rule 09 (案内 dẫn vào), rule 06 (đặt danh thiếp theo seat), rule 11 (お茶順序).

---

## Bối cảnh / 場面
Sau dẫn vào phòng họp tầng 3 (rule 09), Dũng phải mời 3 khách 大垣 + 中村 + 松本 ngồi đúng vị trí. Phòng họp 6 người, hình chữ nhật, cửa vào ở phía Đông, cửa sổ phía Tây. Cấu hình:

```
       [WEST WALL — KAMIZA]
   ┌─────────────────────────┐
   │ 上座 1│ 上座 2│ 上座 3 │  ← ghế khách (xa cửa, lưng dựa tường)
   │       │       │        │
   │       │       │        │
   │ 下座 1│ 下座 2│ 下座 3 │  ← ghế host (gần cửa)
   └─────────────────────────┘
       [EAST — DOOR ENTRY]
```

---

## Hội thoại XẤU — mời sai chỗ
*vào phòng, chỉ tay · do dự, không biết chỗ nào · thấy thế ngồi luôn ghế kamiza giữa · buộc phải ngồi 下座 ghế gần cửa*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「えっと、お好きなところにどうぞ。」 |
| **大垣 + 中村 + 松本** | *(im lặng nhìn quanh)* |
| **ズン** | 「あ、ここで打ち合わせしましょう。」 |
| **大垣** | 「…はい。」 |

**Vì sao xấu:** (1) "Ngồi đâu cũng được" = host không briefing seat = thiếu chuyên nghiệp. (2) Dũng ngồi lên 上座 = chiếm chỗ của khách = lộ "không biết quy tắc". Khách Nhật im lặng nhưng nhớ mãi.

---

## Hội thoại TỐT — mời đúng chỗ + senior trung tâm
*vào phòng, chỉ tay 90° về phía dãy 上座 xa cửa · ngồi trung tâm 上座 · ngồi 上座 hai bên · ngồi 下座, Hương ở giữa đối diện Nakamura, Dũng-Linh hai bên*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**こちらへお掛けください**【1】。**中村CFOは中央に**【2】、**大垣部長は中村CFOから見て右に、松本PMは左に**お願いいたします。」 |
| **大垣** | 「ありがとうございます。」 |
| **中村CFO** | 「失礼します。」 |
| **大垣 + 松本** | *(ngồi)* |
| **ズン + フオン副部長 + リン**【3】 | 「失礼いたします。」 |

📝 **Ghi chú:**
- 【1】**「お掛けください」** > 「座ってください」— kính ngữ ngồi, dùng cho khách. Tay phải mở 90° chỉ rõ ghế nào.
- 【2】**Senior trung tâm 上座** — Nakamura CFO cao nhất → ghế giữa dãy 上座. Ōgaki (部長) bên phải Nakamura (vị trí thứ 2). Matsumoto (PM) bên trái (vị trí thứ 3). Quy tắc: nhìn từ kamiza, **bên phải > bên trái** về độ trang trọng.
- 【3】**Host mirror seat** — bên 下座: senior bên mình (Hương 副部長) ngồi đối diện senior bên khách (Nakamura). Khi nói chuyện = cùng level dễ trao đổi.

---

## Cụm từ mẫu
> **「客は上座(入口から遠く)・host は下座(入口側)・senior は上座中央。」**
>
> *Khách ngồi 上座 (xa cửa) / host ngồi 下座 (gần cửa) / senior bên khách ở trung tâm 上座.*

---

## Tránh
- **Host ngồi 上座** → tệ nhất, lộ "không biết quy tắc"
- "Ngồi đâu cũng được" → BẮT BUỘC briefing seat từng người
- **Junior bên khách ngồi trung tâm 上座** thay vì senior → rối hierarchy
- Senior bên mình ngồi **góc xa** → senior bên mình ngồi đối diện senior bên khách (mirror)
- **Quên rule taxi/ô tô**: khi cùng đi taxi với khách: ghế phía sau bên phải tài = 上座 (cao nhất), ghế phía sau bên trái = 上座 thứ 2, ghế phụ tài = 下座 (host)
- **Phòng họp có cửa sổ đẹp** → 上座 = ghế gần cửa sổ (xa cửa ra vào). Quy tắc: 上座 = chỗ "tôn vinh nhất" (lưng dựa tường, tầm nhìn đẹp, xa lối ra vào).

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 上座 | かみざ | Kamiza (chỗ trang trọng, xa cửa) |
| 下座 | しもざ | Shimoza (chỗ gần cửa, host) |
| お掛けください | おかけください | Mời ngồi (kính ngữ) |
| 中央 | ちゅうおう | Trung tâm |
| 出入口 | でいりぐち | Cửa ra vào |
| 壁背 | かべせ | Lưng dựa tường |
| 座席 | ざせき | Chỗ ngồi |
| 配置 | はいち | Bố trí |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008011, 8008, NULL, 'markdown_book', 'Rule 11 — Pha trà / mời nước / お茶のお出し方', '# Rule 11 — Pha trà / mời nước / お茶のお出し方
> **Luận điểm.** Trà ra **trong 5 phút** sau khi khách ngồi. Thứ tự: **senior bên khách trước → junior bên khách → senior bên mình → junior bên mình**. Đặt cốc **bên phải khách** (không chắn tầm nhìn). Trà nóng cho senior, lựa chọn (nóng/lạnh) hỏi trước nếu mùa hè HCMC.
>
> お茶は『着席後5分以内・客senior先・客全員→host senior→host junior順・湯呑は右側』。
>
> **Liên quan:** rule 10 (上座), rule 25 (host pour 食事編), rule 12 (会議冒頭).

---

## Bối cảnh / 場面
Sau khi 3 khách ngồi 上座 (rule 10), Linh (intern, làm task hospitality) ra pha trà cho 6 người (3 khách + 3 host). 9:35 sáng, mùa hè HCMC nóng nhưng khách Nhật quen trà nóng.

---

## Hội thoại XẤU — random order, sai phía
*bưng khay 6 cốc, đến đặt cốc cho Dũng (host BD) trước, từ phía trái · thoáng lúng túng · quay lại, đặt cho Matsumoto (junior khách) trước Nakamura · nhận sau cùng, im lặng nhận · thì thầm sau*

| Speaker | Câu |
|---------|-----|
| **リン** | 「ズン先輩、お茶です。」 |
| **ズン** | 「あ、リンさん、まずお客様から…」 |
| **リン** | 「あ、はい、松本様、どうぞ。」 |
| **中村CFO** | 「…どうも。」 |
| **フオン副部長** | 「リンさん、お茶も中村CFOから順番。それから右側から置くの。」 |

**Vì sao xấu:** (1) Phục vụ host trước khách = vi phạm cốt lõi 「客先」. (2) Đặt cho junior khách (Matsumoto) trước senior khách (Nakamura) = sai hierarchy. (3) Đặt từ trái = chắn tay phải khách (Nhật uống trà bằng tay phải).

---

## Hội thoại TỐT — order chuẩn + phía phải
*bưng khay 6 cốc trà nóng, vào phòng cúi nhẹ · đến chỗ Nakamura đầu tiên, đặt cốc bên phải Nakamura, hai tay · tiếp tục theo thứ tự: 大垣 (上座 phải) → 松本 (上座 trái) → フオン副部長 (下座 giữa) → ズン → トゥアン · sau khi đặt xong, lui ra cửa, bow*

| Speaker | Câu |
|---------|-----|
| **リン** | 「**お茶をお持ちいたしました。失礼いたします**【1】。」 |
| **リン**【2】 | 「中村CFO、どうぞ。」 |
| **中村CFO** | 「ありがとうございます。」 |
| **リン**【3】 | *(im lặng đặt từng cốc theo thứ tự)* |
| **リン** | 「**ごゆっくりどうぞ**【4】。」 |

📝 **Ghi chú:**
- 【1】**「失礼いたします」** — câu cố định khi vào phòng họp đang diễn ra. Dù mình là staff cũng nói (KHÔNG im lặng vào bê trà).
- 【2】**Đặt bên phải, 2 tay** — bên phải khách (= tay uống). 2 tay đỡ đáy cốc đặt nhẹ. KHÔNG thả cao 5cm trên bàn (tiếng "cốp").
- 【3】**Order chuẩn**: senior khách trung tâm → khách phải → khách trái → senior host (副部長) → host junior. Tổng thời gian ~ 90 giây cho 6 cốc.
- 【4】**「ごゆっくりどうぞ」** — câu cố định khi xong. Bow nhẹ 15° rồi lui ra cửa, KHÔNG quay lưng đi thẳng (đi lùi 1-2 bước rồi mới xoay).

---

## Cụm từ mẫu
> **「お茶は『着席後5分以内・客senior優先順・右側両手・"ごゆっくりどうぞ"』。」**
>
> *Trà = trong 5 phút sau ngồi / thứ tự senior khách trước / đặt bên phải 2 tay / chốt "ごゆっくりどうぞ".*

---

## Tránh
- Trà ra **muộn 10+ phút** → khách khô cổ = host thiếu attention
- Phục vụ **host trước khách** → vi phạm cốt lõi
- Đặt cốc **bên trái** khách → chắn tay uống
- **1 tay** đặt cốc → 2 tay (1 tay đỡ đáy + 1 tay nâng cốc)
- Đặt cốc với **tiếng "cốp"** → đặt nhẹ, không nghe tiếng
- **Quay lưng** đi thẳng ra cửa sau khi đặt xong → lui 1-2 bước rồi mới xoay
- Hỏi "**ホットですか?アイスですか?**" giữa cuộc nói chuyện → chuẩn bị trước, hoặc default trà nóng cho senior + hỏi nhanh ngoài phòng cho junior nếu mùa hè VN

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| お茶 | おちゃ | Trà |
| 湯呑 | ゆのみ | Cốc trà |
| お持ちいたしました | おもちいたしました | Em đã mang tới (kính ngữ) |
| ごゆっくりどうぞ | ごゆっくりどうぞ | Mời thưởng thức từ tốn |
| 失礼いたします | しつれいいたします | Xin phép (vào/ra phòng) |
| 着席 | ちゃくせき | Ngồi xuống |
| 順番 | じゅんばん | Thứ tự |
| 右側 | みぎがわ | Bên phải |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008012, 8008, NULL, 'markdown_book', 'Rule 12 — Mở đầu hội nghị offline / 対面会議の冒頭', '# Rule 12 — Mở đầu hội nghị offline / 対面会議の冒頭
> **Luận điểm.** Khác online (sách 03 rule_09): offline mở đầu cần **(1) cảm ơn đã đến tận nơi (2) xác nhận thời lượng + agenda giấy (3) intro round nếu có người mới (4) đặt rule trà/break/phone (5) speed nói chậm hơn 10% online**. Khách Nhật bay 5h đến HCMC = mệt + jetlag = trách nhiệm host làm họ comfortable trong 5 phút đầu.
>
> 対面会議冒頭は『遠路への謝辞・時間agenda紙確認・intro round・茶/休憩/携帯ルール・online比10%減速』の5要素。
>
> **Liên quan:** sách 03 rule_09 (online opening), rule 10 (上座), rule 11 (お茶), rule 13 (お見送り).

---

## Bối cảnh / 場面
9:40 sáng. Khách đã ngồi 上座, trà đã ra. Hương 副部長 mở đầu meeting Phase 3 kickoff. Đoàn 白鷗 vừa bay từ Tokyo lúc nửa đêm + transit Singapore = 12h trên đường.

---

## Hội thoại XẤU — vào thẳng nội dung, không acknowledge
*9:40, vào ngay slide 1 · còn đang sắp xếp tài liệu, hơi vội · lúng túng, gọi Linh*

| Speaker | Câu |
|---------|-----|
| **フオン副部長** | 「では、Phase 3 のスコープを説明します。スライド1ご覧ください。Backend API は…」 |
| **大垣** | 「あの、すみません、agenda はありますか？」 |
| **フオン副部長** | 「あ、PDFを共有しました…」 |
| **大垣** | 「紙でも頂けますか？」 |
| **フオン副部長** | 「リンさん、agenda 5部印刷お願い…」 |

**Vì sao xấu:** (1) Không acknowledge khách bay xa = lạnh. (2) Không có agenda giấy = phải gián đoạn 5 phút in. (3) Vào thẳng nội dung = miss cơ hội build rapport. Khách Nhật mất goodwill trong 3 phút đầu.

---

## Hội thoại TỐT — 5 yếu tố mở đầu
*9:40, đứng dậy, bow 30° · đứng nhẹ, bow đáp · ngồi xuống, chỉ vào agenda giấy đã đặt sẵn trên bàn · intro round 6 người, mỗi người 30 giây — Hương → Tuấn → Dũng → Linh → Nakamura → Ōgaki → Matsumoto · speed chậm hơn online 10%【5】*

| Speaker | Câu |
|---------|-----|
| **フオン副部長** | 「**本日はお忙しい中、また長旅の中、HCMCまでお越しいただき、誠にありがとうございます**【1】。」 |
| **大垣 + 中村 + 松本** | 「いえいえ、こちらこそ。」 |
| **フオン副部長** | 「**本日のagendaは皆様のお手元にございます**【2】。**全体9:40〜12:00、3つのトピック**を予定しております。」 |
| **フオン副部長** | 「**本日は弊社からも新メンバーが参加していますので、最初に簡単な自己紹介を**【3】。皆様、続けてお願いします。」 |
| **フオン副部長** | 「**お茶のお代わり、お手洗い、いつでもお申し付けください。携帯はマナーモードでお願いいたします**【4】。」 |
| **フオン副部長** | 「では、最初のトピック『Phase 3 スコープ確認』に入らせていただきます。」 |

📝 **Ghi chú:**
- 【1】**長旅謝辞** — bay 12h đến cần được acknowledge. Câu mẫu: 「お忙しい中、また長旅の中、HCMCまでお越しいただき、誠にありがとうございます」.
- 【2】**Agenda giấy** — không phải chỉ PDF. In sẵn 1 bản/người đặt trên bàn từ 9:30. Khách Nhật quen ghi note tay.
- 【3】**Intro round nếu có new face** — Linh là intern lần đầu, intro round giúp khách "đặt tên + mặt + role" cho mọi người. Mỗi người 30 giây.
- 【4】**Rule cơ bản** — trà refill / WC / phone mode. Nói rõ = khách thoải mái xin nhỏ giọt thay vì nín đợi.
- 【5】**Speed -10% so với online** — offline có cue mặt + body language nhưng cần thời gian để khách Nhật "process" tiếng VN-Japanese accent. Slower = thoải mái hơn.

---

## Cụm từ mẫu
> **「対面冒頭は『長旅謝辞・agenda紙・intro round・茶携帯ルール・10%減速』の5点。」**
>
> *Mở đầu offline = cảm ơn đường xa + agenda giấy + intro round + rule trà-phone + chậm hơn 10%.*

---

## Tránh
- **Vào thẳng slide 1** không greeting → lạnh, miss rapport
- Chỉ có **agenda PDF** → bắt buộc có giấy
- **Bỏ intro round** khi có new face → khách không nhớ ai là ai
- **Speed bằng online** → offline cần slower
- Quên **rule WC/trà refill** → khách Nhật ngại xin = không thoải mái → meeting năng suất giảm
- Phone **không nói gì** → cuối meeting chuông reo = mất face

> 🔗 **Cross-ref sách 03 rule_09** — online opening: 「画面共有確認」「音声テスト」「タイムキーパー」3 yếu tố. Offline thay bằng "agenda 紙 / お茶 / 長旅謝辞".

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 長旅 | ながたび | Đi xa (đường dài) |
| 誠に | まことに | Vô cùng / thật lòng |
| お手元 | おてもと | Trong tay (kính ngữ) |
| お代わり | おかわり | Refill |
| お手洗い | おてあらい | Nhà vệ sinh (lịch sự) |
| お申し付けください | おもうしつけください | Mong anh nói (kính ngữ) |
| マナーモード | manaa moodo | Chế độ im lặng |
| 自己紹介 | じこしょうかい | Tự giới thiệu |
| スコープ | sukoopu | Scope |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008013, 8008, NULL, 'markdown_book', 'Rule 13 — Kết thúc + tiễn khách / お見送り', '# Rule 13 — Kết thúc + tiễn khách / お見送り
> **Luận điểm.** Tiễn khách = **đi cùng đến lobby/cửa thang máy/cửa taxi tùy weight** + **đứng đợi cho đến khi cửa thang máy đóng / xe đi khuất** + **bow 45° cuối**. Không tiễn (bye tại phòng họp) = "tôi xong với anh rồi". Tiễn ngắn (đến cửa thôi) = thiếu trọng lượng cho khách C-level.
>
> お見送りは『送る場所(エレベーター/玄関/タクシー)を相手の格で決定・扉が閉まるまで起立・最後に45度お辞儀』。
>
> **Liên quan:** rule 08 (お出迎え), rule 09 (案内 — flow vào).

---

## Bối cảnh / 場面
12:00 trưa, meeting Phase 3 kickoff kết thúc. Đoàn 大垣 + 中村 + 松本 chuẩn bị về khách sạn nghỉ. Chiều có dinner. Hương 副部長 + Dũng + Linh tiễn.

**Quy tắc weight:**
- 一般 client: tiễn đến **cửa phòng họp / lễ tân**
- Client quan trọng: tiễn đến **lobby / cửa thang máy** (đợi cửa đóng)
- C-level / first visit: tiễn đến **cửa taxi / xe** (đợi xe đi khuất)

Đoàn 中村 CFO + 大垣 部長 = C-level → tiễn đến cửa taxi.

---

## Hội thoại XẤU — bye tại phòng họp
*12:00, đứng dậy ngay sau khi nói "では本日はこれで" · tự ra cửa · đứng tại phòng họp, vẫy tay · quay đầu thoáng nhíu mày*

| Speaker | Câu |
|---------|-----|
| **フオン副部長** | 「お疲れさまでした。気をつけて帰ってください。」 |
| **大垣 + 中村 + 松本** | 「では失礼します。」 |
| **ズン** | 「お気をつけて〜」 |
| **大垣** | *(im lặng đi)* |

**Vì sao xấu:** (1) Bye tại phòng họp với C-level = vô lễ. (2) "気をつけて帰ってください" + "お気をつけて〜" = quá casual cho CFO senior. (3) Không tiễn lobby = "việc tôi xong rồi anh tự về" = mất relationship.

---

## Hội thoại TỐT — tiễn đến taxi + bow 45°
*12:00, đứng dậy, bow 30° · dẫn đoàn xuống thang máy → lobby → cửa · tại lobby, đã book taxi sẵn, taxi đến · lên xe, vẫy · bow 45°, đứng yên cho đến khi xe đi khuất khỏi tầm mắt【3】 · xe khuất → 3 người mới đứng thẳng, vào trong*

| Speaker | Câu |
|---------|-----|
| **フオン副部長** | 「**本日は誠にありがとうございました。ロビーまでお見送りさせていただきます**【1】。」 |
| **大垣** | 「ご丁寧に、恐縮です。」 |
| **フオン副部長 + ズン + リン** | *(Dũng đi trước, mở cửa thang máy giữ — quy tắc rule 09 ngược)* |
| **ズン** | 「**お車のご用意ができております**【2】。」 |
| **大垣 + 中村 + 松本** | 「ありがとうございました。」 |
| **フオン副部長 + ズン + リン** | 「**本日は誠にありがとうございました。お気をつけてお帰りくださいませ**【4】。」 |

📝 **Ghi chú:**
- 【1】**「お見送りさせていただきます」** — câu cố định khi propose tiễn. KHÔNG là "送ります" (quá casual).
- 【2】**Taxi book sẵn** — host trách nhiệm. Khách Nhật không tự bắt Grab. Book trước 15 phút bằng app cty hoặc hotel taxi.
- 【3】**Đợi xe khuất tầm mắt** — không phải đợi xe khởi hành rồi quay vào ngay. Đợi 5-10 giây cho đến khi xe **rẽ khuất** mới được đứng thẳng. Khách Nhật quay lại vẫy = mình vẫy lại được.
- 【4】**「お気をつけてお帰りくださいませ」** > 「気をつけて帰ってください」 — formal tier cao nhất cho C-level.

---

## Cụm từ mẫu
> **「お見送りは『相手の格で送る場所決定・お車手配・扉閉/車去まで起立・45度お辞儀』。」**
>
> *Tiễn = chọn nơi tiễn theo cấp / book xe sẵn / đứng đợi đến khi cửa đóng/xe khuất / bow 45° cuối.*

---

## Tránh
- Bye **tại phòng họp** với C-level → tiễn đến cửa
- **Quay vào ngay** sau khi xe lăn bánh → đợi xe khuất tầm mắt
- "**Bye-bye**" / vẫy tay casual với senior khách → bow 45° + câu cố định
- Khách phải **tự bắt taxi** → host book sẵn 15 phút trước
- Senior bên mình **đứng tại phòng họp** + để junior tiễn → senior phải đi cùng đến cửa
- Tiễn xong **chạy về phòng họp ngay** → đi chậm rãi vào, không vội vàng

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| お見送り | おみおくり | Tiễn khách (kính ngữ) |
| させていただきます | させていただきます | Xin phép làm... (kính ngữ) |
| ロビー | robii | Lobby |
| 玄関 | げんかん | Cửa chính |
| お車 | おくるま | Xe (kính ngữ) |
| ご用意 | ごようい | Chuẩn bị (kính ngữ) |
| お気をつけて | おきをつけて | Đi cẩn thận (kính ngữ) |
| 恐縮 | きょうしゅく | Thật ngại / quá lịch sự |', 'system', 13, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008014, 8008, NULL, 'markdown_book', 'Rule 14 — After-care (theo dõi) / アフターケア', '# Rule 14 — After-care (theo dõi) / アフターケア
> **Luận điểm.** Trong **24 giờ** sau visit: gửi email cảm ơn từ host senior (Hương 副部長 hoặc CTO Hà), reference **3 yếu tố cụ thể từ meeting** (1 quote senior + 1 action item + 1 cá nhân note), kèm **biên bản meeting + slide** đính kèm. Email generic 1 dòng = visit không "đậm". Email đầy context = relationship build.
>
> 訪問後24時間以内に host senior 名義で『specific quote+action item+個人ノート』を含むお礼メール送信。
>
> **Liên quan:** rule 07 (lưu trữ), rule 13 (お見送り), rule 30 (お礼メール 食事編), sách 04 rule HouRenSou.

---

## Bối cảnh / 場面
Sáng hôm sau visit (ngày D+1, 9:00). Linh đã làm xong 24h memo (rule 07). Hương 副部長 review draft mail và gửi từ tài khoản chính chủ.

---

## Hội thoại XẤU — generic + chậm
*D+3, sáng thứ 2 · D+3, draft · send*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオンさん、白鷗 visit のお礼メール、まだ送ってないですね…」 |
| **フオン副部長** | 「あ、忘れてた。リンさん、generic で送って。」 |
| **リン** | 「**【件名】昨日はありがとうございました ← visit 3日前なのに『昨日』...** 本文: 先日はお越しいただきありがとうございました。今後ともよろしくお願いいたします。」 |
| **フオン副部長** | 「OK 送って。」 |

**Vì sao xấu:** (1) D+3 = quá muộn, "tươi" đã chết. (2) "昨日" sai date. (3) Body 1 dòng generic = không reference gì specific = "tôi không thực sự để ý anh nói gì".

---

## Hội thoại TỐT — D+1 + 3 yếu tố cụ thể
*D+1 9:00, draft mail từ 24h memo · review · 送信前*

| Speaker | Câu |
|---------|-----|
| **リン** | 「フオン副部長、お礼メールdraft完成しました。**3要素**【1】チェック済: ① 中村CFOの『Phase 4 予算1,500万円』引用 ② action item『Q3決算後再検討』スケジュール ③ 大垣部長の HCMC 食事感想への一言。」 |
| **フオン副部長** | 「件名は『**Phase 3 キックオフ御礼および議事録ご送付の件**』に。長すぎず短すぎず。」 |
| **リン** | 「議事録 PDF + slide deck も添付済みです。CC は中村CFO・大垣部長・松本PM の3名、To は大垣部長(代表)。」 |
| **フオン副部長** | 「私の名義で送って。署名は **副部長フオン**【2】。リンの名前は『資料作成: リン』で本文に明記【3】。」 |
| **リン** | 「承知いたしました。9:30 までに送信いたします。」 |

📝 **Ghi chú:**
- 【1】**3要素必須** — quote + action + personal note. Quote = chứng minh "tôi nghe và nhớ". Action = chuyển sang follow-up cụ thể. Personal note = build relationship (tránh feedback meeting purely).
- 【2】**Senior 名義で送る** — email từ Hương (副部長) > từ Linh (intern). Khách Nhật weight email theo cấp người gửi.
- 【3】**Linh credit trong body** — junior làm thực sự nhưng senior gửi → ghi "資料作成: リン" để Linh được visible với khách (build cho future).

---

## Cụm từ mẫu
> **「アフターケアは『24h以内・host senior名義・quote+action+個人note の3要素』。」**
>
> *After-care = trong 24h / từ tên senior / 3 yếu tố quote + action + personal note.*

---

## Tránh
- **D+3 hoặc muộn hơn** → tươi đã chết, generic
- **Generic 1 dòng** "ありがとうございました" → không reference gì cụ thể = không impact
- Email **từ junior** (intern Linh) thay vì senior → senior name carries weight
- **Quên attach** biên bản + slide → bắt khách tự chuẩn bị reference
- "**昨日**" / "**先日**" mơ hồ → ghi ngày cụ thể "5月15日のお打ち合わせ"
- **Không CC** đoàn → CC tất cả attendee bên khách + senior bên mình

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| アフターケア | afutaa kea | After-care |
| お礼メール | おれいめーる | Mail cảm ơn |
| 件名 | けんめい | Tiêu đề (mail) |
| 議事録 | ぎじろく | Biên bản meeting |
| ご送付 | ごそうふ | Gửi (kính ngữ) |
| 添付 | てんぷ | Đính kèm |
| 署名 | しょめい | Chữ ký (mail) |
| 名義 | めいぎ | Tên đại diện |
| キックオフ | kikkuofu | Kickoff |', 'system', 14, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008015, 8008, NULL, 'markdown_book', 'Rule 15 — Khách đến sớm / muộn / 早退・遅刻対応', '# Rule 15 — Khách đến sớm / muộn / 早退・遅刻対応
> **Luận điểm.** Khách đến **sớm 15+ phút**: dẫn vào phòng chờ ngay (không bắt đợi lobby), trà ra trong 3 phút, briefing senior bằng Slack. Khách đến **muộn 10+ phút**: gọi xác nhận status 1 lần, KHÔNG hối thúc, vẫn giữ tone niềm nở khi đến + KHÔNG đề cập "anh trễ". Linh hoạt = dấu hiệu host trưởng thành. "Anh muộn 15 phút rồi nha" = quan hệ hỏng.
>
> 早着15分以上は即会議室案内+お茶3分+slack通知。遅刻10分以上は1回確認のみ・到着時『遅い』非言及・温かい歓迎維持。
>
> **Liên quan:** rule 08 (お出迎え), sách 03 rule_06 (5分前到着), rule 12 (会議冒頭).

---

## Bối cảnh / 場面
**Scenario A** (sớm): Lần thứ 2 đoàn 大垣 visit (ngày khác, smaller meeting). 9:15 sáng, khách đến **15 phút sớm** so với lịch 9:30. Linh ở lễ tân.

**Scenario B** (muộn): 9:45 sáng, lịch 9:30 nhưng đoàn chưa đến. Dũng phải xử lý.

---

## Hội thoại XẤU — bắt đợi sớm + hối muộn
### Scenario A — sớm (XẤU):
*9:15, đến lobby sớm 15 phút · không biết xử lý · đứng lobby 15 phút*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「すみません、早く着きすぎました。」 |
| **リン** | 「あっ、9:30 ですよね？ロビーでお待ちいただけますか…」 |
| **大垣** | 「…はい。」 |

### Scenario B — muộn (XẤU):
*9:45, đoàn chưa đến, nhắn Slack giận · 9:50 đến, vội · thoáng cau mặt*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオンさん、白鷗 まだ来てない。15分遅れ…」 |
| **大垣** | 「申し訳ございません、渋滞で…」 |
| **ズン** | 「**もう20分も…**会議時間調整しないとですね。」 |

**Vì sao xấu:** Sớm = bắt khách đứng lobby = mệt thêm 15 phút. Muộn = nói "もう20分も" = passive-aggressive, khách imprint ngay.

---

## Hội thoại TỐT — đón sớm ngay + receive muộn ấm
### Scenario A — sớm (TỐT):
*9:15 · bình tĩnh, đã được briefing · dẫn vào, Slack senior ''Ōgaki sớm 15p, đã đưa vào phòng A'' · slack to ズン+フオン*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「すみません、早く着きすぎました。」 |
| **リン** | 「**いえいえ、お早いお越しをありがとうございます。会議室の準備はできておりますので、よろしければ先にお通しいたします**【1】。」 |
| **大垣** | 「ありがとうございます、助かります。」 |
| **リン** | 「**こちらでお待ちいただけますでしょうか。お茶をお持ちいたします**【2】。」 |
| **リン** | *『大垣様 9:15 ご到着、会議室Aご案内済。お茶配膳中。』*【3】 |

### Scenario B — muộn (TỐT):
*9:40, gọi điện status · qua phone · 9:50 đến lobby · bow đón ấm như bình thường, KHÔNG đề cập muộn*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「大垣様、本日ご来訪予定の件でご確認のお電話です。**何かございましたでしょうか**【4】。」 |
| **大垣** | 「申し訳ございません、渋滞で15分遅れます。」 |
| **ズン** | 「**ご無事で何よりです。会議室は整っておりますので、お気をつけてお越しくださいませ**【5】。」 |
| **大垣** | 「申し訳ございません…」 |
| **ズン** | 「**ようこそお越しくださいました**【6】。お疲れさまでございます。会議室にご案内いたします。」 |

📝 **Ghi chú:**
- 【1】**Sớm 15+ phút** → đón vào phòng chờ NGAY, KHÔNG bắt đợi lobby. Câu chuẩn: 「会議室の準備はできておりますので、よろしければ先にお通しいたします」.
- 【2】**Trà ra trong 3 phút** với khách sớm. Đợi senior xuống là việc của host, KHÔNG để khách đứng đợi.
- 【3】**Slack senior** ngay khi xử lý xong = senior biết để xuống sớm hoặc reschedule nội bộ.
- 【4】**「何かございましたでしょうか」** — gọi muộn 10+ phút bằng câu này, KHÔNG「遅れていますか」(passive-aggressive). Cho khách space để giải thích.
- 【5】**「ご無事で何よりです」** — nhấn mạnh "an toàn quan trọng hơn punctuality" = giảm áp lực khách.
- 【6】**KHÔNG đề cập "anh muộn"** khi đến — bow như bình thường + 「ようこそ」. Sau meeting, KHÔNG bao giờ gửi mail "lần sau xin đến đúng giờ". Khách đã nội bộ chịu trách nhiệm rồi.

---

## Cụm từ mẫu
> **「早着は『即会議室案内+お茶3分+slack通知』、遅刻は『1回status確認+到着時温かく非言及』。」**
>
> *Sớm = đón vào phòng ngay + trà 3 phút + báo senior. Muộn = gọi status 1 lần + đón ấm không đề cập.*

---

## Tránh
- Khách **sớm 15p** mà bắt đứng lobby → đưa vào phòng chờ NGAY
- Gọi muộn nói "**遅れていますか**" → "何かございましたでしょうか" (cho space)
- Khi khách muộn đến, nói "**もう20分**" / "**お忙しいですよね、結構結構**" sarcasm → tone bình thường, KHÔNG đề cập
- Sau meeting gửi mail "**次回は時間通りに**" → không bao giờ
- **Không Slack senior** khi sớm → senior bị bất ngờ
- **Bắt đầu meeting đúng giờ** dù khách chưa đến (bỏ khách lại sau) → chờ tối thiểu 15 phút trước khi reschedule

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 早退 | そうたい | Đến/về sớm |
| 遅刻 | ちこく | Muộn |
| お早いお越し | おはやいおこし | Đến sớm (kính ngữ) |
| お通しいたします | おとおしいたします | Em xin đưa vào (kính ngữ) |
| 渋滞 | じゅうたい | Tắc đường |
| ご無事 | ごぶじ | An toàn (kính ngữ) |
| 整う | ととのう | Đã sẵn sàng |
| 何かございましたか | なにかございましたか | Có chuyện gì không ạ (kính ngữ) |', 'system', 15, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008016, 8008, NULL, 'markdown_book', 'Rule 16 — Chuẩn bị trước khi đi onsite / 訪問前の準備', '# Rule 16 — Chuẩn bị trước khi đi onsite / 訪問前の準備
> **Luận điểm.** Onsite Nhật chuẩn bị **5 mục** trước 24h: (1) Confirm với 担当者 qua mail (giờ + địa chỉ + người đi cùng) (2) Dress code: suit đậm + cravate (3) Route + buffer 30 phút (Tokyo subway phức tạp + commute peak) (4) IC card / cash 1 man yen (5) Omiyage VN (rule 28). Confirm muộn 24h = không sense urgency.
>
> 訪問は『24h前確認・スーツ濃色ネクタイ・ルート+30分buffer・ICカード/現金1万・お土産』の5点を前日完了。
>
> **Liên quan:** rule 17 (5分前到着), rule 28 (omiyage), rule 34 (initial onsite survival kit).

---

## Bối cảnh / 場面
Dũng + Tuấn lần đầu đi onsite Tokyo cho 白鷗 office tại Shinjuku, Phase 3 technical kickoff. Ngày D-1 (chiều thứ 4, meeting thứ 5). Tuấn chưa quen routine, Dũng kiểm tra 5 mục.

---

## Hội thoại XẤU — confirm muộn + thiếu mục
*D-1, 17:00 chiều*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、明日の白鷗 onsite、住所どこだっけ？」 |
| **ズン** | 「えっ、まだ確認してない？田中PMOにメール送ったか？」 |
| **トゥアン** | 「あ、まだ。今日中に送る。あとスーツは…ジャケットだけでいいよね？」 |
| **ズン** | 「**白鷗本社は CFO 同席だぞ。スーツ濃紺+ネクタイ必須**。お土産は？」 |
| **トゥアン** | 「えっ、お土産も？空港で買えばいいかな…」 |

**Vì sao xấu:** D-1 17:00 mà chưa confirm địa chỉ + outfit + omiyage = miss multiple lanes. Mai sáng confirm = Tanaka PMO không kịp prep phòng + receptionist guide. Outfit "ジャケットだけ" với CFO meeting = lộ unprofessional.

---

## Hội thoại TỐT — D-1 5 mục check
*D-1, 14:00*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「トゥアン、明日の白鷗 onsite チェックリスト共有しよう。」 |
| **トゥアン** | 「① **田中PMOへ確認メール送信済**【1】 (10時到着・私とズン2名・名刺準備済) ② **スーツ濃紺+白シャツ+紺ネクタイ**【2】 ③ **ルート: ホテル→新宿駅→白鷗本社 徒歩7分、buffer 30分**【3】 ④ **ICカード Suica チャージ済+現金1万**【4】 ⑤ **お土産: ベトナムコーヒー(高級ブランド)6箱**【5】。」 |
| **ズン** | 「完璧。田中PMOからの返信は？」 |
| **トゥアン** | 「**『10時にロビーでお迎えします』** とのこと。受付で『白鷗株式会社 田中様、約束のティエンファットのトゥアンとズンです』と申告予定。」 |
| **ズン** | 「OK。明朝 9:00 ホテル ロビー集合。」 |

📝 **Ghi chú:**
- 【1】**24h前確認メール** — confirm: 時間/人数/場所/agenda。Format: 「明日10時のお打ち合わせの件、ティエンファットのトゥアン・ズン2名でお伺いいたします。受付対応のご手配をお願いいたします」.
- 【2】**Dress code** — JP 大手 default = suit đậm (濃紺 / 黒). Cravate đơn sắc. Áo trắng. Tránh: shirt màu / jacket-only / chinos.
- 【3】**Route + 30 phút buffer** — Tokyo subway peak hour delay 5-15 phút thường. Calculate route + add 30 phút. Đến lobby trước 5-10 phút (rule 17).
- 【4】**IC card + cash** — Suica/Pasmo charge sẵn. Cash 1 man yen cho taxi emergency. Card Visa nhiều shop nhỏ Tokyo không nhận.
- 【5】**Omiyage** — chuẩn bị từ VN, KHÔNG mua tại sân bay Narita (giảm tâm). Brand uy tín, 6 hộp = 1 cho đoàn 大垣 + 1 cho 中村 + 1 cho 松本 + 1 cho 田中 + 2 buffer.

---

## Cụm từ mẫu
> **「訪問前は24h前に『確認メール・スーツ濃紺・ルート+30分buffer・IC/現金・お土産』の5点完了。」**
>
> *Trước onsite: 24h trước xong 5 mục — confirm mail / suit đậm / route + buffer 30p / IC card+cash / omiyage.*

---

## Tránh
- Confirm **D-1 evening** → senior khách JP đã off work, không reply kịp
- **Jacket-only** / áo màu sáng / chinos cho meeting CFO → suit đậm
- Route **không có buffer** → Tokyo delay = đến muộn = rule 17 fail
- **Quên IC card** → mua tại ga sáng D = mất 10 phút trễ giờ
- Mua **omiyage tại Narita** → khách nhận thấy = giảm tâm
- **Không briefing người đi cùng** → vào lobby Shinjuku, mỗi người 1 plan = loạn

---

## Template — Onsite Visit Checklist (5 mục)
```
【訪問前24h チェックリスト — D-1 18:00 まで完了】

□ ① 確認メール (24h前)
   - 宛先: 担当者 (To) + 上司 (CC)
   - 内容: 日時・人数・氏名・到着予定 (5-10分前)
   - 受付対応依頼明記
   返信受領: ___ (確認時刻)

□ ② Dress code
   - スーツ: 濃紺 / 黒
   - シャツ: 白 (青系も可)
   - ネクタイ: 単色 / 控えめ柄
   - 靴: 黒革靴 / 磨き済
   - 名刺ケース: スーツ右ポケット
   - お土産: 紙袋から取り出さず持参

□ ③ ルート + buffer
   - 出発地: ___
   - 経路: ___
   - 標準所要: ___ 分
   - +Buffer 30分
   - 到着目標: 訪問先 5-10分前 (rule 17)

□ ④ 持ち物
   - 名刺 50枚 (rule 01)
   - ICカード Suica/Pasmo チャージ済
   - 現金 1万円 (タクシー / 緊急用)
   - 名刺メモ用ノート + ペン
   - スマホ充電済 + モバイルバッテリー
   - 訪問先地図印刷 (オフライン用)

□ ⑤ お土産 (rule 28)
   - 銘柄: ___
   - 数: 担当者数 + 2 buffer
   - VN由来 / 個包装 / 賞味期限長
   - 紙袋(ロゴ控えめ)
```

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 訪問 | ほうもん | Thăm / visit |
| 担当者 | たんとうしゃ | Người phụ trách |
| 確認メール | かくにんめーる | Mail xác nhận |
| ルート | ruuto | Route |
| バッファ | baffa | Buffer |
| ICカード | aishii kaado | IC card (Suica/Pasmo) |
| お土産 | おみやげ | Quà (omiyage) |
| 濃紺 | のうこん | Xanh đậm |
| ネクタイ | nekutai | Cravate |', 'system', 16, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008017, 8008, NULL, 'markdown_book', 'Rule 17 — Đến lobby 5-10 phút trước / 5-10分前到着', '# Rule 17 — Đến lobby 5-10 phút trước / 5-10分前到着
> **Luận điểm.** Đến lobby khách Nhật **5-10 phút trước** giờ hẹn (KHÔNG sớm hơn, KHÔNG đúng giờ). Sớm 30 phút = bắt host bất ngờ + phải tiếp sớm. Đúng giờ = muộn (vì lễ tân + tự xưng + nhận pass + đi thang máy = 5-10 phút). Quy tắc cross-ref sách 03 rule_06 — "đúng giờ" trong văn hóa Nhật business = đến trước 5-10 phút.
>
> 訪問は『5-10分前ロビー到着』。早すぎ(30分前)は host surprise、ぴったりは受付処理時間で実質遅刻。
>
> **Liên quan:** rule 16 (準備), rule 18 (受付対応), sách 03 rule_06 (5分前到着 cross-ref).

---

## Bối cảnh / 場面
Sáng ngày D, Dũng + Tuấn đi từ hotel Shinjuku đến trụ sở 白鷗 (cách 7 phút đi bộ + 3 phút thang máy). Hẹn 10:00. Họ phải tính ngược: đến lobby 9:50-9:55 = optimal.

---

## Hội thoại XẤU — quá sớm hoặc đúng giờ
**Scenario A — quá sớm:**

*9:30, đến lobby 30 phút sớm · báo Tanaka · qua điện thoại Slack, đang trong meeting khác*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、もう着いた。」 |
| **ズン** | 「30分も前？まずいよ、田中PMOまだ会議中の可能性。」 |
| **受付** | 「田中様、ティエンファットの方が30分早く到着…どうしますか？」 |
| **田中PMO** | 「えっ、もう？…まあ、ロビーで待ってもらってください。10時に降ります。」 |

**Scenario B — đúng giờ:**

*10:00 đúng, vào lobby · 10:08, sau khi đợi 8 phút trên tầng 8*

| Speaker | Câu |
|---------|-----|
| **トゥアン + ズン** | *(check-in lễ tân, được bảo "tầng 8 phòng 805")* |
| **田中PMO** | 「あ、いらっしゃいました。お待ちしておりました。」*(thoáng cười nhẹ — nhưng đã đợi 8 phút)* |

**Vì sao xấu:** A — Tuấn 30 phút sớm = Tanaka đang meeting khác, bất ngờ. B — đúng giờ = đã muộn 8 phút trên thực tế (lễ tân + an ninh + thang máy). Senior khách đợi 8 phút = mất face.

---

## Hội thoại TỐT — 5-10 phút trước
*9:30, hotel lobby · 9:53, đến trước cửa 白鷗 ビル · 9:54, vào lobby · check sổ, ký pass · 9:58, bước ra thang máy đúng lúc*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**白鷗本社到着目標 9:55**【1】。新宿駅まで5分、駅から徒歩7分、+buffer3分 = 9:50 出発で OK。」 |
| **トゥアン** | 「了解。早すぎたら駅近のカフェで時間調整しよう。」 |
| **ズン + トゥアン** | *(quan sát cửa, đợi 1 phút)* |
| **ズン**【2】 | *(điều hướng đến quầy lễ tân)* |
| **受付** | 「いらっしゃいませ。」 |
| **ズン** | 「**ティエンファットのズンとトゥアンと申します。10時から田中様とお打ち合わせのお約束です**【3】。」 |
| **受付** | 「お待ちしておりました。8階会議室へどうぞ。田中も間もなく参ります。」 |
| **田中PMO** | 「ズンさん、トゥアンさん、ようこそ。」 |

📝 **Ghi chú:**
- 【1】**到着目標 9:55** — 5 phút trước hẹn 10:00. Tính ngược: lễ tân (2 phút) + thang máy (3 phút) = đến phòng 10:00 sharp.
- 【2】**Vào lobby 9:54** — KHÔNG vào sớm hơn 10 phút. Nếu đến địa điểm sớm hơn → đứng ngoài cửa hoặc cafe gần đó để time. Vào lobby 30 phút sớm = "tôi vô tổ chức".
- 【3】**Tự xưng tại lễ tân** — chuyển sang rule 18.

> 🔗 **Cross-ref sách 03 rule_06** — Online meeting "đúng giờ" = vào Zoom 5 phút trước. Offline visit "đúng giờ" = đến lobby 5-10 phút trước. Cùng nguyên tắc: "punctual = sớm".

---

## Cụm từ mẫu
> **「訪問は『5-10分前ロビー到着』。早すぎ30分は迷惑、定刻は実質遅刻。」**
>
> *Onsite = đến lobby trước 5-10 phút. Sớm 30 phút = phiền, đúng giờ = thực tế muộn.*

---

## Tránh
- Đến **30 phút sớm** → host bất ngờ + phải đợi
- **Đúng giờ** sharp lobby → đã muộn 5-10 phút trên phòng họp
- Đến **sớm 15-20 phút** → đứng cafe gần đó time đến 5-10p trước, KHÔNG vào lobby
- **Hối thúc lễ tân** "tôi đến 5 phút sớm thôi nhanh lên" → bình thường giọng formal, KHÔNG hối
- Đến lobby xong **xem phone** thay vì observe surroundings → quan sát atmosphere = data cho meeting
- **Quên ID** → một số tòa Tokyo cần passport/ID check security

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 5-10分前 | 5〜10ぷんまえ | 5-10 phút trước |
| 到着 | とうちゃく | Đến |
| 目標 | もくひょう | Mục tiêu |
| 出発 | しゅっぱつ | Xuất phát |
| 時間調整 | じかんちょうせい | Điều chỉnh thời gian |
| 早すぎ | はやすぎ | Quá sớm |
| 定刻 | ていこく | Đúng giờ |
| 実質 | じっしつ | Thực chất |', 'system', 17, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008018, 8008, NULL, 'markdown_book', 'Rule 18 — Check-in tại lễ tân / 受付対応', '# Rule 18 — Check-in tại lễ tân / 受付対応
> **Luận điểm.** Tại lễ tân khách Nhật, tự xưng **đầy đủ 4 yếu tố**: (1) Tên cty mình (2) Họ tên đầy đủ (3) Tên 担当者 muốn gặp (4) Lý do hẹn (giờ + topic). Bow nhẹ 15° khi nói. KHÔNG hỏi "phòng số mấy" — lễ tân sẽ guide. KHÔNG đi tìm thang máy tự ý — đợi lễ tân chỉ + sign pass.
>
> 受付では『社名+氏名+担当者+用件(時刻+目的)』の4要素自己申告。15度お辞儀。エレベーター場所は受付指示待ち。
>
> **Liên quan:** rule 16 (準備), rule 17 (5分前), rule 19 (コート), rule 21 (入室).

---

## Bối cảnh / 場面
9:54 sáng, Dũng + Tuấn bước vào lobby 白鷗 trụ sở Shinjuku. Lễ tân (女性) tại quầy. Cần check-in + nhận pass + được hướng dẫn.

---

## Hội thoại XẤU — thiếu mục + tự ý
*đến quầy, nói tiếng Anh · không hiểu rõ Tanaka nào — 白鷗 có 5 Tanaka · thấy thang máy, đi luôn · vội*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「Hi, we''re here for a meeting with Tanaka-san.」 |
| **受付** | 「Tanaka...どちらの田中でしょうか？」 |
| **ズン** | 「えっと、PMO の田中さんです。多分 Phase 3 関連…」 |
| **受付** | 「御社名と御芳名を伺ってもよろしいでしょうか？」 |
| **ズン** | 「あ、ティエンファットの…ズンとトゥアンです。」 |
| **トゥアン** | 「あ、エレベーター見えた、行こう。」 |
| **受付** | 「あの、入館証がまだ…」 |

**Vì sao xấu:** (1) Tiếng Anh tại lễ tân JP corporate = không formal. (2) "Tanaka-san" mà không nói chức/phòng = lễ tân phải hỏi lại. (3) Thông tin nhỏ giọt từng câu = mất 2 phút thay vì 30 giây. (4) Tự ý đi thang máy chưa nhận pass = security vi phạm.

---

## Hội thoại TỐT — 4 yếu tố trong 1 câu
*đến quầy, bow 15° · check sổ · ký pass, đeo lên ngực · bow 15°*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**おはようございます**【1】。」 |
| **受付** | 「いらっしゃいませ。」 |
| **ズン** | 「**ティエンファットのズンとトゥアンと申します**【2】。**本日10時より、PMO部の田中様とお打ち合わせのお約束**【3】**にてお伺いしました**。」 |
| **受付** | 「お待ちしておりました。**入館証**【4】**をお渡しいたします。お名前のサインをお願いいたします**。」 |
| **ズン + トゥアン** | 「失礼いたします。」 |
| **受付** | 「会議室は8階の803号室でございます。**エレベーターは右奥、左側を3号機**【5】**でお上がりください**。田中はすでにお待ちしております。」 |
| **ズン** | 「ありがとうございます。」 |

📝 **Ghi chú:**
- 【1】**「おはようございます」** — câu chào lễ tân JP, KHÔNG「Hi」/「Hello」. Sau 11h chuyển sang「こんにちは」.
- 【2】**社名+氏名先** — bắt đầu với "ティエンファットの…" để lễ tân biết bạn là ai.
- 【3】**4 yếu tố trong 1 câu**: 時刻 (10時より) + 部署役職 (PMO部の田中様) + 用件 (お打ち合わせのお約束). Lễ tân không phải hỏi lại.
- 【4】**入館証 sign + đeo** — KHÔNG để trong túi. Đeo lên ngực. Trả lại lúc về (rule 22).
- 【5】**Đợi guide thang máy** — lễ tân chỉ rõ "3号機 left side". Tokyo big buildings có nhiều thang máy theo tầng — đi nhầm = bị block.

---

## Cụm từ mẫu
> **「受付は『社名+氏名+担当者+用件』の4要素を1文で・15度お辞儀・入館証着用・エレベーター指示待ち。」**
>
> *Lễ tân = 4 yếu tố trong 1 câu / bow 15° / đeo pass / đợi chỉ thang máy.*

---

## Tránh
- **Tiếng Anh** với lễ tân JP corporate → tiếng Nhật formal
- "**Tanaka-san**" mà không có 部署 → "PMO 部の田中様"
- **Thông tin nhỏ giọt** từng câu → 1 câu chứa 4 yếu tố
- **Tự ý đi thang máy** chưa nhận pass → đợi guide
- **Pass trong túi** → đeo lên ngực
- **Quên bow** lúc chào lễ tân → bow 15° đầu + cuối
- Lễ tân hỏi "**御芳名**" mà bí → 御芳名 = "tên quý khách". Trả lời họ tên đầy đủ.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 受付 | うけつけ | Lễ tân |
| 入館証 | にゅうかんしょう | Thẻ vào (pass) |
| 御芳名 | ごほうめい | Tên quý khách (kính ngữ) |
| 用件 | ようけん | Lý do / việc |
| お伺い | おうかがい | Đến thăm (kính ngữ) |
| お約束 | おやくそく | Hẹn (kính ngữ) |
| サイン | sain | Ký |
| ご担当 | ごたんとう | Phụ trách (kính ngữ) |
| お打ち合わせ | おうちあわせ | Buổi họp (kính ngữ) |', 'system', 18, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008019, 8008, NULL, 'markdown_book', 'Rule 19 — Cởi áo khoác trước cửa phòng họp / コート脱ぎのタイミング', '# Rule 19 — Cởi áo khoác trước cửa phòng họp / コート脱ぎのタイミング
> **Luận điểm.** Áo khoác / coat / muffler **cởi TRƯỚC khi vào tòa nhà** (hoặc trước cửa phòng họp ở tầng), cầm gấp gọn ở tay trái. KHÔNG cởi sau khi đã ngồi (= "tôi mệt + nóng"). Lý do văn hóa: coat = "đường xa bụi bặm" → cởi ngoài = không mang bụi vào không gian khách. Quan trọng đặc biệt mùa đông Tokyo (tháng 12-2, ai cũng có coat).
>
> コート/マフラーは『建物入る前 or 会議室入る前』に脱ぎ、左手で畳んで持つ。着席後脱ぎは『疲れた』signaling NG。
>
> **Liên quan:** rule 17 (5分前), rule 20 (待機), rule 21 (入室).

---

## Bối cảnh / 場面
Mùa đông tháng 12, Tokyo 5°C. Dũng + Tuấn từ hotel mặc áo khoác len + muffler. Bước vào lobby 白鷗 đã ấm, xong vẫn không cởi. Khi lên đến cửa phòng 803 (tầng 8), Tuấn vẫn mặc cả coat. Tanaka PMO ra mở cửa.

---

## Hội thoại XẤU — cởi áo sau khi ngồi
*mở cửa phòng họp · vào phòng, mặc cả coat + muffler · thoáng tỏ thái độ · cởi sau khi đã ngồi xuống ghế · cười nhẹ, cầm coat treo*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「ようこそ、お入りください。」 |
| **トゥアン** | 「失礼します。」 |
| **田中PMO** | 「あの…コート、お預かりしましょうか？」 |
| **トゥアン** | 「あ、すみません、ちょっと暑くて…」 |
| **田中PMO** | 「(本来は入室前脱ぐマナー…)」 |

**Vì sao xấu:** (1) Vào phòng họp với coat = mang "bụi đường" vào không gian. (2) Cởi sau khi ngồi = "tôi nóng/mệt" signaling = thiếu chuẩn bị. (3) Tanaka phải đề nghị cầm coat → host bị shift task không cần thiết.

---

## Hội thoại TỐT — cởi trước cửa, gấp tay trái
*đến trước cửa 803, dừng 30 giây · cởi coat + muffler, gấp 2 lần, đặt trên cánh tay trái【2】 · gõ cửa 2 lần, đợi 2 giây · mở cửa · bow 15° tại cửa, vào phòng, cầm coat tay trái · treo coat lên hanger góc phòng*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「**コート脱ごう**【1】。」 |
| **ズン + トゥアン** | *(im lặng)* |
| **ズン** | *(コン コン)* |
| **田中PMO** | 「どうぞ。」 |
| **ズン + トゥアン**【3】 | 「**失礼いたします**。」 |
| **田中PMO** | 「コート、こちらの ハンガーへどうぞ。」 |
| **ズン** | 「ありがとうございます。」 |

📝 **Ghi chú:**
- 【1】**Cởi trước cửa phòng họp** — KHÔNG sau khi ngồi. Tốt nhất: cởi ngay trước cửa tòa nhà (nếu lobby ấm) hoặc cửa phòng họp (nếu hành lang lạnh).
- 【2】**Gấp 2 lần, tay trái** — fold inside-out (mặt trong ra ngoài, mặt ngoài ẩn). Đặt trên cẳng tay trái (tay phải sẵn sàng bow / nhận danh thiếp / mở cửa).
- 【3】**Cầm coat lúc bow** — coat đã ở tay trái = bow / shake hand / mở cửa = tay phải tự do. Vào phòng không lúng túng.

---

## Cụm từ mẫu
> **「コートは『入室前に脱ぎ・2折で左腕に畳む・着席後脱ぎはNG』。」**
>
> *Áo khoác = cởi trước cửa / gấp 2 lần đặt cẳng tay trái / KHÔNG cởi sau khi ngồi.*

---

## Tránh
- **Cởi sau khi ngồi** → "tôi mệt/nóng" signaling
- Vào phòng họp **mặc coat** → mang "bụi đường" vào
- Cầm coat **tay phải** → tay phải bị bận = không bow/shake hand được
- **Đặt coat trên ghế** chưa được mời → đợi host chỉ chỗ (hanger / chair)
- **Đặt trên bàn họp** → KHÔNG bao giờ
- Áo khoác **không gấp** → Cẩu thả. Gấp inside-out.
- **Quên tháo muffler / scarf** → cởi cùng coat. Khăn cũng không vào phòng.

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| コート | kooto | Áo khoác |
| マフラー | mafuraa | Khăn quàng |
| 脱ぐ | ぬぐ | Cởi |
| 畳む | たたむ | Gấp |
| 左腕 | ひだりうで | Cẳng tay trái |
| ハンガー | hangaa | Móc treo |
| お預かり | おあずかり | Em xin giữ giúp (kính ngữ) |
| 入室 | にゅうしつ | Vào phòng |', 'system', 19, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008020, 8008, NULL, 'markdown_book', 'Rule 20 — Ngồi đợi đúng cách / 待機マナー', '# Rule 20 — Ngồi đợi đúng cách / 待機マナー
> **Luận điểm.** Đợi trong phòng họp khách Nhật **TRƯỚC khi senior bên họ đến**: (1) **KHÔNG ngồi 上座** dù được mời "どこでもどうぞ" (2) **Đứng** đợi cho tới khi 担当者 chỉ ghế cụ thể (3) Nếu được dẫn vào sớm: ngồi **下座** (gần cửa) (4) **KHÔNG sờ điện thoại** (5) **KHÔNG mở laptop** trước khi senior đến (6) Tay đặt trên gối, lưng thẳng. Sờ phone = "tôi không tôn trọng đợi anh".
>
> 待機中は『上座非占有・指示なき限り立位 or 下座着席・スマホ/laptop非操作・正座姿勢』。
>
> **Liên quan:** rule 10 (上座), rule 19 (コート), rule 21 (入室).

---

## Bối cảnh / 場面
10:02. Tanaka PMO dẫn Dũng + Tuấn vào phòng họp 803, bảo "中村CFOが間もなく来ます。お掛けになってお待ちください". Tanaka quay lại văn phòng. Dũng + Tuấn đợi 5 phút. Cách ngồi quyết định ấn tượng đầu khi Nakamura bước vào.

---

## Hội thoại XẤU — ngồi 上座 + xem phone
*dẫn vào, đi ra · ngồi luôn vào ghế 上座 ở giữa, xa cửa · rút phone, scroll · mở laptop, gõ ầm ầm · bước vào, thấy 2 người đang ngồi 上座 + phone + laptop*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「中村CFOが間もなく来ます。お掛けになってお待ちください。」 |
| **トゥアン** | 「お、いい席だね。」 |
| **ズン** | 「ちょっとSlack確認するわ…」 |
| **トゥアン** | 「俺もmail処理…」 |
| **中村CFO** | 「…おはようございます。」 *(bow ngắn, đi vòng sang shimoza)* |

**Vì sao xấu:** (1) Ngồi 上座 = chiếm chỗ Nakamura CFO trước khi anh ấy đến = vô lễ. (2) Phone + laptop = "tôi đang busy hơn việc đợi anh". (3) Nakamura phải ngồi shimoza host = role reversed = khách imprint mãi.

---

## Hội thoại TỐT — đứng đợi / ngồi 下座 / im lặng
*dẫn vào, chỉ tay · quan sát layout: 上座 xa cửa = chỗ Nakamura, 下座 gần cửa = chỗ mình · thoáng cười · ngồi 下座 cạnh cửa, lưng thẳng, tay trên gối · KHÔNG phone, KHÔNG laptop · bước vào sau 5 phút · đứng dậy ngay, bow 30°*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「**中村CFOが間もなく来ます**。お掛けになってお待ちください。」 |
| **ズン** | 「**ありがとうございます。下座でお待ちいたします**【1】。」 |
| **田中PMO** | 「ご丁寧に。」 |
| **ズン + トゥアン**【2】 | *(im lặng quan sát phòng — agenda giấy, slide projector, lay layout, tranh treo)* |
| **ズン + トゥアン**【3】 | *(im lặng, tâm thế ready)* |
| **中村CFO** | 「お待たせいたしました、中村です。」 |
| **ズン + トゥアン** | 「**お忙しいところ、お時間頂戴いたしまして恐縮でございます**【4】。」 |

📝 **Ghi chú:**
- 【1】**「下座でお待ちいたします」** — chủ động báo "tôi sẽ ngồi 下座" = mượn câu này để KHÔNG bị mời nhầm 上座. Tanaka thấy = ấn tượng "junior trained".
- 【2】**Lưng thẳng, tay trên gối** — KHÔNG dựa lưng ghế. KHÔNG bắt chéo chân. Tay 2 bàn tay đặt nhẹ trên gối hoặc trên bàn.
- 【3】**Phone + laptop OFF** — phone manner mode, để trong túi. Laptop trong cặp. Đợi senior đến, mở laptop CHỈ khi được mời "資料ご準備ください".
- 【4】**「お忙しいところ、お時間頂戴いたしまして恐縮でございます」** — câu chào CFO senior khi anh xuất hiện. Cao hơn「よろしくお願いします」.

---

## Cụm từ mẫu
> **「待機は『上座非占有・下座着席宣言・スマホ/laptop OFF・正座姿勢』。」**
>
> *Đợi = không ngồi 上座 / chủ động ngồi 下座 / phone-laptop OFF / lưng thẳng tay trên gối.*

---

## Tránh
- Ngồi **上座** dù được mời "どこでもどうぞ" → ngồi 下座 và báo "下座でお待ちいたします"
- **Phone scrolling** → manner mode, để túi, đợi
- **Laptop mở** trước khi senior đến → đóng + để cặp
- **Bắt chéo chân** / dựa lưng casual → lưng thẳng, 2 chân song song
- **Nói chuyện ầm ầm** với người đi cùng → small talk nhỏ giọt
- **Ăn / uống** trà chưa được mời → đợi senior đến mới uống
- Khi senior đến **không đứng dậy** → đứng ngay + bow 30°

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 待機 | たいき | Đợi |
| 上座 | かみざ | Kamiza |
| 下座 | しもざ | Shimoza |
| お掛けになる | おかけになる | Ngồi (kính ngữ) |
| 正座 | せいざ | Tư thế ngồi nghiêm |
| 姿勢 | しせい | Tư thế |
| お時間頂戴 | おじかんちょうだい | Xin được dành thời gian |
| 恐縮 | きょうしゅく | Thật ngại / quá lịch sự |
| 間もなく | まもなく | Sắp đến |', 'system', 20, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008021, 8008, NULL, 'markdown_book', 'Rule 21 — Vào phòng họp với chủ nhà / 入室マナー', '# Rule 21 — Vào phòng họp với chủ nhà / 入室マナー
> **Luận điểm.** Vào phòng họp = nghi lễ 4 bước: (1) **Gõ cửa 2 lần** (kể cả cửa mở) (2) Đợi 「どうぞ」 + 2 giây (3) Mở cửa, đứng tại ngưỡng, **bow 15°** + 「**失礼いたします**」 (4) Bước vào, đóng cửa nhẹ (KHÔNG quay lưng đóng — xoay 1/4 đóng bằng tay sau lưng). Bỏ bước = "đột nhập".
>
> 入室は『2回ノック・"どうぞ"+2秒待機・15度お辞儀+"失礼いたします"・後ろ手で静かに閉扉』の4ステップ。
>
> **Liên quan:** rule 19 (コート), rule 20 (待機), rule 23 (退室).

---

## Bối cảnh / 場面
10:00. Tanaka PMO dẫn Dũng + Tuấn lên tầng 8, đến cửa phòng 803. Phòng có Nakamura CFO + Ōgaki 部長 đã ngồi chờ. Tanaka nhường cho Dũng vào. Đây là **first impression** với Nakamura ở Tokyo (lần đầu visit).

---

## Hội thoại XẤU — không gõ + quay lưng đóng cửa
*đến cửa, mở thẳng · đẩy cửa vào ngay, không bow · theo sau, không gõ, im lặng vào · quay lưng lại, đóng cửa rầm · thoáng thái độ, im lặng nhận xét*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「どうぞ。」 |
| **トゥアン** | 「Hi、皆さん〜」 |
| **ズン** | *(im lặng)* |
| **トゥアン** | *(đóng cửa "BANG")* |
| **中村CFO** | *(im lặng)* |

**Vì sao xấu:** (1) Không gõ cửa = "đột nhập". (2) "Hi" + casual = sai formal level. (3) Không bow tại ngưỡng = miss greeting. (4) Quay lưng đóng cửa = lưng về phía Nakamura (vô lễ) + đóng "BANG" = thiếu finesse.

---

## Hội thoại TỐT — 4 bước nghi lễ
*đến cửa · gõ 2 lần nhẹ, đợi 2 giây · từ trong · mở cửa, đứng tại ngưỡng, bow 15° · theo sau, bow 15°, vào trong · đóng cửa: xoay 1/4 chứ KHÔNG quay lưng, tay sau lưng đẩy nhẹ cửa · bước đến gần bàn, bow 30°*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「どうぞ、お入りください。」 |
| **ズン**【1】 | *(コン コン)* |
| **中村CFO** | 「どうぞ。」 |
| **ズン**【2】 | 「**失礼いたします**【3】。ティエンファットのズンと申します。」 |
| **トゥアン** | 「**失礼いたします**。技術リーダーのトゥアンと申します。」 |
| **ズン**【4】 | *(không tiếng)* |
| **中村CFO** | 「お入りください。中村です。」 |
| **ズン + トゥアン** | 「お忙しいところ、お時間頂戴いたしまして恐縮でございます。」 |

📝 **Ghi chú:**
- 【1】**Gõ 2 lần** — chuẩn JP business. 3 lần = WC code, 1 lần = thân mật. Nhẹ nhàng. Đợi 2 giây sau gõ trước khi mở.
- 【2】**Đứng tại ngưỡng bow 15°** — chân chưa bước qua ngưỡng, mở cửa, bow. KHÔNG vừa đi vừa bow.
- 【3】**「失礼いたします」** — câu cố định vào phòng. KHÔNG「Hi」/「すみません」/「こんにちは」.
- 【4】**Đóng cửa không quay lưng** — xoay 1/4 (mặt vẫn hơi nhìn trong phòng), tay phải hoặc trái sau lưng đẩy nhẹ cửa. Nếu chỗ chật xoay không được = quay xong xoay lại bow nhẹ với phòng.

---

## Cụm từ mẫu
> **「入室は『2回ノック・"失礼いたします"・15度bow・後ろ手で静かに閉扉』の4ステップ。」**
>
> *Vào phòng = gõ 2 lần / "失礼いたします" / bow 15° / đóng cửa không quay lưng.*

---

## Tránh
- **Không gõ cửa** dù cửa mở → vẫn gõ 2 lần
- "**Hi**" / "**こんにちは**" / "**すみません**" → 「失礼いたします」 cố định
- **Vừa đi vừa bow** → đứng tại ngưỡng, bow xong mới bước
- Đóng cửa **quay lưng** + tiếng "**BANG**" → xoay 1/4, tay sau lưng, đóng nhẹ
- Vào phòng **mở phone/laptop ngay** → đứng đợi senior chỉ chỗ ngồi rồi mới ngồi (rule 10)
- **Không bow khi senior trong phòng** → bow 30° khi nói câu chào CFO

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 入室 | にゅうしつ | Vào phòng |
| ノック | nokku | Gõ cửa |
| 失礼いたします | しつれいいたします | Xin phép |
| 閉扉 | へいひ | Đóng cửa |
| 後ろ手 | うしろで | Tay sau lưng |
| 敷居 | しきい | Ngưỡng cửa |
| 静かに | しずかに | Im lặng / nhẹ nhàng |
| お入りください | おはいりください | Mời vào (kính ngữ) |', 'system', 21, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008022, 8008, NULL, 'markdown_book', 'Rule 22 — Đi quanh văn phòng / nhà máy / 工場・社内案内', '# Rule 22 — Đi quanh văn phòng / nhà máy / 工場・社内案内
> **Luận điểm.** Khi được tour văn phòng / nhà máy: **đi sau guide 1-2 bước**, **không tự mở cửa**, **không chụp ảnh chưa được phép**, **không sờ thiết bị / monitor**, **không vào phòng kế bên dù cửa mở**. Hỏi trước khi chụp ("**お写真撮ってもよろしいでしょうか**"). Tour thường có **NDA implicit** — ngay cả không ký giấy. Vi phạm = mất hợp đồng + reputation.
>
> 社内案内は『ガイド後ろ1-2歩・勝手にドア開閉禁止・無断撮影禁止・機器/モニター非接触・隣室立入禁止』。撮影は事前許可必須。
>
> **Liên quan:** rule 09 (案内 host), rule 21 (入室), rule 23 (退室).

---

## Bối cảnh / 場面
11:30 sáng, sau meeting Phase 3 xong, Tanaka PMO offer "ご希望でしたら、開発部のフロアもご覧ください。Phase 3 development team の environment ご覧頂けます". Dũng + Tuấn đồng ý. Tour gồm: hành lang → dev room (gặp dev team) → phòng demo lab → cửa sổ ngắm Shinjuku.

---

## Hội thoại XẤU — chụp lén + tự mở cửa
*dẫn vào dev room · rút phone, chụp luôn không hỏi · thoáng cứng người · thấy cửa phòng kế bên đang mở, đi vào · vội theo · đã thấy whiteboard có thông tin client khác*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「こちらが Phase 3 開発チームです。」 |
| **トゥアン** | *(cạch — chụp ảnh dev team)* |
| **田中PMO** | 「あの…撮影は、ちょっと…」 |
| **ズン** | 「あ、この部屋は何ですか？」 |
| **田中PMO** | 「そこは、別件のmeeting中で…」 |
| **ズン** | 「あ、すみません！」 |

**Vì sao xấu:** (1) Chụp ảnh không hỏi = JP coi nghiêm trọng (privacy + IP). (2) Tự ý vào phòng cửa mở = vi phạm not-NDA implicit. (3) Có thể đã thấy info confidential client khác = legal risk. Tour kết thúc đột ngột, Tanaka phải report incident.

---

## Hội thoại TỐT — theo guide + xin phép
*dẫn ra hành lang · đi sau Tanaka 1-2 bước, mắt quan sát nhưng KHÔNG sờ gì · mở cửa dev room · trước khi rút phone · chụp ảnh group, không zoom mặt · đi qua phòng cửa mở · theo Tanaka, KHÔNG nhìn vào, KHÔNG bước gần · đến cửa sổ · quan sát cảnh, KHÔNG chụp khi chưa hỏi*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「こちらが Phase 3 開発チームのフロアです。」 |
| **ズン + トゥアン**【1】 | *(im lặng theo)* |
| **田中PMO** | 「Phase 3 dev team のリーダーをご紹介します。」 |
| **ズン** | 「**お写真を撮ってもよろしいでしょうか**【2】？team合影として記念に。」 |
| **田中PMO** | 「team の許可も取りますね。…許可出ました。dev team 全体のみ、個人特定不可の構図でお願いします。」 |
| **ズン** | 「ありがとうございます。」 |
| **田中PMO** | 「こちらは別件のmeeting中で、通り過ぎましょう。」 |
| **ズン + トゥアン**【3】 | *(im lặng đi qua)* |
| **田中PMO** | 「こちらから新宿の街並みがご覧いただけます。」 |
| **ズン** | 「**こちらの景色は撮影してもよろしいでしょうか**【4】？建物の確認を含む可能性があれば撮影しません。」 |
| **田中PMO** | 「景色だけでしたら問題ございません。」 |

📝 **Ghi chú:**
- 【1】**Đi sau 1-2 bước** — KHÔNG đi ngang Tanaka. KHÔNG đi trước. Mắt quan sát nhưng tay không sờ thiết bị / monitor / whiteboard.
- 【2】**「お写真を撮ってもよろしいでしょうか」** — câu cố định xin phép chụp. Nói rõ purpose ("team合影"). Chờ explicit OK.
- 【3】**Phòng cửa mở** — KHÔNG nhìn vào dù tò mò. Đi qua nhanh. Tanaka có thể nói "通りすぎいたしましょう" (chúng ta đi qua thôi) = nhận hint không vào.
- 【4】**Cảnh ngoài cửa sổ** — vẫn xin phép vì có thể chụp được tòa nhà khác (cty competitor) → "建物の確認を含む可能性があれば撮影しません" = self-aware proactive.

---

## Cụm từ mẫu
> **「社内案内は『ガイド後ろ1-2歩・無断撮影禁止・勝手にドア禁止・隣室立入禁止・写真は事前許可"よろしいでしょうか"』。」**
>
> *Tour văn phòng = đi sau guide / cấm chụp lén / không tự mở cửa / không vào phòng kế / xin phép chụp với "よろしいでしょうか".*

---

## Tránh
- **Chụp lén** dù chỉ "team selfie" → luôn xin phép trước
- Tự **mở cửa** phòng kế → đợi guide chỉ
- Vào **phòng cửa mở** vì tò mò → đi qua, KHÔNG nhìn vào
- **Sờ monitor / whiteboard / thiết bị** → mắt nhìn, tay đặt sau lưng
- Đi **trước hoặc ngang** guide → 1-2 bước phía sau
- Hỏi "**この案件のクライアントは誰?**" về thông tin trên whiteboard → KHÔNG bao giờ
- **Quên cảm ơn** sau tour → "貴重なご案内ありがとうございました" cuối tour

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 工場 | こうじょう | Nhà máy |
| 社内 | しゃない | Trong cty |
| 案内 | あんない | Dẫn / tour |
| 撮影 | さつえい | Chụp ảnh |
| 許可 | きょか | Cho phép |
| 機器 | きき | Thiết bị |
| 隣室 | りんしつ | Phòng kế bên |
| 立入禁止 | たちいりきんし | Cấm vào |
| 通りすぎる | とおりすぎる | Đi qua |
| 構図 | こうず | Bố cục (ảnh) |', 'system', 22, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008023, 8008, NULL, 'markdown_book', 'Rule 23 — Rời văn phòng trang trọng / 退室マナー', '# Rule 23 — Rời văn phòng trang trọng / 退室マナー
> **Luận điểm.** Rời meeting không phải chỉ là "đứng dậy đi ra cửa". Combo退室 Nhật = **đứng dậy → bow chính thức 30° → ra tới cửa quay lại bow lần 2 → 「失礼いたします」**. Ấn tượng cuối cùng được khắc sâu nhất, đừng phá nó bằng việc ngồi luôn chào hay ôm cặp chạy nhanh.
>
> 退室は『起立 → 30°お辞儀 → ドア前で再bow → 失礼いたします』の3点固定。最後の印象=最大記憶=日本式『去り際の美学』。
>
> **Liên quan:** rule 21 (入室), rule 22 (社内案内), rule 30 (お礼メール), rule 32 (お辞儀角度).

---

## Bối cảnh / 場面
Trụ sở 白鷗 Tokyo, meeting + tour Phase 3 kickoff vừa xong lúc 12:30. Dũng + Tuấn cần kết thúc gọn đẹp, được Tanaka PMO chỉ lối ra cửa. Đây là khoảnh khắc cuối khách Nhật sẽ ghi nhớ về team Tiên Phát.

---

## Hội thoại XẤU — ngồi luôn chào + vội rời
*vẫn ngồi*

| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「本日はありがとうございました。」 |
| **ズン** | 「はい、ありがとうございました。じゃ、帰ります。」 |
| **トゥアンリーダー** | （鞄を前で抱えてドアへ早足） |
| **田中PMO** | 「あ、出口はこちら…」 |
| **ズン** | （振り返らずドアを開けて出る） |

**Vì sao xấu:** (1) Ngồi luôn chào = thiếu lễ từ đầu đến cuối. (2) Ôm cặp trước ngực + bước vội = giống đang trốn chạy. (3) Đến cửa không quay lại = ấn tượng cuối = 0. Cả buổi meeting hay cũng bị 30 giây cuối phá hỏng.

---

## Hội thoại TỐT — đứng dậy → bow 30° → trước cửa bow lần 2
| Speaker | Câu |
|---------|-----|
| **田中PMO** | 「本日はお越しいただき、誠にありがとうございました。」 |
| **ズン** | （椅子を引いて起立、鞄は左手、お辞儀30°）「こちらこそ、貴重なお時間をありがとうございました。」【1】 |
| **トゥアンリーダー** | （同様に起立 → お辞儀30°）「Phase 3 kickoff、実りのあるお打ち合わせでした。」 |
| **田中PMO** | （手を平らに開いてドアを指す）「出口はあちらでございます。エレベーターまでご案内いたします。」【2】 |
| **ズン** | 「恐れ入ります、お願いいたします。」 |
| **ズン** | （ドア前で振り返り、再度お辞儀30°）【3】 |
| **トゥアンリーダー** | 「失礼いたします。」【4】 |
| **田中PMO** | 「お気をつけてお帰りください。」 |

📝 **Ghi chú:**
- 【1】**Đứng dậy hơi sau host hoặc cùng lúc** — bow 30° lúc rời sâu hơn lúc vào. Cặp giữ tay trái để tay phải sẵn sàng cho mọi cử chỉ.
- 【2】**Tanaka mở bàn tay phẳng chỉ cửa** — đây là ushering chính thức, khách phải xoay người theo hướng đó, không tự đoán.
- 【3】**Trước cửa quay lại bow lần 2** — ''mỹ học khi rời'' kiểu Nhật. Ấn tượng cuối nhớ lâu nhất.
- 【4】**「失礼いたします」** — câu cố định khi rời, đi kèm bow 30° sâu. Pair với câu lúc vào.

---

## Cụm từ mẫu
> **「貴重なお時間をありがとうございました。失礼いたします。」**
>
> *Cảm ơn anh đã dành thời gian quý báu ạ. Em xin phép.*

---

## Tránh
- Ngồi luôn chào — bắt buộc đứng dậy trước khi nói câu cảm ơn
- Ôm cặp trước ngực + sải bước vội — giống đang trốn
- Mở cửa đi luôn không quay lại — mất hoàn toàn ấn tượng cuối
- Bow lúc rời nông hơn lúc vào — ngược logic ''gratitude tăng dần''
- Quay lưng hoàn toàn về phía host khi đi ra — luôn giữ thân nửa hướng host

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 退室 | たいしつ | Rời phòng |
| 起立 | きりつ | Đứng dậy |
| お辞儀 | おじぎ | Cúi chào |
| 失礼いたします | しつれいいたします | Em xin phép (rời) |
| 出口 | でぐち | Lối ra |
| 振り返る | ふりかえる | Quay đầu lại |
| 貴重な | きちょうな | Quý báu |', 'system', 23, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008024, 8008, NULL, 'markdown_book', 'Rule 24 — Mời khách dinner formal / 接待ディナーへの招待', '# Rule 24 — Mời khách dinner formal / 接待ディナーへの招待
> **Luận điểm.** Tiếp khách (接待) cấp CFO không phải "rủ ăn tối". Combo bắt buộc: **đặt nhà hàng từ D-2 + phòng riêng + course chốt trước + hỏi dị ứng / kiêng / rượu + xe đưa đón 2 chiều**. Đặt cùng ngày = chỉ còn quán B = mất tầm. Để khách tự chọn menu = đẩy gánh nặng quyết định.
>
> CFO同席の接待は『D-2予約・個室・コース事前確定・食事制限確認・送迎手配』の5点を全部揃えて初めて成立。
>
> **Liên quan:** rule 25 (host vs guest), rule 26 (乾杯), rule 30 (お礼メール).

---

## Bối cảnh / 場面
Đoàn 白鷗 3 người (Ōgaki, Matsumoto, CFO Nakamura) + Tanaka PMO sang HCMC chiều đầu. Dũng + Hà CTO chuẩn bị dinner cho mai 18:30 tại nhà hàng Nhật cao cấp Q1. Không thể đặt sáng cùng ngày.

---

## Hội thoại XẤU — sáng cùng ngày mới đặt + để khách tự chọn menu
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、明晩の dinner、レストラン決まった？」 |
| **ズン** | 「明日の朝予約しようかと…現地でmenu見ながら大垣さん達に選んでもらおうかなと…」 |
| **ハーCTO** | 「それは接待じゃない。CFO 同席で当日予約=B級店しか空いてない。menu丸投げ=客に決断負担。食事制限+alcohol確認も未だろ？」 |
| **ズン** | 「あ、すみません…」 |

**Vì sao xấu:** (1) Đặt cùng ngày = nhà hàng tốt full, phải đi quán thường = mất tầm với CFO. (2) Menu để khách chọn tại chỗ = không biết dị ứng / kiêng = risk offensive. (3) Không đặt phòng riêng = mất privacy cho cuộc nói chuyện business. (4) Không hỏi rượu / bia = khách kiêng rượu sẽ awkward.

---

## Hội thoại TỐT — đặt từ D-2 + chốt course trước + hỏi dị ứng
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、明晩の白鷗様dinner、状況共有してくれる？」 |
| **ズン** | 「① 店: Q1の和食「〇〇」、個室・6名・コース 〇〇万VND/人 (D-2予約済)【1】 ② 食事制限事前確認済 (中村CFO: 生魚OK/甲殻類NG、松本様: 制限なし、大垣様: 軽め希望)【2】 ③ alcohol: 日本酒+ワイン両方準備、ノンアルも【3】。」 |
| **ハーCTO** | 「送迎は？」 |
| **ズン** | 「送迎タクシー2台手配済。18:00 ホテルロビーお迎え、18:30 レストラン到着、終了後ホテルまで送り。」【4】 |
| **ハーCTO** | 「完璧。当日はホスト側着席は私+ズン+トゥアン+フオン副部長。よろしく。」 |

📝 **Ghi chú:**
- 【1】**Phòng riêng + course chốt trước** = privacy + đẳng cấp. Có CFO = course top + wine pairing là chuẩn. Số người + 1 ghế buffer.
- 【2】**Confirm dị ứng / tôn giáo / không thích** qua Tanaka PMO trước D-3. Hỏi tại chỗ = thất lễ. Note rõ từng người.
- 【3】**Default sake + vang + nonalc** → khách có lựa chọn. CFO không uống cũng không bị áp lực.
- 【4】**Hotel ↔ restaurant 2 chiều** = chuẩn tiếp khách. Không để khách tự đặt xe — mất tầm host.

---

## Cụm từ mẫu
> **「ささやかではございますが、お食事の席をご用意させていただきました。お食事の制限などございましたら、お気軽にお知らせください。」**
>
> *Tuy đơn sơ, bên em đã chuẩn bị bàn tiệc ạ. Anh chị có dị ứng hoặc kiêng gì xin thoải mái cho em biết.*

---

## Tránh
- Đặt cùng ngày — chỉ còn quán B
- Phòng chung cho dinner business — không có privacy
- Để khách tự chọn từ menu tại chỗ — đẩy gánh nặng cho khách
- Không hỏi dị ứng / rượu trước — risk offensive cao
- Không đặt xe đưa đón — host chưa chuẩn

---

## Template — Briefing接待 ディナー (host check trước với CTO)
```
【接待ディナー準備 共有】
日時: __年__月__日 (__) 18:30 開始
店: ___________ (Q1 / 区, 和食 / etc.)
形態: 個室・__名 (host __ + guest __)
コース: _____ VND/人 (D-2 予約済)
飲料: 日本酒 / ワイン / ノンアル 用意

食事制限 (D-3 までに田中PMO経由確認):
- 中村CFO: ________
- 大垣様: ________
- 松本様: ________

送迎: タクシー__台
- お迎え 18:00 ホテルロビー
- 帰り 終了後ホテルまで

ホスト側着席: _____________
```

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 接待 | せったい | Tiếp khách |
| 個室 | こしつ | Phòng riêng |
| 食事制限 | しょくじせいげん | Hạn chế ăn uống / dị ứng |
| 甲殻類 | こうかくるい | Giáp xác |
| 送迎 | そうげい | Đưa đón |
| 手配 | てはい | Sắp xếp / đặt |
| ささやか | ささやか | Khiêm nhường, đơn sơ |', 'system', 24, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008025, 8008, NULL, 'markdown_book', 'Rule 25 — Vai trò host vs guest / ホスト・ゲストの作法', '# Rule 25 — Vai trò host vs guest / ホスト・ゲストの作法
> **Luận điểm.** Tiếp khách kiểu Nhật = host gánh **3 trách nhiệm trọn gói**: **order (chốt menu trước), pour (rót rượu liên tục), pay (trả tiền kín đáo)**. Khách KHÔNG làm gì cả. Chia tiền (割り勘) trong 接待 = phá hủy khái niệm. Khách tự rót cho mình = host bỏ vai.
>
> 接待 host = 『order・pour・pay』の3点全責任。客は何もしない。割り勘提案は接待概念崩壊。
>
> **Liên quan:** rule 24 (đặt dinner), rule 26 (乾杯), rule 33 (文化衝突).

---

## Bối cảnh / 場面
Phòng riêng nhà hàng Nhật Q1, dinner bắt đầu 18:30. Bên host: Hà CTO, chị Hương phó phòng, Dũng, Tuấn. Bên guest: CFO Nakamura, Ōgaki, Matsumoto, Tanaka PMO. Đây là cú test toàn diện cho team về tinh thần host.

---

## Hội thoại XẤU — host bắt khách order + khách tự rót
| Speaker | Câu |
|---------|-----|
| **ズン** | （menuを大垣さんに渡す）「何にされますか？」 |
| **大垣営業部長** | 「あ、では…どれが…」 |
| **松本PM** | （自分のglassに自分でビールを注ぐ） |
| **ズン** | 「じゃ、最後は割り勘で…」 |
| **ハーCTO** | （後で）「ズン、接待は host が全責任。今日は私が請求書受け取る。次回からはorder+pour+payの3点徹底。」 |

**Vì sao xấu:** (1) Mở menu hỏi ''anh chọn gì'' = đẩy gánh nặng cho khách. (2) Khách tự rót cho mình = host bỏ vai chăm sóc. (3) Đề xuất chia tiền = phá cả khái niệm tiếp khách. CFO sẽ ngầm đánh giá host chưa được train.

---

## Hội thoại TỐT — host order trước + host rót + host trả
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「本日はお越しいただき、誠にありがとうございます。」 |
| **ズン** | 「コースは事前にお決めいただきました。お飲み物は日本酒・ワイン・ノンアルご用意しております。」【1】 |
| **トゥアンリーダー** | （瓶を両手で持ち、ラベルを上にして大垣様のglassへ）「お注ぎいたします。」【2】 |
| **大垣営業部長** | （glassを両手で持ち上げて受ける）「恐れ入ります。」 |
| **ズン** | （中村CFOのglassが空になりそう→すぐ pour）「中村様、もう一杯いかがでしょうか。」【3】 |
| **中村CFO** | 「ありがとう、頂戴いたします。」 |
| **ハーCTO** | （中座してこっそりleft、bill決済 → 戻る）「お会計はこちらで承りました。」【4】 |
| **中村CFO** | 「ご馳走になりました、ありがとうございました。」 |

📝 **Ghi chú:**
- 【1】**Host pre-decision告知** = khách khỏi phải chọn. Không mở menu trước mặt khách. Course đã chốt qua nhà hàng từ D-2.
- 【2】**「お注ぎいたします」** — cầm chai bằng 2 tay (hoặc tay phải + tay trái đỡ), nhãn hướng lên. Ly khách thì khách cầm 2 tay nâng đón.
- 【3】**Host canh ly khách liên tục** = rót trước khi cạn. Hành động trước khi khách phải tự rót = score.
- 【4】**「お会計はこちらで承りました」** — bill được host thanh toán bí mật trước khi tan tiệc, không rút ví trước mặt khách. Đây là tinh hoa tiếp khách Nhật.

---

## Cụm từ mẫu
> **「お注ぎいたします。」 / 「お会計はこちらで承りました。」**
>
> *Em xin rót ạ. / Hóa đơn bên em đã lo rồi ạ.*

---

## Tránh
- Đẩy menu cho khách chọn — host quyết menu từ D-2
- Để khách tự rót cho mình — luôn rót trước cho khách
- Cụng ly trước khi 上位 host hô kanpai
- Đề xuất 割り勘 (chia tiền) — phá khái niệm接待
- Mang bill về bàn để thanh toán trước mặt khách — đi ra ngoài thanh toán kín đáo

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| お注ぎいたします | おつぎいたします | Em xin rót |
| 頂戴いたします | ちょうだいいたします | Tôi xin nhận |
| お会計 | おかいけい | Hóa đơn |
| 承りました | うけたまわりました | Đã nhận / đã lo |
| ご馳走 | ごちそう | Sự thiết đãi |
| 割り勘 | わりかん | Chia tiền (NG cho接待) |
| 中座 | ちゅうざ | Rời bàn giữa chừng |', 'system', 25, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008026, 8008, NULL, 'markdown_book', 'Rule 26 — Cụng ly 乾杯 chuẩn / 乾杯のマナー', '# Rule 26 — Cụng ly 乾杯 chuẩn / 乾杯のマナー
> **Luận điểm.** Kanpai không phải "ai hô cũng được, cụng càng kêu càng vui". Quy tắc cứng: **(1) Quyền hô = senior bên host. (2) Ly mình hạ hơi thấp hơn ly senior khách (CFO Nakamura). (3) Chạm nhẹ, không cụng kêu cốp. (4) Đợi host nhấp trước rồi mình mới uống.** Sai 1 trong 4 = đảo trên dưới hoặc thiếu sang.
>
> 乾杯=『host senior 発声・客側上位より僅か低く・軽く触れるだけ・host より先に飲まない』の4点。
>
> **Liên quan:** rule 25 (host vs guest), rule 32 (お辞儀角度).

---

## Bối cảnh / 場面
Phòng riêng nhà hàng Q1, mọi người vừa ngồi xong lúc 18:35. Hà CTO sẽ hô kanpai mở màn, cả team Tiên Phát phải hạ ly thấp hơn ly CFO Nakamura — đây là tín hiệu kính trọng cấp cao.

---

## Hội thoại XẤU — uống trước khi hô + ly cao hơn senior
| Speaker | Câu |
|---------|-----|
| **トゥアンリーダー** | （発声前に一口飲む）「あ、美味しい。」 |
| **ハーCTO** | 「では、乾杯！」 |
| **ズン** | （自分のglassを中村CFOのglassより高く合わせる、カチンと音）「乾杯！」 |
| **中村CFO** | （沈黙、軽く頷く） |

**Vì sao xấu:** (1) Uống trước khi có hô = phá thứ tự. (2) Ly cao hơn ly CFO = đảo trên dưới (signal "tôi cao hơn anh"). (3) Cụng mạnh kêu ''cốp'' = vỡ ly + phản cảm. CFO im lặng = đã chấm điểm âm.

---

## Hội thoại TỐT — host hô → cả nhóm hạ ly thấp hơn CFO
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「皆様、本日はお越しいただきありがとうございます。Phase 3 成功と末永いお付き合いを願いまして…乾杯！」【1】 |
| **中村CFO** | 「乾杯。」 |
| **ズン** | （自分のglassを中村CFOのglassより僅かに低く合わせ、軽く触れる）「乾杯。」【2】【3】 |
| **トゥアンリーダー** | （同様にglassを低く、host のハーCTO が一口飲んでから自分も飲む）【4】 |
| **松本PM** | 「ありがとうございます。Phase 3、よろしくお願いします。」 |

📝 **Ghi chú:**
- 【1】**Quyền hô = senior bên host** — hôm nay là Hà CTO. Khách hô trước = sai. Câu pattern: 「[công ty / dự án] の [thành công] と [継続関係] を願いまして、乾杯！」
- 【2】**Thấp hơn ly senior = kính trọng** — cùng cấp = ngang. Cấp dưới = thấp nhất. Linh (junior) phải thấp hơn cả Dũng.
- 【3】**Chạm nhẹ + giao mắt cười** = chính thức. Cụng mạnh = vỡ ly + thiếu sang.
- 【4】**Cụng xong, host nhấp trước, khách uống sau** — thứ tự uống cũng giống thứ tự hô.

---

## Cụm từ mẫu
> **「Phase 3 成功と末永いお付き合いを願いまして、乾杯！」**
>
> *Chúc Phase 3 thành công và quan hệ dài lâu, kanpai!*

---

## Tránh
- Uống trước khi senior host hô — phá thứ tự
- Ly cao hơn ly senior khách — đảo trên dưới
- Cụng mạnh kêu cốp — vỡ ly + thiếu sang
- Hô kanpai khi khách chưa cầm ly — ép tốc độ
- Junior cụng ngang ly Dũng / senior — phải thấp hơn cả senior bên mình

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 乾杯 | かんぱい | Cụng ly / kanpai |
| 発声 | はっせい | Hô (lời chúc) |
| 末永い | すえながい | Lâu dài |
| お付き合い | おつきあい | Quan hệ giao thiệp |
| 願いまして | ねがいまして | Mong / chúc |
| 上位者 | じょういしゃ | Người cấp cao |
| 軽く触れる | かるくふれる | Chạm nhẹ |', 'system', 26, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008027, 8008, NULL, 'markdown_book', 'Rule 27 — Cuộc trò chuyện không công việc / 雑談トピック', '# Rule 27 — Cuộc trò chuyện không công việc / 雑談トピック
> **Luận điểm.** Khi câu chuyện business hết, đừng bỏ trống — và đừng bịa. Có **safe topic 4 nhóm**: **ẩm thực (món đang ăn) · sở thích (vòng qua "cuối tuần") · du lịch (gợi mở lần sau) · thời tiết / mùa**. Có **NG topic 3 nhóm cấm tuyệt đối**: **chính trị · tuổi · lương**. Sai 1 cái = bữa dinner còn 30 phút awkward.
>
> 雑談 safe = 食・趣味・観光・天気。NG = 政治・年齢・給与。
>
> **Liên quan:** rule 25 (ホスト・ゲスト), rule 33 (文化衝突).

---

## Bối cảnh / 場面
Giữa bữa dinner Q1 lúc 19:30, khoảng nghỉ giữa món. Dũng + Tuấn cần nối chuyện với Ōgaki, Matsumoto. Đây là test cho khả năng "small talk business" — không phải tiếng Nhật cao siêu, mà là chọn topic đúng.

---

## Hội thoại XẤU — hỏi chính trị, tuổi, lương
| Speaker | Câu |
|---------|-----|
| **トゥアンリーダー** | 「大垣様、最近の日本の首相どう思われますか？」 |
| **大垣営業部長** | （沈黙）「…そうですね、ちょっと…」 |
| **ズン** | 「あ、松本様、お年は？」 |
| **松本PM** | （笑顔崩れる）「…まあ、それは…」 |
| **トゥアンリーダー** | 「白鷗のPMの給与水準ってどれぐらい？」 |
| **松本PM** | （無言で水を飲む） |

**Vì sao xấu:** (1) Bình chính trị Nhật = khách awkward, không trả lời được mà cũng không đồng ý / phản đối. (2) Hỏi thẳng tuổi = bất lịch sự. (3) Lương = taboo cấp tối đa. 3 cái này = NG pattern hay ra trong BJT.

---

## Hội thoại TỐT — triển khai theo safe topic ẩm thực, du lịch, sở thích
| Speaker | Câu |
|---------|-----|
| **ズン** | 「今お召し上がりの和牛、A5ランクで地元の方にも人気なんです。お味いかがでしょうか？」【1】 |
| **松本PM** | 「とても柔らかく、東京で食べる和牛より風味が濃い気がします。」 |
| **トゥアンリーダー** | 「松本様は週末などはどうお過ごしですか？」【2】 |
| **松本PM** | 「登山が趣味で、月1回は奥多摩あたりに。最近はカメラも始めまして。」 |
| **ズン** | 「次回ベトナムにお越しの際は、ダラットの高原がおすすめです。涼しくて景色も綺麗で、写真好きの方が多くいらっしゃいます。」【3】 |
| **松本PM** | 「それは魅力的ですね。次回お休みを取って訪れてみたいです。」 |
| **大垣営業部長** | 「今年のHCMCは、雨季の入りはどうですか？」【4】 |
| **ズン** | 「今年は例年より少し遅れまして、5月中旬から本格的になりそうです。」 |

📝 **Ghi chú:**
- 【1】**Món đang ăn** = chủ đề chung chắc chắn. Khách dễ kể chi tiết, tự nhiên. Hỏi cảm nhận về vị + chia sẻ background nguyên liệu.
- 【2】**Hỏi sở thích vòng qua "cuối tuần" / "ngày nghỉ"** = gián tiếp. Hỏi thẳng「趣味は何ですか」hơi formal cứng.
- 【3】**Du lịch = dẫn dắt tự nhiên cho lần sau quay lại** — gợi 2-3 quán ăn / cà phê / điểm du lịch ở HCMC, Đà Lạt cụ thể.
- 【4】**Thời tiết / mùa = safe topic vạn năng**. Khi bí, "tuần này HCMC..." / "sakura Tokyo..." để nối.

---

## Cụm từ mẫu
> **「週末などはどうお過ごしですか？」 / 「次回ベトナムにお越しの際は、〇〇がおすすめです。」**
>
> *Cuối tuần anh thường làm gì ạ? / Lần sau anh sang Việt Nam, em recommend OO.*

---

## Tránh
- Hỏi về thủ tướng / đảng phái / bầu cử Nhật — politics taboo
- Hỏi tuổi trực tiếp 「お年は？」 — vòng qua "thế hệ" hoặc không hỏi
- Hỏi lương / thu nhập / nhà ở (mua hay thuê) — privacy taboo
- Bình luận tôn giáo Nhật — risk cao
- Khoe Vietnam là rẻ / nhân công thấp — nghe như xúc phạm guest''s home

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 雑談 | ざつだん | Trò chuyện ngẫu nhiên |
| お召し上がり | おめしあがり | Đang dùng (kính ngữ) |
| 風味 | ふうみ | Vị / hương vị |
| 週末 | しゅうまつ | Cuối tuần |
| 趣味 | しゅみ | Sở thích |
| 雨季 | うき | Mùa mưa |
| お越しの際 | おこしのさい | Khi sang / khi đến |', 'system', 27, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008028, 8008, NULL, 'markdown_book', 'Rule 28 — Trao omiyage (quà) / お土産の渡し方', '# Rule 28 — Trao omiyage (quà) / お土産の渡し方
> **Luận điểm.** Trao omiyage chuẩn Nhật = **(1) Lấy ra khỏi túi giấy, (2) xoay mặt chữ về phía khách, (3) đưa 2 tay, (4) câu khiêm nhường「つまらないものですが」, (5) chỉ giải thích "xuất xứ + cách dùng" (KHÔNG nói giá / brand / hiếm), (6) trao theo thứ tự senior**. Đưa cả túi + khoe giá = phá hết tinh thần Nhật.
>
> お土産=『袋から出す→文字向き相手→両手→つまらないもの but→産地+用途→上位者順』6点固定。
>
> **Liên quan:** rule 24 (đặt dinner), rule 29 (お土産受取), rule 33 (文化衝突).

---

## Bối cảnh / 場面
Cuối bữa dinner Q1 lúc 21:00, sau trà kết thúc course. Dũng trao omiyage cà phê VN cao cấp (đóng gói riêng) + túi giấy cho Ōgaki, Matsumoto, CFO Nakamura, Tanaka PMO. Linh ngồi cạnh quan sát, đã được rehearse trước.

---

## Hội thoại XẤU — đưa cả túi + thuyết minh quá đà
| Speaker | Câu |
|---------|-----|
| **ズン** | 「あ、これお土産です。」（紙袋ごと机に置く） |
| **ズン** | 「ベトナムの高級ブランドのコーヒーで、5千円もするんですよ。」 |
| **大垣営業部長** | （少し戸惑い）「あ、はい、ありがとうございます…」 |
| **リン** | （後で）「ズン先輩、紙袋ごとってダメだったんですよね…？」 |

**Vì sao xấu:** (1) Đưa cả túi giấy = NG. Phải lấy quà ra khỏi túi, đưa 2 tay cho khách. (2) "Brand cao cấp 5 nghìn yên đó" = khoe giá = ngược tinh thần Nhật khiêm nhường. (3) Đặt bừa lên bàn không trao tận tay từng người = thất lễ.

---

## Hội thoại TỐT — lấy ra khỏi túi, đưa 2 tay + ''tsumaranai mono desu ga''
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「それでは、ささやかではございますが、ベトナムからお土産をご用意いたしました。ズン、お渡ししてください。」 |
| **ズン** | 「中村様、つまらないものですが、お受け取りください。」【1】 |
| **ズン** | （紙袋から出して、文字向きを相手側にし、両手で差し出す）【2】 |
| **ズン** | 「ベトナムの高地で取れたコーヒーで、皆様で召し上がっていただければ幸いです。」【3】 |
| **中村CFO** | （起立気味で両手で受け取る）「頂戴いたします。お心遣いありがとうございます。」 |
| **ズン** | （続いて大垣様 → 松本様 → 田中様の順で同じ手順）【4】 |
| **リン** | （ズンの隣で観察、メモ）「紙袋から出す → 文字向き → 両手 → 上位者順、ですね。」 |

📝 **Ghi chú:**
- 【1】**「つまらないものですが」** — câu khiêm nhường cố định. Dù thật sự cao cấp vẫn nói "không đáng gì". Khoe giá / brand / độ hiếm = đại kỵ.
- 【2】**Túi chỉ để mang** — lúc trao = lấy ra khỏi túi, hướng chữ về phía khách, đưa 2 tay. Túi giấy bỏ đi (kiểu Nhật).
- 【3】**Giải thích = "xuất xứ + cách dùng"** thôi. Giá tuyệt đối không. "Cả nhà cùng dùng" = signal có thể chia trong cty.
- 【4】**Thứ tự**: CFO Nakamura → trưởng Ōgaki → PM Matsumoto → PMO Tanaka. Trao từng người, mỗi người đứng / nhổm dậy nhận bằng 2 tay.

---

## Cụm từ mẫu
> **「つまらないものですが、お受け取りください。皆様で召し上がっていただければ幸いです。」**
>
> *Đây là chút quà mọn, mong anh nhận giúp em ạ. Mong cả nhà mình cùng thưởng thức.*

---

## Tránh
- Đưa cả túi giấy — NG, phải lấy ra
- Khoe giá / brand / độ hiếm — phá tinh thần khiêm nhường
- Đặt bừa lên bàn không trao tận tay — thất lễ
- Giục khách mở quà tại chỗ — ép khách
- Túi giấy logo công ty mình to chiếm hết — trông như quảng cáo

---

## Template — Checklist Omiyage chuẩn bị + trao
```
【お土産チェックリスト — VN出発前 + 当日渡し】

■ A. Chọn quà (D-3 trước)
□ Xuất xứ VN (cà phê / trà / bánh / thêu / sơn mài)
□ Đóng gói riêng từng phần (chia trong cty được)
□ HSD còn 1 tháng+
□ Giá: 1,500-3,000 yên/người (đắt quá NG)
□ Số lượng: 担当者数 + buffer 2

■ B. Đóng gói
□ Bao ngoài (washi / giấy nền tối)
□ Túi giấy logo nhẹ (NG: logo to)

■ C. Thời điểm trao
□ Meeting: sau khi xong, trước rời phòng
□ Dinner: sau trà cuối course
□ NG: trao đầu buổi (quà nằm trên bàn cả buổi)

■ D. Cách trao (từng người)
□ (1) Lấy ra khỏi túi giấy
□ (2) Xoay mặt chữ về phía khách
□ (3) Đưa 2 tay
□ (4) 「つまらないものですが」 / 「ささやかではございますが」
□ (5) Giải thích: "xuất xứ + cách dùng" (giá NG)
□ (6) Thứ tự senior (CFO → 部長 → PM → 担当者)

■ E. NG list
□ ✗ Đưa cả túi
□ ✗ Khoe giá / brand
□ ✗ Đặt bừa
□ ✗ Giục mở quà
□ ✗ Logo cty mình to
```

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| お土産 | おみやげ | Quà / omiyage |
| つまらないもの | つまらないもの | Vật không đáng gì |
| 紙袋 | かみぶくろ | Túi giấy |
| 差し出す | さしだす | Đưa ra |
| 召し上がる | めしあがる | Dùng / ăn (kính ngữ) |
| お心遣い | おこころづかい | Tấm lòng / sự quan tâm |
| 高地 | こうち | Vùng cao |', 'system', 28, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008029, 8008, NULL, 'markdown_book', 'Rule 29 — Nhận omiyage / お土産の受け取り', '# Rule 29 — Nhận omiyage / お土産の受け取り
> **Luận điểm.** Nhận omiyage chuẩn Nhật = **(1) Đưa 2 tay đón, (2) câu cố định「頂戴いたします」+ bow 30°, (3) đặt lên 上座 (kamiza) của bàn, (4) KHÔNG mở tại chỗ, (5) báo "lát em mời cả phòng cùng dùng", (6) gửi thank-you mail trong 24h**. Mở quà tại chỗ + hỏi giá = NG cấp tối đa.
>
> お土産受領=『両手→「頂戴いたします」+30°礼→机上座置き→即開封せず→share signal→24h以内お礼メール』6点。
>
> **Liên quan:** rule 28 (お土産渡し), rule 33 (文化衝突).

---

## Bối cảnh / 場面
Sáng hôm sau, PM Matsumoto bên 白鷗 sang văn phòng HCMC mang theo yokan Toraya (Tokyo) làm quà. Bên nhận: chị Hương phó phòng + Dũng + Linh. Linh là junior, đây là lần đầu được học cách nhận đúng.

---

## Hội thoại XẤU — mở ngay + hỏi giá + bình luận chất lượng
| Speaker | Câu |
|---------|-----|
| **松本PM** | 「東京からのお土産です。よろしければ皆様で。」 |
| **リン** | 「わ、虎屋ですか！」（その場で包みを開ける）「これって有名ですよね？値段は…？」 |
| **松本PM** | （少し戸惑い）「あ、まあ…」 |
| **フオン副部長** | （後でリンに）「リン、お土産は『頂戴いたします』だけで、その場で開けない。値段は絶対 NG。」 |

**Vì sao xấu:** (1) Mở quà tại chỗ = thất lễ (signal "tôi quan tâm vật chất hơn tấm lòng"). (2) Hỏi giá = NG cấp tối đa. (3) Khen "trông ngon" / "Toraya nổi tiếng" tại chỗ = nông. Đúng = mở sau giờ làm việc + thank-you mail trong 24h.

---

## Hội thoại TỐT — nhận 2 tay + ''tôi xin nhận'' + mở sau
| Speaker | Câu |
|---------|-----|
| **松本PM** | 「東京からのお土産です。皆様で召し上がっていただければ。」 |
| **フオン副部長** | （両手で受け取り、お辞儀30°）「頂戴いたします。お心遣いありがとうございます。」【1】 |
| **フオン副部長** | （受け取った包みを机の上座側に丁寧に置く）【2】 |
| **松本PM** | 「羊羹で、日持ちもしますので。」 |
| **フオン副部長** | 「ありがとうございます。後ほど社内で皆でいただきます。」【3】 |
| **リン** | （包みは開けず、机に置いたまま） |
| **フオン副部長** | （後ほど松本様にメール）「本日は素敵なお土産をいただき、ありがとうございました。社内で皆でおいしくいただきました。後ほど改めて御礼のメールを送らせていただきます。」【4】 |

📝 **Ghi chú:**
- 【1】**「頂戴いたします」** — câu nhận cố định, formal hơn 「ありがとう」. Đi kèm bow 30°. Nhổm dậy nhẹ nếu đang ngồi.
- 【2】**Đặt 2 tay → đặt lên phía 上座 (kamiza) của bàn đàng hoàng**. Để dưới sàn = NG. Để góc bàn lăn lóc = NG.
- 【3】**「皆でいただきます」** = báo sẽ chia → tôn trọng ý người gửi (''cả nhà mình''). Mang về nhà ăn riêng = signal sai.
- 【4】**Mail cảm ơn trong 24h** = follow-up chính thức. Bình luận chất lượng viết trong mail tử tế, không phải tại bàn.

---

## Cụm từ mẫu
> **「頂戴いたします。お心遣いありがとうございます。後ほど社内で皆でいただきます。」**
>
> *Em xin nhận. Cảm ơn tấm lòng của anh ạ. Lát nữa em mời cả phòng cùng dùng.*

---

## Tránh
- Mở quà tại chỗ — signal "quan tâm vật chất"
- Hỏi giá / nơi mua — taboo cấp cao nhất
- Bình luận chất lượng "trông ngon quá" tại bàn — nông
- Nhận 1 tay / để dưới chân / để bừa lên bàn — thất lễ
- Quên gửi thank-you mail trong 24h — mất follow-up

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 頂戴いたします | ちょうだいいたします | Tôi xin nhận |
| お心遣い | おこころづかい | Tấm lòng |
| 上座 | かみざ | Phía trên (chỗ trang trọng) |
| 羊羹 | ようかん | Yokan (bánh ngọt) |
| 日持ち | ひもち | Để được lâu |
| 後ほど | のちほど | Lát nữa / sau |
| 御礼 | おれい | Lời cảm ơn |', 'system', 29, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008030, 8008, NULL, 'markdown_book', 'Rule 30 — After-dinner thank-you mail / 食事後のお礼メール', '# Rule 30 — After-dinner thank-you mail / 食事後のお礼メール
> **Luận điểm.** Mail cảm ơn sau dinner = **24h trong giới hạn vàng** (lý tưởng = sáng hôm sau 8-9h). Bốn yếu tố: **(1) To riêng từng người + CC sếp (BCC = đại kỵ), (2) trích 1-2 chủ đề cụ thể từ buổi dinner, (3) hẹn lần sau với mốc thời gian rõ, (4) độ dài 200-300 chữ JP**. 3 ngày sau gửi = mất "độ tươi". BCC chung = mất cảm giác cá nhân hóa.
>
> お礼メール=『24h以内・個別To+CC上司 (BCC禁忌)・具体話題引用1-2点・次回約束 with timeline・200-300字』。
>
> **Liên quan:** rule 24 (đặt dinner), rule 25 (host-guest), rule 28 (お土産).

---

## Bối cảnh / 場面
Sáng sau dinner Q1 lúc 8:30. Dũng cần gửi thank-you mail tới Ōgaki, Matsumoto, CFO Nakamura, Tanaka PMO trong 24h. Hà CTO review draft trước khi gửi.

---

## Hội thoại XẤU — gửi sau 3 ngày + quá ngắn + dùng BCC chung
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、昨日のお礼メールは送った？」 |
| **ズン** | 「あ、まだです。今週中に書こうかと…」 |
| **ハーCTO** | 「24時間以内が原則。3日後では鮮度切れ。To別+CC上司で一通ずつ書け。BCC一括NG。」 |
| **ズン** | 「あ、すみません！今すぐ書きます。」 |

**Vì sao xấu:** (1) 3 ngày sau = mất độ tươi của lời cảm ơn — khách đã quên một phần chi tiết. (2) Chỉ "hôm qua cảm ơn anh" = không có nhiệt. (3) BCC nhiều người = mất cảm giác cá nhân — khách thấy ngay là form mail. 3 cái này = negative cho quan hệ.

---

## Hội thoại TỐT — gửi sáng hôm sau + To riêng + đề cập cụ thể
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、昨日のお礼メール、ドラフト見せて。」 |
| **ズン** | 「翌朝8時送信予定【1】。To = 中村CFO様 / 大垣様 / 松本様 / 田中様 個別4通、CC = ハーCTO+フオン副部長【2】。各メールに昨夜の和牛のご感想・松本様の登山のお話を1-2行引用しております【3】。」 |
| **ハーCTO** | 「いいね。次回約束は入れた？」 |
| **ズン** | 「はい、『次回はぜひ当方からも東京へお伺いし、5月のお花見の頃に改めて』と入れています。」【4】 |
| **ハーCTO** | 「完璧。8時に送信して、午後にハーから中村CFOへ補足の謝意メールも送る。」 |

📝 **Ghi chú:**
- 【1】**Lý tưởng = sáng hôm sau vừa đến cty 8-9h** — trước khi sang ngày mới = tươi + signal chỉn chu. 24h là giới hạn cứng.
- 【2】**To = cá nhân từng người. CC = sếp mình + thư ký khách / Tanaka PMO. BCC = đại kỵ** — khách Nhật check header thấy BCC sẽ giảm điểm.
- 【3】**Trích 1-2 điểm cụ thể từ buổi dinner** = signal "tôi nghe kỹ". Cá nhân hóa đáng nhớ → tăng nhiệt. Mỗi mail có 1-2 chi tiết riêng cho người đó.
- 【4】**Hứa hẹn lần sau với timeline cụ thể** ("tháng 5", "mùa hoa anh đào") = signal muốn duy trì quan hệ.

---

## Cụm từ mẫu
> **「昨夜はお忙しい中、貴重なお時間を頂戴し、誠にありがとうございました。次回はぜひ当方からも東京へお伺いさせていただきます。」**
>
> *Tối qua anh bận mà vẫn dành thời gian quý báu, em xin chân thành cảm ơn ạ. Lần sau bên em xin được đến thăm Tokyo.*

---

## Tránh
- Gửi sau 3+ ngày — mất "độ tươi"
- BCC nhiều người chung 1 mail — mất cá nhân hóa
- Chỉ 1 dòng "hôm qua cảm ơn anh" — không có nhiệt
- Không trích chủ đề cụ thể — giống form mail
- Hẹn lần sau mơ hồ "khi có dịp" — không có signal duy trì

---

## Template — Mail cảm ơn sau dinner tiếp khách
```
件名：御礼：昨夜のお食事の件

中村様
（CC：ハーCTO・田中様）

お世話になっております。
ティエンファットのズンでございます。

昨夜はお忙しい中、貴重なお時間を頂戴し、誠にありがとうございました。
中村様には、ベトナムまでお越しいただきましたのに、こちらこそお気遣いをいただきまして恐縮しております。

特に、〇〇様からお伺いいたしました〇〇のお話は、大変印象に残っております。
また、Phase 3 に向けた中村様のお言葉、改めてチームへ共有いたします。

次回はぜひ当方からも東京へお伺いさせていただきたく、5月の頃改めてご相談させてください。

末筆ながら、皆様のますますのご健勝をお祈り申し上げます。

──
ティエンファット 営業部
ズン (Tran Van Dung)
TEL: 〇〇
E-mail: 〇〇
```

**Notes:** Lý tưởng = gửi 8-9h sáng hôm sau. To riêng + CC sếp, BCC = đại kỵ. Trích 1-2 chủ đề cụ thể + hẹn lần sau để giữ "nhiệt". Dài quá NG (cỡ 200-300 chữ JP).

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 御礼メール | おれいメール | Mail cảm ơn |
| 昨夜 | さくや | Tối qua |
| 貴重な | きちょうな | Quý báu |
| 頂戴 | ちょうだい | Nhận (kính ngữ) |
| お気遣い | おきづかい | Sự quan tâm |
| 末筆ながら | まっぴつながら | Cuối thư (cố định) |
| ご健勝 | ごけんしょう | Sức khỏe (kính ngữ) |', 'system', 30, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008031, 8008, NULL, 'markdown_book', 'Rule 31 — Khách Nhật đoàn lớn 5+ người / 5名以上の対応', '# Rule 31 — Khách Nhật đoàn lớn 5+ người / 5名以上の対応
> **Luận điểm.** Từ 5 người trở lên = "tự ngồi tự xoay" sẽ thành thảm họa. Bắt buộc 4 thứ chuẩn bị: **(1) Bảng tên + sơ đồ ngồi (席札+席次表) đặt giữa bàn trước khi khách đến, (2) chỉ định ghế: 上位 khách giữa上座, senior host đối diện ở下座, (3) chia zone 3-4 người mỗi host phụ trách rót, (4) flow table 30-phút in sẵn cho cả host team**. 11 người 1 người rót = không kham nổi.
>
> 5+人 = 席札+席次表+zone別pour担当+flow table 4点必須。自由着席は混乱の元。
>
> **Liên quan:** rule 10 (上座下座), rule 24 (đặt dinner), rule 25 (host vs guest).

---

## Bối cảnh / 場面
Trong onsite Tokyo, final ceremony tại trụ sở 白鷗. Bên 白鷗 6 người (CFO Nakamura, Ōgaki, Matsumoto, PMO Tanaka + 2 kỹ thuật), bên Tiên Phát 5 người (Hà CTO, chị Hương phó phòng, Tuấn, Dũng, Hải) = tổng 11 người. Hà CTO check Dũng về sơ đồ + flow.

---

## Hội thoại XẤU — ngồi tự do + tự quản drink + không có flow
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、明日のceremony seat layoutは？」 |
| **ズン** | 「あ、自由着席で…大丈夫かと…」 |
| **ハーCTO** | 「11人で自由着席は混乱の元。中村CFOが上座に入れず格落ちリスク。pour担当は？」 |
| **ズン** | 「私一人でと…」 |
| **ハーCTO** | 「11人 1人pourは無理。3-4人ずつzoneに分けてpour担当を配置。flow tableも作って。」 |

**Vì sao xấu:** (1) Không chỉ định ghế = khách lưỡng lự + CFO có thể không vào được上座 = mất tầm. (2) 11 người mà 1 người rót = không kịp, ly cạn không ai để ý. (3) Không có flow = thứ tự chào lộn xộn + có thể CFO không có chỗ chen vào phát biểu.

---

## Hội thoại TỐT — ghế chỉ định + chia zone rót + flow 30 phút
| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、明日 11名 ceremony 準備状況を共有して。」 |
| **ズン** | 「① seat layout: 中村CFOが上座中央、両側に大垣様・松本様。下座側中央にハーCTO、両側にフオン副部長・トゥアン。席札+席次表をテーブル中央に【1】【2】。」 |
| **ズン** | 「② zone別pour: zone A (中村・大垣・松本) はハイ担当、zone B (田中PMO+技術2名) はトゥアン担当、zone C (host側自分達)は私が回します。Slack で空glass通報。」【3】 |
| **ハーCTO** | 「flow tableは？」 |
| **ズン** | 「③ flow table: 18:30乾杯 → 18:40 中村CFOご挨拶 → 18:50 大垣部長 → 19:00 ハーCTO → 19:10 フオン副部長 → 19:20 自由歓談 → 20:30 お土産交換 → 21:00 締め。host 側全員に印刷配布済。」【4】 |
| **ハーCTO** | 「完璧。明日17:30会場集合、最終確認。」 |

📝 **Ghi chú:**
- 【1】**Bàn 11 người vẫn 上座 (xa cửa nhất) ở giữa = vị trí tối cao**. 3 senior khách ngồi上座, senior host (Hà CTO) ngồi 下座 đối diện CFO Nakamura.
- 【2】**5+ người = bắt buộc bảng tên + sơ đồ ngồi đặt giữa bàn**, bố trí xong trước khi khách đến. Tránh ngơ ngác + thứ bậc rõ ràng.
- 【3】**Mỗi host phụ trách zone 3-4 người = phát hiện ly cạn trong 2 phút**. Zone leader nhau chat ngầm Slack check mức ly.
- 【4】**Flow chia 30 phút in sẵn, phát cả nhóm host**. Phát biểu = CFO → trưởng Ōgaki → Hà CTO → chị Hương phó phòng — luân phiên khách-host.

---

## Cụm từ mẫu
> **「席次表をご確認の上、お席にお着きください。本日のflow をお手元の表でご確認いただけます。」**
>
> *Xin quý vị xem sơ đồ ngồi và vào chỗ ạ. Flow hôm nay quý vị có thể xem trên bảng trước mặt.*

---

## Tránh
- Tự do ngồi cho đoàn 5+ người — nguồn hỗn loạn
- 1 host phụ trách rót cho 11 người — không kham nổi
- Không in flow table — phát biểu lộn xộn
- Không có buffer ghế — khách dẫn thêm interpreter sẽ kẹt
- Senior host không đối diện CFO — đảo position quan trọng

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 席札 | せきふだ | Bảng tên ghế |
| 席次表 | せきじひょう | Sơ đồ chỗ ngồi |
| 上座 | かみざ | Chỗ trên (xa cửa) |
| 下座 | しもざ | Chỗ dưới (gần cửa) |
| 着席 | ちゃくせき | Vào chỗ |
| 歓談 | かんだん | Trò chuyện thân mật |
| 締め | しめ | Kết thúc |', 'system', 31, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008032, 8008, NULL, 'markdown_book', 'Rule 32 — Bow angle theo cấp bậc / お辞儀の角度', '# Rule 32 — Bow angle theo cấp bậc / お辞儀の角度
> **Luận điểm.** Bow Nhật KHÔNG phải "cúi nhẹ là được". Có **4 góc cố định**: **15° eshaku (xã giao hành lang) · 30° keirei (vào/ra phòng họp, đồng cấp) · 45° saikeirei (CFO / GĐ / khách lớn lần đầu) · 90° xin lỗi nặng**. Sai góc = hoặc thiếu lễ (15° gặp CFO) hoặc làm khách ngại (90° trong tình huống thường).
>
> 角度=温度+敬意+反省深さ signal。場面ごとに4種類使い分け。
>
> **Liên quan:** rule 21 (入室), rule 23 (退室), rule 26 (乾杯).

---

## Bối cảnh / 場面
Tối trước khi đi onsite Tokyo, chị Hương phó phòng demo 4 loại bow cho Linh. Linh là intern lần đầu đi onsite, học để khỏi lúng túng giữa các tình huống mixed (gặp CFO / vào phòng / chào hành lang / tình huống lỗi).

---

## Hội thoại XẤU — bow nào cũng 15°
| Speaker | Câu |
|---------|-----|
| **リン** | （中村CFOへ会釈程度）「よろしくお願いします。」 |
| **フオン副部長** | 「リン、CFO相手に15°は軽すぎ。初対面+CFOは45°最敬礼。」 |
| **リン** | （謝罪 simulation も15°）「すみません！」 |
| **フオン副部長** | 「謝罪も15°じゃダメ。重大ミスは90°、軽いミスは30°。角度=反省深さの signal。」 |

**Vì sao xấu:** (1) Chào CFO bằng 15° = quá nhẹ, thất lễ. (2) Xin lỗi cũng 15° = không có vẻ ăn năn. (3) Bow giống nhau cho mọi tình huống = không truyền được nhiệt và mức nghiêm túc. Khách Nhật đọc "góc cúi" = đọc "temperature".

---

## Hội thoại TỐT — dùng 4 góc đúng tình huống
| Speaker | Câu |
|---------|-----|
| **フオン副部長** | 「リン、お辞儀は4種類。場面で使い分ける。実演するから真似してね。」 |
| **フオン副部長** | （15°、約1秒）「これが会釈。廊下ですれ違い・朝の挨拶。」【1】 |
| **リン** | （15°真似）「はい、おはようございます。」 |
| **フオン副部長** | （30°、約2-3秒）「これが敬礼。打合せ入退室・初対面同等職位。」【2】 |
| **リン** | （30°真似、ゆっくり戻す）「よろしくお願いいたします。」 |
| **フオン副部長** | （45°、約3-4秒）「これが最敬礼。CFO・社長・初対面の重要顧客に。」【3】 |
| **リン** | （45°真似、深く静かに）「初めまして、リンと申します。」 |
| **フオン副部長** | （90°、3秒以上）「これが謝罪お辞儀。重大ミス時のみ。普段の場面では絶対しない。」【4】 |
| **リン** | 「わかりました。明日CFOへの初対面は45°、お部屋の出入りは30°、廊下挨拶は15°ですね。」 |

📝 **Ghi chú:**
- 【1】**15° 会釈 (eshaku)** — đi qua nhau ở hành lang, chào nhẹ trong cty, chào sáng đồng nghiệp. Cúi 1 giây rồi ngẩng. Dùng trong cùng cty.
- 【2】**30° 敬礼 (keirei)** — vào / ra phòng họp khách, mở / đóng buổi họp, gặp lần đầu cùng cấp. Bow chuẩn business. 2-3 giây.
- 【3】**45° 最敬礼 (saikeirei)** — lần đầu gặp CFO / GĐ / khách lớn, cảm ơn trong tình huống quan trọng. 3-4 giây, sâu và lặng.
- 【4】**90° xin lỗi nặng** — sai nặng / vi phạm hợp đồng. Giữ 3+ giây. Mức bow sâu nhất trước khi xuống dogeza (quỳ). Tình huống bình thường tuyệt đối không bow vậy = làm khách hoảng.

---

## Cụm từ mẫu
> **「お辞儀は会釈15°・敬礼30°・最敬礼45°・謝罪90°の4種類。角度=温度+敬意+反省深さの signal。」**
>
> *Bow có 4 loại: eshaku 15°, keirei 30°, saikeirei 45°, xin lỗi 90°. Góc cúi = signal nhiệt + kính trọng + độ ăn năn.*

---

## Tránh
- 15° gặp CFO lần đầu — quá nhẹ, thất lễ
- 90° cho lời xin lỗi nhẹ — làm khách hoảng / ngại
- Cúi đầu nhanh, ngẩng nhanh — thiếu thành ý
- Cúi nửa người (gập eo nhưng đầu vẫn ngẩng) — không phải bow Nhật
- Dùng cùng góc cho mọi tình huống — không truyền được "temperature"

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 会釈 | えしゃく | Bow nhẹ 15° |
| 敬礼 | けいれい | Bow chuẩn 30° |
| 最敬礼 | さいけいれい | Bow kính cẩn 45° |
| 謝罪 | しゃざい | Xin lỗi |
| 反省 | はんせい | Suy ngẫm / ăn năn |
| 真似する | まねする | Bắt chước |
| 使い分け | つかいわけ | Dùng phân biệt theo tình huống |', 'system', 32, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008033, 8008, NULL, 'markdown_book', 'Rule 33 — Tránh culture clash VN-JP / 文化衝突の回避', '# Rule 33 — Tránh culture clash VN-JP / 文化衝突の回避
> **Luận điểm.** 3 thói quen Việt Nam xung đột thẳng với kiểu Nhật khi tiếp khách: **(1) "Em tự rót cho em" → kiểu Nhật phải rót cho nhau (相互ケア), (2) "Để em trả" với người mời → mất face người mời, (3) "Đáp lễ quà ngay" → signal "tôi nợ" tạo gánh nặng**. Đúng cách = nhường, hẹn lần sau mình mời lại / đáp lễ ở dịp khác.
>
> VN流『自分でやる/俺が払う/即返し』 vs JP『相互pour/招待者支払い/別日返し』。後者を follow が正解。
>
> **Liên quan:** rule 25 (host vs guest), rule 28 (お土産渡し), rule 29 (お土産受取).

---

## Bối cảnh / 場面
Ngày 3 onsite Tokyo buổi tối, Tanaka PMO + PM Matsumoto rủ Dũng + Tuấn đến izakaya casual không chính thức. Đây là lúc dễ rơi vào reflex VN nhất vì không khí thoải mái. Chị Hương đã dặn 3 chú ý trước khi đi, đây là thực hành.

---

## Hội thoại XẤU — làm thẳng theo kiểu VN
| Speaker | Câu |
|---------|-----|
| **松本PM** | 「ズンさん、もう一杯どうぞ。」 |
| **ズン** | （自分で自分のglassに注ぐ）「あ、自分でやります。」 |
| **松本PM** | （少し違和感）「あ、はい…」 |
| **トゥアンリーダー** | （会計時、自分のカードを先に出す）「今日は私達が…」 |
| **田中PMO** | 「あ、今日は私が誘ったので…」 (face損なう) |
| **ズン** | （鞄から即お返しのgiftを取り出す）「これ、お返しに…」 |

**Vì sao xấu:** (1) Tự rót cho mình = phá kiểu Nhật chăm sóc lẫn nhau (Matsumoto đề xuất rót cho mình mà bị từ chối). (2) Thấy bill rút thẻ trước khi người mời rút = mất mặt người mời (Tanaka PMO). (3) Đáp lễ quà ngay = signal "tôi nợ phải trả ngay" = tạo cảm giác gánh nặng.

---

## Hội thoại TỐT — rót lẫn nhau + nhường người mời trả + đáp lễ ngày khác
| Speaker | Câu |
|---------|-----|
| **松本PM** | 「ズンさん、もう一杯どうぞ。」 |
| **ズン** | 「ありがとうございます。松本様、お注ぎします。」（瓶を両手で持ち、松本のglassへ）【1】 |
| **松本PM** | （glass両手で受け）「どうも。では私もズンさんに。」 |
| **田中PMO** | （会計時に立ち上がる）「会計、私が。」 |
| **ズン** | 「今日は田中様にお誘いいただきましたので、お言葉に甘えさせていただきます。次回はぜひ当方が皆様をお招きしたく。」【2】 |
| **田中PMO** | 「ありがとうございます。」 |
| **トゥアンリーダー** | 「次回ベトナムにお越しの際に、ささやかですがお返しの席をご用意させていただきます。」【3】 |
| **松本PM** | 「楽しみにしております。」 |
| **ズン** | 「本日はご馳走になりました。誠にありがとうございました。」【4】 |

📝 **Ghi chú:**
- 【1】**Đảo ngược "mình tự rót cho mình" kiểu VN**. Kiểu Nhật = chăm sóc lẫn nhau: rót cho đối phương → đối phương rót lại cho mình. Đó là nhịp相互ケア.
- 【2】**Giữ thể diện người mời** — kìm "để em trả" kiểu VN, để người mời trả theo kiểu Nhật. Thay vào đó **đề xuất lần sau mình mời lại** = win-win.
- 【3】**Đáp lễ ngay = signal "tôi nợ phải trả"** → kiểu Nhật là cách thời gian, "lần sau" / "tháng sau" = return tự nhiên không tạo gánh nặng tâm lý.
- 【4】**「ご馳走になりました」** — câu cố định lúc tạm biệt người mời. Sáng hôm sau gửi mail cảm ơn lần nữa = hoàn hảo.

---

## Cụm từ mẫu
> **「お言葉に甘えさせていただきます。次回はぜひ当方からお招きしたく。」**
>
> *Em xin phép nhận sự tiếp đón ạ. Lần sau bên em xin được mời lại.*

---

## Tránh
- Tự rót cho ly mình khi đối phương đề nghị rót — phá相互ケア
- Tranh trả tiền với người mời — mất face người mời
- Đáp lễ quà / bữa ăn ngay trong cùng dịp — signal "tôi nợ"
- Từ chối mạnh "không không em không nhận đâu" — phá thiện chí
- Quên gửi thank-you mail sáng hôm sau — mất follow-up

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| お言葉に甘える | おことばにあまえる | Nhận sự tiếp đón / chiếu cố |
| お招き | おまねき | Sự mời |
| ご馳走になる | ごちそうになる | Được tiếp đãi |
| お返し | おかえし | Đáp lễ |
| 違和感 | いわかん | Cảm giác lạ / không tự nhiên |
| 居酒屋 | いざかや | Quán nhậu casual Nhật |
| 相互 | そうご | Lẫn nhau / hỗ tương |', 'system', 33, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008034, 8008, NULL, 'markdown_book', 'Rule 34 — Onsite Nhật lần đầu — survival kit / 初訪問 Survival Kit', '# Rule 34 — Onsite Nhật lần đầu — survival kit / 初訪問 Survival Kit
> **Luận điểm.** Onsite Tokyo lần đầu = đừng nghĩ "tới rồi mua". Phân biệt rõ **thứ phải xong tại VN** vs **thứ mua tại Nhật**. 6 nhóm: **cash · IC card · suit · omiyage · thời tiết · Wi-Fi**. Sai nhớ: **omiyage / cash / mạng = bắt buộc xong tại VN**. Đến Narita không có cash = không mua được Suica = không đi taxi được = thảm họa ngày 1.
>
> Survival Kit = 現金・IC card・スーツ・お土産・天気・Wifi の6カテゴリ。VN出発前 vs 現地調達 を区別。
>
> **Liên quan:** rule 16 (訪問準備), rule 17 (5分前).

---

## Bối cảnh / 場面
D-2 trước onsite Tokyo, Hải (lần đầu đi onsite) check survival kit với Tuấn (lead). Hải nghĩ "tới Nhật mua cũng được" → Tuấn phải sửa lại từng món.

---

## Hội thoại XẤU — nghĩ tới Nhật mua cũng được
| Speaker | Câu |
|---------|-----|
| **トゥアンリーダー** | 「ハイ、明後日出発、持ち物 OK？」 |
| **ハイ** | 「現金は現地ATMで引きます。スーツは spray でいいかな。お土産は Narita 空港で見ます。」 |
| **トゥアンリーダー** | 「全部NG。①日本ATMはVN cardを多く拒否、空港着いた時点で taxi 必要 ②sprayでwrinkleは取れない ③Narita のお土産=brand微妙+brand不揃い。Survival kit 整理しよう。」 |

**Vì sao xấu:** (1) Đến không có tiền mặt = ATM Nhật từ chối thẻ VN nhiều = không mua được IC card sân bay = không đi taxi được. (2) Không phòng nhăn suit = ngày đầu mất tầm. (3) Omiyage chưa có, định mua sân bay = brand không ổn, không đồng bộ — pattern fail giống rule_16.

---

## Hội thoại TỐT — chia 6 nhóm + tách VN / mua tại Nhật
| Speaker | Câu |
|---------|-----|
| **トゥアンリーダー** | 「ハイ、Survival Kit 6カテゴリで整理した。共有する。」 |
| **トゥアンリーダー** | 「① 現金 5万円 (VN出発前両替)【1】 ② IC card Suica初日窓口【2】 ③ スーツケース内ハンガー+折り目テクニック【3】 ④ お土産: VN高品質 6箱【4】 ⑤ 天気: 折りたたみ傘+カーディガン【5】 ⑥ Wifi: pocket Wi-Fi or eSIM 出発前契約【6】。」 |
| **ハイ** | 「わかりました。今日中にすべて準備して、明日チェックリスト見せます。」 |
| **トゥアンリーダー** | 「あと、現地D1 朝はホテルロビー 7:30 集合。スーツ+IC card 持参で。」 |

📝 **Ghi chú:**
- 【1】**Cash 5 man yen — đổi trước ở VN** (sân bay / ngân hàng). Đến Narita mua được IC card + đi taxi luôn. ATM Nhật hay từ chối thẻ VN.
- 【2】**Suica mua tại quầy xanh JR Narita** (deposit 2,000 yên + 3,000 yên dư). iPhone hỗ trợ thì setup eSIM Suica trước càng tốt.
- 【3】**Hanger + kỹ thuật xếp suit trong vali** (gập tay áo vào trong tránh nhăn). Đến hotel treo lên + steam mini ngay.
- 【4】**Omiyage chuẩn bị từ VN** — cà phê / trà / bánh brand cao cấp, đóng gói riêng. Mua tại Narita = mất tâm (trùng rule 16).
- 【5】**Tokyo tháng 4-5 sáng tối lạnh + mưa bất ngờ** → ô gấp + cardigan / áo khoác mỏng cần ngay từ chiều ngày 1.
- 【6】**Pocket Wi-Fi / eSIM ký trước khi rời VN** — sân bay cũng có nhưng ngày đầu cần online map + Slack ngay = tránh sự cố.

---

## Cụm từ mẫu
> **「Survival Kit は現金・IC card・スーツ・お土産・天気・Wifi の6カテゴリで整理。」**
>
> *Survival kit chia 6 nhóm: cash, IC card, suit, omiyage, thời tiết, Wi-Fi.*

---

## Tránh
- Tới Nhật mới rút ATM — thẻ VN hay bị từ chối
- Mua omiyage tại Narita — brand không ổn, mất tâm
- Suit chỉ xịt spray chống nhăn — không hết được
- Đặt Wi-Fi tại Narita — ngày đầu cần map + Slack ngay khi xuống máy bay
- Quên hanger / steamer mini — sáng D1 mặc suit nhăn

---

## Template — Checklist Survival Kit Onsite Tokyo (xong trước D-2)
```
[1] Tiền mặt + thẻ
[ ] Yên Nhật 5 man (đổi trước khi rời VN)
[ ] Thẻ tín dụng x 2 (Visa/Master)
[ ] Passport + bản sao (cặp khác)
[ ] Danh thiếp 50 tờ (rule 01)
[ ] Bảo hiểm du lịch đã mua

[2] Giao thông
[ ] IC card Suica/Pasmo (mua tại quầy xanh JR Narita)
   - Số dư khuyên: 5,000 yên
   - iPhone hỗ trợ → setup eSIM Suica trước
[ ] In bản đồ hotel → địa điểm (offline)
[ ] Đặt vé Narita Express / Skyliner

[3] Trang phục
[ ] Suit xanh đậm 1 bộ (D1)
[ ] Suit đen 1 bộ (formal / dự phòng)
[ ] Áo trắng x ngày + 1
[ ] Cravate đơn sắc x 2
[ ] Giày da đen + bộ đánh giày
[ ] Hanger + steamer mini

[4] Omiyage
[ ] 6 phần brand VN cao cấp (gói riêng)
[ ] 6 túi giấy logo nhẹ
[ ] Phân bổ: CFO 1 / 部長 1 / PM 1 / PMO 1 / buffer 2

[5] Thời tiết + sức khỏe
[ ] Ô gấp
[ ] Cardigan / áo khoác mỏng
[ ] Thuốc cá nhân + thuốc thông thường
[ ] Khẩu trang

[6] Mạng + điện
[ ] Pocket Wi-Fi / eSIM (ký trước ở VN)
[ ] Pin sạc dự phòng 10,000 mAh+
[ ] Phích chuyển A type (Nhật 100V)
[ ] Laptop + sạc
[ ] Slack / Teams login phone

[7] Giấy tờ (cặp riêng secure)
[ ] Bản sao invitation letter
[ ] In địa chỉ + SĐT (offline)
[ ] Danh sách liên hệ khẩn cấp
```

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 両替 | りょうがえ | Đổi tiền |
| 折りたたみ傘 | おりたたみがさ | Ô gấp |
| 持参 | じさん | Mang theo |
| 折り目 | おりめ | Vết gấp / nhăn |
| 拒否 | きょひ | Từ chối |
| 改札 | かいさつ | Cổng soát vé |
| 残高 | ざんだか | Số dư |', 'system', 34, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8008035, 8008, NULL, 'markdown_book', 'Rule 35 — Self-review ceremony etiquette / 振り返り', '# Rule 35 — Self-review ceremony etiquette / 振り返り
> **Luận điểm.** Sau mỗi onsite / 接待 / event quan trọng, **Hizashi式 self-review = 5 mục cấu trúc**: **(1) 3 điểm tốt (kiểu pattern tái lặp được), (2) 3 vấn đề (format "ai + làm gì + kết quả"), (3) 3 action cải thiện (CHỦ + DEADLINE bắt buộc), (4) phát hiện mới (phrase / nghi thức / khách trait), (5) lưu hồ sơ Notion + CRM 2 nơi**. "Lần sau em cẩn thận hơn" = không phải self-review.
>
> Hizashi式振り返り=『良かった点・課題・改善action(担当+期限)・新発見・記録(Notion+CRM)』5項目。
>
> **Liên quan:** rule 07 (管理), rule 30 (お礼メール).

---

## Bối cảnh / 場面
Sau onsite Tokyo + final ceremony, về HCMC chiều thứ 6 hôm sau. Chị Hương phó phòng tập hợp Dũng + Tuấn + Hải + Linh. Đây là cú đóng gói toàn bộ kinh nghiệm để team không lặp lỗi cũ.

---

## Hội thoại XẤU — bỏ qua self-review + phản tỉnh chung chung
| Speaker | Câu |
|---------|-----|
| **フオン副部長** | 「Tokyo onsite どうだった？」 |
| **ズン** | 「全体的にOK でした。次は気をつけます。」 |
| **フオン副部長** | 「それじゃ振り返りにならない。具体的に良かった3点・課題3点・改善 action 3点・新発見・記録、5項目で文章化して。」 |

**Vì sao xấu:** (1) Không self-review = lần sau lại sai y chang. (2) "Lần sau em cẩn thận hơn" = không có action cụ thể, không ai chịu trách nhiệm, không có deadline. (3) Không log lại từng lỗi = team không học được gì = mỗi onsite reset từ 0.

---

## Hội thoại TỐT — cụ thể hóa 5 mục + biến thành action
| Speaker | Câu |
|---------|-----|
| **フオン副部長** | 「皆様、Tokyo onsite + final ceremony おつかれさまでした。5項目で振り返りしましょう。まず良かった3点。」 |
| **ズン** | 「①ceremony 11人 seat指定+zone別pour+flow table が機能、空glass 0件 ②お土産順序 (CFO→部長→PM→PMO) で中村CFOから個別感謝のメール ③お礼メール翌朝送信で全員から24h以内返信。」【1】 |
| **フオン副部長** | 「課題3点は？」 |
| **トゥアンリーダー** | 「①リンがD1朝CFO初対面で90°bow→中村CFO『そんなに深く…』と恐縮。45°が正解 ②ハイが居酒屋で自分でpour→松本PM違和感 ③D2 14時の道中Suica残高不足で改札停止30秒。」【2】 |
| **フオン副部長** | 「改善 action は？」 |
| **ズン** | 「①リン担当でbow角度 visual guide 作成、来週金曜まで ②ハイ担当で『相互pour』練習 video 共有、来週水曜まで ③Suicaは出発前残高 5,000円 minimum 規則化、checklistへ追加 (今日中)。」【3】 |
| **フオン副部長** | 「新発見は？」 |
| **リン** | 「新phrase: 田中PMOの『通り過ぎましょう』(隣室回避) と『お言葉に甘えさせていただきます』(招待受領)、社内 vocabulary に追加します。」【4】 |
| **フオン副部長** | 「記録は？」 |
| **ズン** | 「Notion『 onsite playbook v2』+ CRM 白鷗社tab『2026-04 Tokyo onsite log』両方更新。次回担当者が同じ過ちをしないよう。」【5】 |
| **フオン副部長** | 「完璧。これがHizashi式振り返り。今後も毎 onsite/接待後にこの5項目で。」 |

📝 **Ghi chú:**
- 【1】**Cụ thể hóa thành công thành pattern tái sử dụng được** — viết kiểu "chỉ định ghế + zone rót + flow table" để dự án khác apply lại.
- 【2】**Format "ai + làm gì + kết quả gì"** — cụ thể như "Linh bow 90° làm CFO ngại". Sau đọc lại vẫn hình dung được tình huống.
- 【3】**Bắt buộc CHỦ + DEADLINE** — "Anh OO sẽ làm OO trước OO/OO". Không có chủ + deadline thì "cải thiện" không bao giờ thành hiện thực.
- 【4】**Phrase mới ghi vào vocabulary nội bộ** — onsite lần sau team có sẵn cụm. Trait khách mới (CFO Nakamura ngại bow sâu) cũng log lại.
- 【5】**Notion = DB học chung của team. CRM = lịch sử theo cty**. Cập nhật cả 2 = lần sau bất kỳ ai phụ trách 白鷗 cũng dùng lại được.

---

## Cụm từ mẫu
> **「5項目で振り返りましょう: 良かった点・課題・改善action・新発見・記録。Notion + CRM 両方更新で次回担当者が同じ過ちをしないように。」**
>
> *Mình self-review theo 5 mục: điểm tốt, vấn đề, action cải thiện, phát hiện mới, lưu hồ sơ. Update cả Notion + CRM để lần sau ai phụ trách không lặp lỗi.*

---

## Tránh
- Kết "lần sau em cẩn thận hơn" — không có action cụ thể
- Chỉ ghi điểm tốt — không học được vấn đề
- Action không có chủ + deadline — không bao giờ thực hiện
- Self-review chỉ qua lời nói, không văn bản — 1 tháng sau quên hết
- Lưu 1 nơi (chỉ Notion / chỉ CRM) — chia tách team learning vs customer history

---

## Template — Self-Review Hizashi 5 mục
```
【Hizashi式 振り返り — 5項目】
イベント: ___
日付: ___
参加者: ___
記入者: ___

[1] Điểm tốt (3, pattern tái lặp được)
(1) ___
(2) ___
(3) ___

[2] Vấn đề (3, format ai + việc gì + kết quả)
(1) Ai / việc gì / kết quả: ___
(2) Ai / việc gì / kết quả: ___
(3) Ai / việc gì / kết quả: ___

[3] Action cải thiện (3, BẮT BUỘC chủ + deadline)
(1) Chủ: ___ / Deadline: ___ / Nội dung: ___
(2) Chủ: ___ / Deadline: ___ / Nội dung: ___
(3) Chủ: ___ / Deadline: ___ / Nội dung: ___

[4] Phát hiện mới (ngôn ngữ / nghi thức / văn hóa)
- Phrase mới: ___
- Nghi thức mới: ___
- Trait khách mới: ___

[5] Lưu hồ sơ (cập nhật 2 nơi)
[ ] Notion ''OO playbook'' update
[ ] CRM tab khách ''log OO/OO của OO'' thêm
[ ] Share tóm tắt qua Slack #learning
[ ] Gửi thank-you message cho người liên quan

[Deadline]
- Họp self-review: trong 1 ngày làm việc sau event
- Viết thành văn: trong 3 ngày làm việc
- Action cải thiện: theo deadline từng action

[Checkpoint lần sau]
Trước event cùng loại lần sau, đọc lại self-review này, kiểm tra
vấn đề + action đã giải quyết chưa.
```

---

## Bảng từ vựng
| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 振り返り | ふりかえり | Self-review / nhìn lại |
| 課題 | かだい | Vấn đề / việc cần giải quyết |
| 改善 | かいぜん | Cải thiện |
| 担当者 | たんとうしゃ | Người phụ trách |
| 期限 | きげん | Deadline |
| 記録 | きろく | Ghi chép / lưu hồ sơ |
| 文章化 | ぶんしょうか | Viết thành văn bản |
| 過ち | あやまち | Lỗi |', 'system', 35, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
