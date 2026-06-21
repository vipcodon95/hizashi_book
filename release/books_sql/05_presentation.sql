-- Hizashi book SQL — Thuyết trình / プレゼンテーション
-- curriculum_id = 800000006
-- node count = 35
-- generated từ release/books/05_presentation/
-- KHÔNG sửa thủ công file này. Chạy lại scripts/build_sql_from_release.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, introduction_jp, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000006, NULL, 'markdown_book', 'BJT', 'Thuyết trình', 'Bộ sách Hizashi — Thuyết trình', 'Hizashi シリーズ — プレゼンテーション', 'system', TRUE, TRUE, TRUE, FALSE, 20, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, introduction = EXCLUDED.introduction, introduction_jp = EXCLUDED.introduction_jp, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000001, 800000006, NULL, 'markdown_book', 'Rule 01 — Danh sách 7 câu hỏi trước khi soạn / プレゼン準備の7つの問い', '# Rule 01 — Danh sách 7 câu hỏi trước khi soạn / プレゼン準備の7つの問い
> **Luận điểm.** Chưa trả lời được 7 câu hỏi này thì **chưa được mở PowerPoint**. Đa số người trình bày Việt nhảy thẳng vào thiết kế slide → ra bộ slide đẹp nhưng sai thông điệp. Khách Nhật không tha cho bộ slide "kỹ thuật cao, mục đích thấp".
>
> 7つの問い：①誰に ②何を決めたい ③時間 ④場所 ⑤期待アウトプット ⑥リスク ⑦バックアップ。これに答えられないうちは PowerPoint を開かない。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 07 (Phương án B), rule 08 (câu mở đầu thu hút 30s).
> Sách 04 Rule 01 — 報告の3原則 (kết luận trước).

---

## Bối cảnh / 場面
Tháng 5/2026, Phase 3 với 白鷗 sắp khởi động. Anh Hà CTO giao Dũng trình bày Phase 3 cho 大垣 営業部長 + 松本 PM. Lần đầu Dũng trình bày độc lập. Sáng thứ Hai, Dũng đã mở PowerPoint soạn thảo 15 slide → chị Hương cản lại trước khi đi xa hơn.

---

## Trường hợp xấu — nhảy vào thiết kế
*Slack chị Hương 9:00 · 15分後*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、Phase 3 のプレゼン、もう15<ruby>枚<rt>まい</rt></ruby><ruby>作<rt>つく</rt></ruby>りました。レビューお<ruby>願<rt>ねが</rt></ruby>いします！」 <br/>*Chị Hương, em đã làm xong 15 slide Phase 3 rồi! Phiền chị rà soát giúp em ạ!* |
| **フオン** | 「えっと、これ<ruby>誰<rt>だれ</rt></ruby><ruby>向<rt>む</rt></ruby>け？<ruby>大垣<rt>おおがき</rt></ruby>さん？<ruby>松本<rt>まつもと</rt></ruby>さん？<ruby>両方<rt>りょうほう</rt></ruby>？」 <br/>*Ờ... cái này trình bày cho ai? Anh Ōgaki? Anh Matsumoto? Hay cả hai?* |
| **ズン** | 「えっ…<ruby>両方<rt>りょうほう</rt></ruby>かと…<ruby>思<rt>おも</rt></ruby>います。」 <br/>*Ơ... em nghĩ là cả hai ạ...* |
| **フオン** | 「<ruby>決<rt>き</rt></ruby>めたいのは<ruby>何<rt>なに</rt></ruby>？スコープ？<ruby>金額<rt>きんがく</rt></ruby>？スケジュール？それも<ruby>分<rt>わ</rt></ruby>かってない？じゃあスライド<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>閉<rt>と</rt></ruby>じて。**<ruby>準備<rt>じゅんび</rt></ruby>の7<ruby>問<rt>もん</rt></ruby>**から<ruby>始<rt>はじ</rt></ruby>めよう。」 <br/>*Còn quyết cái gì? Scope? Giá? Schedule? Cũng không rõ? Vậy đóng hết slide đi. Bắt đầu lại từ 7 câu hỏi chuẩn bị.* |

**Vì sao xấu:** Dũng nhảy vào thiết kế khi chưa trả lời được câu cốt lõi. 15 slide đẹp nhưng không có thông điệp thì cũng vứt — phải làm lại từ đầu, mất 1 ngày công vô ích.

---

## Trường hợp tốt — 7問 trước, PowerPoint sau
*Slack 9:00 · 5分後*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、Phase 3 プレゼンの **<ruby>準備<rt>じゅんび</rt></ruby> 7<ruby>問<rt>もん</rt></ruby>**を<ruby>埋<rt>う</rt></ruby>めました【1】。レビューいただけますでしょうか？」 <br/>*Chị Hương, em đã điền xong 7 câu hỏi chuẩn bị cho buổi trình bày Phase 3 ạ. Phiền chị rà soát giúp em được không ạ?* |
| **フオン** | 「いいね、let me see... ①<ruby>対象<rt>たいしょう</rt></ruby>=<ruby>大垣<rt>おおがき</rt></ruby>・<ruby>松本<rt>まつもと</rt></ruby>、②<ruby>決<rt>き</rt></ruby>めたい=Phase 3 スコープ<ruby>合意<rt>ごうい</rt></ruby>、③<ruby>時間<rt>じかん</rt></ruby>=30<ruby>分<rt>ふん</rt></ruby>+15<ruby>分<rt>ふん</rt></ruby>Q&A、⑥リスク=<ruby>価格<rt>かかく</rt></ruby><ruby>反対<rt>はんたい</rt></ruby>、⑦バックアップ=PDF＋オフラインデモ。<ruby>問題<rt>もんだい</rt></ruby>ない、これで<ruby>設計<rt>せっけい</rt></ruby><ruby>開始<rt>かいし</rt></ruby>していいよ。」 <br/>*Tốt, để chị xem... ① đối tượng = Ōgaki + Matsumoto, ② quyết = thống nhất phạm vi Phase 3, ③ thời gian = 30 phút + 15 phút Q&A, ⑥ rủi ro = phản đối giá, ⑦ dự phòng = PDF + demo không cần mạng. Ổn, em bắt đầu thiết kế được rồi.* |
| **ズン** | 「ありがとうございます。⑤アウトプットを **『Phase 3 スコープ＋<ruby>金額<rt>きんがく</rt></ruby>レンジ<ruby>合意<rt>ごうい</rt></ruby>』** と<ruby>書<rt>か</rt></ruby>きましたが、<ruby>合意<rt>ごうい</rt></ruby>までいかなくても **<ruby>方向性<rt>ほうこうせい</rt></ruby><ruby>決定<rt>けってい</rt></ruby>**で<ruby>十分<rt>じゅうぶん</rt></ruby>でしょうか？【2】」 <br/>*Em cảm ơn chị ạ. Em ghi ⑤ đầu ra = ''thống nhất phạm vi + biên độ giá Phase 3'', nhưng nếu không chốt được thỏa thuận, chỉ cần quyết được hướng đi cũng OK chứ ạ?* |
| **フオン** | 「いい<ruby>質問<rt>しつもん</rt></ruby>。**<ruby>方向性<rt>ほうこうせい</rt></ruby><ruby>決定<rt>けってい</rt></ruby>**の<ruby>方<rt>ほう</rt></ruby>が<ruby>現実的<rt>げんじつてき</rt></ruby>。1<ruby>回<rt>かい</rt></ruby>のプレゼンで<ruby>金額<rt>きんがく</rt></ruby><ruby>完全<rt>かんぜん</rt></ruby><ruby>合意<rt>ごうい</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しい。<ruby>書<rt>か</rt></ruby>き<ruby>直<rt>なお</rt></ruby>して。」 <br/>*Câu hỏi hay đấy. Quyết hướng đi thì thực tế hơn. Một buổi trình bày khó mà chốt giá toàn bộ. Em sửa lại nhé.* |

 **Ghi chú:**
- 【1】**「準備の7問」** — checklist phải điền TRƯỚC khi mở PowerPoint. Mỗi câu 1 dòng, tổng cộng 5-10 phút.
- 【2】**「合意までいかなくても」** — Dũng tự kiểm tra tính thực tế của output. Văn hóa công việc Nhật **kỵ** kiểu "hứa quá lời" → Hương khen.

---

## Cụm từ mẫu
> **「<ruby>準備<rt>じゅんび</rt></ruby>の7<ruby>問<rt>もん</rt></ruby>に<ruby>答<rt>こた</rt></ruby>えられないうちは PowerPoint を<ruby>開<rt>ひら</rt></ruby>かない。」**
>
> *Chưa trả lời được 7 câu thì chưa được mở PowerPoint. Slide đẹp + thông điệp sai = vứt.*

---

## Khung kiểm tra 7 câu
```
【プレゼン準備チェックリスト】

① 誰に？(Audience / Đối tượng)
   - 主聴衆: ____  (役職・社名・関係性)
   - 副聴衆: ____
   - 不在の意思決定者: ____

② 何を決めたい？(Decision target / Mục tiêu quyết định)
   - 本日の合意ゴール: ____  (1文で)
   - 妥協可能ライン: ____
   - 絶対に譲れないライン: ____

③ 時間 (Time / Thời gian)
   - 持ち時間: ____ 分
   - うち Q&A: ____ 分
   - 1スライド当たり: ____ 秒(目安)

④ 場所 (Setting / Địa điểm)
   - 対面 / オンライン / ハイブリッド
   - 機材: PC・プロジェクター・マイク
   - 接続テスト: ____ (時刻)

⑤ 期待されるアウトプット (Output / Đầu ra mong đợi)
   - 主アウトプット: ____  (例: スコープ合意 / 方向性決定 / 検討開始)
   - 副アウトプット: ____  (例: 次回会議日決定)
   - NG ライン: ____  (これ以下なら失敗)

⑥ リスク (Risk / Rủi ro)
   - リスク1: ____ → 対策: ____
   - リスク2: ____ → 対策: ____
   - リスク3: ____ → 対策: ____

⑦ バックアップ (Backup / Dự phòng)
   - スライド: PDF版 USB+クラウド
   - デモ: オフライン版
   - インターネット: モバイルテザリング
```

---

## Tránh
- Mở PowerPoint trước khi điền 7問 → 90% sẽ phải làm lại
- Để trống ⑤ đầu ra → không biết tiêu chí thành công
- Bỏ qua ⑥ rủi ro + ⑦ dự phòng → vào buổi trình bày với tâm thế lạc quan 100%
- Đầu ra quá tham vọng (vd "chốt 100% hợp đồng trong 30 phút") → không thực tế

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 準備 | じゅんび | CHUẨN BỊ | Chuẩn bị |
| 聴衆 | ちょうしゅう | THÍNH CHÚNG | Người nghe / khán giả |
| 決裁者 | けっさいしゃ | QUYẾT TÀI GIẢ | Người ra quyết định |
| アウトプット | アウトプット | — | Đầu ra |
| バックアップ | バックアップ | — | Dự phòng |
| 妥協 | だきょう | THỎA HIỆP | Thỏa hiệp |
| 譲れない | ゆずれない | NHƯỢNG | Không thể nhượng bộ |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000002, 800000006, NULL, 'markdown_book', 'Rule 02 — Quy tắc mỗi slide một thông điệp / 1スライド1メッセージ', '# Rule 02 — Quy tắc mỗi slide một thông điệp / 1スライド1メッセージ
> **Luận điểm.** Mỗi slide chỉ tải **1 điểm cốt lõi**. Tiêu đề không phải chủ đề ("売上について") mà là kết luận ("Q2売上はQ1比+18%"). Người nghe Nhật quét slide trong 3 giây — nếu không thấy ngay thông điệp, slide vô dụng.
>
> 1スライド＝1メッセージ。タイトルは「テーマ」ではなく「結論」を書く。聴衆は3秒でスキャンする — メッセージが見えなければそのスライドは無価値。
>
> **Liên quan:** rule 01 (準備7問), rule 03 (SCQA), rule 06 (10-20-30).
> Sách 04 Rule 01 — 結論先出し (kết luận trước).

---

## Bối cảnh / 場面
Sau khi điền xong 7問, Dũng quay lại với bản thảo 15 slide. Mỗi slide có tiêu đề kiểu "Phase 3 について", "システム構成について" — toàn chủ đề, không có kết luận. Chị Hương xem lại trước buổi diễn thử.

---

## Trường hợp xấu — tiêu đề là chủ đề
*chia sẻ màn hình*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、スライド10枚に<ruby>絞<rt>しぼ</rt></ruby>りました。タイトルご<ruby>確認<rt>かくにん</rt></ruby>ください。」 <br/>*Chị Hương, em đã rút xuống còn 10 slide. Phiền chị xem qua tiêu đề giúp em ạ.* |
| **フオン** | 「『Phase 3 について』『システム<ruby>構成<rt>こうせい</rt></ruby>について』… 全部『〜について』？それ**テーマ**でしょう？で、<ruby>結局<rt>けっきょく</rt></ruby>**何が言いたい**の？」 <br/>*「Phase 3 について」「Cấu hình hệ thống について」... toàn 「〜について」 hết? Đó là chủ đề mà? Cuối cùng em muốn nói gì?* |
| **ズン** | 「えっと…Phase 3 ではこれをやるという…」 <br/>*Ờ... ý em là Phase 3 sẽ làm cái này...* |
| **フオン** | 「だから『何を』をタイトルに書く。**1スライド1メッセージ**。タイトル＝<ruby>結論<rt>けつろん</rt></ruby>。<ruby>聴衆<rt>ちょうしゅう</rt></ruby>はタイトルだけ見て分かるべき。」 <br/>*Đó, viết 『cái gì』 vào tiêu đề. Một slide một thông điệp. Tiêu đề = kết luận. Khán giả chỉ nhìn tiêu đề là phải hiểu.* |

**Vì sao xấu:** Tiêu đề kiểu 「〜について」 chỉ nêu chủ đề chứ không truyền thông điệp. Khách Nhật xem bộ slide nhanh (3 giây/slide) — nếu tiêu đề chỉ là chủ đề, họ phải đọc nội dung phần thân → mệt → mất tập trung.

---

## Trường hợp tốt — tiêu đề là kết luận
| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、タイトルを全部**<ruby>結論型<rt>けつろんがた</rt></ruby>**に書き<ruby>直<rt>なお</rt></ruby>しました【1】。10枚お願いします。」 <br/>*Chị Hương, em đã sửa toàn bộ tiêu đề sang dạng kết luận ạ. Phiền chị rà soát 10 slide giúp em.* |
| **フオン** | 「『Phase 3 で<ruby>在庫<rt>ざいこ</rt></ruby><ruby>差異<rt>さい</rt></ruby>を<ruby>月平均<rt>つきへいきん</rt></ruby>5%→1%に<ruby>削減<rt>さくげん</rt></ruby>』… うん、これなら**タイトルだけ読めば結論が分かる**。本文は何？」 <br/>*「Phase 3 giảm sai lệch tồn kho từ 5%/tháng xuống 1%」... ờ, thế này chỉ cần đọc tiêu đề là hiểu kết luận. Phần thân em viết gì?* |
| **ズン** | 「本文は**<ruby>根拠<rt>こんきょ</rt></ruby>3点**だけ書きました。<ruby>在庫<rt>ざいこ</rt></ruby><ruby>管理<rt>かんり</rt></ruby>ロジック、リアルタイム<ruby>同期<rt>どうき</rt></ruby>、アラート<ruby>機構<rt>きこう</rt></ruby>の3つです【2】。」 <br/>*Phần thân em chỉ viết 3 luận cứ ạ. Logic quản lý tồn kho, đồng bộ thời gian thực, cơ chế cảnh báo — ba điểm đó ạ.* |
| **フオン** | 「いいね。1枚で1メッセージ＋根拠3点。これが<ruby>基本<rt>きほん</rt></ruby>フォーマット。<ruby>残<rt>のこ</rt></ruby>り9枚も同じパターンで<ruby>通<rt>とお</rt></ruby>して。」 <br/>*Tốt. 1 slide 1 thông điệp + 3 luận cứ. Đó là khuôn chuẩn. 9 slide còn lại em làm cùng kiểu luôn.* |

 **Ghi chú:**
- 【1】**「結論型タイトル」** — Công thức: 「〇〇により××を△△に改善」「〇〇により××%削減」。動詞+数字 を入れると一段強くなる。
- 【2】**「根拠3点」** — Tiêu đề=Kết luận、本文=根拠3点 (それ以上は別スライド)。3点ルールは認知負荷の上限。

---

## Cụm từ mẫu
> **「タイトル＝結論。本文＝根拠3点。それ以外はカット。」**
>
> *Tiêu đề = kết luận, phần thân = 3 luận cứ. Còn lại cắt sang slide khác.*

---

## Tránh
- Tiêu đề 「〇〇について」「〇〇の件」 — đó là chủ đề, không phải thông điệp
- 1 slide chứa 5-7 gạch đầu dòng — não chỉ giữ được 3 ± 1
- Tiêu đề dài quá 25 chữ — đọc không kịp trong 3 giây
- Phần thân có chữ nhỏ < 24pt để nhồi nội dung — vi phạm rule 06

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 結論 | けつろん | KẾT LUẬN | Kết luận |
| 根拠 | こんきょ | CĂN CỨ | Luận cứ / căn cứ |
| 削減 | さくげん | TƯỚC GIẢM | Cắt giảm |
| 認知負荷 | にんちふか | NHẬN TRI PHỤ HÀ | Tải nhận thức |
| 改善 | かいぜん | CẢI THIỆN | Cải thiện |
| スキャン | スキャン | — | Quét nhanh |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000003, 800000006, NULL, 'markdown_book', 'Rule 03 — Đường mạch câu chuyện (SCQA) / ストーリーアーク', '# Rule 03 — Đường mạch câu chuyện (SCQA) / ストーリーアーク
> **Luận điểm.** Bài thuyết trình tốt = câu chuyện có mạch. Công thức **SCQA** (Situation → Complication → Question → Answer) là khung Minto Pyramid áp dụng cho thuyết trình. Khách Nhật bảo thủ thích nhịp này vì nó **không đẩy kịch tính cao trào như kiểu Mỹ**, chỉ dẫn dắt logic từ "đã biết" sang "cần quyết".
>
> SCQA: 共通認識(Situation) → 問題発生(Complication) → 問い(Question) → 答え(Answer)。日本顧客向けには情緒煽りより論理誘導が刺さる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 10 (背景＋chương trình), rule 11 (3 kiểu mở đầu thu hút).

---

## Bối cảnh / 場面
Slide đã có 1-slide-1-message nhưng thứ tự lộn xộn: bắt đầu bằng "弊社の強み" rồi mới đến "市場課題". Hương yêu cầu sắp xếp lại theo SCQA — bắt đầu bằng những gì khách đã biết.

---

## Trường hợp xấu — thứ tự khoe mình trước
*リハーサル*

| Vai | Câu |
|---------|-----|
| **ズン** | 「最初に弊社の<ruby>強<rt>つよ</rt></ruby>み3点をご<ruby>紹介<rt>しょうかい</rt></ruby>します。次にPhase 3 <ruby>提案<rt>ていあん</rt></ruby>、最後に<ruby>価格<rt>かかく</rt></ruby>…」 <br/>*Đầu tiên em xin giới thiệu 3 điểm mạnh bên Thiên Phát. Tiếp đến là đề xuất Phase 3, cuối cùng là giá...* |
| **フオン** | 「ストップ。**自社の強みから**入る？それ vendor-first 順。<ruby>聴衆<rt>ちょうしゅう</rt></ruby>は『で、何の話？』ってなる。」 <br/>*Khoan. Mở đầu bằng điểm mạnh mình? Đó là kiểu ưu tiên bên cung cấp trước. Khán giả sẽ nghĩ 「rồi sao, chuyện gì đây?」 đấy.* |
| **ズン** | 「あ…じゃあどう<ruby>並<rt>なら</rt></ruby>べれば…」 <br/>*À... vậy phải sắp xếp thế nào ạ...* |
| **フオン** | 「**SCQA**。① <ruby>共通認識<rt>きょうつうにんしき</rt></ruby>: <ruby>白鷗<rt>はくおう</rt></ruby>様は<ruby>在庫差異<rt>ざいこさい</rt></ruby>5%で<ruby>困<rt>こま</rt></ruby>ってる、② 問題: Phase 2 で<ruby>部分改善<rt>ぶぶんかいぜん</rt></ruby>したが…、③ <ruby>問<rt>と</rt></ruby>い: <ruby>残<rt>のこ</rt></ruby>り<ruby>課題<rt>かだい</rt></ruby>は？、④ 答え: Phase 3。**自社の話は最後**。」 <br/>*SCQA. ① Nhận thức chung: bên Hakuō đang khó với sai lệch tồn kho 5%. ② Vấn đề: Phase 2 cải thiện một phần nhưng... ③ Câu hỏi: phần còn lại giải thế nào? ④ Đáp án: Phase 3. Vendor talk để cuối.* |

**Vì sao xấu:** Thứ tự ưu tiên bên cung cấp trước khiến khán giả không thấy "câu chuyện về mình" — chỉ thấy "bên cung cấp khoe". Khách Nhật đặc biệt dị ứng với kiểu chào hàng dồn dập ngay mở đầu.

---

## Trường hợp tốt — theo mạch SCQA
| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>組<rt>く</rt></ruby>み<ruby>直<rt>なお</rt></ruby>しました。**SCQA**で行きます【1】。Slide1: 白鷗様の在庫差異5%という<ruby>現状<rt>げんじょう</rt></ruby>(S)。Slide2: Phase 2 で1.8%まで<ruby>改善<rt>かいぜん</rt></ruby>したが、<ruby>季節商品<rt>きせつしょうひん</rt></ruby>で<ruby>再発<rt>さいはつ</rt></ruby>(C)。Slide3: <ruby>残課題<rt>ざんかだい</rt></ruby>をどう<ruby>解決<rt>かいけつ</rt></ruby>するか(Q)。Slide4-9: Phase 3 提案(A)。」 <br/>*Em đã sắp xếp lại ạ. Đi theo SCQA: Slide1: hiện trạng sai lệch tồn kho 5% bên Hakuō (S). Slide2: Phase 2 cải về 1.8% nhưng tái phát ở hàng theo mùa (C). Slide3: phần còn lại giải sao (Q). Slide4-9: đề xuất Phase 3 (A).* |
| **フオン** | 「いいね、聴衆が**自分の話**として<ruby>聞<rt>き</rt></ruby>ける。Cで再発を<ruby>素直<rt>すなお</rt></ruby>に書いたのも良い、<ruby>隠<rt>かく</rt></ruby>さない方が<ruby>信頼<rt>しんらい</rt></ruby>される【2】。」 <br/>*Tốt, khán giả sẽ nghe như chuyện của chính họ. Phần C em viết thẳng tái phát cũng ổn, không che giấu thì lấy được lòng tin hơn.* |
| **ズン** | 「Aパートが6枚は多いでしょうか？」 <br/>*Phần A 6 slide có nhiều quá không ạ?* |
| **フオン** | 「Aは答えだから6枚OK。むしろSCQの<ruby>導入<rt>どうにゅう</rt></ruby>は3枚に<ruby>圧縮<rt>あっしゅく</rt></ruby>、Aで6枚使うのが正しいバランス。」 <br/>*A là đáp án nên 6 slide OK. Ngược lại phần dẫn SCQ nén còn 3 slide, dồn 6 slide cho A — đó mới là cân đối đúng.* |

 **Ghi chú:**
- 【1】**Công thức SCQA** — Situation (共通認識): khách đã biết. Complication (変化/問題): điều gì thay đổi. Question (問い): cần quyết gì. Answer (答え): đề xuất.
- 【2】**「再発を素直に書く」 (viết thẳng chuyện tái phát)** — Phase 2 không hoàn hảo → giới kinh doanh Nhật trân trọng sự trung thực. Che giấu điểm yếu = mất lòng tin.

---

## Cụm từ mẫu
> **「SCQA: <ruby>聴衆<rt>ちょうしゅう</rt></ruby>が知っていること → 何が変わったか → 何を<ruby>問<rt>と</rt></ruby>うか → 答え。自社の話は最後。」**
>
> *Bắt đầu từ điều khán giả đã biết, kết thúc bằng đề xuất. Phần nói về bên mình để cuối.*

---

## Tránh
- Mở đầu bằng "弊社の強み" — khoe bên bán trước = mất sự chú ý của khán giả
- Bỏ qua C (Vấn đề) — không có "vấn đề" thì không có lý do nghe tiếp
- Q (Question) để ngầm — phải nêu rõ "本日決めたいのは」
- A quá ngắn (1-2 slide) — đáp án phải đủ chi tiết để khách ra quyết định

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 共通認識 | きょうつうにんしき | CỘNG THÔNG NHẬN THỨC | Nhận thức chung |
| 問題発生 | もんだいはっせい | VẤN ĐỀ PHÁT SINH | Vấn đề phát sinh |
| 誘導 | ゆうどう | DỤ ĐẠO | Dẫn dắt |
| 再発 | さいはつ | TÁI PHÁT | Tái phát |
| 隠す | かくす | ẨN | Che giấu |
| 圧縮 | あっしゅく | ÁP SÚC | Nén / cô đọng |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000004, 800000006, NULL, 'markdown_book', 'Rule 04 — Phân cấp thị giác & phông chữ / 視覚階層・フォント', '# Rule 04 — Phân cấp thị giác & phông chữ / 視覚階層・フォント
> **Luận điểm.** Slide tốt phải có **3 cấp thị giác**: (1) Tiêu đề 32-40pt, (2) Thông điệp phụ 24-28pt, (3) Phần thân 18-22pt. Phông chữ Nhật mặc định: **Meiryo / 游ゴシック** (sans). Tránh MS明朝 (mảnh, khó đọc trên máy chiếu). Căn lề phải **trục trái**, không căn giữa bừa.
>
> 視覚階層は3段階。タイトル(32-40pt) > サブメッセージ(24-28pt) > 本文(18-22pt)。日本語フォントはMeiryo/游ゴシック推奨、明朝は projector で潰れる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 05 (色彩心理), rule 06 (10-20-30).

---

## Bối cảnh / 場面
Dũng làm slide với mọi văn bản 18pt + căn giữa + phông chữ MS Mincho mặc định. Hương xem buổi tập dượt trên máy chiếu, nhìn từ hàng cuối thấy mờ + lộn xộn.

---

## Trường hợp xấu — phân cấp phẳng
*後列から*

| Vai | Câu |
|---------|-----|
| **フオン** | 「ズン、<ruby>後<rt>うし</rt></ruby>ろからタイトル<ruby>読<rt>よ</rt></ruby>めない。<ruby>何<rt>なん</rt></ruby>ポイント？」 <br/>*Dũng, ngồi sau chị không đọc được tiêu đề. Mấy point thế?* |
| **ズン** | 「<ruby>全部<rt>ぜんぶ</rt></ruby>18ポイントです。<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>入<rt>い</rt></ruby>れたかったので…」 <br/>*Em để hết 18 point ạ. Vì muốn nhồi thông tin vào...* |
| **フオン** | 「<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>同<rt>おな</rt></ruby>じサイズ＝**<ruby>階層<rt>かいそう</rt></ruby>がない**。<ruby>聴衆<rt>ちょうしゅう</rt></ruby>はどこを<ruby>見<rt>み</rt></ruby>ればいいか<ruby>分<rt>わ</rt></ruby>からない。それと**<ruby>MS明朝<rt>エムエスみんちょう</rt></ruby>**？プロジェクターで<ruby>潰<rt>つぶ</rt></ruby>れる。」 <br/>*Cùng size hết = không có cấp bậc. Khán giả không biết nhìn vào đâu. Với cả MS Mincho à? Lên máy chiếu là mờ đấy.* |
| **ズン** | 「あ…デフォルトのまま<ruby>使<rt>つか</rt></ruby>っていました…」 <br/>*À... em để default luôn ạ...* |

**Vì sao xấu:** Không có phân cấp = không có dẫn hướng thị giác. 18pt cho tiêu đề quá nhỏ trên máy chiếu nhìn từ hàng cuối. MS明朝 (serif) bị mảnh, máy chiếu không đủ độ tương phản.

---

## Trường hợp tốt — phân cấp 3 tầng
*後列で確認*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**チェックリスト**で<ruby>全<rt>ぜん</rt></ruby>スライド<ruby>見直<rt>みなお</rt></ruby>しました【1】。タイトル36pt、サブ24pt、<ruby>本文<rt>ほんぶん</rt></ruby>20pt、フォントは**Meiryo**<ruby>統一<rt>とういつ</rt></ruby>です。」 <br/>*Em đã xem lại toàn bộ slide theo danh sách kiểm tra ạ. Tiêu đề 36pt, sub 24pt, phần thân 20pt, phông chữ thống nhất Meiryo ạ.* |
| **フオン** | 「うん、<ruby>後<rt>うし</rt></ruby>ろからタイトル<ruby>読<rt>よ</rt></ruby>める。<ruby>本文<rt>ほんぶん</rt></ruby>はギリギリ。<ruby>図表<rt>ずひょう</rt></ruby>のラベルは<ruby>何<rt>なん</rt></ruby>pt？」 <br/>*Ờ, từ sau đọc được tiêu đề rồi. Phần thân thì sát giới hạn. Nhãn biểu đồ mấy point?* |
| **ズン** | 「ラベル14pt でした…20pt<ruby>以上<rt>いじょう</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げます【2】。」 <br/>*Nhãn đang 14pt ạ... em sẽ chỉnh lên 20pt+ ạ.* |
| **フオン** | 「お<ruby>願<rt>ねが</rt></ruby>い。それと**alignment は<ruby>左揃<rt>ひだりぞろ</rt></ruby>え**。<ruby>中央揃<rt>ちゅうおうぞろ</rt></ruby>えは<ruby>見出<rt>みだ</rt></ruby>しだけ、<ruby>本文<rt>ほんぶん</rt></ruby>はNG。」 <br/>*Em làm giúp chị. Với cả căn lề để trái. Căn giữa chỉ dùng cho heading, phần thân NG.* |

 **Ghi chú:**
- 【1】**チェックリスト** — Danh sách kiểm tra phân cấp thị giác (xem khung mẫu). Áp dụng trên TOÀN bộ bộ slide trước khi diễn thử.
- 【2】**「ラベル14pt」** — Lỗi phổ biến: nhãn biểu đồ nhỏ vì để mặc định tự động. Phải cưỡng chế chỉnh lên 20pt+.

---

## Cụm từ mẫu
> **「タイトル36-40pt、<ruby>本文<rt>ほんぶん</rt></ruby>20-24pt、<ruby>最小<rt>さいしょう</rt></ruby>20pt。Meiryo / <ruby>游<rt>ゆう</rt></ruby>ゴシックで<ruby>左揃<rt>ひだりぞろ</rt></ruby>え。」**
>
> *Tiêu đề 36-40pt, phần thân 20-24pt, không nhỏ hơn 20pt. Phông chữ sans-serif Nhật, căn trái.*

---

## Khung kiểm tra phân cấp thị giác
```
【視覚階層チェックリスト】

□ タイトル 32-40pt (Bold)
□ サブメッセージ 24-28pt
□ 本文 (Bullet/根拠) 20-24pt
□ 図表ラベル 18pt 以上 (NG: 14pt以下)
□ フッター/ページ番号 12-14pt

□ フォント統一: Meiryo / 游ゴシック / Noto Sans JP
□ MS明朝・MSゴシック使用禁止 (古い・潰れる)
□ 英数字フォント: Arial / Helvetica / Segoe UI

□ Alignment 左揃え (見出しのみ中央可)
□ 行間 1.3-1.5
□ 余白 上下左右 5%以上

□ コントラスト比: 文字vs背景 4.5:1 以上
□ 背景: 白 or 薄グレー (#F5F5F5)
□ 太字使用は1スライド3箇所以内

□ プロジェクター確認: 後列から読めるか実機テスト
```

---

## Tránh
- Toàn bộ chữ cùng cỡ → không có phân cấp
- Căn giữa phần thân → mắt dò lộn xộn
- MS明朝 / Times New Roman trên máy chiếu → mảnh + mờ
- Nhãn biểu đồ < 18pt → người nghe không đọc nổi
- In đậm quá nhiều → hết tác dụng nhấn mạnh

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 視覚階層 | しかくかいそう | THỊ GIÁC GIAI TẦNG | Phân cấp thị giác |
| フォント | フォント | — | Kiểu chữ |
| 揃え | そろえ | — | Căn lề |
| 余白 | よはく | DƯ BẠCH | Lề trắng / khoảng trống |
| 行間 | ぎょうかん | HÀNH GIAN | Giãn dòng |
| 潰れる | つぶれる | — | Bị bể / mờ (chữ) |
| プロジェクター | プロジェクター | — | Máy chiếu |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000005, 800000006, NULL, 'markdown_book', 'Rule 05 — Tâm lý màu sắc trong Tiếng Nhật công việc / 色彩心理', '# Rule 05 — Tâm lý màu sắc trong Tiếng Nhật công việc / 色彩心理
> **Luận điểm.** Bộ slide kinh doanh Nhật = **bảng màu bảo thủ**: navy / charcoal / xanh dịu làm màu chính, nền xám nhạt, một màu nhấn **chỉ cho nút kêu gọi hành động**. Đỏ giành riêng cho cảnh báo / hành động khẩn — KHÔNG dùng làm trang trí. Quá nhiều màu → "nhà cung cấp ồn ào", mất uy.
>
> 日本ビジネスは保守的色調。ネイビー・チャコール・薄グレーが基本。アクセント1色のみ(CTA用)。赤は警告／緊急のみ — 装飾には使わない。
>
> **Liên quan:** rule 04 (視覚階層), rule 19 (価格スライド), rule 20 (リスク).

---

## Bối cảnh / 場面
Dũng dùng khung mẫu rực rỡ — tiêu đề đỏ, phần thân xanh lá, màu nhấn cam, biểu đồ 7 màu cầu vồng. Hương xem buổi diễn thử → ngay lập tức cản. Khách Hakuō là 老舗 (cty lâu đời) → bảng màu phải phù hợp.

---

## Trường hợp xấu — bảng màu sặc sỡ
*slide開いた瞬間*

| Vai | Câu |
|---------|-----|
| **フオン** | 「うわ、目が痛い。タイトル**赤**？」 <br/>*Ối, chói mắt. Tiêu đề đỏ à?* |
| **ズン** | 「目立つかと思って…緑と<ruby>橙<rt>だいだい</rt></ruby>でアクセント入れました。」 <br/>*Em nghĩ cho nổi bật ạ... còn thêm xanh lá với cam làm accent...* |
| **フオン** | 「白鷗様は**<ruby>老舗<rt>しにせ</rt></ruby>**よ？<ruby>派手<rt>はで</rt></ruby>な色使う相手じゃない。**赤は<ruby>警告<rt>けいこく</rt></ruby>とCTA専用**。<ruby>装飾<rt>そうしょく</rt></ruby>に使うと『<ruby>軽薄<rt>けいはく</rt></ruby>』に見える。」 <br/>*Bên Hakuō là cty lâu đời mà? Không phải đối tượng dùng màu sặc sỡ. Đỏ chỉ dành cho cảnh báo + CTA. Trang trí bằng đỏ = trông nông nổi.* |
| **ズン** | 「あ、すみません…」 <br/>*À, em xin lỗi ạ...* |

**Vì sao xấu:** Đỏ làm tiêu đề trên slide corporate Nhật = tín hiệu "tay mơ" hoặc "spam quảng cáo". Khách 老舗 mong đợi: navy / charcoal — màu của một tổ chức uy tín.

---

## Trường hợp tốt — bảng màu bảo thủ
| Vai | Câu |
|---------|-----|
| **ズン** | 「色を**3色<ruby>制限<rt>せいげん</rt></ruby>**にしました【1】。プライマリ: ネイビー(#1E3A5F)、サブ: チャコール(#3A3A3A)、アクセント: <ruby>白鷗<rt>はくおう</rt></ruby>ブルー(#4A90C2)。<ruby>背景<rt>はいけい</rt></ruby>は薄グレー。」 <br/>*Em đã giới hạn còn 3 màu ạ. Màu chính: navy (#1E3A5F), màu phụ: charcoal (#3A3A3A), màu nhấn: xanh Hakuō (#4A90C2). Phông nền xám nhạt.* |
| **フオン** | 「いいね、白鷗ブランドカラーをアクセントに使うのは**気が<ruby>利<rt>き</rt></ruby>いてる**【2】。CTAボタンは何色？」 <br/>*Ổn, lấy màu thương hiệu Hakuō làm accent thế là khéo đấy. Nút CTA màu gì?* |
| **ズン** | 「**CTAだけオレンジ**(#E67E22)で目立たせます。それ以外オレンジは使いません。」 <br/>*Chỉ riêng CTA dùng cam (#E67E22) cho nổi ạ. Ngoài đó không dùng cam ở đâu khác.* |
| **フオン** | 「正解。赤はリスクスライドの『高リスク』マークだけ。色に意味を<ruby>持<rt>も</rt></ruby>たせる。」 <br/>*Đúng rồi. Đỏ chỉ dành cho mark 「rủi ro cao」 ở slide rủi ro. Mỗi màu phải có nghĩa.* |

 **Ghi chú:**
- 【1】**「3色制限」** — Primary + Sub + 1 Accent. Quá ngần đó = nhiễu thị giác.
- 【2】**「白鷗ブランドカラー」** — Lấy corporate color của khách làm accent = tín hiệu 「đã nghiên cứu kỹ」. Hiệu quả rất lớn.

---

## Cụm từ mẫu
> **「3色制限。ネイビー＋チャコール＋アクセント1色。赤はリスクとCTAだけ。」**
>
> *Tối đa 3 màu. Navy + charcoal + 1 màu nhấn. Đỏ dành riêng cho rủi ro + CTA.*

---

## Tránh
- Biểu đồ 7 màu cầu vồng → người xem không phân biệt được
- 赤 làm màu tiêu đề → trong ngữ cảnh JP corporate = tay mơ
- Nền không phải trắng/xám nhạt → khó in, khó chiếu lên máy chiếu
- Màu nhấn và màu chính tương phản thấp → không nổi
- Chỉ mã hoá bằng màu (vd "đỏ = xấu, xanh = tốt") → bỏ qua đối tượng mù màu. Phải có biểu tượng/chữ kèm theo

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 色彩 | しきさい | SẮC THÁI | Màu sắc |
| 保守的 | ほしゅてき | BẢO THỦ | Bảo thủ |
| 老舗 | しにせ | — | Công ty truyền thống lâu đời |
| 派手 | はで | — | Sặc sỡ / lòe loẹt |
| 警告 | けいこく | CẢNH CÁO | Cảnh báo |
| 装飾 | そうしょく | TRANG SỨC | Trang trí |
| 軽薄 | けいはく | KHINH BẠC | Nhẹ dạ / nông nổi |
| アクセント | アクセント | — | Màu nhấn |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000006, 800000006, NULL, 'markdown_book', 'Rule 06 — Quy tắc mật độ (10-20-30) / 密度ルール', '# Rule 06 — Quy tắc mật độ (10-20-30) / 密度ルール
> **Luận điểm.** Quy tắc **10-20-30** của Guy Kawasaki: tối đa **10 slide / 20 phút / cỡ chữ tối thiểu 30pt** (cho bài thuyết trình tới người tiêu dùng). Điều chỉnh cho B2B Nhật: **10-12 slide / 20-25 phút / 24pt tối thiểu**. Quá đó = người nghe quá tải + khung giờ Q&A bị bóp.
>
> 10-20-30ルール (川崎流)。10枚以内・20分以内・最小30pt。日本B2B版: 10-12枚 / 20-25分 / 最小24pt。これを超えると Q&A 時間が削られる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 04 (視覚階層), rule 13 (時間管理).

---

## Bối cảnh / 場面
Sau khi Hương xem lại, Dũng cộng thêm 4 slide phụ "cho chắc" → quay lại 14 slide. Anh Hà CTO đồng trình bày kiểm tra trước buổi diễn thử cuối → nhận ra ngay nguy cơ tràn thời gian.

---

## Trường hợp xấu — phình số slide
| Vai | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、<ruby>最終版<rt>さいしゅうばん</rt></ruby>14<ruby>枚<rt>まい</rt></ruby>？<ruby>前回<rt>ぜんかい</rt></ruby>10枚って<ruby>言<rt>い</rt></ruby>ってたよね？」 <br/>*Dũng, bản cuối 14 slide à? Lần trước em bảo 10 slide mà?* |
| **ズン** | 「あ、<ruby>念<rt>ねん</rt></ruby>のため4枚<ruby>追加<rt>ついか</rt></ruby>しました。バックアップ<ruby>的<rt>てき</rt></ruby>に…」 <br/>*À, em thêm 4 slide cho chắc ạ. Kiểu dự phòng ấy ạ...* |
| **ハーCTO** | 「30分プレゼン＋15分Q&Aで14枚？1枚2分<ruby>超過<rt>ちょうか</rt></ruby>。**Q&A<ruby>時間<rt>じかん</rt></ruby>が<ruby>消<rt>き</rt></ruby>える**。あと、追加4枚はどれも『<ruby>話<rt>はな</rt></ruby>したい』だけで『<ruby>決<rt>き</rt></ruby>めるのに<ruby>必要<rt>ひつよう</rt></ruby>』じゃない。」 <br/>*30 phút thuyết trình + 15 phút Q&A mà 14 slide? Vượt 2 phút/slide. Q&A sẽ biến mất. Với 4 slide thêm này toàn 「muốn nói」 chứ không phải 「cần để quyết」.* |
| **ズン** | 「えっと…」 <br/>*Ờ ạ...* |

**Vì sao xấu:** "Thêm cho chắc" = phình số lượng kinh điển. Mỗi slide cần 1.5-2 phút (gồm cả chuyển slide + lấy nhịp) → 14 slide × 2 phút = 28 phút → còn 2 phút cho Q&A. Khách Nhật rất quý phần Q&A.

---

## Trường hợp tốt — giữ chặt 10-12 slide
| Vai | Câu |
|---------|-----|
| **ズン** | 「10-20-30ルールで<ruby>再<rt>さい</rt></ruby>audit しました【1】。<ruby>本編<rt>ほんぺん</rt></ruby>10枚、appendix 5枚は<ruby>質問<rt>しつもん</rt></ruby><ruby>対応用<rt>たいおうよう</rt></ruby>（<ruby>必要<rt>ひつよう</rt></ruby>なら<ruby>出<rt>だ</rt></ruby>す）。」 <br/>*Em đã rà soát lại theo quy tắc 10-20-30 ạ. Phần chính 10 slide, phụ lục 5 slide để trả lời câu hỏi (cần thì hiện ra).* |
| **ハーCTO** | 「いいね、appendix <ruby>分離<rt>ぶんり</rt></ruby>は<ruby>正<rt>ただ</rt></ruby>しい。本編10枚 × 2分 = 20分、<ruby>自己紹介<rt>じこしょうかい</rt></ruby>+<ruby>背景<rt>はいけい</rt></ruby>3分、Q&A 7分の<ruby>枠<rt>わく</rt></ruby>で30分<ruby>内<rt>ない</rt></ruby>。」 <br/>*Được, tách phụ lục là đúng. Phần chính 10 slide × 2 phút = 20 phút, giới thiệu + bối cảnh 3 phút, Q&A 7 phút — nằm gọn trong 30 phút.* |
| **ズン** | 「**フォントは<ruby>最小<rt>さいしょう</rt></ruby>24pt**で<ruby>統一<rt>とういつ</rt></ruby>【2】、appendix も<ruby>同<rt>おな</rt></ruby>じです。」 <br/>*Phông chữ em thống nhất tối thiểu 24pt ạ, appendix cũng vậy.* |
| **ハーCTO** | 「OK。<ruby>本番<rt>ほんばん</rt></ruby>で14枚出すと『<ruby>準備不足<rt>じゅんびぶそく</rt></ruby>』に<ruby>見<rt>み</rt></ruby>える、10枚 + appendix の<ruby>構成<rt>こうせい</rt></ruby>は『きっちり<ruby>感<rt>かん</rt></ruby>』が<ruby>出<rt>で</rt></ruby>る。」 <br/>*OK. Trên thực tế chiếu 14 slide trông như 「chuẩn bị chưa kỹ」. 10 slide + phụ lục mới ra 「chỉn chu」.* |

 **Ghi chú:**
- 【1】**10-20-30ルール** — Bản gốc dùng cho người tiêu dùng. JP B2B 版は 10-12 / 20-25 / 24pt min. Tách phụ lục = tín hiệu mạnh thể hiện sự chuẩn bị kỹ.
- 【2】**「最小24pt」** — Rule 04 と整合. Đọc được trên cả máy chiếu hàng cuối lẫn khi chia sẻ màn hình.

---

## Cụm từ mẫu
> **「<ruby>本編<rt>ほんぺん</rt></ruby>10-12<ruby>枚<rt>まい</rt></ruby>、20-25分、24pt<ruby>以上<rt>いじょう</rt></ruby>。+ Appendix <ruby>分離<rt>ぶんり</rt></ruby>。Q&A <ruby>時間<rt>じかん</rt></ruby>を<ruby>死守<rt>ししゅ</rt></ruby>。」**
>
> *Phần chính 10-12 slide, 20-25 phút, tối thiểu 24pt. Phụ lục tách riêng. Bảo vệ khung giờ Q&A.*

---

## 計算公式 — Slide budget
```
利用時間 = 30分
- 自己紹介・挨拶: 2分
- 背景・アジェンダ: 3分
- Q&A: 7分 (確保)
-------------
本編に使える時間: 18分

本編スライド数 = 18分 ÷ 1.5-2分/枚 = 9-12枚

→ 10枚が安全ゾーン
```

---

## Tránh
- 「念のため追加」 → phình số slide, 100% sẽ xảy ra nếu không siết chặt
- 1 slide < 30 giây → người nghe không kịp tiếp nhận, vô nghĩa
- 1 slide > 3 phút → người nghe mất tập trung
- Bỏ ngân sách thời gian cho Q&A → khách Nhật nhìn nhận là "không có chỗ thảo luận = không tự tin"
- 24pt cho phần thân trên máy chiếu vẫn hơi nhỏ → kiểm tra thực tế

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 密度 | みつど | MẬT ĐỘ | Mật độ |
| 念のため | ねんのため | NIỆM | Cho chắc / phòng hờ |
| 削られる | けずられる | TƯỚC | Bị cắt giảm |
| 監査 | かんさ | GIÁM TRA | Kiểm tra / soát xét |
| 死守 | ししゅ | TỬ THỦ | Bảo vệ tới cùng |
| 追加 | ついか | TRUY GIA | Thêm vào |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000007, 800000006, NULL, 'markdown_book', 'Rule 07 — Phương án dự phòng (Plan B) / バックアップ計画', '# Rule 07 — Phương án dự phòng (Plan B) / バックアップ計画
> **Luận điểm.** Danh sách kiểm tra trước buổi trình bày phải có **5 lớp dự phòng**: ① bộ slide PDF (USB + đám mây), ② demo không cần mạng (DB nội bộ / dữ liệu giả lập), ③ phát Wi-Fi từ điện thoại, ④ bộ 3 đầu chuyển đổi HDMI / USB-C / VGA, ⑤ tài liệu in phát tay 5 bản. Sự cố kỹ thuật không phải "nếu" mà là "khi nào". Plan B chuẩn bị trước = khôi phục 2 phút thay vì 15 phút.
>
> プレゼン直前チェックリスト5点: ①PDFバックアップ、②オフラインデモ、③モバイルテザリング、④アダプタ3種、⑤印刷配布5部。トラブルは『if』ではなく『when』。準備済みなら2分で復旧。
>
> **Liên quan:** rule 01 (準備7問⑦), rule 31 (技術トラブル復旧), rule 29 (オンライン).

---

## Bối cảnh / 場面
Ngày trước buổi trình bày, Hải DevOps tình cờ ngang qua phòng họp lúc Dũng kiểm tra → phát hiện: máy tính xách tay chưa có đầu chuyển HDMI, bộ slide chỉ ở Dropbox (cần mạng), demo gọi API trực tiếp. Một sự cố là toàn bộ bế tắc.

---

## Trường hợp xấu — một điểm chết duy nhất
*覗いて*

| Vai | Câu |
|---------|-----|
| **ハイ** | 「ズン、明日プレゼン？スライドどこ？」 <br/>*Dũng, mai trình bày hả? Slide ở đâu?* |
| **ズン** | 「Dropboxです。明日 Wi-Fi 借りて開きます。」 <br/>*Trên Dropbox ạ. Mai mượn Wi-Fi mở.* |
| **ハイ** | 「Dropbox オンリー？**Wi-Fi 落ちたら deck 開けない**よ。デモは？」 <br/>*Mỗi Dropbox? Wi-Fi rớt là không mở được bộ slide đâu. Còn demo?* |
| **ズン** | 「ライブAPI呼ぶ<ruby>実装<rt>じっそう</rt></ruby>で…」 <br/>*Em implement gọi API live ạ...* |
| **ハイ** | 「**全部 single point of failure**。明日朝3時に起きて<ruby>慌<rt>あわ</rt></ruby>てる前に、今日Plan B 揃えよう。」 <br/>*Toàn điểm chết duy nhất đấy. Trước khi 3h sáng mai dậy hoảng loạn, hôm nay tụi mình lo Plan B đi.* |

**Vì sao xấu:** Bộ slide chỉ trên đám mây + demo gọi API trực tiếp + 1 dây cáp = 3 điểm rủi ro độc lập. Bất kỳ điểm nào hỏng là buổi trình bày đổ vỡ. Khách Nhật đặc biệt không nương tay khi xảy ra sự cố kỹ thuật.

---

## Trường hợp tốt — danh sách dự phòng 5 điểm
| Vai | Câu |
|---------|-----|
| **ズン** | 「ハイさん、ありがとう。**Plan Bチェックリスト**【1】で揃えました。①PDF版 USB+ローカル、②オフラインデモ<ruby>準備<rt>じゅんび</rt></ruby>、③テザリング<ruby>有効<rt>ゆうこう</rt></ruby>、④HDMI+USB-C+VGAアダプタ<ruby>持参<rt>じさん</rt></ruby>、⑤<ruby>印刷<rt>いんさつ</rt></ruby>5部。」 <br/>*Anh Hải, cảm ơn anh ạ. Em đã chuẩn bị xong theo danh sách kiểm tra Plan B. ① Bản PDF trên USB + local, ② demo offline, ③ phát mạng di động bật sẵn, ④ mang HDMI + USB-C + VGA bộ chuyển đổi, ⑤ in 5 bản.* |
| **ハイ** | 「いいね。USB は2本？1本<ruby>紛失<rt>ふんしつ</rt></ruby>リスク。」 <br/>*OK. USB 2 chiếc đúng không? 1 chiếc rủi ro mất đấy.* |
| **ズン** | 「2本持参します。**もう1本はトゥアンさんに渡します**【2】(co-presenter として<ruby>保険<rt>ほけん</rt></ruby>)。」 <br/>*Em mang 2 chiếc ạ. Một chiếc đưa anh Tuấn (dự phòng với tư cách người đồng trình bày).* |
| **ハイ** | 「<ruby>正解<rt>せいかい</rt></ruby>。それと PDF はクライアント側にも<ruby>事前共有<rt>じぜんきょうゆう</rt></ruby>しておくと、最悪『<ruby>画面共有<rt>がめんきょうゆう</rt></ruby>なしで紙ベース』に切り替えできる。」 <br/>*Chuẩn. Với cả PDF chia sẻ trước cho khách luôn — tệ nhất thì chuyển sang 「không chia sẻ màn hình, chỉ dùng giấy」 cũng được.* |

 **Ghi chú:**
- 【1】**「Plan B チェックリスト」** — 24h trước buổi trình bày kiểm tra 1 lượt, sáng ngày trình bày kiểm tra lần cuối. 5項目全部  で安心.
- 【2】**「トゥアンさんに渡します」** — Có người đồng trình bày thì có dự phòng. 1 người đến muộn / mất kết nối thì người kia thay.

---

## Cụm từ mẫu
> **「Plan B 5点: PDF / オフラインデモ / テザリング / アダプタ3種 / <ruby>印刷<rt>いんさつ</rt></ruby>5部。Tech failure は『when』であって『if』ではない。」**
>
> *5 điểm dự phòng. Sự cố kỹ thuật là chuyện khi nào, không phải có hay không.*

---

## Khung danh sách kiểm tra dự phòng trước buổi trình bày
```
【プレゼン Plan B チェックリスト】(24時間前 + 当日朝)

■ スライド (Slides)
□ PowerPoint/Keynote 元ファイル: クラウド + ローカル
□ PDF版: USB×2本 + ローカル + クラウド
□ Google Slides Web版バックアップ
□ 印刷配布版: 主要スライドのみ 5-10部

■ デモ (Demo)
□ オフライン版デモ (local DB / mock data)
□ 録画版デモ (.mp4 USB+ローカル) — 最終の最終
□ デモ用 test account 動作確認

■ ネットワーク (Network)
□ モバイルテザリング有効 (4G/5G)
□ ポケットWi-Fi 充電済み (予備)
□ オフライン優先モード設定済み

■ 機材 (Equipment)
□ HDMI ケーブル
□ USB-C → HDMI / VGA アダプタ
□ Lightning → HDMI (iPad backup用)
□ 充電器 + 延長コード
□ レーザーポインター (電池予備)

■ 配布物 (Tài liệu phát)
□ 名刺 20枚以上
□ 印刷スライド主要部 5部
□ 会社案内 / 過去事例集 5部

■ 担当者間 (Team redundancy)
□ Co-presenter にも USB 1本
□ Slack で deck PDF を相互送信
□ 万一の連絡先メモ (ホテル / タクシー会社 等)

■ 当日朝 final
□ 機材 全 connect テスト
□ 音声 / 画面共有 テスト
□ Q&A appendix スライド再確認
```

---

## Tránh
- Bộ slide chỉ để trên đám mây → mất mạng = không trình bày được
- Demo gọi API trực tiếp mà không có phương án không cần mạng → rớt 1 kết nối = hỏng toàn bộ
- Chỉ 1 USB → thất lạc = hoảng loạn
- Bộ chuyển đổi chỉ 1 loại → khách dùng VGA/USB-C khác là toang
- Kiểm tra ở văn phòng mình rồi yên tâm → môi trường khách khác hẳn

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| バックアップ | バックアップ | — | Dự phòng |
| 復旧 | ふっきゅう | PHỤC CỰU | Khôi phục |
| 慌てる | あわてる | — | Hoảng loạn |
| 紛失 | ふんしつ | PHÂN THẤT | Thất lạc / mất |
| 保険 | ほけん | BẢO HIỂM | Bảo hiểm / dự phòng |
| 配布 | はいふ | PHỐI BỐ | Phát ra (tài liệu phát tay) |
| テザリング | テザリング | — | Phát Wi-Fi từ điện thoại |
| アダプタ | アダプタ | — | Đầu chuyển đổi |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000008, 800000006, NULL, 'markdown_book', 'Rule 08 — 30 giây mở đầu thu hút / 30秒オープニング', '# Rule 08 — 30 giây mở đầu thu hút / 30秒オープニング
> **Luận điểm.** 30 giây đầu **quyết định sự chú ý**. Người nghe Nhật quyết định "có nghe nghiêm túc hay lơ đãng bỏ ngoài tai" trong nửa phút đầu. Mở đầu phải **chạm vào nỗi đau của người nghe**, không phải "今日はお時間いただきありがとうございます…" rồi đi vòng. Cấu trúc: **Mở đầu (10s) → Mức độ quan trọng (10s) → Cam kết (10s)**.
>
> 最初の30秒で聴衆の集中を確保。「Hook(10s)→Stake(10s)→Promise(10s)」の構造。聴衆の痛みに直接触れる。
>
> **Liên quan:** rule 09 (自己紹介), rule 11 (フック3パターン), rule 13 (時間管理).

---

## Bối cảnh / 場面
Ngày trình bày chính thức. Dũng đứng đầu phòng, Matsumoto + Ōgaki + Tanaka + 2 nhân viên Hakuō ngồi đối diện. 30 giây đầu — Dũng có 2 cách mở đầu.

---

## Trường hợp xấu — lời chào rập khuôn ngốn hết 30 giây
*立ち上がって · 時計を見る · ノートを見つめる*

| Vai | Câu |
|---------|-----|
| **ズン** | 「皆様、本日はお忙しい中お時間をいただきまして、誠にありがとうございます。ティエンファットの**ズン**と<ruby>申<rt>もう</rt></ruby>します。本日は Phase 3 のご<ruby>提案<rt>ていあん</rt></ruby>をさせていただきます。それでは、まず<ruby>弊社<rt>へいしゃ</rt></ruby>のご<ruby>紹介<rt>しょうかい</rt></ruby>から…」 <br/>*Kính thưa quý vị, em xin chân thành cảm ơn quý vị đã dành thời gian quý báu cho buổi hôm nay ạ. Em là Dũng bên Thiên Phát ạ. Hôm nay em xin trình bày đề xuất Phase 3 ạ. Vậy, đầu tiên em xin giới thiệu về bên em ạ...* |
| **大垣** | 「(……長いな)」 <br/>*(...Dài thế nhỉ)* |
| **松本** | 「(……早く本題)」 <br/>*(...Vào đề mau lên đi)* |

**Vì sao xấu:** 30 giây của Dũng dùng hết cho lời chào rập khuôn + giới thiệu công ty → người nghe chưa nghe gì có giá trị, sự chú ý đã rớt. Không có phần mở đầu thu hút.

---

## Trường hợp tốt — Mở đầu → Mức độ quan trọng → Cam kết
*姿勢を整え · 顔を上げる · ペン構える*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**Phase 2 で<ruby>在庫差異<rt>ざいこさい</rt></ruby>5%を1.8%まで<ruby>削減<rt>さくげん</rt></ruby>いたしました**【1】。(間2秒) しかし、<ruby>季節商品<rt>きせつしょうひん</rt></ruby>で<ruby>再発<rt>さいはつ</rt></ruby>しております。本日30分で、その**<ruby>残課題<rt>ざんかだい</rt></ruby>をどう<ruby>解<rt>と</rt></ruby>くか**【2】、Phase 3 の<ruby>方向性<rt>ほうこうせい</rt></ruby>を決めたく<ruby>存<rt>ぞん</rt></ruby>じます。私、ティエンファットのズンと申します。」 <br/>*Phase 2 đã giảm sai lệch tồn kho từ 5% xuống 1.8% ạ. (im 2 giây) Tuy nhiên, đang tái phát ở hàng theo mùa. Trong 30 phút hôm nay, em mong muốn cùng quý vị quyết hướng đi Phase 3 — giải bài toán còn lại đó. Em xin tự giới thiệu, em là Dũng bên Thiên Phát ạ.* |
| **大垣** | 「(……お、ちゃんと数字から入った)」 <br/>*(...Ồ, vào thẳng bằng số liệu đấy)* |
| **松本** | 「結構です、続けてください。」 <br/>*Được, mời em tiếp tục.* |

 **Ghi chú:**
- 【1】**「Phase 2 で...削減」** — Hook = 数字 + 既知の事実. 聴衆は5秒で「自分の話」と認識.
- 【2】**「残課題をどう解くか」** — Stake (今日決めること) を明示. これで「聞く理由」が生まれる.

---

## Cụm từ mẫu
> **「30秒 = Hook(<ruby>数字<rt>すうじ</rt></ruby> or <ruby>質問<rt>しつもん</rt></ruby> or ストーリー) → Stake(今日決めること) → Promise(時間と output)。」**
>
> *30 giây = Mở đầu (số liệu / câu hỏi / câu chuyện) → Mức độ quan trọng (hôm nay quyết gì) → Cam kết (bao lâu + đầu ra).*

---

## Tránh
- "本日はお忙しい中…" mở đầu rập khuôn — bắt buộc nhưng không phải phần thu hút
- Giới thiệu công ty trước khi vào phần thu hút → người nghe không cảm thấy chuyện liên quan
- Phần mở đầu dài >15s → đã rơi vào "kể chuyện lê thê", không còn lực đấm
- Đọc phần mở đầu từ slide → bị nhạt. Phần này PHẢI nói thuộc lòng + giao tiếp bằng mắt

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 削減 | さくげん | TƯỚC GIẢM | Cắt giảm |
| 再発 | さいはつ | TÁI PHÁT | Tái phát |
| 残課題 | ざんかだい | TỒN KHÓA ĐỀ | Vấn đề còn lại |
| 方向性 | ほうこうせい | PHƯƠNG HƯỚNG | Hướng đi |
| 集中 | しゅうちゅう | TẬP TRUNG | Tập trung |
| 痛み | いたみ | THỐNG | Nỗi đau / điểm khó khăn |
| 構える | かまえる | CẤU | Sẵn sàng (cầm bút v.v.) |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000009, 800000006, NULL, 'markdown_book', 'Rule 09 — Tự giới thiệu khi thuyết trình / プレゼン自己紹介', '# Rule 09 — Tự giới thiệu khi thuyết trình / プレゼン自己紹介
> **Luận điểm.** Khác với 名刺交換 (sách 03 rule 11), tự giới thiệu khi thuyết trình phải có **lý do chọn mình**: 1 câu thể hiện độ tin cậy liên quan đến chủ đề. Cấu trúc 3 câu: ① Cty + tên, ② Vai trò trong dự án, ③ **Lý do chọn mình** (kinh nghiệm liên quan, KHÔNG phải toàn bộ sơ yếu lý lịch). Tổng 30 giây.
>
> 名刺交換と違い、プレゼンの自己紹介は『why-me』が必須。3文構成: ①社名＋氏名 ②本案件での役割 ③本テーマでの実績(1点)。30秒以内。
>
> **Liên quan:** rule 08 (30秒オープニング), sách 03 rule 10 (自己紹介), rule 32 (chuyển giao giữa các người trình bày).

---

## Bối cảnh / 場面
Sau phần mở đầu thu hút, Dũng đến phần tự giới thiệu. Phòng có Matsumoto đã quen Dũng nhưng Ōgaki chỉ gặp 1 lần ở Sách 03. Dũng có 2 lựa chọn: kiểu dài liệt kê sơ yếu lý lịch hay 3-câu gọn.

---

## Trường hợp xấu — kể hết sơ yếu lý lịch
*時計 · 40秒経過*

| Vai | Câu |
|---------|-----|
| **ズン** | 「私、ティエンファット社の Trần Văn Dũng と<ruby>申<rt>もう</rt></ruby>します。2024<ruby>年<rt>ねん</rt></ruby>4<ruby>月<rt>がつ</rt></ruby>に<ruby>新卒入社<rt>しんそつにゅうしゃ</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>半年<rt>はんとし</rt></ruby>は<ruby>研修<rt>けんしゅう</rt></ruby>、<ruby>次<rt>つぎ</rt></ruby>に Phase 1 の<ruby>調査<rt>ちょうさ</rt></ruby>…Phase 2 では<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>の<ruby>下<rt>もと</rt></ruby>…<ruby>現在<rt>げんざい</rt></ruby>は…」 <br/>*Em là Trần Văn Dũng bên cty Thiên Phát ạ. Em vào công ty tháng 4 năm 2024, nửa năm đầu training, rồi Phase 1 nghiên cứu... Phase 2 thì dưới sự chỉ bảo của anh Matsumoto... hiện tại là...* |
| **大垣** | 「(……いつ<ruby>終<rt>お</rt></ruby>わる)」 <br/>*(...Khi nào xong vậy)* |
| **ズン** | 「…そして<ruby>本日<rt>ほんじつ</rt></ruby>、Phase 3 の<ruby>責任者<rt>せきにんしゃ</rt></ruby>を<ruby>任<rt>まか</rt></ruby>されました。」 <br/>*...Và hôm nay, em được giao trách nhiệm chính cho Phase 3 ạ.* |

**Vì sao xấu:** 40 giây sơ yếu lý lịch — người nghe không cần biết lịch sử nghề nghiệp. Cần biết "tại sao em đang đứng đây trình bày phần này". Phần lai lịch dài làm Ōgaki phải xem giờ.

---

## Trường hợp tốt — 3 câu gọn
| Vai | Câu |
|---------|-----|
| **ズン** | 「私、ティエンファットのズンと<ruby>申<rt>もう</rt></ruby>します【1】。<ruby>本日<rt>ほんじつ</rt></ruby>は **Phase 3 の<ruby>主担当<rt>しゅたんとう</rt></ruby>**としてご<ruby>提案<rt>ていあん</rt></ruby>いたします【2】。Phase 2 で**<ruby>在庫差異<rt>ざいこさい</rt></ruby>の<ruby>削減<rt>さくげん</rt></ruby>ロジック**を<ruby>担当<rt>たんとう</rt></ruby>しており、<ruby>本案件<rt>ほんあんけん</rt></ruby>はその<ruby>継続<rt>けいぞく</rt></ruby>でございます【3】。」 <br/>*Em là Dũng, bên Thiên Phát ạ. Hôm nay em xin trình bày với tư cách phụ trách chính Phase 3 ạ. Em đã phụ trách phần logic giảm sai lệch tồn kho ở Phase 2, dự án lần này là phần kế tiếp đó ạ.* |
| **松本** | 「はい、よろしくお願いします。」 <br/>*Vâng, mong em giúp đỡ.* |
| **ズン** | 「<ruby>右側<rt>みぎがわ</rt></ruby>のトゥアンが<ruby>技術<rt>ぎじゅつ</rt></ruby>リード、<ruby>後<rt>のち</rt></ruby>ほどデモパートを<ruby>担当<rt>たんとう</rt></ruby>いたします。それでは<ruby>本題<rt>ほんだい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。」 <br/>*Anh Tuấn bên phải là trưởng nhóm kỹ thuật, sẽ phụ trách phần demo sau ạ. Vậy em xin vào đề ạ.* |

 **Ghi chú:**
- 【1】**「ティエンファットのズン」** — KHÔNG dùng "社" (ティエンファット社) khi tự xưng (ウチ rule).
- 【2】**「主担当としてご提案」** — Vai trò trong dự án này, không phải chức danh chung chung.
- 【3】**Lý do chọn mình** — 1 câu thể hiện độ tin cậy liên quan trực tiếp. "Phase 2 で〇〇を担当 → 本案件はその継続" là công thức mạnh.

---

## Cụm từ mẫu
> **「3<ruby>文<rt>ぶん</rt></ruby><ruby>構成<rt>こうせい</rt></ruby>: ① <ruby>社名<rt>しゃめい</rt></ruby>＋<ruby>名前<rt>なまえ</rt></ruby> ② <ruby>本案件<rt>ほんあんけん</rt></ruby>での<ruby>役割<rt>やくわり</rt></ruby> ③ Why-me 1<ruby>点<rt>てん</rt></ruby>。30<ruby>秒<rt>びょう</rt></ruby><ruby>以内<rt>いない</rt></ruby>。」**
>
> *3 câu: tên cty + mình, vai trò dự án, 1 điểm độ tin cậy liên quan. Trong 30 giây.*

---

## Tránh
- Liệt kê toàn bộ sơ yếu lý lịch → người nghe không quan tâm
- Liệt kê toàn bộ kỹ năng → phần "lý do chọn mình" phải LIÊN QUAN chủ đề
- Quên giới thiệu người trình bày cùng → chuyển giao không trơn tru (xem rule 32)
- "ティエンファット**社**のズン" — dùng "社" khi tự xưng = sai kính ngữ
- Phần "lý do chọn mình" quá tự tin ("私は専門家") → trong văn hóa Nhật = kiêu ngạo. Dùng 「担当しており」「経験がございます」

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 主担当 | しゅたんとう | CHỦ ĐẢM ĐƯƠNG | Người phụ trách chính |
| 継続 | けいぞく | KẾ TỤC | Tiếp tục / kế thừa |
| 任される | まかされる | NHẬM | Được giao trách nhiệm |
| 実績 | じっせき | THỰC TÍCH | Thành tích / kinh nghiệm |
| 信頼性 | しんらいせい | TÍN LẠI | Độ tin cậy |
| 専門家 | せんもんか | CHUYÊN MÔN GIA | Chuyên gia |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000010, 800000006, NULL, 'markdown_book', 'Rule 10 — Bối cảnh + trình bày chương trình / 背景＋アジェンダ発話', '# Rule 10 — Bối cảnh + trình bày chương trình / 背景＋アジェンダ発話
> **Luận điểm.** Sau phần mở đầu, dẫn người nghe qua **背景 (1分) → 課題 (30s) → アジェンダ (30s)**. Cấu trúc 2 phút "dựng sân khấu". Đừng đọc chương trình như mục lục — hãy nói "**今日は3つお話しします: A、B、最後にC**" rồi liệt số rõ ràng. Người nghe Nhật cần "biết trước bộ slide dài bao nhiêu phần".
>
> イントロ後の2分で『背景→課題→アジェンダ』。アジェンダは『3つお話しします』と数を明示してから A/B/C を言う。
>
> **Liên quan:** rule 03 (SCQA), rule 14 (論理マーカー), rule 13 (時間管理).

---

## Bối cảnh / 場面
Sau phần tự giới thiệu, Dũng vào phần bối cảnh. Slide 1 hiện 5 gạch đầu dòng "今日のアジェンダ" — Dũng có thể đọc list hoặc nói câu dẫn cấu trúc.

---

## Trường hợp xấu — đọc danh sách chương trình
*slideを見て*

| Vai | Câu |
|---------|-----|
| **ズン** | 「アジェンダです。1つ目、Phase 2 <ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>り。2つ目、<ruby>課題<rt>かだい</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>。3つ目、Phase 3 <ruby>提案<rt>ていあん</rt></ruby>。4つ目、スケジュール。5つ目、<ruby>価格<rt>かかく</rt></ruby>。6つ目、リスク。<ruby>以上<rt>いじょう</rt></ruby>です。次のスライドに行きます。」 <br/>*Đây là chương trình ạ. Mục 1, nhìn lại Phase 2. Mục 2, phân tích vấn đề. Mục 3, đề xuất Phase 3. Mục 4, tiến độ. Mục 5, giá. Mục 6, rủi ro. Hết ạ. Em sang slide tiếp ạ.* |
| **大垣** | 「(……6<ruby>項目<rt>こうもく</rt></ruby>もあるのか、長そうだな)」 <br/>*(...Tận 6 mục, có vẻ dài đấy)* |

**Vì sao xấu:** 6項目は多すぎ感. Đọc đều đều như danh sách không cho người nghe thấy thứ tự ưu tiên. Không nói "本日決めたいこと" → không có điểm neo.

---

## Trường hợp tốt — cấu trúc + điểm neo
*間*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**まず<ruby>背景<rt>はいけい</rt></ruby>**を1分でお<ruby>伝<rt>つた</rt></ruby>えします【1】。Phase 2 で<ruby>在庫<rt>ざいこ</rt></ruby><ruby>差異<rt>さい</rt></ruby>を5%→1.8%まで<ruby>削減<rt>さくげん</rt></ruby>できましたが、<ruby>季節<rt>きせつ</rt></ruby><ruby>商品<rt>しょうひん</rt></ruby>で<ruby>再発<rt>さいはつ</rt></ruby>しております。**この再発をどう<ruby>解<rt>と</rt></ruby>くか**が本日の<ruby>論点<rt>ろんてん</rt></ruby>です。」 <br/>*Đầu tiên, em xin trình bày bối cảnh trong 1 phút ạ. Phase 2 đã giảm sai lệch tồn kho từ 5% xuống 1.8%, tuy nhiên hiện đang tái phát ở hàng theo mùa. Cách giải bài toán tái phát này chính là điểm bàn hôm nay ạ.* |
| **ズン** | 「本日は **大きく3<ruby>部構成<rt>ぶこうせい</rt></ruby>**でお話しします【2】。**第1部**: <ruby>残課題<rt>ざんかだい</rt></ruby>の<ruby>分析<rt>ぶんせき</rt></ruby>(5分)、**第2部**: Phase 3 <ruby>提案<rt>ていあん</rt></ruby>とデモ(15分)、**第3部**: スケジュール・<ruby>価格<rt>かかく</rt></ruby>・リスク(5分)。最後に **Q&A 7分**。本日のゴールは Phase 3 の **<ruby>方向性<rt>ほうこうせい</rt></ruby><ruby>決定<rt>けってい</rt></ruby>**でございます【3】。」 <br/>*Hôm nay em xin trình bày theo 3 phần lớn ạ. Phần 1: phân tích vấn đề còn lại (5 phút), Phần 2: đề xuất Phase 3 + trình diễn thực tế (15 phút), Phần 3: tiến độ + giá + rủi ro (5 phút). Cuối cùng Q&A 7 phút. Mục tiêu hôm nay là quyết được hướng đi cho Phase 3 ạ.* |
| **松本** | 「分かりました、進めてください。」 <br/>*Rõ rồi, em tiếp tục đi.* |

 **Ghi chú:**
- 【1】**「まず〇〇を〇分で」** — Mốc thời gian giúp người nghe theo dõi tiến độ.
- 【2】**「大きく3部構成で」** — Gộp 6 mục thành 3 phần. 認知負荷 (tải nhận thức) giảm rõ rệt.
- 【3】**「本日のゴールは...決定」** — Tuyên bố điểm neo. Liên kết với rule 13 (時間管理約束).

---

## Cụm từ mẫu
> **「背景1分 → 論点1文 → 大きく〇部構成 → ゴール宣言。アジェンダは数字でグループ化。」**
>
> *Bối cảnh 1 phút → 1 câu vấn đề → "chia 〇 phần lớn" → tuyên bố mục tiêu. Gộp chương trình thành số nhỏ.*

---

## Tránh
- Đọc chương trình như danh sách 6-7 mục — gây quá tải
- Bỏ qua "本日のゴール" — người nghe không biết thế nào là thành công
- Bối cảnh dài quá 2 phút — bóp quỹ thời gian phần trình bày chính
- Không có "間" (khoảng lặng) giữa bối cảnh và phần chương trình — mạch bị dồn cục

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 背景 | はいけい | BỐI CẢNH | Bối cảnh |
| 論点 | ろんてん | LUẬN ĐIỂM | Vấn đề / điểm bàn |
| 構成 | こうせい | CẤU THÀNH | Cấu trúc |
| 第1部 | だいいちぶ | ĐỆ NHẤT BỘ | Phần 1 |
| ゴール | ゴール | — | Mục tiêu |
| 振り返り | ふりかえり | — | Nhìn lại |
| 分析 | ぶんせき | PHÂN TÍCH | Phân tích |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000011, 800000006, NULL, 'markdown_book', 'Rule 11 — 3 kiểu mở đầu thu hút / フックの3パターン (câu chuyện / số liệu / câu hỏi)', '# Rule 11 — 3 kiểu mở đầu thu hút / フックの3パターン (câu chuyện / số liệu / câu hỏi)
> **Luận điểm.** 3 công thức mở đầu thu hút chính: **(A) Câu chuyện** (ngắn, 30 giây), **(B) Số liệu** (con số gây sốc), **(C) Câu hỏi** (tu từ). Chọn 1 theo đối tượng + chủ đề. Khách Nhật bảo thủ thường phản ứng tốt nhất với **(B) Số liệu** (an toàn) > (C) Câu hỏi > (A) Câu chuyện (rủi ro nếu không khéo léo).
>
> 3パターン: ストーリー/データ/質問。聴衆×テーマで選ぶ。日本顧客にはデータ型が一番安全、次に質問型、ストーリー型は技量次第。
>
> **Liên quan:** rule 08 (30秒オープニング), rule 12 (ムード作り), rule 18 (顧客の声).

---

## Bối cảnh / 場面
Tuần trước buổi trình bày, Linh (thực tập sinh) sắp trình bày lần đầu cho 1 khách hàng nhỏ. Hỏi Dũng "anh dùng kiểu nào?" Dũng giải thích 3 kiểu + cách chọn.

---

## Trường hợp xấu — chọn sai kiểu mở đầu
| Vai | Câu |
|---------|-----|
| **リン** | 「ズン先輩、明日のプレゼン、ストーリー型でいきます。学生時代に手作業で<ruby>在庫<rt>ざいこ</rt></ruby>管理した話で…」 <br/>*Anh Dũng, mai trình bày em đi kiểu câu chuyện. Kể chuyện thời sinh viên em quản lý kho thủ công ấy ạ...* |
| **ズン** | 「相手 50代の<ruby>中小企業<rt>ちゅうしょうきぎょう</rt></ruby>オーナー？大丈夫？ストーリー型は**<ruby>滑<rt>すべ</rt></ruby>ったら30秒で終わる**。データはある？」 <br/>*Khách là chủ doanh nghiệp vừa và nhỏ ngoài 50 tuổi đúng không? Ổn không đó? Kiểu câu chuyện mà trượt là chết trong 30 giây luôn. Em có số liệu không?* |
| **リン** | 「『手作業で1日3時間』みたいなデータは…」 <br/>*Em có dạng 「thủ công 3 tiếng/ngày」 thì có ạ...* |
| **ズン** | 「それ data 型でいけるじゃん。**『1日3時間の手作業を15分に<ruby>圧縮<rt>あっしゅく</rt></ruby>』**って数字で入る方が安全。」 <br/>*Vậy đi kiểu số liệu luôn được mà. Vào thẳng bằng số 「nén 3 tiếng thủ công xuống 15 phút」 — an toàn hơn.* |

**Vì sao xấu:** Linh chọn kiểu câu chuyện cho đối tượng chưa quen, chưa có sự gắn kết → rủi ro cao. Kiểu câu chuyện cần kỹ năng trình bày cao + đối tượng cởi mở.

---

## Trường hợp tốt — chọn kiểu phù hợp với người nghe
| Vai | Câu |
|---------|-----|
| **ズン** | 「3パターンの選び方を教えるね【1】。**(A) ストーリー型**: rapport ある相手 + 自分の delivery 自信ある時。**(B) データ型**: <ruby>初対面<rt>しょたいめん</rt></ruby> + <ruby>保守的<rt>ほしゅてき</rt></ruby>相手。**(C) 質問型**: 相手が<ruby>議論<rt>ぎろん</rt></ruby>モードに入ってる時。」 <br/>*Để anh chỉ cách chọn 3 kiểu nhé. (A) Câu chuyện: khi đã có sự gắn kết + tự tin cách trình bày. (B) Số liệu: lần đầu gặp + khách bảo thủ. (C) Câu hỏi: khi khách đã ở chế độ thảo luận.* |
| **リン** | 「私の場合は B ですね。50代オーナー、初対面、保守的。」 <br/>*Trường hợp em là B đúng không ạ. Chủ ngoài 50 tuổi, lần đầu gặp, bảo thủ.* |
| **ズン** | 「正解。Bは『**<ruby>驚<rt>おどろ</rt></ruby>き数字 → だからこの話**』の流れ。**『手作業で1日3時間使っているこの作業、15分に<ruby>圧縮<rt>あっしゅく</rt></ruby>できます』** で30秒成立【2】。」 <br/>*Đúng rồi. Kiểu B đi theo nhịp 「số gây sốc → vì vậy chuyện này」. Câu 「Cái việc thủ công ngốn 3 tiếng/ngày này, có thể nén xuống 15 phút」 là đủ 30 giây.* |
| **リン** | 「シンプルですね…練習します。」 <br/>*Đơn giản thế ạ... em sẽ luyện ạ.* |

 **Ghi chú:**
- 【1】**3 tiêu chí chọn kiểu** — Câu chuyện = kỹ năng cao + có sự gắn kết. Số liệu = lựa chọn mặc định an toàn. Câu hỏi = đối tượng đã sẵn sàng tham gia thảo luận.
- 【2】**「驚き数字 → だからこの話」** — Công thức mở đầu thu hút bằng số liệu. Con số + nỗi đau tạo cảm giác 「của chính mình」 cho đối tượng.

---

## Cụm từ mẫu
> **「保守的相手・初対面 → データ型。Rapport あり → ストーリー型。議論モード → 質問型。」**
>
> *Khách bảo thủ / lần đầu = số liệu. Có sự gắn kết = câu chuyện. Đang muốn thảo luận = câu hỏi.*

---

## Bảng đối chiếu 3 kiểu mở đầu
| Kiểu | Khi dùng | Ví dụ |
|---------|----------|-----|
| **Câu chuyện** | Có gắn kết, đối tượng cởi mở | 「3年前、中野倉庫で深夜2時に在庫が合わず…」 |
| **Số liệu** | Bảo thủ, lần đầu, B2B Nhật | 「在庫差異5%は、年間1.2億円のロスに相当します」 |
| **Câu hỏi** | Đối tượng đang muốn thảo luận | 「もし在庫差異がゼロになったら、御社の物流コストは何%下がるでしょうか？」 |

---

## Tránh
- Kiểu câu chuyện + đối tượng lạ + bản thân căng thẳng → 90% thất bại
- Kiểu số liệu + số không gây sốc → nhạt nhẽo
- Kiểu câu hỏi + câu hỏi yếu (Yes/No, hiển nhiên) → đối tượng không tham gia
- Trộn nhiều kiểu trong 30 giây → loãng

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 滑る | すべる | HOẠT | Trượt (không hấp dẫn, không ăn) |
| 圧縮 | あっしゅく | ÁP SÚC | Nén / cô đọng |
| 中小企業 | ちゅうしょうきぎょう | TRUNG TIỂU KI NGHIỆP | Doanh nghiệp vừa và nhỏ |
| 議論モード | ぎろんモード | NGHỊ LUẬN | Chế độ thảo luận |
| 驚き | おどろき | KINH | Sự ngạc nhiên |
| 修辞疑問 | しゅうじぎもん | TU TỪ NGHI VẤN | Câu hỏi tu từ |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000012, 800000006, NULL, 'markdown_book', 'Rule 12 — Tạo bầu không khí cho khách Nhật điềm đạm / 日本顧客向けムード作り', '# Rule 12 — Tạo bầu không khí cho khách Nhật điềm đạm / 日本顧客向けムード作り
> **Luận điểm.** Tông giọng trong Tiếng Nhật công việc = **nghiêm túc mà ấm áp**, KHÔNG phải kiểu Mỹ sôi nổi / TED-talk. Tránh "ファンタスティック！" 「革命的」 「ゲームチェンジャー」. Dùng **「着実に」「確実に」「丁寧に」「安心して」**. Âm lượng vừa phải, nhịp nói **chậm hơn 5-10%** so với khi nói với người Việt.
>
> 日本ビジネスのトーンはserious-but-warm。「革命的」「ゲームチェンジャー」より「着実」「確実」「丁寧」「安心」。話速は通常の5-10%遅め。
>
> **Liên quan:** rule 08 (オープニング), rule 18 (顧客の声), sách 02 rule 06 (声の高さ).

---

## Bối cảnh / 場面
Linh (thực tập sinh) sau buổi diễn thử (rule 11), Dũng xem lại cách trình bày. Tông giọng Linh học từ YouTube kiểu Mỹ → quá phấn khích. Dũng hướng dẫn lại.

---

## Trường hợp xấu — phấn khích kiểu Mỹ
*練習*

| Vai | Câu |
|---------|-----|
| **リン** | 「**この<ruby>機能<rt>きのう</rt></ruby>はゲームチェンジャー**です！<ruby>皆様<rt>みなさま</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>を**<ruby>革命的<rt>かくめいてき</rt></ruby>**に<ruby>変<rt>か</rt></ruby>えます！<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>未来<rt>みらい</rt></ruby>は**ファンタスティック**になります！」 <br/>*Tính năng này là game changer ạ! Sẽ thay đổi cách mạng công việc của quý vị! Tương lai cty quý vị sẽ fantastic luôn ạ!* |
| **ズン** | 「ストップ。50<ruby>代<rt>だい</rt></ruby>オーナーが『ゲームチェンジャー』『<ruby>革命的<rt>かくめいてき</rt></ruby>』『ファンタスティック』って<ruby>聞<rt>き</rt></ruby>いて、どう<ruby>思<rt>おも</rt></ruby>う？」 <br/>*Stop. Chủ ngoài 50 mà nghe 「game changer」「cách mạng」「fantastic」 — em nghĩ họ thấy thế nào?* |
| **リン** | 「えっと…テンション<ruby>高<rt>たか</rt></ruby>い？」 <br/>*Ờ... thấy hăng quá ạ?* |
| **ズン** | 「**<ruby>胡散臭<rt>うさんくさ</rt></ruby>い**って<ruby>思<rt>おも</rt></ruby>う。<ruby>日本<rt>にほん</rt></ruby>ビジネスは『<ruby>着実<rt>ちゃくじつ</rt></ruby>に』『<ruby>確実<rt>かくじつ</rt></ruby>に』『<ruby>丁寧<rt>ていねい</rt></ruby>に』。テンション<ruby>低<rt>ひく</rt></ruby>めでも<ruby>信頼<rt>しんらい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い<ruby>方<rt>ほう</rt></ruby>が<ruby>買<rt>か</rt></ruby>ってくれる。」 <br/>*Họ thấy 「mờ ám」 đấy. Tiếng Nhật công việc là 「chắc chắn」「đảm bảo」「chỉn chu」. Giọng trầm mà lòng tin cao thì khách mới mua.* |

**Vì sao xấu:** Những từ thổi phồng kiểu Mỹ trong ngữ cảnh kinh doanh Nhật = chuông báo "bên bán đang chèo kéo". Khách Nhật đặc biệt 50代 thường thấy đó là dấu hiệu nghiệp dư / 詐欺 (lừa đảo). Lòng tin sụt ngay.

---

## Trường hợp tốt — nghiêm túc mà ấm áp
*練習し直し*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>言葉<rt>ことば</rt></ruby>を**<ruby>着実<rt>ちゃくじつ</rt></ruby>な**ものに<ruby>置<rt>お</rt></ruby>き<ruby>換<rt>か</rt></ruby>えよう【1】。『ゲームチェンジャー』→『**<ruby>業務改善<rt>ぎょうむかいぜん</rt></ruby>に<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>貢献<rt>こうけん</rt></ruby>**』。『<ruby>革命的<rt>かくめいてき</rt></ruby>』→『**<ruby>着実<rt>ちゃくじつ</rt></ruby>な<ruby>改善<rt>かいぜん</rt></ruby>**』。『ファンタスティック』→『**<ruby>安心<rt>あんしん</rt></ruby>してお<ruby>任<rt>まか</rt></ruby>せいただける**』。」 <br/>*Đổi sang nhóm từ chắc chắn nhé. 「Game changer」 → 「đóng góp chắc chắn vào việc cải tiến」. 「Cách mạng」 → 「cải thiện chắc chắn từng bước」. 「Fantastic」 → 「yên tâm giao phó」.* |
| **リン** | 「この<ruby>機能<rt>きのう</rt></ruby>は**<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>在庫管理<rt>ざいこかんり</rt></ruby>に<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>貢献<rt>こうけん</rt></ruby>いたします**。3<ruby>年<rt>ねん</rt></ruby><ruby>運用実績<rt>うんようじっせき</rt></ruby>があり、**<ruby>安心<rt>あんしん</rt></ruby>してお<ruby>任<rt>まか</rt></ruby>せいただける**<ruby>仕組<rt>しく</rt></ruby>みでございます。」 <br/>*Tính năng này chắc chắn sẽ đóng góp cho việc quản lý tồn kho bên quý vị ạ. Đã có 3 năm thành tích vận hành, là cơ chế quý vị có thể yên tâm giao phó ạ.* |
| **ズン** | 「うん、いい。あと**<ruby>話速<rt>わそく</rt></ruby>は5-10%<ruby>遅<rt>おそ</rt></ruby>めに**。<ruby>早口<rt>はやくち</rt></ruby>だと『<ruby>売<rt>う</rt></ruby>り<ruby>急<rt>いそ</rt></ruby>ぎ』に<ruby>聞<rt>き</rt></ruby>こえる【2】。」 <br/>*Ổn rồi. Với cả nhịp nói chậm hơn 5-10% nữa. Nói nhanh nghe như 「đang vội bán」.* |
| **リン** | 「<ruby>分<rt>わ</rt></ruby>かりました。<ruby>練習<rt>れんしゅう</rt></ruby>し<ruby>直<rt>なお</rt></ruby>します。」 <br/>*Em rõ rồi ạ. Em luyện lại ạ.* |

 **Ghi chú:**
- 【1】**Nhóm từ tích cực JP** — 着実 / 確実 / 丁寧 / 安心 / 信頼 / 実績 / 堅実. Hãy dùng nhóm này thay cho các từ thổi phồng.
- 【2】**「話速5-10%遅め」** — 1分300字を280字程度に. 焦らず、間を取って話す.

---

## Cụm từ mẫu
> **「着実・確実・丁寧・安心の4語族で語る。Pace 5-10% 遅め。低テンション + 高信頼 = 売れる。」**
>
> *Dùng nhóm từ "chắc chắn / chỉn chu / yên tâm". Nhịp nói chậm 5-10%. Tông giọng trầm + tin cậy cao = bán được.*

---

## 言葉置き換え表
|  Từ thổi phồng kiểu Mỹ |  Tiếng Nhật công việc |
|---|---|
| 革命的 | 着実な改善 |
| ゲームチェンジャー | 業務改善に確実に貢献 |
| ファンタスティック | 安心してお任せいただける |
| 圧倒的 | 大幅な (改善/削減) |
| 最強 | 信頼性の高い |
| 絶対 | 確実に / 間違いなく |
| 100%保証 | 〇年運用実績がございます |

---

## Tránh
- 「革命的」「ゲームチェンジャー」「ファンタスティック」 — chuông báo nghiệp dư
- Âm lượng to + nhịp nhanh → bị cảm nhận là "売り急ぎ" (vội bán hàng)
- 100% 保証 / 絶対 — Tiếng Nhật công việc KỴ hứa hẹn tuyệt đối (rủi ro pháp lý + cảm tính)
- Cười to / năng lượng quá đà → trẻ con
- Cười lạnh / không cười gì → cứng đờ. Cười NHẸ + giọng ấm.

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 着実 | ちゃくじつ | TRƯỚC THỰC | Chắc chắn từng bước |
| 確実 | かくじつ | XÁC THỰC | Chắc chắn |
| 丁寧 | ていねい | ĐINH NINH | Cẩn thận / chỉn chu |
| 堅実 | けんじつ | KIÊN THỰC | Vững chắc |
| 胡散臭い | うさんくさい | — | Đáng ngờ / mờ ám |
| 売り急ぎ | うりいそぎ | — | Vội bán hàng |
| 革命的 | かくめいてき | CÁCH MẠNG | Cách mạng (hype word) |
| 詐欺 | さぎ | TRÁ KHI | Lừa đảo |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000013, 800000006, NULL, 'markdown_book', 'Rule 13 — Cam kết giữ đúng giờ / 時間管理の約束', '# Rule 13 — Cam kết giữ đúng giờ / 時間管理の約束
> **Luận điểm.** Trong phút thứ 2 của buổi trình bày, **cam kết rõ ngân sách thời gian**: "本日30分でPhase 3スコープを決めたく存じます。プレゼン20分、Q&A 10分の構成です。" Khách Nhật cực kỳ trân trọng người giữ giờ. Lời cam kết này = khế ước ngầm — phá vỡ cam kết là phá vỡ niềm tin.
>
> プレゼンの2分目までに『時間配分』を口頭宣言。「20分プレゼン+10分Q&A」とコミット。日本顧客は時間を守る人を信頼する。
>
> **Liên quan:** rule 10 (背景＋chương trình), rule 06 (10-20-30), rule 26 (phần kết).

---

## Bối cảnh / 場面
Sau phần mở đầu + chương trình, Dũng đến phần cam kết thời gian. 2 cách: ngầm định ("頑張ります") hoặc nói rõ ("〇分でやります").

---

## Trường hợp xấu — cam kết thời gian mơ hồ
*顔を上げる*

| Vai | Câu |
|---------|-----|
| **ズン** | 「えーと、なるべくコンパクトにお<ruby>話<rt>はな</rt></ruby>しします。Q&Aの<ruby>時間<rt>じかん</rt></ruby>も**<ruby>頑張<rt>がんば</rt></ruby>って**<ruby>残<rt>のこ</rt></ruby>します。」 <br/>*Ờ, em cố gắng nói gọn ạ. Em sẽ cố giữ chỗ Q&A nữa ạ.* |
| **大垣** | 「(……『頑張って』って<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何分<rt>なんぷん</rt></ruby>？)」 <br/>*(…「Cố gắng」 cụ thể là mấy phút?)* |
| **松本** | 「ズンさん、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>までですか？」 <br/>*Dũng-san, hôm nay đến mấy giờ thế?* |
| **ズン** | 「えっと…30<ruby>分<rt>ぷん</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>で…」 <br/>*Ờ... dự kiến 30 phút ạ...* |

**Vì sao xấu:** "なるべく" "頑張って" — không phải lời cam kết, chỉ là mong muốn. Khách Nhật cần ngân sách thời gian cụ thể để theo dõi. Buộc Matsumoto phải hỏi lại → Dũng mất mặt.

---

## Trường hợp tốt — cam kết thời gian rõ ràng
| Vai | Câu |
|---------|-----|
| **ズン** | 「**<ruby>本日<rt>ほんじつ</rt></ruby>は30<ruby>分<rt>ぷん</rt></ruby>の<ruby>枠<rt>わく</rt></ruby>**でいただいております【1】。プレゼン20分、Q&A 10分の<ruby>構成<rt>こうせい</rt></ruby>でございます。**20分<ruby>経過<rt>けいか</rt></ruby>した<ruby>時点<rt>じてん</rt></ruby>で<ruby>必<rt>かなら</rt></ruby>ず Q&A に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>え**ます【2】、たとえ<ruby>本編<rt>ほんぺん</rt></ruby>が<ruby>途中<rt>とちゅう</rt></ruby>でも。」 <br/>*Hôm nay quý vị đã dành cho em khung 30 phút ạ. Cấu trúc gồm thuyết trình 20 phút, Q&A 10 phút. Khi đến 20 phút em chắc chắn sẽ chuyển sang Q&A, dù phần chính chưa hết.* |
| **松本** | 「<ruby>分<rt>わ</rt></ruby>かりました。」 <br/>*Rõ rồi.* |
| **ズン** | 「**スマホでタイマーをセット**しております【3】。<ruby>残<rt>のこ</rt></ruby>り<ruby>時間<rt>じかん</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>で<ruby>管理<rt>かんり</rt></ruby>いたしますので、ご<ruby>安心<rt>あんしん</rt></ruby>くださいませ。」 <br/>*Em đã set timer trên điện thoại ạ. Thời gian còn lại em sẽ quản lý, mong quý vị cứ yên tâm ạ.* |
| **大垣** | 「(……<ruby>時間管理<rt>じかんかんり</rt></ruby>を<ruby>意識<rt>いしき</rt></ruby>してるな、<ruby>好印象<rt>こういんしょう</rt></ruby>)」 <br/>*(…Có ý thức giữ giờ, ấn tượng tốt)* |

 **Ghi chú:**
- 【1】**「30分の枠でいただいております」** — Ghi nhận thời gian = món quà khách dành cho mình, không phải quyền của bạn.
- 【2】**「必ず Q&A に切り替え」** — Cam kết cứng. Dù phần chính chưa hết. Khách Nhật rất coi trọng lời cam kết này.
- 【3】**「タイマーをセット」** — Tín hiệu nhìn thấy được của sự cam kết. Có thể là điện thoại đặt trên bàn (để im) hoặc smartwatch.

---

## Cụm từ mẫu
> **「30分の枠 → プレゼン20分 + Q&A 10分。20分で必ず切り替え。タイマー可視化。」**
>
> *30 phút = trình bày 20 + Q&A 10. Bất kể phần chính hết chưa, đến 20 phút là chuyển sang Q&A. Đặt đồng hồ đếm giờ hiện ra cho mọi người thấy.*

---

## Tránh
- "なるべく" "頑張って" — không phải lời cam kết
- Cam kết giờ rồi vượt quá → vỡ niềm tin nặng. Thà cắt bớt nội dung
- Không ghi nhận "枠でいただいております" → người nghe cảm thấy bị coi nhẹ
- Hỏi người nghe "あと10分いただけますか？" giữa lúc trình bày → tín hiệu rất tiêu cực về sự chuẩn bị

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 枠 | わく | — | Khung giờ / suất giờ |
| 切り替え | きりかえ | — | Chuyển đổi |
| 経過 | けいか | KINH QUÁ | Đã trôi qua |
| タイマー | タイマー | — | Đồng hồ đếm giờ |
| 可視化 | かしか | KHẢ THỊ HÓA | Trực quan hóa |
| 頑張って | がんばって | — | Cố gắng (vague — tránh khi commit) |
| 構成 | こうせい | CẤU THÀNH | Cấu trúc |
| 好印象 | こういんしょう | HẢO ẤN TƯỢNG | Ấn tượng tốt |', 'system', 13, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000014, 800000006, NULL, 'markdown_book', 'Rule 14 — Dấu hiệu luồng logic / 論理マーカー (まず／次に／最後に)', '# Rule 14 — Dấu hiệu luồng logic / 論理マーカー (まず／次に／最後に)
> **Luận điểm.** Phần thân bài thuyết trình phải có **cột mốc bằng chữ** dắt người nghe. **「まず」「次に」「最後に」** là tối thiểu. Người nghe Nhật thường vừa nghe vừa làm việc khác (máy tính, ghi chú) — các dấu hiệu luồng giúp họ bắt lại mạch trong 1 giây.
>
> 本論には『まず／次に／最後に』のランドマーク必須。聴衆は常時 multitask しており、マーカーで1秒で flow に戻れる。
>
> **Liên quan:** rule 03 (SCQA), rule 10 (アジェンダ), rule 15 (データ提示).

---

## Bối cảnh / 場面
Phần thân bài của Dũng — 3 luận cứ cho Phase 3. Lần đầu tập duyệt Dũng nói liền một mạch không ngắt — Hương yêu cầu thêm marker.

---

## Hội thoại XẤU — không dấu hiệu luồng
*tập dượt*

| Vai | Câu |
|---------|-----|
| **ズン** | 「Phase 3 の<ruby>中身<rt>なかみ</rt></ruby>ですが、<ruby>在庫<rt>ざいこ</rt></ruby><ruby>管理<rt>かんり</rt></ruby>ロジックを<ruby>高度化<rt>こうどか</rt></ruby>します。リアルタイム<ruby>同期<rt>どうき</rt></ruby>も入れます。アラート<ruby>機構<rt>きこう</rt></ruby>も<ruby>追加<rt>ついか</rt></ruby>します。3年で<ruby>投資<rt>とうし</rt></ruby><ruby>回収<rt>かいしゅう</rt></ruby>します。」 <br/>*Về nội dung Phase 3, em sẽ nâng cấp logic quản lý kho. Đồng bộ realtime cũng đưa vào. Thêm cả cơ chế cảnh báo. Hoàn vốn trong 3 năm.* |
| **フオン** | 「待って。今いくつ言った？2つ？3つ？4つ？<ruby>区切<rt>くぎ</rt></ruby>りがないと<ruby>聴衆<rt>ちょうしゅう</rt></ruby>も**数えられない**。」 <br/>*Khoan. Em vừa nói mấy điểm? 2? 3? 4? Không có ngắt thì khán giả cũng không đếm được đâu.* |
| **ズン** | 「えっと…3つで…投資回収は別の話で…」 <br/>*Ờ... 3 điểm ạ... hoàn vốn là chuyện khác ạ...* |
| **フオン** | 「**まず／次に／最後に**を入れて。3秒の追加で flow が10倍 clear になる。」 <br/>*Thêm 「đầu tiên / tiếp theo / cuối cùng」 vào. Thêm 3 giây mà mạch rõ gấp 10 lần.* |

**Vì sao xấu:** Không có dấu hiệu luồng = người nghe không theo dõi được "đang ở luận cứ thứ mấy". Đặc biệt khi nói tiếng Nhật — phát âm kiểu VN có thể làm người nghe lỡ 1-2 từ → mất hoàn toàn mạch.

---

## Hội thoại TỐT — dấu hiệu rõ + đánh số
| Vai | Câu |
|---------|-----|
| **ズン** | 「Phase 3 では **3点**を<ruby>実装<rt>じっそう</rt></ruby>いたします【1】。**まず1点目**、在庫管理ロジックを高度化。**次に2点目**、リアルタイム同期。**最後の3点目**、アラート機構。**この3点で**、<ruby>再発<rt>さいはつ</rt></ruby>を<ruby>予防<rt>よぼう</rt></ruby>いたします【2】。」 <br/>*Phase 3 sẽ triển khai 3 điểm ạ. Đầu tiên điểm 1, nâng cấp logic quản lý kho. Tiếp theo điểm 2, đồng bộ realtime. Cuối cùng điểm 3, cơ chế cảnh báo. Với 3 điểm này, em sẽ phòng ngừa tái phát ạ.* |
| **フオン** | 「うん、これなら聴衆が<ruby>指折<rt>ゆびお</rt></ruby>り数えられる。投資回収は別スライドね？」 <br/>*Ổn rồi, thế này khán giả mới đếm được trên đầu ngón tay. Hoàn vốn là slide khác đúng không?* |
| **ズン** | 「はい、**続いて**スケジュールと投資回収にまいります【3】。」 <br/>*Vâng, em xin chuyển sang phần lịch trình và hoàn vốn ạ.* |
| **フオン** | 「『続いて』の transition も良い。スライドが切り替わる時<ruby>必<rt>かなら</rt></ruby>ず使って。」 <br/>*Câu chuyển ý 「続いて」 tốt đấy. Mỗi khi đổi phần slide thì bắt buộc dùng nhé.* |

 **Ghi chú:**
- 【1】**「3点を実装いたします」** — Tuyên bố con số là tiền đề của marker. Nói「X 点 / X つ」ngay từ đầu.
- 【2】**「この3点で」** — Marker tổng kết: gói lại những gì đã nói. Người nghe nhận ra "đây là phần tổng kết".
- 【3】**「続いて」** — Câu chuyển giữa các section. Cách khác:「次のテーマに移ります」「ここまでが〇〇、ここから〇〇」.

---

## Cụm từ mẫu
> **「N 点宣言 → まず／次に／最後に → この N 点で... の3層マーカー。Section transition は『続いて』『次のテーマに』。」**
>
> *Tuyên bố số → "đầu tiên / tiếp theo / cuối cùng" → "với 3 điểm này...". Câu chuyển phần dùng "tiếp theo / sang chủ đề mới".*

---

## マーカー語彙集
| Tầng | 表現 |
|-------|------|
| **N 点宣言** | 〇点ございます／〇つに分けてご説明します／大きく〇つです |
| **Liệt kê mục** | まず／次に／最後に／第1に／第2に／第3に |
| **Tóm tắt lại** | この〇点で／以上の〇点が／まとめると |
| **Câu chuyển phần** | 続いて／次のテーマに移ります／ここまでが〇〇、ここから〇〇 |
| **Dấu phụ** | 補足ですが／ちなみに／なお |
| **Cầu nối sang slide** | 次のスライドをご覧ください／スライドを切り替えます |

---

## Tránh
- Không khai báo mà nói liền 3 luận cứ → người nghe đếm sai
- Quá nhiều dấu hiệu luồng ("まず...そして...それから...そして...") → cảm giác liệt kê lê thê
- Dấu hiệu không nhất quán (まず...次に...そして3つ目) → người nghe rối
- Bỏ qua câu chuyển giữa các phần → người nghe giật mình "ủa đang ở đâu"

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 論理マーカー | ろんりマーカー | LUẬN LÝ | Dấu hiệu luồng logic |
| 続いて | つづいて | — | Tiếp theo |
| まとめる | まとめる | — | Tổng kết / gói lại |
| 補足 | ほそく | BỔ TÚC | Bổ sung |
| 高度化 | こうどか | CAO ĐỘ HÓA | Nâng cao / hoàn thiện |
| 再発予防 | さいはつよぼう | TÁI PHÁT DỰ PHÒNG | Phòng ngừa tái phát |', 'system', 14, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000015, 800000006, NULL, 'markdown_book', 'Rule 15 — Trình bày dữ liệu / データ提示', '# Rule 15 — Trình bày dữ liệu / データ提示
> **Luận điểm.** Biểu đồ đúng loại theo loại dữ liệu: **比較=棒グラフ / 推移=折れ線 / 構成比=積み上げ棒 (KHÔNG tròn nếu >5項目)**. Nguồn ghi rõ ở chân trang (出典・期間・N数). Làm nổi bật 1 thông điệp chính / biểu đồ bằng 1 chú thích. Đối tượng người Nhật soi rất kỹ con số — chính xác + minh bạch > đẹp.
>
> 比較=棒、推移=折れ線、構成比=積み上げ棒(円グラフは5項目以下のみ)。出典・期間・N数を必ず footer に明記。1チャート1テイクアウェイ。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 04 (視覚階層), rule 17 (比較マトリクス).

---

## Bối cảnh / 場面
Slide 5 của Dũng = biểu đồ so sánh Phase 1 vs Phase 2 vs Phase 3 (dự báo). Dũng dùng biểu đồ tròn 3D + 7 màu + nhãn 12pt. Hà CTO kiểm tra.

---

## Hội thoại XẤU — sai loại biểu đồ + thiếu nguồn
| Vai | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、これ**3D pie chart 7色**？<ruby>比較<rt>ひかく</rt></ruby>なのに pie <ruby>使<rt>つか</rt></ruby>うのは<ruby>間違<rt>まちが</rt></ruby>い。」 <br/>*Dũng, cái này là biểu đồ tròn 3D 7 màu hả? So sánh mà dùng biểu đồ tròn là sai đấy.* |
| **ズン** | 「カラフルで<ruby>目立<rt>めだ</rt></ruby>つかと…」 <br/>*Em nghĩ cho nhiều màu, nổi bật ạ...* |
| **ハーCTO** | 「Pie は<ruby>構成比<rt>こうせいひ</rt></ruby>5<ruby>項目<rt>こうもく</rt></ruby>以下用。**3 phase の比較は<ruby>棒<rt>ぼう</rt></ruby>グラフ**。あと**<ruby>出典<rt>しゅってん</rt></ruby>・<ruby>期間<rt>きかん</rt></ruby>どこ**？『2024年Q3〜Q4<ruby>社内<rt>しゃない</rt></ruby><ruby>集計<rt>しゅうけい</rt></ruby>、N=120』みたいな<ruby>注記<rt>ちゅうき</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。」 <br/>*Biểu đồ tròn chỉ dùng cho cấu thành ≤5 mục. So sánh 3 phase là biểu đồ cột. Còn nguồn / kỳ ở đâu? Phải có chú thích kiểu 「Q3-Q4/2024 nội bộ, N=120」.* |
| **ズン** | 「あ、<ruby>入<rt>い</rt></ruby>れていません…」 <br/>*À, em chưa cho vào ạ...* |
| **ハーCTO** | 「<ruby>松本<rt>まつもと</rt></ruby>さんとか<ruby>大垣<rt>おおがき</rt></ruby>さん、データの**期間とサンプル<ruby>数<rt>すう</rt></ruby>**必ず<ruby>聞<rt>き</rt></ruby>く。今のままだと『<ruby>根拠<rt>こんきょ</rt></ruby><ruby>不明<rt>ふめい</rt></ruby>』<ruby>判定<rt>はんてい</rt></ruby>。」 <br/>*Kiểu Matsumoto-san hay Ōgaki-san chắc chắn sẽ hỏi kỳ + số mẫu. Để như này là bị đánh giá 「không căn cứ」.* |

**Vì sao xấu:** 3D pie + 7 màu = nhiễu thị giác + bóp méo nhận thức. Thiếu nguồn = đối tượng không xác minh được → tụt niềm tin. Doanh nghiệp Nhật cực coi trọng "出典明示" (ghi rõ nguồn).

---

## Hội thoại TỐT — đúng loại biểu đồ + nguồn rõ
| Vai | Câu |
|---------|-----|
| **ズン** | 「**<ruby>水平<rt>すいへい</rt></ruby><ruby>棒<rt>ぼう</rt></ruby>グラフ**に<ruby>変更<rt>へんこう</rt></ruby>【1】、3 phase <ruby>比較<rt>ひかく</rt></ruby>で `<ruby>差異率<rt>さいりつ</rt></ruby>` をX軸に。色は2色のみ(<ruby>白鷗<rt>はくおう</rt></ruby>ブルー＋グレー)、Phase 3 のみアクセント。」 <br/>*Em đổi sang biểu đồ cột nằm ngang ạ, so sánh 3 phase với trục X là tỷ lệ sai lệch. Chỉ 2 màu (xanh Hakuō + xám), riêng Phase 3 dùng màu nhấn.* |
| **ハーCTO** | 「いい。Footer は？」 <br/>*Tốt. Footer thì sao?* |
| **ズン** | 「**『<ruby>出典<rt>しゅってん</rt></ruby>: 2024年Q3〜Q4 <ruby>弊社<rt>へいしゃ</rt></ruby><ruby>運用<rt>うんよう</rt></ruby>ログ<ruby>集計<rt>しゅうけい</rt></ruby>、<ruby>対象<rt>たいしょう</rt></ruby>SKU=120、<ruby>月次<rt>げつじ</rt></ruby><ruby>平均<rt>へいきん</rt></ruby>』** と<ruby>入<rt>い</rt></ruby>れました【2】。コールアウトは『**Phase 2 で64%<ruby>削減<rt>さくげん</rt></ruby>、Phase 3 で90%削減<ruby>見込<rt>みこ</rt></ruby>み**』の1つだけ。」 <br/>*Em đã ghi 「Nguồn: tổng hợp log vận hành Q3-Q4/2024, đối tượng SKU=120, trung bình tháng」 ạ. Chú thích chỉ 1 cái: 「Phase 2 giảm 64%, Phase 3 dự kiến giảm 90%」.* |
| **ハーCTO** | 「Perfect。1 chart 1 takeaway は<ruby>鉄則<rt>てっそく</rt></ruby>。<ruby>複数<rt>ふくすう</rt></ruby> callout は noise。」 <br/>*Hoàn hảo. Mỗi biểu đồ 1 thông điệp chính là quy tắc thép. Nhiều chú thích = nhiễu.* |

 **Ghi chú:**
- 【1】**Chọn loại biểu đồ** — 比較=棒(横/縦), 推移=折れ線, 構成比=積み上げ棒/円(≤5項目), 相関=散布図, 順位=横棒.
- 【2】**Định dạng nguồn ở chân trang** — 出典 + 期間 + N数 (số mẫu) là 3 điểm tối thiểu. 「弊社運用ログ」 / 「経済産業省2024白書」など.

---

## Cụm từ mẫu
> **「Chart type は data type で決まる。Footer に出典・期間・N数。1 chart 1 takeaway。」**
>
> *Loại biểu đồ theo loại dữ liệu. Chân trang: nguồn / kỳ / N. Mỗi biểu đồ 1 thông điệp chính.*

---

## Chọn loại biểu đồ theo loại dữ liệu
| Loại dữ liệu |  Biểu đồ nên dùng |  Nên tránh |
|-----------|----------|---------|
| 比較 (cùng metric, khác đối tượng) | 横棒 / 縦棒 | Tròn, đường |
| 推移 (theo thời gian) | 折れ線 | Tròn, phân tán |
| 構成比 (≤5項目) | Tròn / Vành khuyên / 積み上げ棒 | Tròn 3D |
| 構成比 (>5項目) | 横棒 + % label / 積み上げ棒 | Tròn |
| 相関 | 散布図 | Tròn, đường |
| 順位 (Top N) | 横棒 (降順) | Tròn |
| 分布 | ヒストグラム / Box plot | Tròn |

---

## Tránh
- 3D biểu đồ bất kỳ → bóp méo nhận thức
- Biểu đồ tròn >5 项目 → không thể so sánh các phần
- Thiếu nguồn / kỳ / N → bị đánh giá "根拠不明" (không có căn cứ)
- Cầu vồng 7 màu → nhiễu thị giác
- Nhiều chú thích trên 1 biểu đồ → không có thông điệp chính rõ ràng
- Trục Y cắt cụt để tạo hiệu ứng giật gân → đối tượng người Nhật phát hiện = mất niềm tin

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 棒グラフ | ぼうグラフ | BỔNG | Biểu đồ cột |
| 折れ線グラフ | おれせんグラフ | CHIẾT TUYẾN | Biểu đồ đường |
| 円グラフ | えんグラフ | VIÊN | Biểu đồ tròn |
| 散布図 | さんぷず | TÁN BỐ ĐỒ | Biểu đồ phân tán |
| 出典 | しゅってん | XUẤT ĐIỂN | Nguồn |
| 集計 | しゅうけい | TẬP KẾ | Tổng hợp số liệu |
| 注記 | ちゅうき | CHÚ KÝ | Chú thích |
| 差異率 | さいりつ | SAI DỊ SUẤT | Tỷ lệ sai lệch |', 'system', 15, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000016, 800000006, NULL, 'markdown_book', 'Rule 16 — Luồng demo / デモの流れ', '# Rule 16 — Luồng demo / デモの流れ
> **Luận điểm.** Demo trong bài thuyết trình ≠ đi liệt kê tính năng. Cấu trúc 4 bước: **Setup — thiết lập cảnh (誰が何をしようとしている、30s) → User journey — hành trình người dùng (主操作、2分) → Key moment — khoảnh khắc mấu chốt (決め手、30s) → Tóm tắt lại — tóm lược (何が起きたか、30s)**. Tổng 3-4 phút. Tránh "全機能ツアー" — chỉ trình diễn mạch thao tác giải nỗi đau.
>
> デモ4ステップ: Setup→User journey→Key moment→Recap。3-4分以内。全機能ツアーは禁止、痛み解消の1フローだけ。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 07 (Phương án B), rule 31 (技術トラブル).

---

## Bối cảnh / 場面
Tuấn (trưởng nhóm kỹ thuật) sẽ chạy demo. Bản năng của Tuấn là trình diễn toàn bộ danh sách tính năng (tư duy kỹ sư). Dũng kèm cặp trước buổi tập dượt cuối.

---

## Hội thoại XẤU — liệt kê tính năng
*tập dượt*

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「では<ruby>画面<rt>がめん</rt></ruby>紹介します。これがダッシュボード、上に<ruby>検索<rt>けんさく</rt></ruby>、左にメニュー、右にカード<ruby>一覧<rt>いちらん</rt></ruby>、下にフッター…」 <br/>*Em xin giới thiệu màn hình ạ. Đây là dashboard, trên là search, trái là menu, phải là list card, dưới là footer...* |
| **ズン** | 「兄さん、それ**ツアーガイド**になってる。客は**<ruby>機能名<rt>きのうめい</rt></ruby>を聞きに来てない**。<ruby>在庫差異<rt>ざいこさい</rt></ruby>が<ruby>解消<rt>かいしょう</rt></ruby>する flow を見せたい。」 <br/>*Anh, kiểu này là hướng dẫn viên du lịch rồi. Khách không đến để nghe tên tính năng đâu. Mình muốn trình bày luồng giải quyết sai lệch tồn kho.* |
| **トゥアン** | 「えっと…じゃあどう？」 <br/>*Ờ... vậy phải sao?* |
| **ズン** | 「**4ステップ**でやろう。Setup→User journey→Key moment→Recap。3分で。」 <br/>*Đi 4 bước nhé. Setup → User journey → Key moment → Recap. Trong 3 phút.* |

**Vì sao xấu:** Liệt kê tính năng = tư duy kỹ sư, KHÔNG phải tư duy người mua. Người mua hỏi "có giải bài toán của em không?" chứ không phải "menu chỗ nào?". Khách Nhật phật ý vì cảm thấy "demo không tôn trọng nỗi đau của mình".

---

## Hội thoại TỐT — 4 bước có cốt truyện
| Vai | Câu |
|---------|-----|
| **トゥアン** | 「**Setup**: <ruby>倉庫担当<rt>そうこたんとう</rt></ruby>の<ruby>田村<rt>たむら</rt></ruby>さんが、<ruby>季節商品<rt>きせつしょうひん</rt></ruby>の<ruby>在庫差異<rt>ざいこさい</rt></ruby>に気づきました【1】。**User journey**: ダッシュボードでアラートを<ruby>確認<rt>かくにん</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby>SKUを drill-down、<ruby>修正案<rt>しゅうせいあん</rt></ruby>を<ruby>承認<rt>しょうにん</rt></ruby>。**Key moment**【2】: <ruby>通常<rt>つうじょう</rt></ruby>2時間の<ruby>作業<rt>さぎょう</rt></ruby>が**3分で<ruby>完了<rt>かんりょう</rt></ruby>**。**Recap**: 季節商品でも差異が month-end前 に<ruby>検出<rt>けんしゅつ</rt></ruby>・修正される。」 <br/>*Thiết lập cảnh: Tamura-san phụ trách kho phát hiện sai lệch hàng theo mùa. Hành trình người dùng: kiểm tra alert trên dashboard, drill-down SKU nguyên nhân, phê duyệt phương án sửa. Khoảnh khắc mấu chốt: việc thường mất 2 tiếng nay xong trong 3 phút. Tóm tắt lại: hàng theo mùa cũng được phát hiện + sửa trước chốt tháng.* |
| **ズン** | 「Perfect。**ナレーションは私**【3】、<ruby>操作<rt>そうさ</rt></ruby>はトゥアンが、で行きましょう。」 <br/>*Hoàn hảo. Dẫn lời em làm, thao tác anh Tuấn nhé.* |
| **トゥアン** | 「了解。Key moment で2秒 pause 入れる？<ruby>聴衆<rt>ちょうしゅう</rt></ruby>に<ruby>効果実感<rt>こうかじっかん</rt></ruby>させる用に。」 <br/>*OK. Tại khoảnh khắc mấu chốt thêm 2 giây dừng được không? Để cho khán giả cảm nhận hiệu quả.* |
| **ズン** | 「いいアイデア。『**ここがポイントです**』って<ruby>一言<rt>ひとこと</rt></ruby>入れて、2秒間。」 <br/>*Ý hay. Em sẽ nói câu 「Đây là điểm mấu chốt」 rồi dừng 2 giây.* |

 **Ghi chú:**
- 【1】**Setup =「人物 + 状況 + 目的」** — Có tên nhân vật đại diện (田村さん) thì độ nhập tâm cao. Demo không tên nhân vật thì yếu.
- 【2】**Key moment =「pain解消の瞬間」** — đối chiếu số "通常X → 今Y". 1 demo chỉ 1 khoảnh khắc mấu chốt.
- 【3】**「ナレーションは私」** — phân vai đồng trình bày. Tách người thao tác với người dẫn lời thì mạch demo mượt. Tham chiếu chéo sách 03 rule 32.

---

## Cụm từ mẫu
> **「Setup → User journey → Key moment → Recap。3-4分。Persona 名前あり、Key moment は数字対比、ナレ＋操作は分担。」**
>
> *4 bước, 3-4 phút. Nhân vật đại diện có tên, khoảnh khắc mấu chốt có số đối chiếu, người dẫn lời + thao tác chia hai người.*

---

## Mẫu kịch bản demo (theo từng tình huống)
```
【Setup】(30秒)
- 主人公: 〇〇さん (役職・部門)
- 状況: 〇〇という業務課題に直面
- 目的: 〇〇を達成したい

【User Journey】(2分)
- ステップ1: 画面〇〇でログイン → 〇〇を確認
- ステップ2: 〇〇を選択 → 〇〇を実行
- ステップ3: 結果が画面に反映 → 承認

【Key Moment】(30秒)
- 通常〇〇分かかる作業が、〇〇分で完了
- (2秒 pause + 「ここがポイントです」)

【Recap】(30秒)
- 「結果として、〇〇という効果が得られます」
- 元の課題への対応を再確認
- 次スライドへ繋ぐ: 「では、料金とスケジュールに移ります」
```

---

## Tránh
- Đi liệt kê tính năng ("メニューがここに、ボタンがここに")
- Nhân vật đại diện không tên / không bối cảnh — mạch demo tan loãng
- Demo > 5 phút — đối tượng nghe mất tập trung
- Gọi API trực tiếp mà không có bản dự phòng ngoại tuyến (xem rule 07)
- Thiếu phần tóm tắt lại → người nghe không nắm "đã được gì"
- Người đồng trình bày ứng biến tùy hứng → thuật ngữ kỹ thuật ngược / thiếu ăn khớp

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ナレーション | ナレーション | — | Dẫn lời / thuyết minh |
| 操作 | そうさ | THAO TÁC | Thao tác |
| 承認 | しょうにん | THỪA NHẬN | Phê duyệt |
| 検出 | けんしゅつ | KIỂM XUẤT | Phát hiện |
| 倉庫担当 | そうこたんとう | THƯƠNG KHỐ ĐẢM ĐƯƠNG | Phụ trách kho |
| 効果実感 | こうかじっかん | HIỆU QUẢ THỰC CẢM | Cảm nhận hiệu quả |
| 対比 | たいひ | ĐỐI TỶ | Đối chiếu |', 'system', 16, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000017, 800000006, NULL, 'markdown_book', 'Rule 17 — So sánh phương án (bảng so sánh) / 比較マトリクス', '# Rule 17 — So sánh phương án (bảng so sánh) / 比較マトリクス
> **Luận điểm.** Trình bày **3 phương án** (A/B/C), KHÔNG phải 5+. Cấu trúc: hàng = tiêu chí (chi phí / thời gian / rủi ro / tác động), cột = phương án. Mỗi ô có dữ liệu **đo lường được** (số, ◎○△×), không phải tính từ chủ quan ("いい" / "悪い"). Cuối có **dòng "弊社推奨"** chỉ 1 phương án **+ lý do 1 câu**.
>
> 比較マトリクスは3案 (A/B/C) まで。行=評価軸、列=案。セルは数字 or ◎○△×。最後に「弊社推奨」を1案＋1文の理由。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 19 (価格), rule 20 (リスク).

---

## Bối cảnh / 場面
Slide so sánh "Phase 3 のスコープ A=最小 / B=中規模 / C=フル". Dũng làm bảng so sánh 5 phương án × 8 tiêu chí = nhồi nhét. Hà CTO yêu cầu thu lại.

---

## Hội thoại XẤU — 5 phương án × 8 tiêu chí
| Vai | Câu |
|---------|-----|
| **ハーCTO** | 「**5案 × 8軸 = 40 cell**？スライド1枚で<ruby>見<rt>み</rt></ruby>せられない。<ruby>客<rt>きゃく</rt></ruby>は<ruby>決<rt>き</rt></ruby>められない。」 <br/>*5 phương án × 8 tiêu chí = 40 ô? 1 slide không trình bày được. Khách không quyết được đâu.* |
| **ズン** | 「<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>見<rt>み</rt></ruby>せれば<ruby>客<rt>きゃく</rt></ruby>が<ruby>選<rt>えら</rt></ruby>べると<ruby>思<rt>おも</rt></ruby>って…」 <br/>*Em nghĩ trình bày hết thì khách chọn được ạ...* |
| **ハーCTO** | 「**<ruby>選択肢<rt>せんたくし</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いと<ruby>選<rt>えら</rt></ruby>べないのが<ruby>人間<rt>にんげん</rt></ruby>**【choice paradox】。**3案に<ruby>絞<rt>しぼ</rt></ruby>って、<ruby>推奨<rt>すいしょう</rt></ruby>を<ruby>明示<rt>めいじ</rt></ruby>**。<ruby>客<rt>きゃく</rt></ruby>に『<ruby>考<rt>かんが</rt></ruby>える』<ruby>労力<rt>ろうりょく</rt></ruby>じゃなくて『<ruby>決<rt>き</rt></ruby>める』<ruby>労力<rt>ろうりょく</rt></ruby>を<ruby>割<rt>わ</rt></ruby>いてもらう。」 <br/>*Càng nhiều lựa chọn càng khó chọn — đó là tâm lý người. Thu xuống 3 case, nêu rõ khuyến nghị. Để khách dồn sức 「quyết」 chứ không phải 「nghĩ」.* |
| **ズン** | 「あ…はい、<ruby>絞<rt>しぼ</rt></ruby>ります。」 <br/>*À... vâng, em sẽ thu lại ạ.* |

**Vì sao xấu:** Nghịch lý lựa chọn — 5 phương án = quá tải quyết định → khách trì hoãn quyết định. Mục tiêu của bài thuyết trình là QUYẾT ĐỊNH, không phải phô bày. 8 tiêu chí = người nghe không theo dõi nổi.

---

## Hội thoại TỐT — 3 phương án × 4 tiêu chí + 推奨
| Vai | Câu |
|---------|-----|
| **ズン** | 「**3案 × 4軸**に<ruby>絞<rt>しぼ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>みました【1】。<ruby>軸<rt>じく</rt></ruby>: <ruby>投資額<rt>とうしがく</rt></ruby>／<ruby>期間<rt>きかん</rt></ruby>／<ruby>差異率<rt>さいりつ</rt></ruby><ruby>改善<rt>かいぜん</rt></ruby>／<ruby>運用負荷<rt>うんようふか</rt></ruby>。セルは<ruby>数字<rt>すうじ</rt></ruby>と◎○△×。」 <br/>*Em thu xuống 3 phương án × 4 tiêu chí ạ. Tiêu chí: tiền đầu tư / thời gian / cải thiện sai lệch / tải vận hành. Ô bảng là số + ◎○△×.* |
| **ハーCTO** | 「いいね。<ruby>推奨<rt>すいしょう</rt></ruby>は？」 <br/>*Tốt. Khuyến nghị thì sao?* |
| **ズン** | 「**<ruby>最下行<rt>さいかぎょう</rt></ruby>に『<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>: B案』** + 1<ruby>文<rt>ぶん</rt></ruby><ruby>理由<rt>りゆう</rt></ruby>【2】を<ruby>入<rt>い</rt></ruby>れました。『<ruby>投資額対効果<rt>とうしがくたいこうか</rt></ruby>が<ruby>最<rt>もっと</rt></ruby>も<ruby>高<rt>たか</rt></ruby>く、<ruby>運用負荷<rt>うんようふか</rt></ruby>も<ruby>中程度<rt>ちゅうていど</rt></ruby>のため』。」 <br/>*Em đã ghi 「Khuyến nghị bên em: case B」 + 1 câu lý do ở dòng cuối ạ. 「Hiệu quả trên đầu tư cao nhất, tải vận hành cũng vừa」.* |
| **ハーCTO** | 「Perfect。<ruby>客<rt>きゃく</rt></ruby>は『B案で<ruby>進<rt>すす</rt></ruby>めましょう』と<ruby>言<rt>い</rt></ruby>いやすい。**<ruby>推奨<rt>すいしょう</rt></ruby>なしの matrix は<ruby>責任放棄<rt>せきにんほうき</rt></ruby>**に<ruby>見<rt>み</rt></ruby>える。」 <br/>*Hoàn hảo. Khách dễ nói 「OK đi phương án B」 hơn. Bảng so sánh không có khuyến nghị trông như bỏ trách nhiệm.* |

 **Ghi chú:**
- 【1】**3 × 4 = 12 ô** — đường trần của tải nhận thức. Nhiều hơn nữa thì tách sang slide khác.
- 【2】**「khuyến nghị bên em」 + 1 câu lý do** — nêu rõ trách nhiệm của bên cung cấp. Business Nhật xem "không có khuyến nghị" là 「責任放棄」 (bỏ trách nhiệm).

---

## Cụm từ mẫu
> **「3案 × 4軸 = 12セル。セルは数字 or ◎○△×。最後に弊社推奨を1案 + 1文理由。」**
>
> *3 phương án, 4 tiêu chí. Ô bảng có số / ký hiệu. Cuối có "khuyến nghị bên em" + 1 câu lý do.*

---

## Mẫu bảng so sánh phương án
| 評価軸 | 案A (最小) | 案B (中規模) | 案C (フル) |
|-------|-----------|-------------|-----------|
| 投資額 | 〇〇万円 | 〇〇万円 | 〇〇万円 |
| 期間 | 〇ヶ月 | 〇ヶ月 | 〇ヶ月 |
| 差異率改善見込み | △ 1.0% | ◎ 0.3% | ◎ 0.2% |
| 運用負荷 | ◎ 低 | ○ 中 | △ 高 |
| **弊社推奨** | | ** B案** | |

**推奨理由**: 「投資額対効果が最も高く、運用負荷も中程度のため」

---

## Tránh
- 5+ phương án → nghịch lý lựa chọn
- 7+ tiêu chí → quá tải nhận thức
- Ô bảng dùng tính từ ("いい" / "高い") → chủ quan
- Không có 弊社推奨 → bị nhìn nhận là "責任放棄" (bỏ trách nhiệm)
- Khuyến nghị 案 đắt nhất → bị nghi "bên cung cấp trục lợi". Khuyến nghị phải bảo vệ được bằng lý lẽ
- 全部 ◎ ở cột 推奨 → giả tạo / không đáng tin

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 比較マトリクス | ひかくマトリクス | TỶ GIẢO | Bảng so sánh |
| 評価軸 | ひょうかじく | BÌNH GIÁ TRỤC | Tiêu chí đánh giá |
| 推奨 | すいしょう | SUY TƯỞNG | Khuyến nghị |
| 運用負荷 | うんようふか | VẬN DỤNG PHỤ HÀ | Tải vận hành |
| 投資額対効果 | とうしがくたいこうか | ĐẦU TƯ NGẠCH ĐỐI HIỆU QUẢ | Hiệu quả trên đầu tư |
| 責任放棄 | せきにんほうき | TRÁCH NHẬM PHÓNG KHỨ | Bỏ trách nhiệm |
| 絞り込む | しぼりこむ | — | Thu hẹp lại |', 'system', 17, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000018, 800000006, NULL, 'markdown_book', 'Rule 18 — Lời chứng thực của khách / 顧客の声・事例', '# Rule 18 — Lời chứng thực của khách / 顧客の声・事例
> **Luận điểm.** Slide lời chứng thực cần **3 yếu tố**: ① **Tình huống** (khách là ai + bài toán), ② **Kết quả** (số liệu cụ thể), ③ **Trích dẫn** (1 câu trực tiếp + tên + chức vụ). Logo khách cần xin phép. Lời chứng thực **giấu tên** (「某大手物流」) = độ tin cậy tụt hẳn. Trích dẫn phải **có số** trong đó.
>
> 顧客事例は3要素: 状況→結果(数字)→引用(氏名・役職付き)。匿名事例は信頼が下がる。引用文には数字を含める。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 11 (フック), rule 15 (データ).

---

## Bối cảnh / 場面
Slide 7 — tình huống thực tế cũ Phase 1/Phase 2. Linh giúp Dũng dựng bản nháp. Linh viết kiểu lời quảng cáo (「お客様から大変ご好評をいただいております」). Dũng hướng dẫn lại.

---

## Hội thoại XẤU — mơ hồ + ẩn danh
*xem bản nháp*

| Vai | Câu |
|---------|-----|
| **リン** | 「『**<ruby>某<rt>ぼう</rt></ruby>大手<ruby>物流<rt>ぶつりゅう</rt></ruby>様**から<ruby>大変<rt>たいへん</rt></ruby>ご<ruby>好評<rt>こうひょう</rt></ruby>をいただいております。<ruby>在庫<rt>ざいこ</rt></ruby>管理が**<ruby>改善<rt>かいぜん</rt></ruby>し、<ruby>業務<rt>ぎょうむ</rt></ruby>効率が<ruby>向上<rt>こうじょう</rt></ruby>**しました』としました！」 <br/>*Em viết là 「Một cty vận tải lớn đã rất khen ngợi ạ. Quản lý kho được cải thiện, hiệu quả công việc được nâng lên」!* |
| **ズン** | 「うーん、**<ruby>匿名<rt>とくめい</rt></ruby> + <ruby>形容詞<rt>けいようし</rt></ruby>**だと客は<ruby>信<rt>しん</rt></ruby>じない。『某大手物流』ってどこ？知らない。**改善**って何%？分からない。」 <br/>*Hmm, ẩn danh + tính từ thế khách không tin đâu. 「Một cty vận tải lớn」 là cty nào? Không biết. Cải thiện bao nhiêu %? Không rõ.* |
| **リン** | 「<ruby>具体名<rt>ぐたいめい</rt></ruby>出すには<ruby>許可<rt>きょか</rt></ruby>が…」 <br/>*Nêu tên cụ thể thì phải xin phép ạ...* |
| **ズン** | 「許可取りに行こう。Phase 1 のお客様、**山田<ruby>倉庫<rt>そうこ</rt></ruby>様**は<ruby>事例<rt>じれい</rt></ruby>公開OK のはず。**<ruby>実名<rt>じつめい</rt></ruby> + 数字 + <ruby>引用<rt>いんよう</rt></ruby>**の3点が<ruby>揃<rt>そろ</rt></ruby>って初めて testimonial。」 <br/>*Mình đi xin phép đi. Khách Phase 1 — bên Yamada Souko chắc OK đăng tình huống thực tế. 3 điểm đủ — tên thật + số + trích dẫn — mới gọi là lời chứng thực.* |

**Vì sao xấu:** ẩn danh + tính từ = nội dung quảng cáo rỗng. Khách Nhật soi rất kỹ: "bên cung cấp có dám nêu tên không? Có số cụ thể không?". Tiền tố 「某」 (một... nào đó) đặc biệt gây nghi ngờ.

---

## Hội thoại TỐT — tên + số + trích dẫn
*bản sửa lại*

| Vai | Câu |
|---------|-----|
| **リン** | 「**山田<ruby>倉庫<rt>そうこ</rt></ruby><ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>様** (<ruby>許可<rt>きょか</rt></ruby><ruby>取得済<rt>しゅとくずみ</rt></ruby>)。Phase 1 で<ruby>在庫<rt>ざいこ</rt></ruby><ruby>差異<rt>さい</rt></ruby> **3.2%→0.8%**(75%<ruby>削減<rt>さくげん</rt></ruby>)【1】。<ruby>引用<rt>いんよう</rt></ruby>: **『<ruby>月末<rt>げつまつ</rt></ruby><ruby>締<rt>じ</rt></ruby>めの<ruby>残業<rt>ざんぎょう</rt></ruby>が月20時間→3時間に<ruby>減<rt>へ</rt></ruby>りました』** <ruby>物流部<rt>ぶつりゅうぶ</rt></ruby> 山田太郎<ruby>部長<rt>ぶちょう</rt></ruby>【2】。」 <br/>*Cty Yamada Souko (đã xin phép). Phase 1 đã giảm sai lệch tồn kho 3.2%→0.8% (giảm 75%)【1】. Trích dẫn: 「Tăng ca chốt cuối tháng giảm từ 20 tiếng/tháng xuống 3 tiếng」 — Yamada Tarō, Trưởng phòng Vận chuyển【2】.* |
| **ズン** | 「Perfect。引用に**数字**入っているのが効く。<ruby>聴衆<rt>ちょうしゅう</rt></ruby>は『山田部長の<ruby>声<rt>こえ</rt></ruby>』としてイメージできる。」 <br/>*Hoàn hảo. Có số trong trích dẫn là điểm mạnh đấy. Khán giả hình dung được 「giọng anh Yamada」.* |
| **リン** | 「ロゴも入れていいですか？」 <br/>*Có thể cho cả logo vào không ạ?* |
| **ズン** | 「ロゴ permission も<ruby>別途<rt>べっと</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>【3】。OK ならロゴ＋<ruby>写真<rt>しゃしん</rt></ruby>(<ruby>本人<rt>ほんにん</rt></ruby> OK あれば)入れる。NG なら<ruby>社名<rt>しゃめい</rt></ruby>のみ。」 <br/>*Xin phép logo phải xin riêng. OK thì cho logo + ảnh (nếu cá nhân đồng ý). NG thì chỉ tên công ty.* |

 **Ghi chú:**
- 【1】**「3.2%→0.8% (75%削減)」** — Bộ "trước/sau + % cải thiện" là chuẩn mực. Chỉ có 1 yếu tố thì yếu.
- 【2】**「氏名 + 役職 + 部門」** — Trích dẫn phải đủ bộ 3 tin cậy: tên + chức vụ + phòng ban. 「Một nhân viên nào đó」 (ある担当者様) thì yếu.
- 【3】**Xin phép logo** — Xin phép trích dẫn ≠ xin phép logo. Phải xin riêng từng cái (別途取得).

---

## Cụm từ mẫu
> **「実名 + 数字 (before/after %) + 引用 (氏名・役職付き)。匿名 testimonial は信頼ゼロ。」**
>
> *Tên thật + số (trước/sau + %) + trích dẫn (có tên + chức vụ). Lời chứng thực ẩn danh = độ tin cậy bằng 0.*

---

## Khuôn slide lời chứng thực
```
【スライド構成】

タイトル: 【顧客事例】〇〇様 (業界・規模)

■ 状況 (Before)
- 課題: 〇〇 (1文)
- 数字: 〇〇 (例: 在庫差異3.2%、月末残業20時間)

■ 結果 (After)
- 改善: 〇〇 → 〇〇 (例: 0.8%、3時間)
- 効果: 〇〇% 削減 / 〇〇% 改善

■ お客様の声 (Quote)
「〇〇 (具体的体験) + 〇〇 (数字)」
  — 〇〇株式会社 〇〇部 〇〇 〇〇 部長

[ロゴ (permission取得済)]
```

---

## Tránh
- 「某大手」「ある〇〇」 — ẩn danh = độ tin cậy bằng 0
- 「改善」「向上」「好評」 — tính từ chứ không phải dữ liệu
- Trích dẫn không có tên người nói → bị nghi là "khen giả" (怪しい)
- Dùng logo mà chưa xin phép → rủi ro pháp lý + lộ sự nghiệp dư
- Lời chứng thực cũ > 3 năm → khách hoài nghi 「最近のはないの？」 (không có cái gần đây à?)
- Nhiều lời chứng thực trong 1 slide (5-6 logo dồn thành tường) → từng cái mất trọng lượng

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 顧客の声 | こきゃくのこえ | CỐ KHÁCH | Lời chứng thực của khách |
| 事例 | じれい | SỰ LỆ | Tình huống thực tế |
| 引用 | いんよう | DẪN DỤNG | Trích dẫn |
| 匿名 | とくめい | ẨN DANH | Ẩn danh |
| 月末締め | げつまつじめ | NGUYỆT MẠT | Chốt cuối tháng |
| 残業 | ざんぎょう | TÀN NGHIỆP | Tăng ca |
| 削減 | さくげん | TƯỚC GIẢM | Cắt giảm |
| 大手 | おおて | ĐẠI THỦ | Lớn / major |', 'system', 18, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000019, 800000006, NULL, 'markdown_book', 'Rule 19 — Slide giá cả khéo léo / 価格スライドの作り方', '# Rule 19 — Slide giá cả khéo léo / 価格スライドの作り方
> **Luận điểm.** Cấu trúc 3 phần: **(1) Neo giá** (lấy chi phí ngành / Phase 2 làm mốc tham chiếu), **(2) Bậc giá** (ma trận 3 phương án với mức giá), **(3) ROI** (投資回収期間 + con số mức tiết kiệm). KHÔNG hiện giá số trần không có bối cảnh. Khách Nhật hỏi giá khó nhất — chuẩn bị **3 phản biện** cho phản đối "高い".
>
> 価格スライドは3部構成: アンカー(基準値) → ティア(3案) → ROI(回収期間)。素の数字だけは出さない。「高い」反論への3答を準備。
>
> **Liên quan:** rule 17 (比較マトリクス), rule 20 (リスク), sách 03 rule 27 (根拠反論).

---

## Bối cảnh / 場面
Slide 8 = giá cả. Trong buổi diễn tập, Hà CTO đóng giả vai Ōgaki ("anh Ōgaki sẽ chắc chắn nói 高い") — Dũng phải sẵn sàng.

---

## Hội thoại XẤU — số trần + không neo giá
*slide opens · 役: 大垣*

| Vai | Câu |
|---------|-----|
| **ズン** | 「Phase 3 のお<ruby>見積<rt>みつ</rt></ruby>りは **3,200万円**でございます。」 <br/>*Báo giá Phase 3 là 32 triệu yên ạ.* |
| **ハーCTO** | 「**高いね**。Phase 2 は1,800万だったよね？」 <br/>*Đắt nhỉ. Phase 2 là 18 triệu mà đúng không?* |
| **ズン** | 「えっと…機能が増えていますので…」 <br/>*Ờ... vì có thêm chức năng ạ...* |
| **ハーCTO** | 「『機能が増えた』だけだと弱い。**ROI**は？<ruby>投資回収<rt>とうしかいしゅう</rt></ruby>期間？<ruby>削減<rt>さくげん</rt></ruby>効果の金額換算は？答え3つ用意していないと、ここで<ruby>折<rt>お</rt></ruby>れるよ。」 <br/>*Chỉ 「thêm chức năng」 thì yếu. ROI thì sao? Thời gian hoàn vốn? Quy ra tiền hiệu quả cắt giảm? Không sẵn 3 đáp án là gãy đàm phán ngay đây.* |

**Vì sao xấu:** Số trần trụi không có neo giá → đối tượng tự động so sánh với cái họ biết (Phase 2 = 1,800万). Không có ROI → giá nghe chỉ như "chi phí". Không chuẩn bị phản biện cho 「高い」 → Dũng bị lắp bắp.

---

## Hội thoại TỐT — neo giá + bậc giá + ROI
*役: 大垣*

| Vai | Câu |
|---------|-----|
| **ズン** | 「価格の前に**3点ご説明**します。**(1) Anchor**: <ruby>業界平均<rt>ぎょうかいへいきん</rt></ruby> 1案件4,000万、Phase 2 は1,800万でした【1】。**(2) Tier**: A案2,400万 / B案3,200万(<ruby>推奨<rt>すいしょう</rt></ruby>) / C案4,800万。**(3) ROI**: B案で**年間1.2億円のロス削減**【2】見込み、**8ヶ月で投資回収**。」 <br/>*Trước khi báo giá em xin trình bày 3 điểm ạ. (1) Neo giá: trung bình ngành 1 case 40 triệu yên, Phase 2 là 18 triệu. (2) Bậc giá: case A 24 triệu / case B 32 triệu (khuyến nghị) / case C 48 triệu. (3) ROI: case B dự kiến giảm lỗ 120 triệu/năm, hoàn vốn 8 tháng.* |
| **ハーCTO** | 「Phase 2 比で約2倍だね、なぜ？」 <br/>*Gần gấp đôi Phase 2 nhỉ, vì sao?* |
| **ズン** | 「3点理由がございます【3】。①リアルタイム<ruby>同期<rt>どうき</rt></ruby>インフラの新規<ruby>構築<rt>こうちく</rt></ruby>、②機械学習アラートの<ruby>実装<rt>じっそう</rt></ruby>、③24/7サポート3年<ruby>付帯<rt>ふたい</rt></ruby>。Phase 2 は基本機能のみでした。」 <br/>*Có 3 lý do ạ. ① Xây mới hạ tầng đồng bộ realtime, ② implement machine learning alert, ③ kèm theo 3 năm support 24/7. Phase 2 chỉ có chức năng cơ bản ạ.* |
| **ハーCTO** | 「うん、**3点回答**で説得力出る。Reherearsal 通った。本番もこの調子で。」 <br/>*Ờ, trả 3 điểm thế là có sức thuyết phục. Qua buổi tập dượt rồi. Bữa thật giữ nhịp này nhé.* |

 **Ghi chú:**
- 【1】**Neo giá** — 業界平均 + 自社過去 cùng đặt → "B案 3,200万 = mức hời nếu xét trong bối cảnh".
- 【2】**ROI = mức tiết kiệm / giá** — 年間ロス削減 ÷ 投資 = 回収月数. "1.2億÷3,200万 ≈ 8ヶ月".
- 【3】**「3点理由」** — phản biện 「高い」 LUÔN dùng cấu trúc 3 điểm. Tham chiếu chéo sách 03 rule 27.

---

## Cụm từ mẫu
> **「価格の前にAnchor → Tier → ROI 3点。「高い」<ruby>反論<rt>はんろん</rt></ruby>には3点理由で答える。」**
>
> *Trước số phải có Neo giá → Bậc giá → ROI. Phản biện "高い" cần sẵn 3 điểm lý do.*

---

## 価格スライド3パート構成
```
■ Part 1 — Anchor (基準)
   ・業界平均: 〇〇万円
   ・弊社過去事例 (Phase 2 等): 〇〇万円
   ・他社相見積もり想定レンジ: 〇〇〜〇〇万円

■ Part 2 — Tier (3案)
   | 軸 | A案(最小) | B案(推奨) | C案(フル) |
   |---|---|---|---|
   | 価格 | 〇〇万 | 〇〇万 | 〇〇万 |
   | 機能 | 〇〇 | 〇〇 | 〇〇 |
   | サポート | 〇〇 | 〇〇 | 〇〇 |

■ Part 3 — ROI
   ・削減効果: 年間 〇〇万円
   ・投資回収期間: 〇〇ヶ月
   ・3年累計効果: 〇〇万円 (投資の〇倍)
```

---

## 「高い」反論への3答テンプレ
```
「ありがとうございます、3点ご説明させていただきます。
 (1) ① 〇〇 (新規インフラ / 機能拡張 等)
 (2) ② 〇〇 (運用・保守・サポート)
 (3) ③ 〇〇 (リスク・将来拡張性)
 〇〇までの追加投資が、長期的に〇〇のメリットを生みます。」
```

---

## Tránh
- Đưa số trước, không neo giá = bị sốc giá
- Chỉ 1 phương án → đối tượng cảm thấy "chấp nhận hoặc thôi"
- Thiếu ROI → câu "それ cost じゃなくて investment" (đây không phải chi phí mà là đầu tư) nói không thuyết phục
- Không chuẩn bị phản biện "高い" → đứng hình trên sân khấu
- 値引き 即答 (trả lời giảm giá ngay "じゃあ 100万引きます") → bị nhìn như "bên cung cấp giá phù phép"

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 見積り | みつもり | — | Báo giá |
| 投資回収 | とうしかいしゅう | ĐẦU TƯ HỒI THU | Hoàn vốn |
| 削減効果 | さくげんこうか | TƯỚC GIẢM HIỆU QUẢ | Hiệu quả cắt giảm |
| 業界平均 | ぎょうかいへいきん | NGHIỆP GIỚI BÌNH QUÂN | Trung bình ngành |
| 反論 | はんろん | PHẢN LUẬN | Phản biện |
| 付帯 | ふたい | PHÓ ĐỚI | Đi kèm |
| 累計 | るいけい | LŨY KẾ | Cộng dồn |
| 折れる | おれる | — | Bị bẻ / chùn (đàm phán) |', 'system', 19, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000020, 800000006, NULL, 'markdown_book', 'Rule 20 — Rủi ro và biện pháp đối phó / リスクと対策', '# Rule 20 — Rủi ro và biện pháp đối phó / リスクと対策
> **Luận điểm.** Trình bày **3-5 rủi ro** với **対策 (đối sách) cụ thể**. Bên cung cấp che giấu rủi ro = tín hiệu cảnh báo lớn nhất với doanh nghiệp Nhật. Cấu trúc bảng: **リスク** | **発生確率 (高/中/低)** | **影響度** | **対策**. Tránh "リスクはございません" — đó là nói dối + tín hiệu nghiệp dư. "リスク0" = "bên cung cấp 未経験 (chưa có kinh nghiệm)".
>
> 3-5 リスクを発生確率＋影響度＋対策付きで開示。『リスクなし』はlieであり信頼の決定的損失。「気づいてない vendor」と判断される。
>
> **Liên quan:** rule 17 (比較マトリクス), rule 19 (価格), rule 23 (難しい質問).

---

## Bối cảnh / 場面
Slide 9 = slide rủi ro. Linh thảo nháp → ghi "リスクは特にございません" theo bản năng "đừng làm khách lo". Dũng chỉnh ngay.

---

## Hội thoại XẤU — "リスクなし"
*xem bản thảo slide*

| Vai | Câu |
|---------|-----|
| **リン** | 「**リスク特になし**、<ruby>安心<rt>あんしん</rt></ruby>してご<ruby>利用<rt>りよう</rt></ruby>いただけます！と<ruby>書<rt>か</rt></ruby>きました。」 <br/>*Em viết 「Không có rủi ro nào đặc biệt, quý vị có thể yên tâm sử dụng」 ạ!* |
| **ズン** | 「ストップ。それ**<ruby>信頼<rt>しんらい</rt></ruby>の<ruby>自殺<rt>じさつ</rt></ruby><ruby>行為<rt>こうい</rt></ruby>**。**プロジェクトに『リスクなし』はあり<ruby>得<rt>え</rt></ruby>ない**。<ruby>書<rt>か</rt></ruby>いた<ruby>瞬間<rt>しゅんかん</rt></ruby>、<ruby>客<rt>きゃく</rt></ruby>は『この vendor <ruby>経験<rt>けいけん</rt></ruby>ない or <ruby>嘘<rt>うそ</rt></ruby>ついてる』のどちらかと<ruby>判断<rt>はんだん</rt></ruby>する。」 <br/>*Dừng lại. Đó là tự sát niềm tin đấy. Dự án không thể 「không có rủi ro」 được. Vừa viết là khách phán ngay 「bên cung cấp này non kinh nghiệm hoặc đang nói dối」.* |
| **リン** | 「えっ、<ruby>客<rt>きゃく</rt></ruby>が<ruby>嫌<rt>いや</rt></ruby>がると<ruby>思<rt>おも</rt></ruby>って…」 <br/>*Ơ, em nghĩ khách ghét nghe rủi ro ạ...* |
| **ズン** | 「**<ruby>逆<rt>ぎゃく</rt></ruby>**。リスクを**<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>出<rt>だ</rt></ruby>す + <ruby>対策<rt>たいさく</rt></ruby>セット**で<ruby>出<rt>だ</rt></ruby>す<ruby>方<rt>ほう</rt></ruby>が<ruby>信頼<rt>しんらい</rt></ruby>される。**3-5<ruby>個<rt>こ</rt></ruby> + <ruby>各<rt>かく</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>**が<ruby>標準<rt>ひょうじゅん</rt></ruby>。」 <br/>*Ngược lại đấy. Nêu thẳng rủi ro + kèm đối sách = lấy được lòng tin hơn. Chuẩn là 3-5 cái + mỗi cái có đối sách.* |

**Vì sao xấu:** "リスクなし" = tín hiệu "未経験 (chưa kinh nghiệm) / 嘘 (nói dối)". Khách Nhật dày dạn biết プロジェクトに必ずリスクある (dự án luôn có rủi ro) — bên cung cấp che giấu = "thiếu trung thực / thiếu năng lực". Lòng tin sụt ngay lập tức.

---

## Hội thoại TỐT — 4 rủi ro + biện pháp đối phó cụ thể
*bản chỉnh sửa*

| Vai | Câu |
|---------|-----|
| **リン** | 「**4リスク**を<ruby>出<rt>だ</rt></ruby>しました【1】。①インフラ<ruby>移行<rt>いこう</rt></ruby> (<ruby>確率<rt>かくりつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>・<ruby>影響<rt>えいきょう</rt></ruby><ruby>大<rt>だい</rt></ruby>) → <ruby>対策<rt>たいさく</rt></ruby>: <ruby>旧環境<rt>きゅうかんきょう</rt></ruby> parallel 3ヶ月。②データ<ruby>移行<rt>いこう</rt></ruby><ruby>欠損<rt>けっそん</rt></ruby> (<ruby>中<rt>ちゅう</rt></ruby>・<ruby>大<rt>だい</rt></ruby>) → リコンサイル<ruby>日次<rt>にちじ</rt></ruby><ruby>監査<rt>かんさ</rt></ruby>。③KPI<ruby>未達<rt>みたつ</rt></ruby> (<ruby>低<rt>てい</rt></ruby>・<ruby>中<rt>ちゅう</rt></ruby>) → <ruby>月次<rt>げつじ</rt></ruby><ruby>見直<rt>みなお</rt></ruby>し<ruby>再計画<rt>さいけいかく</rt></ruby><ruby>権利<rt>けんり</rt></ruby>。④<ruby>保守<rt>ほしゅ</rt></ruby><ruby>要員<rt>よういん</rt></ruby><ruby>依存<rt>いぞん</rt></ruby> (<ruby>低<rt>てい</rt></ruby>・<ruby>中<rt>ちゅう</rt></ruby>) → 2<ruby>名<rt>めい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の training。」 <br/>*Em đưa ra 4 rủi ro ạ. ① Chuyển đổi hạ tầng (xác suất trung / tác động lớn) → biện pháp đối phó: chạy song song môi trường cũ 3 tháng. ② Mất dữ liệu khi chuyển đổi (TB / lớn) → kiểm toán đối chiếu hàng ngày. ③ KPI không đạt (thấp / TB) → duyệt lại hàng tháng + quyền lập kế hoạch lại. ④ Phụ thuộc nhân sự bảo trì (thấp / TB) → đào tạo 2+ người.* |
| **ズン** | 「Perfect。**<ruby>確率<rt>かくりつ</rt></ruby>と<ruby>影響<rt>えいきょう</rt></ruby>を<ruby>別<rt>べつ</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>**してるのが<ruby>良<rt>よ</rt></ruby>い【2】。<ruby>確率<rt>かくりつ</rt></ruby><ruby>低<rt>てい</rt></ruby> + <ruby>影響<rt>えいきょう</rt></ruby><ruby>大<rt>だい</rt></ruby>は<ruby>別<rt>べつ</rt></ruby> column で highlight。」 <br/>*Hoàn hảo. Đánh giá xác suất + tác động riêng là tốt. 「Xác suất thấp + tác động lớn」 nên làm nổi bật ở cột riêng.* |
| **リン** | 「**<ruby>赤色<rt>あかいろ</rt></ruby>マーク**は『<ruby>確率<rt>かくりつ</rt></ruby><ruby>高<rt>こう</rt></ruby>×<ruby>影響<rt>えいきょう</rt></ruby><ruby>大<rt>だい</rt></ruby>』のセル？」 <br/>*Dấu đỏ dùng cho ô 「xác suất cao × tác động lớn」 ạ?* |
| **ズン** | 「うん、**<ruby>赤<rt>あか</rt></ruby>は『<ruby>要警戒<rt>ようけいかい</rt></ruby>』マーク<ruby>専用<rt>せんよう</rt></ruby>**【3】(rule 05 cross-ref)。ここなら<ruby>赤<rt>あか</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>として<ruby>適切<rt>てきせつ</rt></ruby>。」 <br/>*Đúng rồi, đỏ chỉ dành cho dấu 「cần cảnh giác」 (tham chiếu chéo rule 05). Chỗ này dùng đỏ là đúng.* |

 **Ghi chú:**
- 【1】**4-5 リスク** — 3個少ない、6個以上希薄化. 4-5 cái là điểm vàng (sweet spot).
- 【2】**確率 × 影響** — đánh giá 2 chiều. 「確率低 + 影響大」 (xác suất thấp + tác động lớn) hay bị bỏ sót nhất và quan trọng.
- 【3】**「赤は要警戒専用」** — đồng bộ với Rule 05 (色彩 — tâm lý màu sắc). Đỏ trang trí thì cấm, nhưng đỏ cảnh báo thì được.

---

## Cụm từ mẫu
> **「3-5リスク × 確率 × 影響 × 対策。『リスクなし』は信頼の自殺。」**
>
> *3-5 rủi ro × xác suất × tác động × đối sách. "Không rủi ro" = tự sát lòng tin.*

---

## Mẫu bảng rủi ro
| # | リスク | 発生確率 | 影響度 | 対策 |
|---|-------|---------|-------|------|
| 1 | インフラ移行失敗 | 中 | 大 | 旧環境 parallel 3ヶ月 |
| 2 | データ移行欠損 | 中 | 大 | 日次リコンサイル監査 |
| 3 | KPI未達 | 低 | 中 | 月次見直し + 再計画権利 |
| 4 | 保守要員依存 | 低 | 中 | 2名以上の đào tạo chéo |
| 5 | 季節商品再発 | 中 | 中 | ML model 月次再学習 |

---

## Tránh
- "リスクなし" / "ご安心ください" → tự sát lòng tin
- Rủi ro mơ hồ ("色々あります") → vô dụng
- 対策 chỉ có ở 1 rủi ro → trông như giấu bớt
- 対策 mơ hồ ("適切に対応") → không có cam kết
- 6+ rủi ro → đối tượng nghe quá tải
- Rủi ro chỉ gồm "ベンダー側のリスク" → cần cân bằng + bao gồm "クライアント側 (phía bên khách)" (vd: chất lượng dữ liệu, trì hoãn ra quyết định)

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 発生確率 | はっせいかくりつ | PHÁT SINH XÁC SUẤT | Xác suất xảy ra |
| 影響度 | えいきょうど | ẢNH HƯỞNG ĐỘ | Mức độ ảnh hưởng |
| 対策 | たいさく | ĐỐI SÁCH | Đối sách |
| 監査 | かんさ | GIÁM TRA | Kiểm toán |
| 並行 | へいこう | TỊNH HÀNH | Song song |
| 移行 | いこう | DI HÀNH | Di chuyển / chuyển đổi |
| 欠損 | けっそん | KHUYẾT TỔN | Thiếu / mất mát |
| 要警戒 | ようけいかい | YẾU CẢNH GIỚI | Cần cảnh giác |', 'system', 20, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000021, 800000006, NULL, 'markdown_book', 'Rule 21 — Trực quan hóa lộ trình / ロードマップ可視化', '# Rule 21 — Trực quan hóa lộ trình / ロードマップ可視化
> **Luận điểm.** Lộ trình = tiến độ ngang với **3-4 phase × mốc × người phụ trách**. Mỗi mốc phải có ① **日付** (年月), ② **アウトプット** (成果物), ③ **責任者** (tên cty + tên người). Tránh "TBD" — đưa ước lượng dứt khoát, tự tin. **マイルストーン記号** (◆ 重要 / ● 通常 / ○ 任意) để thể hiện phân cấp.
>
> ロードマップは horizontal タイムライン×3-4フェーズ×マイルストーン×責任者。各マイルストーンに 日付＋成果物＋責任者の3点必須。「TBD」 は信頼を下げる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 17 (比較マトリクス), rule 26 (kết thúc).

---

## Bối cảnh / 場面
Slide 10 = lộ trình. Dũng thảo nháp đầu tiên — chỉ có văn bản "Phase 3 は2026年5月から12月まで実施" → phẳng lì, không có trực quan hóa mốc. Tuấn yêu cầu trực quan hoá.

---

## Hội thoại XẤU — tiến độ chỉ có văn bản
| Vai | Câu |
|---------|-----|
| **トゥアン** | 「ズン、roadmap がただのテキスト？『5月<ruby>開始<rt>かいし</rt></ruby>、12月<ruby>完了<rt>かんりょう</rt></ruby>』だけ？」 <br/>*Dũng, lộ trình chỉ là văn bản à? Chỉ có 「bắt đầu tháng 5, xong tháng 12」?* |
| **ズン** | 「<ruby>文章<rt>ぶんしょう</rt></ruby>の方が<ruby>説明<rt>せつめい</rt></ruby>しやすいかと…」 <br/>*Em nghĩ văn xuôi dễ giải thích hơn ạ...* |
| **トゥアン** | 「Roadmap は **visual で見せるもの**。Phase / milestone / owner / 日付 全部入る gantt-style。テキストだと客は **計画があるか<ruby>半信半疑<rt>はんしんはんぎ</rt></ruby>**。」 <br/>*Lộ trình là phải trực quan hóa. Phase / mốc / người phụ trách / ngày — tất cả vào dạng Gantt. Văn bản thì khách bán tín bán nghi 「có kế hoạch không vậy」.* |
| **ズン** | 「あ…テンプレート使いますか？」 <br/>*À... em dùng mẫu có sẵn ạ?* |

**Vì sao xấu:** Lộ trình chỉ có văn bản = "bên cung cấp chưa thực sự lập kế hoạch". Khách Nhật soi tiến độ cực kỳ nghiêm. Visual Gantt + dấu mốc = "đã thực sự nghĩ tới chi tiết".

---

## Hội thoại TỐT — Gantt + mốc + người phụ trách
| Vai | Câu |
|---------|-----|
| **ズン** | 「Roadmap report テンプレで作りました【1】。**4 phase**: ①<ruby>要件定義<rt>ようけんていぎ</rt></ruby>(5/15-6/30) ②<ruby>設計<rt>せっけい</rt></ruby>開発(7/1-9/30) ③テスト(10/1-11/15) ④リリース<ruby>移行<rt>いこう</rt></ruby>(11/16-12/15)。**マイルストーン**: ◆要件 sign-off (6/30 / <ruby>弊社<rt>へいしゃ</rt></ruby>ズン＋<ruby>御社<rt>おんしゃ</rt></ruby><ruby>松本<rt>まつもと</rt></ruby>)、◆UAT 完了 (11/15 / 弊社トゥアン＋御社<ruby>田中<rt>たなか</rt></ruby>) など5点【2】。」 <br/>*Em làm theo mẫu báo cáo lộ trình ạ. 4 phase: ① định nghĩa yêu cầu (15/5-30/6) ② thiết kế + phát triển (1/7-30/9) ③ kiểm thử (1/10-15/11) ④ phát hành chuyển đổi (16/11-15/12). Mốc: ◆ phê duyệt yêu cầu (30/6 / Dũng bên em + Matsumoto bên quý vị), ◆ UAT xong (15/11 / Tuấn bên em + Tanaka bên quý vị) — tổng 5 cái.* |
| **トゥアン** | 「いいね、各 milestone に **owner ペア**書いてるのが良い【3】。Bottle neck どこ？」 <br/>*Tốt, viết cặp người phụ trách cho mỗi mốc là điểm hay. Điểm tắc nghẽn ở đâu?* |
| **ズン** | 「**8月の<ruby>設計<rt>せっけい</rt></ruby>レビュー**(設計開発 phase 中盤)。ここで<ruby>承認<rt>しょうにん</rt></ruby><ruby>遅延<rt>ちえん</rt></ruby>すると<ruby>全体<rt>ぜんたい</rt></ruby><ruby>遅<rt>おく</rt></ruby>れる。**buffer 1週間**を gantt に入れています。」 <br/>*Duyệt thiết kế tháng 8 (giữa phase thiết kế + phát triển) ạ. Nếu phê duyệt trễ ở đây thì cả tổng thể trễ. Em đã cho dự phòng 1 tuần vào Gantt rồi ạ.* |
| **トゥアン** | 「Buffer 明示も重要。客は『ありえない』完璧 schedule を信じない。」 <br/>*Thể hiện dự phòng cũng quan trọng. Khách không tin lịch 「hoàn hảo không tưởng」 đâu.* |

 **Ghi chú:**
- 【1】**Roadmap report テンプレ** — Gantt + bảng mốc + ghi chú dự phòng.
- 【2】**マイルストーン記号** — ◆ 重要 (sign-off, release) / ● 通常 (review, demo) / ○ 任意 (option).
- 【3】**「Cặp người phụ trách」** — Bên cung cấp + bên khách mỗi bên 1 người. Chỉ 1 người phụ trách thì không phân tán được trách nhiệm, dễ tắc.

---

## Cụm từ mẫu
> **「Gantt 4 phase + 5 milestones × (日付 + 成果物 + owner pair) + buffer。TBD は信頼を下げる。」**
>
> *Gantt 4 phase + 5 mốc × (ngày + đầu ra + cặp người phụ trách) + dự phòng. Để TBD là mất lòng tin.*

---

## Mẫu Báo cáo Lộ trình
```
【プロジェクト ロードマップ】 (Phase X)

■ Gantt サマリ
                    5月  6月  7月  8月  9月  10月 11月 12月
①要件定義 (15日)    ███
②設計開発 (90日)         ████████████
③テスト (45日)                          ██████
④リリース移行(30日)                              ████

■ マイルストーン (◆重要 / ●通常 / ○任意)
| # | 記号 | 日付 | マイルストーン | 成果物 | 責任者 (vendor/client) |
|---|-----|------|--------------|--------|----------------------|
| 1 | ◆ | 6/30 | 要件定義 sign-off | 要件定義書 v1.0 | ズン / 松本 |
| 2 | ● | 8/15 | 設計レビュー | 設計書 v1.0 | トゥアン / 田中 |
| 3 | ● | 9/30 | コード完了 (feature freeze) | β版ビルド | トゥアン / 田中 |
| 4 | ◆ | 11/15 | UAT 完了 | UATレポート | トゥアン / 田中 |
| 5 | ◆ | 12/15 | 本番リリース | リリースノート | ズン / 松本 |

■ Buffer
- 設計レビュー後 1週間 (8/16-8/22) - スケジュール遅延吸収
- UAT 期間に 1週間予備 (11/8-11/15)

■ 前提条件 (Critical assumption)
- 御社のテストデータ提供は 9/15 までに
- セキュリティ監査は弊社主導で 10/1-10/15 実施
- 本番環境アクセス権限は 11/16 までに付与

■ Risk → 対策
- 要件変更時: change control プロセス (rule 20参照)
- 移行失敗時: 旧環境 parallel 3ヶ月
```

---

## Tránh
- "TBD" / "後日連絡" trên mốc → khách cảm nhận "chưa chuẩn bị"
- Chỉ 1 người phụ trách trên mốc → nguy cơ tắc nghẽn
- Dự phòng 0 → đối tượng nghe không tin lịch sát thực tế
- Tất cả mốc đều ◆ → phân cấp tan loãng
- Lộ trình > 1 năm trên 1 slide → quá rộng, chia 2 slide
- 前提条件 (điều kiện tiên quyết) bỏ qua → khách sau này tranh cãi "hứa rồi"

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ロードマップ | ロードマップ | — | Lộ trình |
| マイルストーン | マイルストーン | — | Mốc tiến độ |
| 成果物 | せいかぶつ | THÀNH QUẢ VẬT | Đầu ra / sản phẩm |
| 要件定義 | ようけんていぎ | YẾU KIỆN ĐỊNH NGHĨA | Định nghĩa yêu cầu |
| sign-off | sign-off | — | Phê duyệt cuối |
| 前提条件 | ぜんていじょうけん | TIỀN ĐỀ ĐIỀU KIỆN | Điều kiện tiên quyết |
| 移行 | いこう | DI HÀNH | Chuyển đổi / di chuyển |
| 半信半疑 | はんしんはんぎ | BÁN TÍN BÁN NGHI | Bán tín bán nghi |', 'system', 21, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000022, 800000006, NULL, 'markdown_book', 'Rule 22 — Mời Q&A trang trọng / Q&A導入', '# Rule 22 — Mời Q&A trang trọng / Q&A導入
> **Luận điểm.** Câu mở Q&A phải **trang trọng + giọng mời gọi**, không phải "Có câu hỏi không?" cộc lốc. Công thức chuẩn: 「ご質問・ご意見をいただけますでしょうか」. Sau câu mời, **chờ 5-7 giây im lặng** (không lấp). Khách Nhật suy nghĩ kỹ trước khi giơ tay — phá vỡ im lặng sớm = mất câu hỏi tốt.
>
> Q&A導入は formal + 招待トーン。「ご質問はありますか」は素っ気ない。「ご質問・ご意見をいただけますでしょうか」が標準。提示後5-7秒沈黙を待つ — 日本人は熟考してから挙手する。
>
> **Liên quan:** rule 23 (LASR), rule 25 (câu đối nghịch), rule 26 (kết thúc).

---

## Bối cảnh / 場面
Cuối bài thuyết trình Phase 3 cho 大垣 + 松本 + 田中. Dũng vừa kết thúc phần chính, chuyển sang Q&A. Chị Hương ngồi quan sát ở hàng cuối.

---

## Hội thoại XẤU — cụt + lấp khoảng lặng
*slide cuối · 2秒沈黙 · 後で松本に小声*

| Vai | Câu |
|---------|-----|
| **ズン** | 「以上です。<ruby>質問<rt>しつもん</rt></ruby>ありますか？」 <br/>*Hết rồi ạ. Có câu hỏi không ạ?* |
|  | *(Dũng căng thẳng, lấp ngay)* |
| **ズン** | 「ないですか？じゃあ次のステップに行きますね。」 <br/>*Không có ạ? Vậy em chuyển sang bước tiếp theo luôn nhé.* |
| **大垣** | 「…<ruby>質問<rt>しつもん</rt></ruby>する<ruby>間<rt>ま</rt></ruby>もないな。」 <br/>*...Còn không kịp hỏi nữa.* |

**Vì sao xấu:** "質問ありますか" cộc + suồng sã. 2 giây đã lấp = không cho khách Nhật suy nghĩ. Khách trong lòng có câu nhưng chưa kịp hình thành câu hỏi → người trình bày chạy mất → tạo ấn tượng "không chào đón câu hỏi".

---

## Hội thoại TỐT — mời trang trọng + chờ khoảng lặng
*slide Q&A · 7秒沈黙、Dũng giữ giao tiếp bằng mắt với 3 người, không lấp · 挙手*

| Vai | Câu |
|---------|-----|
| **ズン** | 「以上で<ruby>本論<rt>ほんろん</rt></ruby>を<ruby>終<rt>お</rt></ruby>わらせていただきます。**ご<ruby>質問<rt>しつもん</rt></ruby>・ご<ruby>意見<rt>いけん</rt></ruby>をいただけますでしょうか**【1】。**どんな<ruby>点<rt>てん</rt></ruby>でも<ruby>構<rt>かま</rt></ruby>いません**。」 <br/>*Em xin phép kết thúc phần nội dung chính ạ. Mong quý vị cho em xin câu hỏi hoặc ý kiến ạ. Bất cứ điểm nào cũng được ạ.* |
| 【2】 | *(Im lặng 7 giây, giao tiếp bằng mắt lần lượt 3 người)* |
| **松本** | 「では、Phase 2 との<ruby>連携<rt>れんけい</rt></ruby>ポイントについて<ruby>確認<rt>かくにん</rt></ruby>させてください…」 <br/>*Vậy, cho tôi xác nhận một chút về điểm liên kết với Phase 2...* |
| **ズン** | 「松本<ruby>様<rt>さま</rt></ruby>、ありがとうございます。Phase 2 <ruby>連携<rt>れんけい</rt></ruby>の<ruby>件<rt>けん</rt></ruby>ですね、〜」 <br/>*Anh Matsumoto, em cảm ơn ạ. Về vấn đề liên kết Phase 2 ạ, ~* |

 **Ghi chú:**
- 【1】**「ご質問・ご意見をいただけますでしょうか」** — câu mời trang trọng chuẩn. "ご意見" mở rộng phạm vi (không chỉ câu hỏi, cả ý kiến). 「いただけますでしょうか」 = lời đề nghị khiêm nhường, trang trọng nhất.
- 【2】**7秒沈黙** — quy tắc bất di bất dịch. Đếm thầm 1-Mississippi-2-Mississippi... Khách Nhật cần thời gian hình thành câu hỏi một cách lịch sự.

---

## Cụm từ mẫu
> **「ご質問・ご意見をいただけますでしょうか。どんな点でも構いません。」+ 7秒沈黙。**
>
> *Câu mời formal + mở rộng "ご意見" + 7 giây silence. Đừng lấp.*

---

## Tránh
- "質問ありますか" cộc → suồng sã, không có ý chào đón
- Lấp im lặng < 5 giây → mất câu hỏi tốt
- "何かありますか？" mơ hồ → khách không biết hỏi cái gì
- Chỉ nhìn 1 người khi mời → người khác không cảm thấy được mời
- "じゃあ無いみたいなので…" cắt quá sớm → tạo ấn tượng né tránh Q&A

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 質疑応答 | しつぎおうとう | CHẤT NGHI ỨNG ĐÁP | Q&A |
| 沈黙 | ちんもく | TRẦM MẶC | Sự im lặng |
| 挙手 | きょしゅ | CỬ THỦ | Giơ tay |
| 構いません | かまいません | — | Không sao / không vấn đề |
| 承る | うけたまわる | — | (Khiêm) tiếp nhận, lắng nghe |
| ご意見 | ごいけん | Ý KIẾN | Ý kiến (tôn kính) |', 'system', 22, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000023, 800000006, NULL, 'markdown_book', 'Rule 23 — Trả lời câu hỏi khó / 難しい質問への対応', '# Rule 23 — Trả lời câu hỏi khó / 難しい質問への対応
> **Luận điểm.** Câu khó không trả lời theo bản năng → dùng **LASR**: **L**isten (nghe hết, không cắt) → **A**cknowledge (xác nhận đã hiểu) → **S**olve (trả lời) → **R**edirect (chốt + chuyển). Mỗi bước có công thức Nhật cụ thể. Bỏ A = trả lời lệch ý; bỏ R = lê thê → cháy giờ.
>
> 難しい質問は LASR で対応。L=傾聴、A=「ご質問の趣旨は〜と理解しました」、S=回答、R=「他にご質問がございましたら〜」。Aを飛ばすと的外れ、Rを飛ばすと長引く。
>
> **Liên quan:** rule 22 (Q&A 開始), rule 24 (持ち帰り), rule 25 (hostile).

---

## Bối cảnh / 場面
Q&A bài thuyết trình Phase 3. Anh Matsumoto hỏi câu phức tạp 2 vế: "phạm vi phase 3 có chồng lên phase 2 không + nếu chồng thì bên nào xử lý?"

---

## Hội thoại XẤU — bỏ A + bỏ R
*L1 chưa kết, đã trả lời · lê thê 2 phút · 困惑*

| Vai | Câu |
|---------|-----|
| **松本** | 「Phase 3 のスコープは Phase 2 と<ruby>重複<rt>ちょうふく</rt></ruby>しないか？<ruby>重複<rt>ちょうふく</rt></ruby>したら<ruby>誰<rt>だれ</rt></ruby>が<ruby>調整<rt>ちょうせい</rt></ruby>するのか？」 <br/>*Scope Phase 3 có trùng với Phase 2 không? Nếu trùng thì ai điều phối?* |
| **ズン** | 「えっと、<ruby>重複<rt>ちょうふく</rt></ruby>しないと<ruby>思<rt>おも</rt></ruby>います。<ruby>設計<rt>せっけい</rt></ruby>の<ruby>段階<rt>だんかい</rt></ruby>で…あ、いや、<ruby>重複<rt>ちょうふく</rt></ruby>する<ruby>部分<rt>ぶぶん</rt></ruby>は…うーんと、トゥアンさんが…」 <br/>*Ờ, em nghĩ là không trùng ạ. Trong giai đoạn thiết kế... à không, phần trùng thì... ờ... anh Tuấn...* |
| **ズン** | 「…と、まあ、そんな<ruby>感<rt>かん</rt></ruby>じです。」 <br/>*...Và, đại khái là vậy ạ.* |
| **松本** | 「…<ruby>結局<rt>けっきょく</rt></ruby>どっちが<ruby>調整<rt>ちょうせい</rt></ruby>するんでしょうか？」 <br/>*...Vậy cuối cùng bên nào điều phối ạ?* |

**Vì sao xấu:** Cắt ngang câu hỏi (chưa nghe vế 2). Không xác nhận lại → trả lời lệch. Không chốt chuyển → 2 phút nói lan man, khách vẫn không hiểu.

---

## Hội thoại TỐT — LASR đầy đủ
*待つまで完了 — L*

| Vai | Câu |
|---------|-----|
| **松本** | 「Phase 3 のスコープは Phase 2 と<ruby>重複<rt>ちょうふく</rt></ruby>しないか？<ruby>重複<rt>ちょうふく</rt></ruby>したら<ruby>誰<rt>だれ</rt></ruby>が<ruby>調整<rt>ちょうせい</rt></ruby>するのか？」 <br/>*Scope Phase 3 có trùng với Phase 2 không? Nếu trùng thì ai điều phối?* |
| **ズン** | 「**ご<ruby>質問<rt>しつもん</rt></ruby>ありがとうございます**【1】。**ご<ruby>質問<rt>しつもん</rt></ruby>の<ruby>趣旨<rt>しゅし</rt></ruby>は『Phase 2 / 3 のスコープ<ruby>重複<rt>ちょうふく</rt></ruby>の<ruby>有無<rt>うむ</rt></ruby>』と『<ruby>重複時<rt>ちょうふくじ</rt></ruby>の<ruby>調整責任者<rt>ちょうせいせきにんしゃ</rt></ruby>』の2<ruby>点<rt>てん</rt></ruby>と<ruby>理解<rt>りかい</rt></ruby>しました**【2】、よろしいでしょうか？」 — A <br/>*Em cảm ơn câu hỏi của anh ạ. Em hiểu ý anh là 2 điểm: 「có trùng phạm vi Phase 2 / 3 hay không」 và 「nếu trùng thì ai chịu trách nhiệm điều phối」, có đúng không ạ?* |
| **松本** | 「はい、その<ruby>通<rt>とお</rt></ruby>りです。」 <br/>*Vâng, đúng vậy.* |
| **ズン** | 「**まず1<ruby>点目<rt>てんめ</rt></ruby>**、スライド12の<ruby>比較表<rt>ひかくひょう</rt></ruby>のとおり<ruby>重複<rt>ちょうふく</rt></ruby>は **3<ruby>機能<rt>きのう</rt></ruby>** ございます。**2<ruby>点目<rt>てんめ</rt></ruby>**、<ruby>調整責任者<rt>ちょうせいせきにんしゃ</rt></ruby>は **<ruby>弊社<rt>へいしゃ</rt></ruby>トゥアン＋<ruby>御社<rt>おんしゃ</rt></ruby><ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>合同<rt>ごうどう</rt></ruby>レビュー**で<ruby>月次<rt>げつじ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>いたします。」 — S 【3】 <br/>*Trước hết điểm 1: theo bảng so sánh slide 12, có 3 chức năng trùng ạ. Điểm 2: người điều phối là anh Tuấn bên em + anh Tanaka bên quý vị, review chung và điều phối hàng tháng ạ.* |
| **ズン** | 「**<ruby>以上<rt>いじょう</rt></ruby>、お<ruby>答<rt>こた</rt></ruby>えできておりますでしょうか**【4】？<ruby>他<rt>ほか</rt></ruby>にご<ruby>不明<rt>ふめい</rt></ruby>な<ruby>点<rt>てん</rt></ruby>がございましたら、<ruby>続<rt>つづ</rt></ruby>けてどうぞ。」 — R <br/>*Như trên có giải đáp được không ạ? Nếu còn điểm chưa rõ, mời anh tiếp tục ạ.* |
| **松本** | 「<ruby>明確<rt>めいかく</rt></ruby>です。ありがとうございます。」 <br/>*Rõ ràng rồi. Cảm ơn anh.* |

 **Ghi chú:**
- 【1】**「ご質問ありがとうございます」** — câu đệm, mua 1 giây để sắp xếp câu trả lời.
- 【2】**「ご質問の趣旨は〜と理解しました、よろしいでしょうか」** — bước A. Diễn đạt lại câu hỏi → khách xác nhận → tránh trả lời lệch.
- 【3】**「まず1点目／2点目」** — bước S có cấu trúc đánh số. Câu khó nhiều vế phải tách thành từng điểm có số thứ tự.
- 【4】**「お答えできておりますでしょうか」** — bước R. Kiểm lại đã trả lời đúng → nhường lượt lại cho khách.

---

## Cụm từ mẫu
> **L → A 「ご<ruby>質問<rt>しつもん</rt></ruby>の<ruby>趣旨<rt>しゅし</rt></ruby>は〜と<ruby>理解<rt>りかい</rt></ruby>しました」 → S 「1<ruby>点目<rt>てんめ</rt></ruby>／2<ruby>点目<rt>てんめ</rt></ruby>」 → R 「お<ruby>答<rt>こた</rt></ruby>えできておりますでしょうか」**
>
> *Listen (nghe hết) → Acknowledge với reframe → Solve theo từng điểm có đánh số → Redirect xác nhận lại.*

---

## Tránh
- Cắt câu hỏi giữa chừng → mất vế 2/3
- Bỏ bước A → trả lời lệch khi câu hỏi 2 nghĩa
- Bắt đầu bằng "えっと…うーんと…" lan man → mất uy thế
- Bỏ bước R → cháy giờ + khách không biết khi nào hết lượt
- "たぶん…と思います" mơ hồ → chuyển sang rule 24 (持ち帰り) tử tế thay vì đoán

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 趣旨 | しゅし | THÚ CHỈ | Ý chính / chủ đích |
| 重複 | ちょうふく | TRÙNG PHỤC | Trùng / overlap |
| 調整 | ちょうせい | ĐIỀU CHỈNH | Điều phối |
| 責任者 | せきにんしゃ | TRÁCH NHIỆM GIẢ | Người phụ trách |
| 傾聴 | けいちょう | KHUYNH THÍNH | Lắng nghe (active) |
| 月次 | げつじ | NGUYỆT THỨ | Hàng tháng |
| 不明な点 | ふめいなてん | BẤT MINH | Điểm chưa rõ |', 'system', 23, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000024, 800000006, NULL, 'markdown_book', 'Rule 24 — Mang về xem xét cho câu chưa biết / 不明事項の持ち帰り', '# Rule 24 — Mang về xem xét cho câu chưa biết / 不明事項の持ち帰り
> **Luận điểm.** Câu hỏi không biết → **đừng đoán bừa**. Công thức Nhật chuẩn: 「申し訳ございません、その点は **持ち帰って確認** させていただきます。**〇日までに** ご回答いたします」. **Bắt buộc hạn chót cụ thể** + ghi chép tại chỗ + theo dõi phản hồi đúng hẹn. Đoán bừa = mất uy tín trầm trọng hơn nói "không biết".
>
> 不明事項は推測せず「持ち帰って確認＋〇日まで回答」が標準。Deadline 必須。Honest 持ち帰り＞いい加減な推測。
>
> **Liên quan:** rule 23 (LASR), rule 28 (email phản hồi sau buổi). Sách 03 rule 35 (gijiroku — biên bản theo dõi), Sách 04 rule 30 (持ち帰り基本).

---

## Bối cảnh / 場面
Q&A Phase 3. Anh Ōgaki hỏi câu technical chi tiết về protocol tích hợp API với hệ thống legacy của 白鷗. Dũng không nắm sâu → 2 lựa chọn: đoán bừa hay 持ち帰り.

---

## Hội thoại XẤU — đoán bừa + không hạn chót
*không biết, đoán · ấn tượng: không đáng tin*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>弊社<rt>へいしゃ</rt></ruby>レガシーの SOAP API、Phase 3 で REST に<ruby>統合<rt>とうごう</rt></ruby>できますか？<ruby>認証<rt>にんしょう</rt></ruby>は OAuth 2.0 ですが<ruby>対応可能<rt>たいおうかのう</rt></ruby>ですか？」 <br/>*SOAP API legacy bên chúng tôi, Phase 3 có tích hợp được sang REST không? Auth OAuth 2.0, có xử lý được không?* |
| **ズン** | 「えっと、たぶんできると思います。OAuth 2.0 は<ruby>標準<rt>ひょうじゅん</rt></ruby>なので…」 <br/>*Ờ, em nghĩ chắc làm được ạ. OAuth 2.0 là chuẩn nên...* |
| **大垣** | 「『たぶん』ですか？OAuth 2.0 のどのフロー<ruby>対応<rt>たいおう</rt></ruby>ですか？」 <br/>*「Chắc」 à? Flow OAuth 2.0 nào hỗ trợ?* |
| **ズン** | 「あ、それは…<ruby>後<rt>あと</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>します…」 *(không hạn chót)* <br/>*À, cái đó... em sẽ kiểm tra sau ạ...* |
| **大垣** | 「…<ruby>分<rt>わ</rt></ruby>かりました、<ruby>回答<rt>かいとう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちします。」 <br/>*...Hiểu rồi, tôi đợi câu trả lời.* |

**Vì sao xấu:** "たぶん" = đoán bừa không cơ sở. Khách kỹ thuật đặt câu hỏi sâu thêm → lộ ngay. "後で確認" không hạn chót = lời hứa mơ hồ → khách không biết khi nào có câu trả lời → ấn tượng "không đáng tin".

---

## Hội thoại TỐT — thành thật 持ち帰り + hạn chót + ghi chép
| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>弊社<rt>へいしゃ</rt></ruby>レガシーの SOAP API、Phase 3 で REST に<ruby>統合<rt>とうごう</rt></ruby>できますか？<ruby>認証<rt>にんしょう</rt></ruby>は OAuth 2.0 ですが<ruby>対応可能<rt>たいおうかのう</rt></ruby>ですか？」 <br/>*SOAP API legacy bên chúng tôi, Phase 3 có tích hợp được sang REST không? Auth OAuth 2.0, có xử lý được không?* |
| **ズン** | 「**ご<ruby>質問<rt>しつもん</rt></ruby>ありがとうございます**。**<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと**、SOAP→REST <ruby>統合<rt>とうごう</rt></ruby>の technical detail は **<ruby>私<rt>わたし</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>で<ruby>即答<rt>そくとう</rt></ruby>できかねます**【1】。」 <br/>*Em cảm ơn câu hỏi của anh ạ. Em xin nói thẳng ạ — chi tiết technical về tích hợp SOAP→REST em không thể trả lời ngay tại chỗ ạ.* |
| **ズン** | 「**<ruby>弊社<rt>へいしゃ</rt></ruby> CTO ハー** に<ruby>確認<rt>かくにん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、**<ruby>今週金曜<rt>こんしゅうきんよう</rt></ruby> 17時までに** メールで<ruby>詳細回答<rt>しょうさいかいとう</rt></ruby>させていただきます。**OAuth 2.0 のフロー** も<ruby>併<rt>あわ</rt></ruby>せて<ruby>確認<rt>かくにん</rt></ruby>いたします【2】。」 — ghi chép vào sổ tay <br/>*Em sẽ xác nhận với anh Hà CTO bên em, và phản hồi chi tiết qua email trước 17h thứ Sáu tuần này ạ. Em sẽ kiểm tra thêm luồng OAuth 2.0 luôn ạ.* |
| **ズン** | 「**お<ruby>時間<rt>じかん</rt></ruby> 3<ruby>営業日<rt>えいぎょうび</rt></ruby>いただいて** よろしいでしょうか？」【3】 <br/>*Cho em xin 3 ngày làm việc được không ạ?* |
| **大垣** | 「<ruby>結構<rt>けっこう</rt></ruby>です、お<ruby>待<rt>ま</rt></ruby>ちします。<ruby>技術詳細<rt>ぎじゅつしょうさい</rt></ruby>は<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り<ruby>了解<rt>りょうかい</rt></ruby>です。」 <br/>*Được, tôi đợi. Chi tiết technical mang về xem xét, OK.* |
| **ズン** | 「ありがとうございます。**<ruby>期限内<rt>きげんない</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ずご<ruby>回答<rt>かいとう</rt></ruby>いたします**。」 <br/>*Em cảm ơn ạ. Em xin chắc chắn phản hồi đúng hẹn ạ.* |

 **Ghi chú:**
- 【1】**「即答できかねます」** — khiêm tốn + trang trọng. Tốt hơn "わかりません". 「〜かねます」 = "không thể (do hoàn cảnh)" → từ chối lịch sự.
- 【2】**Deadline cụ thể + ai xác nhận + định dạng phản hồi** — 3 yếu tố bắt buộc của 持ち帰り. Ghi chép tại chỗ → khách thấy mình nghiêm túc.
- 【3】**「お時間〇営業日いただいて」** — đề nghị hạn chót + xin phép. Khách có thể thương lượng rút ngắn hơn nếu gấp.

---

## Cụm từ mẫu
> **「<ruby>即答<rt>そくとう</rt></ruby>できかねます。〇<ruby>日<rt>にち</rt></ruby>までに、〇〇に<ruby>確認<rt>かくにん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、〇〇でご<ruby>回答<rt>かいとう</rt></ruby>いたします。」**
>
> *Thành thật "không thể trả lời ngay" + hạn chót + người xác nhận + định dạng phản hồi.*

---

## Tránh
- "たぶん…と思います" đoán bừa → khách hỏi sâu thêm là vỡ
- "後で確認します" không hạn chót → mơ hồ, ấn tượng không nghiêm túc
- "わかりません" cộc → thiếu chuyên nghiệp. Dùng 「即答できかねます」 / 「持ち帰らせていただきます」
- 持ち帰り xong quên theo dõi phản hồi → mất uy tín toàn bộ (xem rule 28)
- Hứa hạn chót không khả thi ("明日まで") khi cần xác nhận nhiều bên → trễ hẹn còn tệ hơn

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 持ち帰る | もちかえる | — | Mang về (xem xét) |
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| 即答 | そくとう | TỨC ĐÁP | Trả lời ngay |
| 〜かねます | 〜かねます | — | Không thể (formal) |
| 営業日 | えいぎょうび | DOANH NGHIỆP NHẬT | Ngày làm việc |
| 期限 | きげん | KỲ HẠN | Hạn |
| 認証 | にんしょう | NHẬN CHỨNG | Xác thực |
| 統合 | とうごう | THỐNG HỢP | Tích hợp |', 'system', 24, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000025, 800000006, NULL, 'markdown_book', 'Rule 25 — Đối phó câu hỏi gay gắt / 敵対的質問への切り返し', '# Rule 25 — Đối phó câu hỏi gay gắt / 敵対的質問への切り返し
> **Luận điểm.** Câu công kích (chất vấn giá / nghi ngờ năng lực) → **đừng phòng thủ**. Công thức: **câu bắc cầu** trung lập → **chuyển khung** từ chất vấn sang mối quan ngại → **trả lời** dựa trên mối quan ngại đó. Không phản công lại, không "vâng-nhưng" kiểu thủ thế. Câu bắc cầu "ご指摘の点はもっともでございます" hay "ご懸念の点を共有していただきありがとうございます" — trung hoà cảm xúc trước khi trả lời nội dung.
>
> 敵対的質問は defensive 禁止。Bridge phrase で中和 → 懸念点に reframe → 回答。「ご指摘もっとも」「ご懸念共有ありがとうございます」が王道。
>
> **Liên quan:** rule 23 (LASR), rule 19 (slide giá cả).

---

## Bối cảnh / 場面
Q&A Phase 3. Anh Ōgaki chất vấn mạnh về giá: "Phase 2 đã 800万、giờ Phase 3 lại 1200万 — đắt quá! Cty Việt Nam mà giá Tokyo dev?". Giọng thẳng, có chút gay gắt.

---

## Hội thoại XẤU — phòng thủ + đẩy lại
*phòng thủ · 更に強く*

| Vai | Câu |
|---------|-----|
| **大垣** | 「Phase 3 で1200万？Phase 2 が800万だったのに 50%増？ベトナム<ruby>会社<rt>がいしゃ</rt></ruby>で<ruby>東京<rt>とうきょう</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>の<ruby>値段<rt>ねだん</rt></ruby>ですか？」 <br/>*Phase 3 mà 12 triệu yên? Phase 2 là 8 triệu mà tăng 50%? Cty Việt Nam mà giá kiểu dev Tokyo à?* |
| **ズン** | 「いや、<ruby>高<rt>たか</rt></ruby>くないと<ruby>思<rt>おも</rt></ruby>います。<ruby>市場<rt>しじょう</rt></ruby><ruby>価格<rt>かかく</rt></ruby>と<ruby>比較<rt>ひかく</rt></ruby>して<ruby>妥当<rt>だとう</rt></ruby>です。」 <br/>*Không, em nghĩ không đắt đâu ạ. So với giá thị trường thì hợp lý ạ.* |
| **大垣** | 「『<ruby>妥当<rt>だとう</rt></ruby>』ですか。じゃあ<ruby>他社<rt>たしゃ</rt></ruby><ruby>見積<rt>みつ</rt></ruby>もり<ruby>持<rt>も</rt></ruby>ってきてくれ。」 <br/>*「Hợp lý」 à. Vậy mang báo giá của cty khác đến đây.* |
| **ズン** | 「えっと、それはちょっと…」 <br/>*Ờ, cái đó hơi...* |

**Vì sao xấu:** "高くない" phủ nhận trực diện = đối đầu. Khách càng phản bác mạnh. Không bắc cầu, không chuyển khung → leo thang xung đột. Cty Nhật rất ngại đối đầu trong Q&A → ấn tượng để lại: người trình bày thiếu tinh tế.

---

## Hội thoại TỐT — Bắc cầu → Chuyển khung → Trả lời
*giọng trung lập · giọng dịu xuống*

| Vai | Câu |
|---------|-----|
| **大垣** | 「Phase 3 で1200万？Phase 2 が800万だったのに 50%増？ベトナム会社で東京開発の値段ですか？」 <br/>*Phase 3 mà 12 triệu yên? Phase 2 là 8 triệu mà tăng 50%? Cty Việt Nam mà giá kiểu dev Tokyo à?* |
| **ズン** | 「**<ruby>ご指摘<rt>ごしてき</rt></ruby>の点、もっともでございます**【1】。**ご<ruby>懸念<rt>けねん</rt></ruby>は『<ruby>価格<rt>かかく</rt></ruby><ruby>上昇<rt>じょうしょう</rt></ruby> 50% の<ruby>妥当性<rt>だとうせい</rt></ruby>』** と<ruby>理解<rt>りかい</rt></ruby>しました。」 — Bắc cầu + Chuyển khung <br/>*Điểm anh nêu rất hợp lý ạ. Em hiểu mối quan ngại của anh là 「tính hợp lý của việc tăng giá 50%」 ạ.* |
| **ズン** | 「**<ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと**、価格上昇分の<ruby>内訳<rt>うちわけ</rt></ruby>は **3点** ございます【2】。」 <br/>*Em xin nói thẳng kết luận trước ạ — phần tăng giá có 3 cấu phần ạ.* |
| **ズン** | 「①Phase 3 はスコープが Phase 2 の 1.6倍 (<ruby>機能数<rt>きのうすう</rt></ruby> 12→19)、②セキュリティ<ruby>要件<rt>ようけん</rt></ruby> ISO27001 <ruby>対応<rt>たいおう</rt></ruby>で <ruby>工数<rt>こうすう</rt></ruby>+15%、③24/7 サポート<ruby>初年度<rt>しょねんど</rt></ruby><ruby>込<rt>こ</rt></ruby>み。**スコープ<ruby>単価<rt>たんか</rt></ruby>で見ますと Phase 2 <ruby>比<rt>ひ</rt></ruby> -8%** でございます。<ruby>詳細<rt>しょうさい</rt></ruby>はスライド19の<ruby>比較表<rt>ひかくひょう</rt></ruby>のとおりです。」 — Trả lời đánh số <br/>*① Phase 3 phạm vi gấp 1.6 lần Phase 2 (12 chức năng → 19), ② yêu cầu bảo mật ISO27001 = effort +15%, ③ bao gồm support 24/7 năm đầu. Tính theo đơn giá phạm vi thì giảm 8% so với Phase 2 ạ. Chi tiết ở slide 19 bảng so sánh ạ.* |
| **ズン** | 「**もしスコープを Phase 2 と<ruby>同等<rt>どうとう</rt></ruby>に<ruby>絞<rt>しぼ</rt></ruby>れば** 950万まで<ruby>圧縮<rt>あっしゅく</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。**いずれの<ruby>方向性<rt>ほうこうせい</rt></ruby>をご<ruby>希望<rt>きぼう</rt></ruby>でしょうか**【3】？」 <br/>*Nếu cắt phạm vi về tương đương Phase 2, có thể nén xuống 9,5 triệu yên ạ. Quý vị muốn theo hướng nào ạ?* |
| **大垣** | 「…なるほど、スコープ単価で -8% か。比較表をもう一度見せてください。」 <br/>*...Hiểu rồi, đơn giá phạm vi giảm 8% à. Cho tôi xem lại bảng so sánh.* |

 **Ghi chú:**
- 【1】**「ご指摘の点、もっともでございます」** — câu bắc cầu kinh điển. KHÔNG đồng ý với nội dung (không công nhận đắt), mà công nhận **việc nêu vấn đề là hợp lý**. Trung hoà cảm xúc, không nhượng bộ lập trường.
- 【2】**「結論から申し上げますと…3点」** — câu trả lời có cấu trúc ngay sau câu bắc cầu. Số liệu rõ ràng → khách không thể gạt phăng đi được.
- 【3】**「いずれの方向性をご希望でしょうか」** — trao lại quyền quyết định cho khách. Cho khách lựa chọn (giảm phạm vi hay giữ giá) → khách thấy được tôn trọng, không bị "ấn" giá vào mặt.

---

## Cụm từ mẫu
> **Bắc cầu 「ご指摘もっとも／ご懸念共有ありがとうございます」 → Chuyển khung sang 懸念 → Trả lời đánh số → Trao lựa chọn 「いずれをご希望でしょうか」.**
>
> *Đừng phòng thủ. Trung hoà → chuyển sang mối quan ngại → trả lời có cấu trúc → trao quyền chọn cho khách.*

---

## Tránh
- "高くないです" phủ nhận trực diện → leo thang căng thẳng
- "他社より安いです" so sánh gay gắt → khách thấy thiếu chuyên nghiệp
- "それは誤解です" ngầm nói khách sai → khách mất thể diện
- Ngôn ngữ cơ thể phòng thủ: khoanh tay, lùi lại → khách dễ đọc ra
- Cãi lý dài dòng → cty Nhật ngại đối đầu, càng cãi càng mất điểm trong mắt họ

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 敵対的 | てきたいてき | ĐỊCH ĐỐI ĐÍCH | Đối nghịch / hostile |
| 切り返す | きりかえす | — | Đáp trả khéo |
| ご指摘 | ごしてき | CHỈ TRÍCH | Sự chỉ ra (kính ngữ) |
| もっとも | もっとも | — | Hợp lý / có lý |
| ご懸念 | ごけねん | HUYỀN NIỆM | Mối quan ngại (kính) |
| 妥当性 | だとうせい | THỎA ĐƯƠNG TÍNH | Tính hợp lý |
| 内訳 | うちわけ | NỘI DỊCH | Phân tích chi tiết |
| 圧縮 | あっしゅく | ÁP SÚC | Nén / cắt giảm |', 'system', 25, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000026, 800000006, NULL, 'markdown_book', 'Rule 26 — Phần kết với CTA / クロージング＋CTA', '# Rule 26 — Phần kết với CTA / クロージング＋CTA
> **Luận điểm.** Phần kết không phải "ありがとうございました". Phải có 2 phần: **Tóm tắt lại 3 ý chính** (1 phút) + **Lời kêu gọi hành động rõ** (bước tiếp theo + người phụ trách + hạn chót). Không có CTA = bài thuyết trình kết thúc mà "không có gì xảy ra". Khách Nhật rất đề cao "次のステップ明確" như dấu hiệu chuyên nghiệp.
>
> クロージングは ① Recap 3点 + ② CTA (next step + owner + deadline)。「ありがとうございました」だけは pitch を opaque にする。
>
> **Liên quan:** rule 13 (cam kết giữ giờ), rule 27 (slide cảm ơn), rule 28 (theo dõi sau).

---

## Bối cảnh / 場面
Bài thuyết trình Phase 3 sắp kết thúc. Q&A đã xong. Chuẩn bị slide phần kết. Khách: 大垣, 松本, 田中.

---

## Hội thoại XẤU — kết thúc trống rỗng
*slide cuối: chỉ có chữ "Cảm ơn" · thư ký*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>以上<rt>いじょう</rt></ruby>です。本日はお時間いただきありがとうございました。」 <br/>*Hết rồi ạ. Hôm nay cảm ơn quý vị đã dành thời gian ạ.* |
| **大垣** | 「…で、次は？」 <br/>*...Vậy tiếp theo?* |
| **ズン** | 「あ、それは…<ruby>後<rt>のち</rt></ruby>ほどメールで送ります…」 <br/>*À, cái đó... em gửi mail sau ạ...* |
| **田中** | 「<ruby>次回<rt>じかい</rt></ruby>会議の<ruby>日付<rt>ひづけ</rt></ruby>は？」 <br/>*Ngày họp lần tới?* |
| **ズン** | 「えっと、<ruby>確認<rt>かくにん</rt></ruby>して連絡します…」 <br/>*Ờ, em kiểm tra rồi liên hệ sau ạ...* |

**Vì sao xấu:** Phần kết không tóm tắt lại → khách quên 60% nội dung. Không CTA → khách không biết phải làm gì tiếp. "後ほどメール" = mơ hồ → 田中 phải hỏi tường minh thay vì người trình bày chủ động. Ấn tượng để lại: "thiếu kế hoạch rõ ràng".

---

## Hội thoại TỐT — Tóm tắt lại 3 + CTA rõ
*slide "本日のまとめ" · slide "次のステップ"*

| Vai | Câu |
|---------|-----|
| **ズン** | 「では、**本日のまとめ** をさせていただきます【1】。」 <br/>*Em xin phép tóm tắt nội dung hôm nay ạ.* |
| **ズン** | 「**3点** ございます。①Phase 3 <ruby>スコープ<rt>すこーぷ</rt></ruby>は **19<ruby>機能<rt>きのう</rt></ruby>、5/15 <ruby>開始<rt>かいし</rt></ruby> / 12/15 リリース**、②<ruby>価格<rt>かかく</rt></ruby>は **1200<ruby>万円<rt>まんえん</rt></ruby>**(Phase 2 <ruby>比<rt>ひ</rt></ruby><ruby>単価<rt>たんか</rt></ruby> -8%)、③<ruby>責任者<rt>せきにんしゃ</rt></ruby>ペアは **<ruby>弊社<rt>へいしゃ</rt></ruby>ズン＋<ruby>御社<rt>おんしゃ</rt></ruby>松本様**でございます。」 — Tóm tắt lại <br/>*Có 3 điểm ạ. ① Phạm vi Phase 3 = 19 chức năng, bắt đầu 15/5 / phát hành 15/12; ② giá 12 triệu yên (đơn giá giảm 8% so Phase 2); ③ cặp người phụ trách = Dũng bên em + anh Matsumoto bên quý vị ạ.* |
| **ズン** | 「**次のステップ** は **3つ** ございます【2】。」 <br/>*Bước tiếp theo có 3 mục ạ.* |
| **ズン** | 「①**今週金曜まで** に SOAP <ruby>統合<rt>とうごう</rt></ruby><ruby>詳細<rt>しょうさい</rt></ruby><ruby>回答<rt>かいとう</rt></ruby>メール (弊社→御社)、②**5/8 (来週<ruby>水曜<rt>すいよう</rt></ruby>)** にスコープ<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>会議 (60分・<ruby>対面<rt>たいめん</rt></ruby>)、③**5/15 までに** <ruby>契約書<rt>けいやくしょ</rt></ruby>サインオフ (両社<ruby>法務<rt>ほうむ</rt></ruby><ruby>経由<rt>けいゆ</rt></ruby>)。」 — Kêu gọi hành động đánh số <br/>*① Trước thứ Sáu tuần này: email phản hồi chi tiết tích hợp SOAP (bên em → bên quý vị); ② 8/5 (thứ Tư tuần sau): họp chốt phạm vi lần cuối (60 phút, gặp trực tiếp); ③ trước 15/5: phê duyệt hợp đồng (qua pháp chế hai bên) ạ.* |
| **ズン** | 「次回会議は **5月8日 14時から<ruby>白鷗<rt>はくおう</rt></ruby>様会議室** で<ruby>予約<rt>よやく</rt></ruby>させていただきました。**ご<ruby>都合<rt>つごう</rt></ruby>いかがでしょうか**【3】？」 <br/>*Họp tiếp em đã giữ chỗ 14h ngày 8/5 tại phòng họp Hakuō ạ. Quý vị có thuận tiện không ạ?* |
| **大垣** | 「問題ない。5/8 で進めましょう。」 <br/>*Không vấn đề. Đi 8/5 đi.* |
| **ズン** | 「ありがとうございます。本日のスライド + <ruby>議事<rt>ぎじ</rt></ruby>メモは **24時間以内に** メールでお送りいたします。本日はお時間<ruby>頂戴<rt>ちょうだい</rt></ruby>し、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。」 <br/>*Em cảm ơn ạ. Slide hôm nay + memo họp em sẽ gửi mail trong vòng 24h ạ. Hôm nay xin chân thành cảm ơn quý vị đã dành thời gian ạ.* |

 **Ghi chú:**
- 【1】**「本日のまとめ」** — slide tóm tắt lại phải có tiêu đề rõ. Khán giả tự động tập trung chú ý hơn.
- 【2】**「次のステップは3つ」** — Lời kêu gọi hành động đánh số. Mỗi bước: hành động + người phụ trách + hạn chót. 3 bước là điểm vừa đẹp (1 quá ít, 5+ quá nhiều).
- 【3】**「ご都合いかがでしょうか」** — chốt lịch họp tiếp ngay tại chỗ. Nếu khách đồng ý → xong; nếu không → dời lịch trong tuần.

---

## Cụm từ mẫu
> **Phần kết = Tóm tắt lại 3 (số liệu then chốt) + CTA 3 (hành động + người phụ trách + hạn chót) + chốt lịch họp tiếp.**
>
> *Không có CTA = bài thuyết trình không ra kết quả. 3 + 3 là công thức chuẩn.*

---

## Tránh
- "ありがとうございました" cộc → khách không nhớ các ý chính
- Phần tóm tắt dài hơn 1 phút → khán giả đã cạn năng lượng tập trung
- CTA mơ hồ "後で連絡します" → 田中 sẽ phải hỏi → mất uy thế
- Quên chốt lịch họp tiếp tại chỗ → email theo dõi phải đi đi lại lại 3-4 lần
- Quá nhiều CTA (5+) → bị loãng, khách không nhớ ưu tiên

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| クロージング | クロージング | — | Phần kết |
| まとめ | まとめ | — | Tóm tắt / tóm tắt lại |
| 次のステップ | つぎのステップ | — | Bước tiếp theo |
| 都合 | つごう | ĐÔ HỢP | Sự thuận tiện |
| 法務 | ほうむ | PHÁP VỤ | Pháp chế |
| サインオフ | サインオフ | — | Sign-off |
| 議事メモ | ぎじメモ | NGHỊ SỰ | Ghi chú cuộc họp |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | (Khiêm) nhận / xin |', 'system', 26, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000027, 800000006, NULL, 'markdown_book', 'Rule 27 — Slide cảm ơn / 謝辞スライド', '# Rule 27 — Slide cảm ơn / 謝辞スライド
> **Luận điểm.** Slide cuối **không phải** chữ "Cảm ơn" to giữa màn hình. Khuôn chuẩn JP business: ① 「ありがとうございました」 trên cùng → ② **Tóm tắt lại 3 điểm chính** 1 lần → ③ **Thông tin liên hệ** (người trình bày + đồng trình bày) → ④ **Mã QR** dẫn về bộ slide PDF. Slide này phải lên trong khi đang đàm thoại phần kết — khán giả còn nhìn slide khi rời phòng → ấn tượng cuối đọng lại.
>
> 謝辞スライドは「Thank You」だけでは弱い。①御礼 ②3点 recap ③連絡先 ④QR で deck PDF。退室時の最後の image。
>
> **Liên quan:** rule 26 (phần kết CTA), rule 28 (email phản hồi sau buổi).

---

## Bối cảnh / 場面
Dũng đang hoàn thiện bộ slide. Đến slide cuối — chuẩn bị làm chữ "Cảm ơn" to. Anh Tuấn (trưởng nhóm kỹ thuật) xem qua và chỉnh.

---

## Hội thoại XẤU — slide cảm ơn trống
*nhìn qua vai*

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「最後のスライド、『Thank You』だけ？」 <br/>*Slide cuối chỉ có chữ "Cảm ơn" thôi à?* |
| **ズン** | 「はい、シンプルがいいかと…」 <br/>*Vâng, em nghĩ đơn giản là tốt ạ...* |
| **トゥアン** | 「客が<ruby>退室<rt>たいしつ</rt></ruby>するまでこの slide が<ruby>壁<rt>かべ</rt></ruby>に<ruby>映<rt>うつ</rt></ruby>ってる時間、何分？5分以上だぞ。**<ruby>情報密度<rt>じょうほうみつど</rt></ruby>ゼロ**で5分は **mottainai**。」 <br/>*Slide này chiếu trên tường mấy phút lúc khách đi ra? 5 phút trở lên đấy. 5 phút mà mật độ thông tin = 0 là mottainai (lãng phí).* |
| **ズン** | 「あ、なるほど…」 <br/>*À, em hiểu rồi ạ...* |

**Vì sao xấu:** Slide cuối thường được chiếu 5-10 phút trong khi nói chuyện xã giao và dọn đồ. Trống = mất cơ hội khắc sâu lại nội dung. Chữ tiếng Anh "Cảm ơn" trên màn hình trước khách Nhật cũng hơi lạc tông.

---

## Hội thoại TỐT — Slide cảm ơn đầy đủ 4 thành phần
| Vai | Câu |
|---------|-----|
| **ズン** | 「**4<ruby>要素<rt>ようそ</rt></ruby>入りの<ruby>謝辞<rt>しゃじ</rt></ruby>スライド** に変更しました【1】。①<ruby>御礼<rt>おれい</rt></ruby>、②本日の3点 recap、③<ruby>連絡先<rt>れんらくさき</rt></ruby>、④deck PDF の QR コード。」 <br/>*Em đã đổi sang slide cảm ơn có 4 thành phần ạ. ① Cảm ơn, ② tóm tắt lại 3 điểm hôm nay, ③ thông tin liên hệ, ④ mã QR dẫn về bộ slide PDF ạ.* |
| **トゥアン** | 「いいね、QR は何先？Drive <ruby>直<rt>ちょく</rt></ruby>リンク？」 <br/>*Tốt, mã QR dẫn đến đâu? Liên kết trực tiếp Drive à?* |
| **ズン** | 「Drive **<ruby>閲覧専用<rt>えつらんせんよう</rt></ruby>** リンクの QR です【2】。**ダウンロード<ruby>可<rt>か</rt></ruby>、<ruby>編集不可<rt>へんしゅうふか</rt></ruby>**。Tanaka PMO 様にも同じリンク Slack で<ruby>共有予定<rt>きょうゆうよてい</rt></ruby>です。」 <br/>*Mã QR đến đường dẫn Drive chỉ xem thôi ạ. Tải về được, không chỉnh sửa được. Em cũng chia sẻ cùng đường dẫn đó qua Slack cho anh Tanaka PMO ạ.* |
| **トゥアン** | 「連絡先は<ruby>弊社<rt>へいしゃ</rt></ruby>2名 (ズン＋ハーCTO) でいいけど、**<ruby>営業時間<rt>えいぎょうじかん</rt></ruby>** 書いとけよ。客が<ruby>深夜<rt>しんや</rt></ruby>メールで<ruby>気<rt>き</rt></ruby>を<ruby>遣<rt>つか</rt></ruby>わない様に。」 <br/>*Thông tin liên hệ bên mình 2 người (Dũng + Hà CTO) là OK, nhưng ghi giờ làm việc vào. Để khách không phải ngại khi gửi mail đêm khuya.* |
| **ズン** | 「『9:00-18:00 (JST)』<ruby>追記<rt>ついき</rt></ruby>します【3】。」 <br/>*Em thêm 「9:00-18:00 (JST)」 ạ.* |

 **Ghi chú:**
- 【1】**4 thành phần = ① 御礼 (cảm ơn) ② Tóm tắt lại 3 điểm ③ Thông tin liên hệ ④ mã QR**. Bỏ qua một là lãng phí cả slide.
- 【2】**Drive 閲覧専用 リンク** — KHÔNG để công khai. 閲覧 = chỉ xem, không cho chỉnh sửa. QR đặt phía dưới-phải, kích thước 4cm² đủ quét từ điện thoại.
- 【3】**営業時間 (JST) ghi rõ** — khách Nhật rất chú trọng cân bằng công việc - cuộc sống, biết người trình bày ngoài giờ lúc nào → thể hiện sự tôn trọng.

---

## Cụm từ mẫu
> **Slide cảm ơn = ① ありがとうございました ② Tóm tắt lại 3点 ③ Thông tin liên hệ (2 người + 営業時間) ④ QR Drive 閲覧専用.**
>
> *Không slide trống. 5-10 phút chiếu cuối là cơ hội khắc sâu lại nội dung, không phải để lãng phí.*

---

## Khuôn slide cảm ơn
**Khối tiêu đề (trên cùng, căn giữa):**
- `ありがとうございました` — Tiêu đề 40pt, căn giữa
- `Cảm ơn quý vị đã dành thời gian` — Phụ đề 24pt

**Khối 【本日の3点】 (3 điểm hôm nay) — Header 28pt, body 22pt:**
- ① Phase 3 スコープ: 19機能
- ② 価格: 1,200万円 (単価 -8%)
- ③ 開始 5/15 / リリース 12/15

**Khối 【お問合せ】 (liên hệ):**
- ズン (BD) — zun@tienphat.vn
- ハー (CTO) — ha@tienphat.vn
- 営業時間 9:00-18:00 (JST / Mon-Fri)

**Góc dưới-phải:**
- [QR コード] — kích thước 4cm², dẫn về 本日のbộ slide PDF

---

## Tránh
- Slide cảm ơn trống → lãng phí 5-10 phút chiếu màn hình
- Email cá nhân (gmail) → thiếu chuyên nghiệp → dùng tên miền công ty
- QR đường dẫn công khai → ai cũng truy cập được → lộ bộ slide
- Quên 営業時間 → khách gửi mail 22h thấy ngại
- Ảnh chân dung người trình bày → không cần thiết, gây xao nhãng

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 謝辞 | しゃじ | TẠ TỪ | Lời cảm ơn |
| 連絡先 | れんらくさき | LIÊN LẠC TIÊN | Contact |
| 閲覧 | えつらん | DUYỆT LÃM | Xem (read-only) |
| 営業時間 | えいぎょうじかん | DOANH NGHIỆP THỜI GIAN | Giờ làm việc |
| 退室 | たいしつ | THOÁI THẤT | Rời phòng |
| 情報密度 | じょうほうみつど | TÌNH BÁO MẬT ĐỘ | Mật độ thông tin |
| 直リンク | ちょくリンク | TRỰC | Liên kết trực tiếp |', 'system', 27, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000028, 800000006, NULL, 'markdown_book', 'Rule 28 — Email phản hồi sau buổi thuyết trình / 事後フォローメール', '# Rule 28 — Email phản hồi sau buổi thuyết trình / 事後フォローメール
> **Luận điểm.** **Trong vòng 24 giờ**: phải gửi email phản hồi sau buổi — không trễ. 4 phần: ① 御礼 ngắn ② Slide PDF + ghi chú họp đính kèm ③ Recap 3 ý chính + 3 bước tiếp theo ④ Deadline câu 持ち帰り. Email này quyết định 30% ấn tượng "chuyên nghiệp" sau bài thuyết trình. Trễ 48h = ấn tượng đã loãng.
>
> ピッチ後24h以内に follow-up メール必須。①御礼 ②資料添付 ③Recap+Next step ④持ち帰り deadline。48h 超えると impression が薄れる。
>
> **Liên quan:** rule 24 (持ち帰り), rule 26 (phần kết CTA), rule 27 (slide cảm ơn).

---

## Bối cảnh / 場面
Bài thuyết trình Phase 3 kết thúc 16:00 thứ Năm. Dũng về văn phòng, định "thứ Hai gửi mail" để nghỉ ngơi cuối tuần. Chị Hương kịp cản.

---

## Hội thoại XẤU — kéo qua cuối tuần
*Slack 17:30 thứ Năm*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、ピッチ<ruby>無事<rt>ぶじ</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>！フォローメールは<ruby>月曜<rt>げつよう</rt></ruby><ruby>送<rt>おく</rt></ruby>ろうと<ruby>思<rt>おも</rt></ruby>います、<ruby>週末<rt>しゅうまつ</rt></ruby>ゆっくり<ruby>書<rt>か</rt></ruby>きたいので。」 <br/>*Chị Hương, bài thuyết trình xong an toàn! Mail phản hồi em định gửi thứ Hai, để cuối tuần em viết kỹ ạ.* |
| **フオン** | 「**月曜だと72<ruby>時間<rt>じかん</rt></ruby><ruby>後<rt>ご</rt></ruby>**。<ruby>客<rt>きゃく</rt></ruby>が<ruby>今夜<rt>こんや</rt></ruby><ruby>社内<rt>しゃない</rt></ruby>シェアする<ruby>時<rt>とき</rt></ruby>に<ruby>資料<rt>しりょう</rt></ruby><ruby>無<rt>な</rt></ruby>いの? **今夜送って**。3<ruby>行<rt>ぎょう</rt></ruby>でも。」 <br/>*Thứ Hai là 72h sau. Khách tối nay chia sẻ nội bộ mà không có tài liệu à? Tối nay gửi đi. 3 dòng cũng được.* |
| **ズン** | 「あ、それは…」 <br/>*À, cái đó...* |
| **フオン** | 「**24h ルール**。<ruby>詳細<rt>しょうさい</rt></ruby><ruby>版<rt>ばん</rt></ruby>は週末に書いて月曜 update。**今夜は acknowledgment + slide PDF link** だけでいい。」 <br/>*Quy tắc 24h. Bản chi tiết để cuối tuần viết, thứ Hai cập nhật. Tối nay chỉ cần xác nhận ngắn + đường dẫn PDF slide là đủ.* |

**Vì sao xấu:** 月曜 = 72h sau. Khách Nhật thường chia sẻ nội bộ trong 24h sau bài thuyết trình — không có slide = họ phải nhớ nội dung nói miệng → ấn tượng "người trình bày chậm". 「週末ゆっくり書く」 = đặt việc riêng của mình lên trên khách hàng.

---

## Hội thoại TỐT — 2 bước: xác nhận trong ngày + bản chi tiết thứ Hai
*Slack 17:30 · 19:45*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、ピッチ<ruby>終了<rt>しゅうりょう</rt></ruby>。**<ruby>今夜<rt>こんや</rt></ruby><ruby>中<rt>じゅう</rt></ruby>に acknowledgment メール** <ruby>送<rt>おく</rt></ruby>ります (slide PDF link + <ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り deadline <ruby>確認<rt>かくにん</rt></ruby>のみ)。**<ruby>詳細<rt>しょうさい</rt></ruby> recap + <ruby>議事<rt>ぎじ</rt></ruby>メモは<ruby>月曜<rt>げつよう</rt></ruby><ruby>朝<rt>あさ</rt></ruby>** に send します。テンプレ<ruby>使<rt>つか</rt></ruby>います。」 <br/>*Chị Hương, bài thuyết trình xong rồi ạ. Tối nay em gửi mail xác nhận trước (chỉ đường dẫn PDF slide + xác nhận hạn chót 持ち帰り). Tóm tắt chi tiết + ghi chú họp em gửi sáng thứ Hai. Em dùng mẫu có sẵn ạ.* |
| **フオン** | 「いいね、その2<ruby>段階<rt>だんかい</rt></ruby>で。今夜の acknowledgment は **20<ruby>時<rt>じ</rt></ruby>まで** に<ruby>出<rt>だ</rt></ruby>すと<ruby>安心<rt>あんしん</rt></ruby>。<ruby>文面<rt>ぶんめん</rt></ruby>ドラフト<ruby>見<rt>み</rt></ruby>せて。」 <br/>*Tốt, đi 2 bước đó. Xác nhận ngắn tối nay ra trước 20h là an toàn. Bản thảo nội dung mail chị xem nhé.* |
| **ズン** | 「ドラフトです。3パラ + <ruby>添付<rt>てんぷ</rt></ruby>3<ruby>点<rt>てん</rt></ruby> + 持ち帰り SOAP detail <ruby>期限<rt>きげん</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby>17時 <ruby>明記<rt>めいき</rt></ruby>しました【1】。」 <br/>*Bản thảo đây ạ. 3 đoạn + 3 tệp đính kèm + ghi rõ hạn chót 持ち帰り chi tiết SOAP trước 17h thứ Sáu ạ.* |
| **フオン** | 「OK、send。月曜の詳細版にはトゥアン+ハー CTO も CC に。」 <br/>*OK, gửi đi. Bản chi tiết thứ Hai nhớ CC anh Tuấn + anh Hà CTO vào nhé.* |

 **Ghi chú:**
- 【1】**2段階送付** (gửi 2 bước) — 当日 (cùng ngày): xác nhận ngắn + slide PDF + xác nhận hạn chót 持ち帰り. 翌営業日朝 (sáng ngày làm việc kế tiếp): tóm tắt chi tiết + ghi chú họp + danh mục việc cần làm. Khách chia sẻ nội bộ ngay trong ngày, phần xem xét chi tiết để đầu tuần → khớp với nhịp làm việc của phía Nhật.

---

## Cụm từ mẫu
> **24h ルール: <ruby>当日<rt>とうじつ</rt></ruby><ruby>中<rt>じゅう</rt></ruby>に short acknowledgment、<ruby>翌<rt>よく</rt></ruby><ruby>営業日<rt>えいぎょうび</rt></ruby>に<ruby>詳細<rt>しょうさい</rt></ruby> recap. <ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り deadline <ruby>必<rt>かなら</rt></ruby>ず<ruby>明記<rt>めいき</rt></ruby>.**
>
> *Xác nhận ngắn trong ngày + bản chi tiết ngày hôm sau = khớp với nhịp chia sẻ nội bộ của khách hàng.*

---

## Mẫu email phản hồi sau buổi thuyết trình
```
件名: 【御礼】Phase 3 ご提案の件 (ティエンファット ズン)

白鷗株式会社
大垣 営業部長 様
松本 PM 様
田中 PMO 様
(CC: 弊社 ハー CTO、トゥアン 技術リーダー、フオン 副部長)

平素より大変お世話になっております。
弊社営業部のズンでございます。

本日はお忙しい中、Phase 3 ご提案にお時間を頂き、誠にありがとうございました。

【本日の合意 3点】
① Phase 3 スコープ: 19機能 (5/15 開始 / 12/15 リリース)
② 価格: 1,200万円 (Phase 2 比単価 -8%)
③ 責任者ペア: 弊社ズン ＋ 御社松本様

【次のステップ 3点】
① 5/2 (今週金) 17時まで: SOAP→REST 統合詳細回答メール (弊社 → 御社)
② 5/8 (来週水) 14時: スコープ最終確認会議 (60分・御社会議室)
③ 5/15 まで: 契約書サインインオフ (両社法務経由)

【添付資料】
・本日のスライド (PDF) — Drive閲覧専用 [URL]
・議事メモ (PDF) — 同上

【持ち帰り事項】
・SOAP→REST 統合 + OAuth 2.0 フロー詳細
 → 弊社 CTO ハー 確認の上、5/2 17時 までに別メールでご回答いたします

ご不明な点等ございましたら、いつでもご連絡くださいませ。
引き続き何卒よろしくお願い申し上げます。

--------------------
チャン・ヴァン・ズン (Tran Van Dung)
ティエンファット 営業部 BD担当
TEL: +84-xx-xxxx-xxxx
EMAIL: zun@tienphat.vn
営業時間: 9:00-18:00 (JST / Mon-Fri)
--------------------
```

---

## Tránh
- Gửi sau 48h → ấn tượng đã loãng, khách đã quên sắc thái lời nói miệng
- 件名 mơ hồ ("先日はありがとうございました") → email bị chìm trong hộp thư
- Quên CC nội bộ (CTO, sếp) → không có chuỗi người làm chứng
- Đính kèm tệp nặng qua mail (tệp 30MB) → dùng đường dẫn Drive
- Quên ghi hạn chót 持ち帰り trong email → khách không biết khi nào phải phản hồi

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 事後 | じご | SỰ HẬU | Sau (sự việc) |
| 御礼 | おれい | NGỰ LỄ | Lời cảm ơn |
| 件名 | けんめい | KIỆN DANH | Tiêu đề mail |
| 添付 | てんぷ | THIÊM PHÓ | Đính kèm |
| 議事メモ | ぎじメモ | NGHỊ SỰ | Ghi chú cuộc họp |
| 引き続き | ひきつづき | — | Tiếp tục (formal) |', 'system', 28, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000029, 800000006, NULL, 'markdown_book', 'Rule 29 — Thuyết trình trực tuyến / オンラインプレゼン', '# Rule 29 — Thuyết trình trực tuyến / オンラインプレゼン
> **Luận điểm.** Thuyết trình trực tuyến không phải "trực tiếp + camera". 5 yếu tố vật lý: ① **Camera ngang mắt** (nhìn ống kính, không nhìn màn hình) ② **Ánh sáng** trước mặt (cửa sổ / đèn vòng) ③ **Cách phát âm** = nói lớn hơn 20% so với trực tiếp ④ **Mic gắn ve áo** không mic máy tính xách tay ⑤ **Phông nền** sạch (ảo hoặc tường trắng). Mỗi yếu tố sai = trừ điểm chuyên nghiệp.
>
> オンラインは「対面+カメラ」ではない。Camera 目線、前方照明、声 +20%、ピンマイク、背景クリーン — 5要素必須。
>
> **Liên quan:** rule 30 (lai/kết hợp), rule 31 (sự cố kỹ thuật). Sách 03 rule 03 (thiết lập video).

---

## Bối cảnh / 場面
Chủ Nhật. Dũng kiểm tra Zoom với chị Hương trước bài thuyết trình trực tuyến sáng thứ Hai cho 松本 + 田中 (大垣 dự trực tiếp tại 白鷗). Tập dượt chia sẻ màn hình.

---

## Trường hợp xấu — máy tính xách tay mặc định
*Zoom*

| Vai | Câu |
|---------|-----|
| **フオン** | 「ズン、カメラが下から<ruby>見上<rt>みあ</rt></ruby>げてる。ノートPC のまま？」 <br/>*Dũng, camera đang ngước từ dưới lên. Vẫn để máy tính xách tay à?* |
| **ズン** | 「はい、ノート PC で…」 <br/>*Vâng, em để máy tính xách tay ạ...* |
| **フオン** | 「**double chin** で見える、それと **<ruby>逆光<rt>ぎゃっこう</rt></ruby>** ! 後ろが窓、顔が<ruby>真<rt>ま</rt></ruby>っ<ruby>黒<rt>くろ</rt></ruby>。声も小さい、laptop マイク？」 <br/>*Nhìn cằm đôi lắm, với cả ngược sáng (逆光)! Sau lưng là cửa sổ, mặt đen sì. Giọng cũng nhỏ, mic máy tính à?* |
| **ズン** | 「全部デフォルトです…」 <br/>*Hết để mặc định ạ...* |
| **フオン** | 「**全部 NG**。月曜まで12時間あるから<ruby>揃<rt>そろ</rt></ruby>えて。」 <br/>*NG hết. Còn 12 tiếng đến thứ Hai, lo set up đi.* |

**Vì sao xấu:** Camera máy tính xách tay góc dưới = cằm đôi + lộ lỗ mũi (bất lịch sự). 逆光 (ngược sáng) = chỉ thấy bóng đen không thấy mặt → ấn tượng người trình bày "ẩn mình". Mic máy tính = âm bể, giọng nhỏ.

---

## Trường hợp tốt — 5 yếu tố thiết lập
*thiết lập lại, gọi lại*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**5<ruby>要素<rt>ようそ</rt></ruby> setup** 完了です【1】。①<ruby>外付<rt>そとづ</rt></ruby>け webcam を<ruby>本棚<rt>ほんだな</rt></ruby>で<ruby>目線<rt>めせん</rt></ruby>に上げ、②<ruby>正面<rt>しょうめん</rt></ruby>にリングライト、③<ruby>背景<rt>はいけい</rt></ruby>は virtual の<ruby>薄<rt>うす</rt></ruby>グレー、④ピンマイク、⑤声は<ruby>通常<rt>つうじょう</rt></ruby> +20% <ruby>意識<rt>いしき</rt></ruby>します。」 <br/>*Em đã thiết lập 5 yếu tố ạ. ① Camera rời kê lên kệ sách ngang mắt, ② ring light trước mặt, ③ phông nền ảo xám nhạt, ④ mic ve áo, ⑤ giọng em chú ý nói to hơn 20% so bình thường ạ.* |
| **フオン** | 「うん、顔が明るい、目線が natural。**手の<ruby>位置<rt>いち</rt></ruby>** どこ？」 <br/>*Ờ, mặt sáng rồi, đường nhìn (eye line) tự nhiên. Tay đặt đâu?* |
| **ズン** | 「<ruby>画面下<rt>がめんした</rt></ruby>に置いて、**重要 point だけ手を上げ gesture** を camera frame 内に入れます【2】。」 <br/>*Em đặt dưới khung hình, chỉ những điểm quan trọng mới đưa tay lên ra động tác trong frame camera ạ.* |
| **フオン** | 「いいね。あと **chat <ruby>監視<rt>かんし</rt></ruby>** は誰？1人で全部<ruby>見<rt>み</rt></ruby>れない。」 <br/>*Tốt. Còn nữa, chat ai theo dõi? 1 người không xem hết được.* |
| **ズン** | 「トゥアンさんに **chat moderator** お願いしました。chat の<ruby>質問<rt>しつもん</rt></ruby>は私が見ずトゥアンさんが verbal で『〇〇様から〜の質問が来ています』と私に<ruby>渡<rt>わた</rt></ruby>します【3】。」 <br/>*Em nhờ anh Tuấn làm người điều phối chat ạ. Em không xem chat, anh Tuấn chuyển lời bằng giọng kiểu 「Anh 〇〇 vừa gửi câu hỏi 〜」 rồi truyền cho em ạ.* |
| **フオン** | 「OK、それで月曜<ruby>行<rt>い</rt></ruby>こう。」 <br/>*OK, thứ Hai đi với thiết lập đó.* |

 **Ghi chú:**
- 【1】**5要素**: camera 目線 / lighting 正面 / 声 +20% / ピンマイク / 背景クリーン. Bỏ qua 1 yếu tố là mất điểm.
- 【2】**Cử chỉ trong khung** — tay phải xuất hiện trong khung camera khi ra động tác, không ra động tác ngoài khung.
- 【3】**Công thức người điều phối chat** — 1 người không thể vừa trình bày vừa theo dõi chat. Người đồng trình bày (Tuấn) làm điều phối → chuyển câu hỏi bằng giọng. Khách Nhật rất hiếm khi bật mic hỏi → chat là kênh chính.

---

## Cụm từ mẫu
> **5要素: ①Camera 目線 ②前方 lighting ③声 +20% ④ピンマイク ⑤背景クリーン. + Người điều phối chat phụ.**
>
> *Trực tuyến ≠ trực tiếp + camera. Thiết lập vật lý quyết định 50% ấn tượng chuyên nghiệp.*

---

## Tránh
- Camera máy tính xách tay góc dưới → cằm đôi + lộ lỗ mũi
- 逆光 (cửa sổ phía sau) → chỉ thấy bóng đen
- Mic máy tính xách tay → âm bể, có vọng tiếng
- Phông nền lộn xộn (giường, đồ giặt) → thiếu chuyên nghiệp
- Tự xem chat trong khi trình bày → ánh nhìn gãy, mất nhịp
- Phông nền ảo "bãi biển" / "phim viễn tưởng" (Star Trek) → không phù hợp khách Nhật

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| カメラ目線 | かめらめせん | — | Giao tiếp bằng mắt qua camera |
| 逆光 | ぎゃっこう | NGHỊCH QUANG | Ngược sáng |
| 照明 | しょうめい | CHIẾU MINH | Đèn / chiếu sáng |
| ピンマイク | ピンマイク | — | Mic ve áo / lavalier |
| 背景 | はいけい | BỐI CẢNH | Phông nền |
| 共有 | きょうゆう | CỘNG HỮU | Chia sẻ (màn hình) |
| モデレーター | モデレーター | — | Người điều phối |', 'system', 29, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000030, 800000006, NULL, 'markdown_book', 'Rule 30 — Thuyết trình kết hợp / ハイブリッドプレゼン', '# Rule 30 — Thuyết trình kết hợp / ハイブリッドプレゼン
> **Luận điểm.** Kết hợp (1 nửa trực tiếp, 1 nửa trực tuyến) là **định dạng khó nhất**. Lỗi cố hữu: người thuyết trình chỉ giao tiếp với người ngồi trong phòng → đối tượng trực tuyến thành "hạng hai". Quy tắc 50/50: ① **Chào trực tuyến trước trực tiếp** ② **Chia giao tiếp bằng mắt** (đếm 30s trực tiếp, 30s nhìn camera) ③ **Lặp lại câu hỏi từ phòng** trước khi trả lời (trực tuyến không nghe rõ) ④ **Camera ở cạnh slide** không để sau lưng người thuyết trình.
>
> Hybrid は最難関。50/50 ルール: 挨拶は online 先、目線は 30s/30s 分配、室内質問は復唱、camera は slide 横。
>
> **Liên quan:** rule 29 (trực tuyến), rule 31 (sự cố kỹ thuật).

---

## Bối cảnh / 場面
Bài thuyết trình Phase 3 chính thức. 大垣 + 田中 ở phòng họp 白鷗 (trực tiếp). 松本 PM kết nối từ Osaka (trực tuyến), 弊社ハー CTO cũng trực tuyến từ HCMC. Thiết lập kết hợp 4 chiều.

---

## Trường hợp xấu — quên trực tuyến
*bước vào phòng, chỉ nhìn 大垣 + 田中 · bắt đầu trình bày, không nhìn camera · hỏi câu · trả lời 大垣 luôn, không lặp lại · trực tuyến không nghe rõ câu hỏi*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>大垣<rt>おおがき</rt></ruby>様、<ruby>田中<rt>たなか</rt></ruby>様、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いします。」 <br/>*Anh Ōgaki, anh Tanaka, chào buổi sáng ạ. Hôm nay rất mong được sự chiếu cố của hai anh ạ.* |
| **ズン** | 「では<ruby>始<rt>はじ</rt></ruby>めます…」 <br/>*Vậy em xin bắt đầu ạ...* |
| **大垣** | 「Phase 2 KPI の<ruby>達成率<rt>たっせいりつ</rt></ruby>は？」 <br/>*Tỉ lệ đạt KPI Phase 2 là bao nhiêu?* |
| **ズン** | 「85%です。」 <br/>*85% ạ.* |
| **松本** | 「すみません、<ruby>何<rt>なん</rt></ruby>の85%でしょうか？」 *(khoảng lặng khó xử)* <br/>*Xin lỗi, 85% của cái gì ạ?* |

**Vì sao xấu:** Quên chào 松本 + ハー trực tuyến → bị đối xử hạng hai. Giao tiếp bằng mắt 100% trực tiếp → trực tuyến cảm thấy vô hình. Không lặp lại câu hỏi → 松本 không nghe rõ vì mic phòng họp ở xa.

---

## Trường hợp tốt — 50/50 + lặp lại câu hỏi
*vào phòng, đầu tiên nhìn camera · trực tuyến · quay sang trực tiếp · đứng cạnh màn hình, camera bên cạnh · Q&A · lặp lại trước khi trả lời*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**まずオンラインの<ruby>皆様<rt>みなさま</rt></ruby>、おはようございます**【1】。<ruby>松本<rt>まつもと</rt></ruby>様、ハー CTO、<ruby>音声<rt>おんせい</rt></ruby>・<ruby>映像<rt>えいぞう</rt></ruby>とも<ruby>問題<rt>もんだい</rt></ruby>ございませんでしょうか？」 <br/>*Trước tiên xin chào quý vị trực tuyến ạ. Anh Matsumoto, anh Hà CTO, âm thanh và hình ảnh có vấn đề gì không ạ?* |
| **松本** | 「クリアに<ruby>聞<rt>き</rt></ruby>こえています、ありがとうございます。」 <br/>*Nghe rõ ạ, cảm ơn anh.* |
| **ズン** | 「大垣様、田中様、本日もよろしくお願いいたします。」 <br/>*Anh Ōgaki, anh Tanaka, hôm nay cũng rất mong được sự chiếu cố ạ.* |
| **ズン** | 「本日のプレゼン、**<ruby>室内<rt>しつない</rt></ruby>3<ruby>名<rt>めい</rt></ruby>＋オンライン2名** で<ruby>進<rt>すす</rt></ruby>めさせていただきます。**<ruby>目線<rt>めせん</rt></ruby>は30<ruby>秒<rt>びょう</rt></ruby>ずつ<ruby>切替<rt>きりかえ</rt></ruby>** いたします【2】。」 <br/>*Buổi thuyết trình hôm nay sẽ tiến hành với 3 người trong phòng + 2 người trực tuyến ạ. Em sẽ chia giao tiếp bằng mắt 30 giây / lần ạ.* |
| **大垣** | 「Phase 2 KPI の達成率は？」 <br/>*Tỉ lệ đạt KPI Phase 2 là bao nhiêu?* |
| **ズン** | 「**大垣様より『Phase 2 KPI 達成率』** のご<ruby>質問<rt>しつもん</rt></ruby>でございます【3】。Phase 2 KPI 達成率は **85%** でございます。 オンラインの松本様、聞こえていますでしょうか？」 <br/>*Anh Ōgaki vừa hỏi 「Tỉ lệ đạt KPI Phase 2」 ạ. Tỉ lệ đạt KPI Phase 2 là 85% ạ. Anh Matsumoto trực tuyến, anh có nghe rõ không ạ?* |
| **松本** | 「はい、<ruby>明確<rt>めいかく</rt></ruby>です。」 <br/>*Vâng, rõ ràng ạ.* |

 **Ghi chú:**
- 【1】**Chào trực tuyến TRƯỚC** — đảo thứ tự thông thường để trực tuyến cảm thấy được ưu tiên, không phải nghĩ đến sau cùng.
- 【2】**Chia giao tiếp bằng mắt 30s** — đếm thầm. 30s nhìn trực tiếp → 30s nhìn camera (không nhìn màn hình có người tham dự). Tránh "3 phút quay lưng với trực tuyến".
- 【3】**「〇〇様より〜のご質問でございます」** — lặp lại câu hỏi từ phòng trước khi trả lời. Người tham dự trực tuyến nghe được + có thời gian tiếp nhận.

---

## Cụm từ mẫu
> **Chào trực tuyến TRƯỚC. Giao tiếp bằng mắt 30s/30s. Lặp lại câu hỏi từ phòng. Camera cạnh slide không sau lưng.**
>
> *Kết hợp khó vì dễ quên 1 nửa. Quy tắc rõ ràng giữ cho cả 2 nửa đều được tôn trọng.*

---

## Tránh
- Vào phòng chào trực tiếp trước → trực tuyến cảm thấy vô hình
- Giao tiếp bằng mắt 100% trực tiếp → có lỗi với nửa trực tuyến
- Không lặp lại câu hỏi từ phòng → trực tuyến không nghe nguyên gốc
- Camera đặt sau lưng người thuyết trình → trực tuyến chỉ thấy lưng
- Trả lời chat của trực tuyến mà không thông báo bằng lời → trực tiếp bối rối
- "あ、すみません、〇〇さんも聞こえてますか" giữa giờ → lộ vẻ thiếu chuẩn bị

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ハイブリッド | ハイブリッド | — | Kết hợp |
| 室内 | しつない | THẤT NỘI | Trong phòng |
| 復唱 | ふくしょう | PHỤC XƯỚNG | Lặp lại |
| 切替 | きりかえ | THIẾT CẢI | Chuyển đổi |
| 達成率 | たっせいりつ | ĐẠT THÀNH SUẤT | Tỉ lệ đạt |
| クリア | クリア | — | Rõ (âm thanh) |
| 優先する | ゆうせんする | ƯU TIÊN | Ưu tiên |', 'system', 30, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000031, 800000006, NULL, 'markdown_book', 'Rule 31 — Xử lý sự cố kỹ thuật / 技術トラブル復旧', '# Rule 31 — Xử lý sự cố kỹ thuật / 技術トラブル復旧
> **Luận điểm.** Khi máy chiếu chết / mạng down / Zoom freeze giữa bài thuyết trình — **3 bước gỡ tình huống**: ① **Thừa nhận bình tĩnh** (5 giây): "申し訳ございません、技術トラブルが発生しております" ② **Chuyển nhanh sang Plan B** (Plan B đã chuẩn bị ở rule 07: PDF dự phòng, phát mạng di động, tài liệu phát tay) ③ **Tiếp tục bằng lời** (nói tiếp ngay phần slide kế) trong khi đang khôi phục. Tuyệt đối **không hoảng loạn** trên mặt — khán giả Nhật xem hoảng loạn = "cty không đáng tin trong khủng hoảng vận hành thật".
>
> 技術トラブルは acknowledge (5秒で) → switch Plan B → entertain (verbal で次 slide 内容を語る) の3ステップ。Panic 表情は『本番障害も同じ』と暗示。
>
> **Liên quan:** rule 07 (Phương án B), rule 29 (trực tuyến), rule 30 (lai/kết hợp).

---

## Bối cảnh / 場面
Thuyết trình Phase 3 phút 12. Đang chia sẻ slide 8 (bảng giá) — đột nhiên cty 白鷗 cúp mạng toàn tòa nhà. Zoom freeze, máy chiếu hiện "no signal". 大垣 + 田中 trong phòng nhìn Dũng. 松本 trực tuyến → màn hình Dũng cứng đơ.

---

## Trường hợp xấu — hoảng loạn + im lặng kéo dài
*thấy máy chiếu mất, mặt hoảng · loay hoay 30 giây, gọi bộ phận hỗ trợ · 60s sau · im lặng 2 phút trong khi Dũng tìm tệp*

| Vai | Câu |
|---------|-----|
| **ズン** | 「あ、あ、<ruby>画面<rt>がめん</rt></ruby>が…えっ、ネット…えっ…」 <br/>*À, à, màn hình... ơ, mạng... ơ...* |
| **ズン** | 「すみません、ちょっと…IT <ruby>確認<rt>かくにん</rt></ruby>してます…」 <br/>*Xin lỗi, một chút... em đang check IT...* |
| **大垣** | 「PDFは<ruby>無<rt>な</rt></ruby>いんですか？」 <br/>*Không có PDF à?* |
| **ズン** | 「あ、PDF…あります、メール<ruby>送<rt>おく</rt></ruby>りますね…」 <br/>*À, PDF... có ạ, em gửi mail nhé...* |

**Vì sao xấu:** Mặt hoảng loạn → khán giả thấy "người thuyết trình không vững tâm trước áp lực". 60 giây im lặng → chắc chắn quá giờ. Không có Plan B sẵn → 大垣 phải nhắc PDF dự phòng → ấn tượng "cty không có phương án dự phòng".

---

## Trường hợp tốt — xử lý sự cố 3 bước
*máy chiếu mất, hít sâu 3 giây, giọng vững · rút USB, cắm đầu chuyển USB-C HDMI, kết nối local — đã chuẩn bị sẵn · người đồng trình bày, bật phát mạng di động · không có slide hiện, vẫn tiếp tục bằng lời · 45 giây sau*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**申し訳ございません、ネットワークトラブルが<ruby>発生<rt>はっせい</rt></ruby>しております**【1】。**5<ruby>秒<rt>びょう</rt></ruby>で<ruby>復旧<rt>ふっきゅう</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>え** させていただきます。」 — Acknowledge <br/>*Xin lỗi quý vị, vừa phát sinh sự cố mạng ạ. Em xin phép chuyển sang quy trình khôi phục trong 5 giây ạ.* |
| **ズン** | 「**ローカル PDF に<ruby>切替中<rt>きりかえちゅう</rt></ruby>** です。<ruby>同時<rt>どうじ</rt></ruby>にお<ruby>手元<rt>てもと</rt></ruby>の **<ruby>印刷<rt>いんさつ</rt></ruby>ハンドアウト** もご<ruby>確認<rt>かくにん</rt></ruby>いただけますでしょうか【2】。」 — Switch Plan B <br/>*Em đang chuyển sang PDF local ạ. Đồng thời mong quý vị xem giúp em tài liệu in trên tay ạ.* |
| **トゥアン** | 「<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>、ハー CTO、**モバイルテザリング** で Zoom <ruby>再接続<rt>さいせつぞく</rt></ruby>いたします。30<ruby>秒<rt>びょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。」 <br/>*Anh Matsumoto, anh Hà CTO, em sẽ kết nối Zoom lại bằng tethering mobile ạ. Phiền chờ 30 giây ạ.* |
| **ズン** | 「**<ruby>復旧中<rt>ふっきゅうちゅう</rt></ruby>ですが、<ruby>内容<rt>ないよう</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めさせていただきます**【3】。スライド8 の<ruby>価格<rt>かかく</rt></ruby><ruby>内訳<rt>うちわけ</rt></ruby>ですが、Phase 3 1200<ruby>万円<rt>まんえん</rt></ruby>の<ruby>内訳<rt>うちわけ</rt></ruby>は ①<ruby>開発<rt>かいはつ</rt></ruby><ruby>工数<rt>こうすう</rt></ruby> 720<ruby>万<rt>まん</rt></ruby>、②ライセンス 280<ruby>万<rt>まん</rt></ruby>、③<ruby>運用<rt>うんよう</rt></ruby><ruby>初年度<rt>しょねんど</rt></ruby> 200<ruby>万<rt>まん</rt></ruby>。ハンドアウト 5ページ<ruby>目<rt>め</rt></ruby>に<ruby>表<rt>ひょう</rt></ruby>がございます。」 — Entertain verbal <br/>*Đang khôi phục nhưng em xin phép tiếp tục nội dung ạ. Slide 8 phần phân tích giá ạ — Phase 3 12 triệu yên: ① effort dev 7,2 triệu, ② license 2,8 triệu, ③ vận hành năm đầu 2 triệu. Bảng ở trang 5 tài liệu phát tay ạ.* |
| **トゥアン** | 「Zoom <ruby>復活<rt>ふっかつ</rt></ruby>、<ruby>画面<rt>がめん</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby> OK です。」 <br/>*Zoom sống lại rồi, chia sẻ màn hình OK ạ.* |
| **ズン** | 「ありがとうございます。**ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけし、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした**。<ruby>続<rt>つづ</rt></ruby>きスライド9 から<ruby>進<rt>すす</rt></ruby>めさせていただきます。」 <br/>*Em cảm ơn anh. Em xin lỗi đã làm phiền ạ. Em xin phép tiếp tục từ slide 9 ạ.* |

 **Ghi chú:**
- 【1】**「申し訳ございません、〜トラブルが発生しております」** — câu acknowledge trang trọng. NHẤN hít sâu 5 giây trước → giọng vững. Không "あ、あ、えっ…".
- 【2】**Plan B đã chuẩn bị**: ① PDF USB ② tài liệu phát tay in sẵn ③ chia sẻ mạng di động. Rule 07 quy định, rule 31 thực thi.
- 【3】**「復旧中ですが、内容を進めさせていただきます」** — KHÔNG dừng thuyết trình. Nói tiếp nội dung trong khi người đồng trình bày khôi phục. Khán giả thấy người thuyết trình "sẵn sàng cho tình huống thật".

---

## Cụm từ mẫu
> **Thừa nhận 5s ("申し訳ございません、〜トラブル") → Chuyển Plan B (PDF / tài liệu phát tay / chia sẻ mạng di động) → Nói tiếp nội dung trong khi khôi phục.**
>
> *Mặt hoảng loạn = "không đáng tin khi sự cố thật". 3 bước có sẵn câu chữ = vững tâm trước áp lực.*

---

## Tránh
- "あ、あ、えっ…" lắp bắp hoảng → khán giả đọc được sự bối rối trên mặt
- Loay hoay > 30s im lặng → quá giờ + ấn tượng "không có phương án"
- "誰か助けて〜" gọi bộ phận hỗ trợ lớn tiếng → thiếu chuyên nghiệp
- Không có Plan B → người thuyết trình tự biết mình không có dự phòng
- Đổ lỗi hạ tầng ("白鷗のネットが…") → đổ lỗi khách = làm khách mất mặt
- Bỏ qua các slide còn lại vì hoảng → bài thuyết trình lỡ phần kết quả

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 復旧 | ふっきゅう | PHỤC CỰU | Khôi phục / phục hồi |
| トラブル | トラブル | — | Sự cố |
| 切替 | きりかえ | THIẾT CẢI | Chuyển / đổi |
| ハンドアウト | ハンドアウト | — | Tài liệu phát |
| テザリング | テザリング | — | Chia sẻ mạng di động |
| お騒がせ | おさわがせ | — | Phiền hà / xáo trộn |
| 内訳 | うちわけ | NỘI DỊCH | Phân tích chi tiết |', 'system', 31, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000032, 800000006, NULL, 'markdown_book', 'Rule 32 — Bàn giao giữa người đồng trình bày / 共同プレゼンの引き継ぎ', '# Rule 32 — Bàn giao giữa người đồng trình bày / 共同プレゼンの引き継ぎ
> **Luận điểm.** Bàn giao giữa người đồng trình bày phải **bằng lời + bằng hình ảnh cùng lúc**. Công thức: ① **Câu bắc cầu** (kết phần mình + tóm tắt cho phần tiếp) ② **Bàn giao bằng lời** ("〜については、弊社CTOハーよりご説明いたします") ③ **Giao tiếp ánh mắt + cử chỉ** sang người đồng trình bày ④ Người đồng trình bày **xác nhận tiếp nhận** ("改めまして、ハーでございます。〜") rồi **tiếp tục ngay**, KHÔNG tự giới thiệu lại dài dòng. Bàn giao vụng = khán giả bối rối "ai chịu trách nhiệm phần nào".
>
> 共同プレゼンの引き継ぎは: bridge → verbal handoff → gesture → 受け継ぎ確認。「では次はハーさんお願いします」だけは弱い。
>
> **Liên quan:** rule 09 (自己紹介), rule 14 (logical markers).

---

## Bối cảnh / 場面
Thuyết trình Phase 3. Dũng trình bày phần nghiệp vụ + phạm vi (slide 1-12). Slide 13-18 là kiến trúc kỹ thuật — phần Anh Hà CTO. Cần bàn giao suôn sẻ tại slide 12 → 13.

---

## Trường hợp xấu — bàn giao cộc + im lặng
*cuối slide 12 · im lặng 5 giây, ハー lúng túng · quên đã được giới thiệu ở slide 1 chưa · trong lòng*

| Vai | Câu |
|---------|-----|
| **ズン** | 「以上、business overview でした。じゃあ次、ハーさんお願いします。」 <br/>*Xong phần tổng quan nghiệp vụ ạ. Vậy tiếp, anh Hà nhờ.* |
| **ハー** | 「えっと、ティエンファット<ruby>社<rt>しゃ</rt></ruby> CTO のハーと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしく…えーと、<ruby>技術<rt>ぎじゅつ</rt></ruby>アーキテクチャについて…」 *(re-introduce 30s)* <br/>*Ờ, tôi là Hà CTO của Cty Thiên Phát. Hôm nay rất mong... ờ, về kiến trúc kỹ thuật...* |
| **大垣** | 「(<ruby>心<rt>こころ</rt></ruby>の<ruby>中<rt>なか</rt></ruby>: <ruby>重複<rt>じゅうふく</rt></ruby>してる、time waste…)」 <br/>*(Trong lòng: trùng lặp, lãng phí thời gian...)* |

**Vì sao xấu:** "じゃあ次、ハーさんお願いします" cộc + suồng sã. Không có câu bắc cầu → khán giả không biết phần tiếp là gì. Khoảng lặng chết 5s → bàn giao vụng. Anh Hà phải tự giới thiệu lại → trùng + lãng phí thời gian.

---

## Trường hợp tốt — bắc cầu + bằng lời + cử chỉ bàn giao
*cuối slide 12 · giao tiếp bằng mắt + cử chỉ sang Hà · đứng dậy nhanh, không tự giới thiệu lại dài · 15分後, slide 18 cuối phần Hà · đứng dậy*

| Vai | Câu |
|---------|-----|
| **ズン** | 「以上で **business overview と スコープ<ruby>概要<rt>がいよう</rt></ruby>** を<ruby>終<rt>お</rt></ruby>わらせていただきました。**次の<ruby>技術<rt>ぎじゅつ</rt></ruby>アーキテクチャ<ruby>詳細<rt>しょうさい</rt></ruby>** につきましては、**<ruby>弊社<rt>へいしゃ</rt></ruby> CTO ハー より** ご<ruby>説明<rt>せつめい</rt></ruby>させていただきます【1】。」 — Bắc cầu + bàn giao bằng lời <br/>*Em xin phép kết thúc phần tổng quan nghiệp vụ và tổng quan phạm vi ạ. Phần kiến trúc kỹ thuật chi tiết tiếp theo sẽ do anh Hà CTO bên em trình bày ạ.* |
| **ズン** | 「**ハー、よろしくお願いします**【2】。」 <br/>*Anh Hà, nhờ anh ạ.* |
| **ハー** | 「**<ruby>改<rt>あらた</rt></ruby>めまして、ハーでございます**。<ruby>技術<rt>ぎじゅつ</rt></ruby>アーキテクチャは **3<ruby>層<rt>そう</rt></ruby><ruby>構成<rt>こうせい</rt></ruby>** ございます【3】。スライド13 をご<ruby>覧<rt>らん</rt></ruby>ください…」 — Tiếp tục ngay <br/>*Tôi là Hà ạ. Kiến trúc kỹ thuật có cấu trúc 3 layer ạ. Mời quý vị xem slide 13...* |
| **ハー** | 「以上、<ruby>技術<rt>ぎじゅつ</rt></ruby>アーキテクチャでございました。**次のロードマップは<ruby>再度<rt>さいど</rt></ruby> ズンより** ご<ruby>説明<rt>せつめい</rt></ruby>いたします。**ズンさん、お願いします**。」 — Bắc cầu chiều ngược <br/>*Phần kiến trúc kỹ thuật xong ạ. Phần lộ trình tiếp theo sẽ do anh Dũng trình bày lại ạ. Anh Dũng, nhờ.* |
| **ズン** | 「ズンでございます。ロードマップはスライド19 から…」 <br/>*Em là Dũng ạ. Lộ trình em xin bắt đầu từ slide 19 ạ...* |

 **Ghi chú:**
- 【1】**Câu bắc cầu** = kết phần mình + thông báo phần tiếp + thông báo ai. 3 yếu tố bắt buộc. "ハーより ご説明させていただきます" có 「より」 = chỉ rõ nguồn (người phụ trách).
- 【2】**Tín hiệu bằng lời + cử chỉ đồng bộ** — câu "ハー、お願いします" + tay mở sang Hà. Ánh mắt khán giả tự nhiên dõi theo cử chỉ tay.
- 【3】**Người nhận xác nhận ngắn** — "改めまして、ハーでございます" 5 chữ + nhảy vào nội dung ngay. KHÔNG tự giới thiệu lại 30s đã làm ở slide 1.

---

## Cụm từ mẫu
> **Bắc cầu ("以上〜、次は〜については〇〇より") → Tín hiệu bằng lời ("〇〇さん、お願いします") + Cử chỉ tay → Xác nhận ngắn ("〇〇でございます") → Tiếp tục ngay.**
>
> *Bàn giao mượt = khán giả không bị "lạc". Tự giới thiệu lại dài = lãng phí.*

---

## Tránh
- "じゃあ次、〇〇さんお願いします" cộc → không bắc cầu
- Khoảng lặng chết >3s khi bàn giao → khán giả bối rối
- Người đồng trình bày tự giới thiệu lại 30s → trùng với slide 1
- Quên cử chỉ tay → khán giả không biết bàn giao đã diễn ra
- Người đồng trình bày ngồi xuống lúc được bàn giao → đứng dậy mất 10s → lãng phí thời gian
- Bàn giao giữa câu (đang nói dở) → khán giả mất phương hướng

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 引き継ぎ | ひきつぎ | DẪN KẾ | Bàn giao |
| 共同 | きょうどう | CỘNG ĐỒNG | Cộng tác / chung |
| バトンタッチ | バトンタッチ | — | Chuyền baton |
| 概要 | がいよう | KHÁI YẾU | Tổng quan |
| アーキテクチャ | アーキテクチャ | — | Kiến trúc kỹ thuật |
| 受け継ぎ | うけつぎ | THỤ KẾ | Tiếp nhận |
| 構成 | こうせい | CẤU THÀNH | Cấu trúc |', 'system', 32, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000033, 800000006, NULL, 'markdown_book', 'Rule 33 — Quay video + chia sẻ / 録画と共有', '# Rule 33 — Quay video + chia sẻ / 録画と共有
> **Luận điểm.** Khi 田中 PMO yêu cầu quay video để gửi cho người vắng mặt → **không quyết tại chỗ một mình**. Quy trình: ① **Xin phép** toàn bộ người tham dự trước khi quay ② **Cắt bỏ** phần bảo mật (đàm phán giá, góp ý nội bộ) ③ **Kiểm soát phân phối** (đường dẫn Drive giới hạn người xem, hết hạn 30 ngày). Quay tự do + chia sẻ lung tung = rủi ro rò rỉ + xâm phạm quyền riêng tư.
>
> 録画依頼は ① 全員許可 ② confidential 部分編集 ③ 配布範囲制限。免許なし録画はトラブル元。
>
> **Liên quan:** rule 28 (followup), rule 27 (slide PDF). Sách 02 rule 56 (録音許可).

---

## Bối cảnh / 場面
Buổi pitch Phase 3 bắt đầu trong 5 phút. 田中 PMO nhắn Slack 田中 → ズン: "上司の山田部長 が当日不在 → 録画して共有可能でしょうか？". Dũng cần xử lý xin phép + dựng khung quy trình cho việc quay/chia sẻ.

---

## Trường hợp xấu — quay không xin + chia sẻ email cá nhân
*Slack 9:55 · quyết liền · thuyết trình tiến hành, Dũng REC mà không thông báo · sau thuyết trình, 大垣 nói câu nội bộ về đánh giá nhà cung cấp cho 田中 · gửi MP4 200MB qua Gmail cá nhân*

| Vai | Câu |
|---------|-----|
| **田中** | 「ズンさん、本日のプレゼン<ruby>録画<rt>ろくが</rt></ruby>して山田部長にシェアしたいのですが…」 <br/>*Anh Dũng, tôi muốn quay buổi thuyết trình hôm nay để gửi cho sếp Yamada...* |
| **ズン** | 「<ruby>了解<rt>りょうかい</rt></ruby>です、Zoom で record すれば OK ですよね。後で MP4 メールで送ります。」 <br/>*OK ạ, quay bằng Zoom là OK đúng không ạ. Sau em gửi MP4 qua mail ạ.* |
| **大垣** | 「実はもう1社<ruby>見積<rt>みつ</rt></ruby>もり<ruby>依頼<rt>いらい</rt></ruby>してて…」 <br/>*Thực ra tôi đã yêu cầu báo giá thêm 1 công ty nữa... (không biết đang REC)* |
| **ズン** | 「<ruby>録画<rt>ろくが</rt></ruby>です、ご<ruby>共有<rt>きょうゆう</rt></ruby>くださいませ。」 <br/>*Đây là bản quay ạ, mời chia sẻ ạ. (gửi MP4 bản thô 200MB qua Gmail)* |

**Vì sao xấu:** Không thông báo quay trong phòng → 大垣 phát biểu thông tin bảo mật mà không biết. Gửi MP4 bản thô qua Gmail = ① tệp lớn ② không kiểm soát phân phối ③ chứa thông tin bảo mật. Vi phạm cả quyền riêng tư lẫn bảo mật.

---

## Trường hợp tốt — xin phép + biên tập + chia sẻ kiểm soát
*Slack 9:55 · trả lời Slack · thuyết trình bắt đầu, slide 1 nói với cả phòng · thuyết trình kết thúc, nhắn Slack cho 田中*

| Vai | Câu |
|---------|-----|
| **田中** | 「ズンさん、本日のプレゼン<ruby>録画<rt>ろくが</rt></ruby>して山田部長にシェアしたいのですが…」 <br/>*Anh Dũng, tôi muốn quay buổi thuyết trình hôm nay để gửi cho sếp Yamada...* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本番<rt>ほんばん</rt></ruby><ruby>開始<rt>かいし</rt></ruby><ruby>前<rt>まえ</rt></ruby>に **全participant の<ruby>許可<rt>きょか</rt></ruby>** を取らせていただきます。**<ruby>編集<rt>へんしゅう</rt></ruby>後 Drive <ruby>限定<rt>げんてい</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby> (30日 expire)** で<ruby>対応<rt>たいおう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。**<ruby>生<rt>なま</rt></ruby> MP4 メールはセキュリティ<ruby>上<rt>じょう</rt></ruby><ruby>不可<rt>ふか</rt></ruby>** ですが、ご<ruby>理解<rt>りかい</rt></ruby>いただけますでしょうか【1】？」 <br/>*Em đã nhận yêu cầu ạ. Trước khi bắt đầu, em sẽ xin sự đồng ý của toàn bộ người tham dự ạ. Em có thể xử lý theo cách: biên tập xong thì chia sẻ Drive giới hạn (tự hết hạn sau 30 ngày) ạ. MP4 bản thô qua mail thì không được vì lý do bảo mật ạ — mong anh thông cảm ạ.* |
| **田中** | 「もちろんです、その方法で問題ありません。」 <br/>*Đương nhiên rồi, cách đó không vấn đề.* |
| **ズン** | 「**まず1点お知らせ** ございます。本日 **本セッションを<ruby>録画<rt>ろくが</rt></ruby>させていただきます**【2】。山田部長が当日 ご<ruby>欠席<rt>けっせき</rt></ruby>のため、田中様より **<ruby>後日<rt>ごじつ</rt></ruby>録画<ruby>共有<rt>きょうゆう</rt></ruby><ruby>依頼<rt>いらい</rt></ruby>** をいただきました。**全員のご許可** をいただいてから REC <ruby>開始<rt>かいし</rt></ruby>させていただきます。何かご<ruby>懸念<rt>けねん</rt></ruby>ございますでしょうか？」 <br/>*Trước hết em xin thông báo 1 điểm ạ. Hôm nay em xin phép quay video buổi này ạ. Vì sếp Yamada vắng mặt, anh Tanaka đã yêu cầu gửi lại video sau ạ. Em xin sự cho phép của toàn thể quý vị rồi mới bắt đầu quay ạ. Quý vị có điều gì băn khoăn không ạ?* |
| **大垣・松本** | 「問題ないです。」 <br/>*Không vấn đề.* |
| **ズン** | 「ありがとうございます。**REC <ruby>開始<rt>かいし</rt></ruby>** いたします。」 <br/>*Em cảm ơn quý vị. Em xin bắt đầu REC ạ.* |
| **ズン** | 「録画 raw 1時間20分 → **price negotiation 部分 (28-35分) と confidential 部分 (52-58分) を edit out** いたしました【3】。Drive <ruby>閲覧<rt>えつらん</rt></ruby><ruby>専用<rt>せんよう</rt></ruby>リンクで田中様 + 山田部長様 の Email 限定 access、30日後 <ruby>自動<rt>じどう</rt></ruby> expire です。」 <br/>*Video bản thô 1h20 — em đã cắt bỏ phần đàm phán giá (28-35'') và phần bảo mật (52-58'') ạ. Link Drive chỉ-xem, giới hạn email anh Tanaka + sếp Yamada, tự động hết hạn sau 30 ngày ạ.* |
| **田中** | 「素晴らしいご対応、ありがとうございます。」 <br/>*Xử lý tuyệt vời, cảm ơn anh.* |

 **Ghi chú:**
- 【1】**Xin phép trước** với 田中 → đặt kỳ vọng sẽ biên tập + chia sẻ giới hạn. KHÔNG vội vàng đồng ý "OK 録画送ります".
- 【2】**Thông báo tại chỗ** với toàn bộ phòng → xin đồng ý của tất cả người tham dự. Khách Nhật rất chú trọng sự đồng ý — quay bất ngờ = xâm phạm quyền riêng tư.
- 【3】**Cắt bỏ** phần bảo mật (đàm phán giá, góp ý về bên cung cấp). Ghi rõ mốc thời gian. Drive 閲覧専用 + Email 限定 + 30日 hết hạn = 3 lớp bảo mật.

---

## Cụm từ mẫu
> **Xin phép trước từ người yêu cầu → Đồng ý tại chỗ từ tất cả → Cắt phần bảo mật → Drive 限定共有 + đặt hạn chót.**
>
> *Không quay bất ngờ. Không chia sẻ bản thô. Không gửi MP4 qua mail cá nhân.*

---

## Tránh
- Quay mà không thông báo → xâm phạm quyền riêng tư
- Biên tập bản thô không cắt phần bảo mật → rò rỉ khi chia sẻ
- Gửi MP4 bản thô qua Gmail / email cá nhân → không kiểm soát phân phối
- Liên kết Drive công khai → ai cũng truy cập được
- Không đặt hạn chót → tệp tồn tại vô thời hạn
- Quên CC sếp khi chia sẻ tệp video quay → đứt chuỗi truy vết

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 録画 | ろくが | LỤC HỌA | Quay video |
| 許可 | きょか | HỨA KHẢ | Cho phép |
| 編集 | へんしゅう | BIÊN TẬP | Biên tập |
| 配布 | はいふ | PHỐI BỐ | Phân phát |
| 限定 | げんてい | HẠN ĐỊNH | Giới hạn |
| 機密 | きみつ | CƠ MẬT | Bảo mật |
| 同意 | どうい | ĐỒNG Ý | Đồng ý |
| 失効 | しっこう | THẤT HIỆU | Hết hiệu lực |', 'system', 33, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000034, 800000006, NULL, 'markdown_book', 'Rule 34 — Bảng tiêu chí tự đánh giá / 自己評価', '# Rule 34 — Bảng tiêu chí tự đánh giá / 自己評価
> **Luận điểm.** Sau bài thuyết trình (trong vòng 24h), tự đánh giá **bằng bảng tiêu chí 12 mục** chia 4 cụm: Chuẩn bị (3) / Trình bày (4) / Q&A (3) / Kết thúc+Theo dõi (2). Mỗi mục chấm 1-5. Tự kết luận **3 điểm mạnh + 3 điểm cần cải thiện**. Bỏ qua tự đánh giá = lặp cùng lỗi ở bài thuyết trình tiếp theo. Khách Nhật coi trọng "改善志向" (tư duy cải thiện) — bản ghi tự đánh giá tự nó là một khoản đầu tư.
>
> ピッチ後24h以内に12項目 rubric self-review (準備3+デリバリー4+Q&A3+クロージング2)。3 strengths + 3 improvements を抽出。改善志向は日本顧客が高く評価する。
>
> **Liên quan:** rule 35 (改善サイクル), rule 28 (followup).

---

## Bối cảnh / 場面
Bài thuyết trình Phase 3 chiều thứ Năm xong. Tối thứ Năm, Dũng đã gửi email xác nhận. Sáng thứ Sáu, Dũng định "bỏ tự đánh giá, viết mail chi tiết luôn cho đỡ trễ". Chị Hương cản.

---

## Trường hợp xấu — bỏ qua tự đánh giá
*Slack 8:00 thứ Sáu*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、<ruby>月曜<rt>げつよう</rt></ruby>の<ruby>詳細<rt>しょうさい</rt></ruby>メール書きます。Self-review は<ruby>時間<rt>じかん</rt></ruby>取れないので skip して<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？」 <br/>*Chị Hương, em viết mail chi tiết thứ Hai. Tự đánh giá thì không có thời gian, em bỏ qua được không ạ?* |
| **フオン** | 「ダメ。Self-review skip すると **<ruby>次<rt>つぎ</rt></ruby>の pitch も同じ<ruby>間違<rt>まちが</rt></ruby>い** する。30<ruby>分<rt>ふん</rt></ruby>でいい、12<ruby>項目<rt>こうもく</rt></ruby> rubric で chấm。」 <br/>*Không được. Bỏ tự đánh giá thì bài thuyết trình sau lặp đúng lỗi. 30 phút thôi, chấm theo bảng tiêu chí 12 mục.* |
| **ズン** | 「30分も…」 <br/>*30 phút lận ạ...* |
| **フオン** | 「Pitch 60分の **<ruby>半分<rt>はんぶん</rt></ruby>** を review に<ruby>投資<rt>とうし</rt></ruby>して<ruby>初<rt>はじ</rt></ruby>めて<ruby>成長<rt>せいちょう</rt></ruby>する。**今やる**。」 <br/>*Bài thuyết trình 60 phút thì đầu tư nửa ngần đó vào tự đánh giá mới thực sự lớn được. Làm ngay đi.* |

**Vì sao xấu:** Bỏ tự đánh giá → lặp lỗi. "時間ない" thường là cái cớ. Mỗi bài thuyết trình là 1 điểm dữ liệu, không ghi lại → bỏ phí cơ hội.

---

## Trường hợp tốt — 30 phút tự đánh giá + rút ra 3+3
*Slack 8:30, sau 30 phút tự đánh giá*

| Vai | Câu |
|---------|-----|
| **ズン** | 「Self-review <ruby>完了<rt>かんりょう</rt></ruby>です【1】。**12<ruby>項目<rt>こうもく</rt></ruby><ruby>平均<rt>へいきん</rt></ruby> 3.8/5**。<ruby>詳細<rt>しょうさい</rt></ruby>はテンプレ<ruby>添付<rt>てんぷ</rt></ruby>。」 <br/>*Em xong tự đánh giá ạ. Trung bình 12 tiêu chí là 3.8/5 ạ. Chi tiết em đính kèm mẫu ạ.* |
| **ズン** | 「**3 strengths**: ①LASR <ruby>適用<rt>てきよう</rt></ruby> (Q&A の<ruby>難問<rt>なんもん</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>)、②Plan B <ruby>切替<rt>きりかえ</rt></ruby> (ネット<ruby>障害<rt>しょうがい</rt></ruby> 30<ruby>秒<rt>びょう</rt></ruby><ruby>復旧<rt>ふっきゅう</rt></ruby>)、③CTA 3<ruby>点<rt>てん</rt></ruby><ruby>明示<rt>めいじ</rt></ruby>。**3 improvements**: ①hook が weak (data <ruby>提示<rt>ていじ</rt></ruby><ruby>遅<rt>おそ</rt></ruby>い)、②<ruby>大垣<rt>おおがき</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>価格<rt>かかく</rt></ruby> challenge で bridge phrase 1<ruby>秒<rt>びょう</rt></ruby><ruby>遅<rt>おく</rt></ruby>れた、③closing recap に<ruby>時間<rt>じかん</rt></ruby><ruby>配分<rt>はいぶん</rt></ruby> -2<ruby>分<rt>ふん</rt></ruby>【2】。」 <br/>*3 điểm mạnh: ① áp dụng LASR (xử Q&A khó), ② chuyển Plan B (sự cố mạng khôi phục 30s), ③ CTA 3 điểm rõ. 3 điểm cần cải thiện: ① mở đầu yếu (đưa dữ liệu trễ), ② phần thách thức giá của anh Ōgaki, câu dẫn hướng em chậm 1 giây, ③ phần tóm tắt kết thúc em phân bổ thời gian -2 phút.* |
| **フオン** | 「いいね、<ruby>具体的<rt>ぐたいてき</rt></ruby>。**hook の<ruby>改善<rt>かいぜん</rt></ruby>** は次の pitch までに **rule 11 <ruby>再読<rt>さいどく</rt></ruby>** + 30秒 hook draft 5パターン<ruby>作成<rt>さくせい</rt></ruby>。Bridge phrase は **rule 25 <ruby>暗唱<rt>あんしょう</rt></ruby>** で 0.5秒 reflex まで。」 <br/>*Tốt, cụ thể. Cải mở đầu thì trước bài thuyết trình sau đọc lại rule 11 + soạn 5 mẫu mở đầu 30s. Câu dẫn hướng thì học thuộc rule 25 đến mức phản xạ 0.5 giây.* |
| **ズン** | 「<ruby>了解<rt>りょうかい</rt></ruby>、**5/2 までに hook drill** + **5/8 までに bridge phrase 暗唱完了** いたします【3】。」 <br/>*Em rõ ạ. Trước 2/5 em luyện xong phần mở đầu, trước 8/5 thuộc xong câu dẫn hướng ạ.* |

 **Ghi chú:**
- 【1】**Tự đánh giá 30 phút** — ngân sách cố định. 12 mục × 1-2 phút/mục + 5 phút tóm tắt. Hơn 30 phút = phân tích quá đà, không duy trì lâu được.
- 【2】**Công thức 3 + 3** — 3 điểm mạnh (giữ + nhân rộng) + 3 điểm cần cải thiện (hành động). Chia đều → không rơi vào vòng xoáy tiêu cực.
- 【3】**Điểm cần cải thiện có hạn chót + luyện tập cụ thể** — tự đánh giá không hành động = bỏ phí. Gắn mỗi điểm cần cải thiện → rule + luyện tập + hạn chót.

---

## Cụm từ mẫu
> **Trong 24h: bảng tiêu chí 12 mục (4 cụm) chấm 1-5 → 3 điểm mạnh + 3 điểm cần cải thiện + kế hoạch luyện tập có hạn chót.**
>
> *Không tự đánh giá = lặp lỗi. Tự đánh giá không hành động = bỏ phí.*

---

## Bảng Tiêu Chí Tự Đánh Giá
```
【プレゼン Self-review チェックリスト】 (12項目 / 30分)

評価: 1=要改善 / 2=不十分 / 3=平均 / 4=良好 / 5=優秀

■ 準備 (Preparation) — 3項目
□ 1. 7問チェックリスト埋めたか (rule 01)         _/5
□ 2. 1-slide-1-message 守ったか (rule 02)        _/5
□ 3. Plan B 用意 (PDF/handout/hotspot) (rule 07) _/5

■ デリバリー (Delivery) — 4項目
□ 4. Hook 30秒で attention 取れたか (rule 08)    _/5
□ 5. 時間管理約束守ったか (rule 13)              _/5
□ 6. 論理マーカー使ったか (rule 14)              _/5
□ 7. アイコンタクト均等 (rule 30 - 50/50)        _/5

■ Q&A — 3項目
□ 8. LASR 適用 (rule 23)                         _/5
□ 9. 持ち帰り適切 (rule 24)                      _/5
□ 10. 敵対的質問 bridge phrase (rule 25)         _/5

■ クロージング＋followup — 2項目
□ 11. Recap 3 + CTA 3 (rule 26)                  _/5
□ 12. 24h 内 acknowledgment メール (rule 28)     _/5

------------------------
合計: __/60     平均: __/5

【3 Strengths】 — 4-5点項目から
1. ____
2. ____
3. ____

【3 Improvements】 — 1-3点項目から
1. ____ → drill: ____ までに ____
2. ____ → drill: ____ までに ____
3. ____ → drill: ____ までに ____

【次回 pitch までの commit】
- ____
```

---

## Tránh
- Bỏ tự đánh giá → lặp lỗi
- Tự đánh giá > 60 phút → phân tích quá đà, không duy trì lâu được
- Chỉ liệt kê điểm cần cải thiện → vòng xoáy tiêu cực, mất động lực
- 6+ điểm cần cải thiện → loãng, không hoàn thành được hạng mục hành động nào
- Điểm cần cải thiện không có hạn chót → chỉ là mong muốn suông
- Không tự đánh giá trong 24h → trí nhớ đã loãng

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 自己評価 | じこひょうか | TỰ KỶ BÌNH GIÁ | Tự đánh giá |
| ルーブリック | ルーブリック | — | Bảng tiêu chí |
| 強み | つよみ | CƯỜNG | Điểm mạnh |
| 改善点 | かいぜんてん | CẢI THIỆN ĐIỂM | Điểm cần cải thiện |
| 暗唱 | あんしょう | ÁM XƯỚNG | Học thuộc |
| 反射 | はんしゃ | PHẢN XẠ | Phản xạ |
| 投資 | とうし | ĐẦU TƯ | Đầu tư |', 'system', 34, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (860000035, 800000006, NULL, 'markdown_book', 'Rule 35 — Chu kỳ cải thiện / 改善サイクル', '# Rule 35 — Chu kỳ cải thiện / 改善サイクル
> **Luận điểm.** Thuyết trình là kỹ năng — làm tốt 1 lần không đủ, phải có **chu kỳ 4 bước**: ① **Tập dượt** (1 tuần trước, tập một mình + có quay) ② **Thử nghiệm** (3 ngày trước, với cấp trên 1-1) ③ **Thuyết trình thật** ④ **Nhìn lại** (24h sau, nhóm cùng nhìn lại). Mỗi chu kỳ cho ra kết quả bảng tiêu chí → làm đầu vào cho chu kỳ kế. Linh học thuyết trình lần đầu → Dũng kèm (cố vấn) → Hương dẫn dắt nhóm nhìn lại.
>
> 改善サイクルは Rehearse → Pilot → Live → Retro の4ステップ。Linh の初 pitch を題材にグループ retro。
>
> **Liên quan:** rule 34 (tự đánh giá). Sách 04 rule 35 (chu kỳ cải thiện).

---

## Bối cảnh / 場面
Thuyết trình Phase 3 đã xong + tự đánh giá xong. Cuối tháng 5, Linh (thực tập sinh Marketing) có bài thuyết trình nội bộ đầu tiên (giới thiệu chiến dịch mới). Hương tổ chức nhóm nhìn lại: Linh + Dũng (cố vấn) + Hải (đồng nghiệp) + Hương (dẫn dắt).

---

## Trường hợp xấu — tự nhìn lại một mình, không có chu kỳ
*Slack Hương sau thuyết trình*

| Vai | Câu |
|---------|-----|
| **リン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、私の pitch 終わりました。Self-review もしました、<ruby>合計<rt>ごうけい</rt></ruby>42/60 でした。」 <br/>*Chị Hương, em thuyết trình xong rồi ạ. Em cũng tự đánh giá rồi, tổng 42/60 ạ.* |
| **フオン** | 「いいね、自分で review はできた。**でも solo は<ruby>限界<rt>げんかい</rt></ruby>**。group retro やったか？」 <br/>*Tốt, em tự đánh giá được rồi. Nhưng một mình có giới hạn. Đã cùng nhóm nhìn lại chưa?* |
| **リン** | 「いえ、1人でやりました。みなさん<ruby>忙<rt>いそが</rt></ruby>しいかと…」 <br/>*Không ạ, em làm một mình. Em nghĩ mọi người bận ạ...* |
| **フオン** | 「**1人 review は blind spot <ruby>残<rt>のこ</rt></ruby>る**。次 pitch までに同じ<ruby>過<rt>あやま</rt></ruby>ち<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>す。**今週金曜 16時** に group retro セット、ズン+ハイ も呼ぶ。」 <br/>*Nhìn lại 1 mình thì còn điểm mù. Đến bài thuyết trình sau lặp đúng lỗi cũ. Chị sắp buổi nhóm nhìn lại 16h thứ Sáu tuần này, gọi cả Dũng + Hải.* |

**Vì sao xấu:** Nhìn lại một mình bỏ sót điểm mù. 「みなさん忙しい」 là cái cớ → cấp trên thực ra luôn dành thời gian cho thực tập sinh. Bỏ qua nhóm nhìn lại = lặp lại cùng một lỗi.

---

## Trường hợp tốt — chu kỳ 4 bước đầy đủ + nhóm nhìn lại
*buổi nhóm nhìn lại bắt đầu · góc nhìn cố vấn · đồng nghiệp*

| Vai | Câu |
|---------|-----|
| **フオン** | 「リンの<ruby>初<rt>はつ</rt></ruby> pitch retro, 30分。Linh **Self-review <ruby>結果<rt>けっか</rt></ruby>** から start。」 <br/>*Nhóm nhìn lại bài thuyết trình đầu của Linh, 30 phút. Linh bắt đầu từ kết quả tự đánh giá nhé.* |
| **リン** | 「合計42/60。3 strengths: ①hook story <ruby>良<rt>よ</rt></ruby>かった、②time-keeping <ruby>守<rt>まも</rt></ruby>った、③Q&A <ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り formal で<ruby>対応<rt>たいおう</rt></ruby>。3 improvements: ①logical marker <ruby>弱<rt>よわ</rt></ruby>、②<ruby>声<rt>こえ</rt></ruby> small、③closing CTA 1点だけ。」 <br/>*Tổng 42/60 ạ. 3 điểm mạnh: ① câu chuyện mở đầu tốt, ② giữ đúng giờ, ③ Q&A 持ち帰り (mang về) xử lý trang trọng. 3 điểm cần cải thiện: ① từ đánh dấu logic yếu, ② giọng nhỏ, ③ kêu gọi hành động kết thúc chỉ có 1 điểm.* |
| **ズン** | 「Mentor から1点追加。**Rehearse stage で recording 見てない** らしい【1】。次 cycle は **rehearse <ruby>録画<rt>ろくが</rt></ruby> → <ruby>再生<rt>さいせい</rt></ruby>で<ruby>気付<rt>きづ</rt></ruby>き** を入れて。私も最初それで声 small <ruby>直<rt>なお</rt></ruby>した。」 <br/>*Cố vấn thêm 1 điểm. Hình như giai đoạn tập dượt em chưa xem lại video quay. Chu kỳ sau tập dượt có quay → xem lại để phát hiện lỗi nhé. Anh cũng từng sửa giọng nhỏ bằng cách đó.* |
| **ハイ** | 「Peer から1点。**Pilot stage** やった？私で良ければ pilot pair やるよ、senior じゃなくて peer pilot **30分** で<ruby>気軽<rt>きがる</rt></ruby>に。」 <br/>*Từ đồng nghiệp thêm 1 điểm. Em làm giai đoạn thử nghiệm chưa? Nếu OK thì anh thử nghiệm cùng em, không phải cấp cao mà đồng nghiệp thôi, 30 phút thoải mái.* |
| **リン** | 「Pilot やってない…次 pitch (6/15) は **6/8 rehearse 録画** + **6/12 ハイさん peer pilot** + **6/14 ハーCTOに senior pilot** + **6/15 live** + **6/16 group retro** で行きます【2】。」 <br/>*Em chưa thử nghiệm ạ... Bài thuyết trình tiếp (15/6) em sẽ đi theo: 8/6 tập dượt có quay + 12/6 thử nghiệm cùng anh Hải (đồng nghiệp) + 14/6 thử nghiệm với anh Hà CTO (cấp cao) + 15/6 thuyết trình thật + 16/6 nhóm nhìn lại ạ.* |
| **フオン** | 「<ruby>素晴<rt>すば</rt></ruby>らしい。**4-step cycle full** で1ヶ月後の pitch <ruby>比較<rt>ひかく</rt></ruby>する。Phase 4 retro までに L さんの **rubric 平均 4.0/5** <ruby>目標<rt>もくひょう</rt></ruby>【3】。」 <br/>*Tuyệt vời. Đi đủ chu kỳ 4 bước, 1 tháng sau so sánh. Trước buổi nhóm nhìn lại Phase 4, mục tiêu trung bình bảng tiêu chí của Linh là 4.0/5.* |

 **Ghi chú:**
- 【1】**Tập dượt có quay** — tập một mình mà không quay = còn điểm mù. Quay lại → tự xem ở tốc độ 1.5x → 5 phút phát hiện lỗi giọng/cử chỉ.
- 【2】**Chu kỳ 4 bước**: Tập dượt (một mình + có quay) → Thử nghiệm (đồng nghiệp + cấp trên) → Thuyết trình thật → Nhóm nhìn lại. Mỗi bước có người + hình thức khác nhau.
- 【3】**Mục tiêu định lượng cho bảng tiêu chí** — không nói "tốt hơn", phải "平均 4.0/5". Theo dõi qua từng chu kỳ để khách quan.

---

## Cụm từ mẫu
> **Tập dượt (有 録画) → Thử nghiệm (đồng nghiệp + cấp trên) → Thuyết trình thật → Nhóm nhìn lại. Mục tiêu định lượng cho bảng tiêu chí mỗi chu kỳ.**
>
> *Nhìn lại một mình = còn điểm mù. Đi đủ chu kỳ = cải thiện cộng dồn.*

---

## Tránh
- Nhìn lại một mình → còn sót điểm mù
- "Senior 忙しい" → người ta thực ra luôn dành thời gian cho thực tập sinh → cứ hỏi
- Bỏ qua tập dượt có quay → tự không thấy lỗi giọng/cử chỉ
- Bỏ qua thử nghiệm → thuyết trình thật là lần đầu trình bày trước người khác → rủi ro
- Nhìn lại không ra hành động cho chu kỳ kế → lãng phí
- Mục tiêu định tính ("tốt hơn") thay vì định lượng (平均 +0.5)

---

## Bảng từ vựng
| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 改善サイクル | かいぜんサイクル | CẢI THIỆN | Chu kỳ cải thiện |
| リハーサル | リハーサル | — | Tập dượt |
| パイロット | パイロット | — | Chạy thử |
| レトロ | レトロ | — | Nhìn lại |
| 録画 | ろくが | LỤC HỌA | Quay video |
| 振り返り | ふりかえり | — | Nhìn lại |
| 比較 | ひかく | TỈ GIẢO | So sánh |
| 目標 | もくひょう | MỤC TIÊU | Mục tiêu |', 'system', 35, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
