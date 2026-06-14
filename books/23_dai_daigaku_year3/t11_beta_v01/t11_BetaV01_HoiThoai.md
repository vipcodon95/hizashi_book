# Sách đại học CS năm 3 · T11. Beta v0.1 — release Hizashi cho 5 người dùng đầu

> **Mục tiêu nhân vật:** Đại 23 tuổi, tháng 1-3/2029, lab Inoue + nhà Toyonaka. Học 5-6 mẫu hội thoại tiếng Nhật của developer launch beta: (1) thông báo release trong lab seminar, (2) hướng dẫn beta tester Nhật cách cài TestFlight, (3) nhận phản hồi negative và xin chi tiết, (4) báo cáo bug + ETA fix bằng keigo, (5) trao đổi với 教授 về dữ liệu định lượng, (6) gọi Mai/Linh-Anh tiếng Việt onboarding.

---

## Bối cảnh

Tháng 1-3/2029. Đông qua xuân Osaka. Hana 5-7 tháng, biết ngồi, cười. Mai ôn N2 đều đặn 4 tiếng/ngày. Đại 3 tháng sprint: tháng 1 backend + DB, tháng 2 Flutter mobile, tháng 3 release Hizashi v0.1 cho 5 beta tester (Mai, Linh-Anh, Tuấn em, Phong cohort trường tiếng, Hùng em họ ở Hà Nội). Yamada review code mỗi tuần. Aiko cập nhật Figma theo feedback. Inoue-sensei cần data định lượng. Chương này tập trung các mẫu câu: thông báo launch, hướng dẫn cài app, xin phản hồi cụ thể, báo cáo bug, trao đổi với 教授, gọi điện onboard tiếng Việt.

---

## Tình huống 1 — Lab desk · 9:00 5/1, sprint kickoff với Yamada

*Đại đến lab trước Tết Tây 1 tuần, đặt MacBook lên bàn cạnh Yamada.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>明<rt>あ</rt></ruby>けましておめでとうございます。<ruby>今年<rt>ことし</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Yamada, chúc mừng năm mới. Năm nay cũng nhờ anh giúp đỡ.)* |
| Yamada | おめでとう。Hizashi スプリント<ruby>開始<rt>かいし</rt></ruby>か？<br>*(Chúc mừng. Bắt đầu sprint Hizashi rồi à?)* |
| Đại | はい、<ruby>今日<rt>きょう</rt></ruby>からです。1<ruby>月<rt>がつ</rt></ruby>は backend と DB、2<ruby>月<rt>がつ</rt></ruby>は Flutter モバイル、3<ruby>月<rt>がつ</rt></ruby>に v0.1 ベータ<ruby>公開<rt>こうかい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng, từ hôm nay. Tháng 1 backend+DB, tháng 2 Flutter mobile, tháng 3 release v0.1 beta.)* |
| Yamada | タイトだな。プルリクエストは<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby>までに<ruby>送<rt>おく</rt></ruby>って。<ruby>週末<rt>しゅうまつ</rt></ruby>レビューする。<br>*(Sát ghê. Pull request gửi anh thứ Sáu hàng tuần. Cuối tuần anh review.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。ありがとうございます。<br>*(Thật sự cứu em. Cảm ơn anh.)* |

---

## Tình huống 2 — Lab terminal · 14:00 8/1, scaffold project và pair với Yamada lần đầu

*Đại share screen, Yamada ngồi cạnh.*

| Vai | Lời thoại |
|---|---|
| Đại | (terminal) `poetry init` で<ruby>始<rt>はじ</rt></ruby>めます。`fastapi`、`uvicorn`、`sqlalchemy`、`alembic`、`pydantic-settings`、`anthropic` を<ruby>入<rt>い</rt></ruby>れます。<br>*(Khởi tạo bằng poetry init. Cài fastapi, uvicorn, sqlalchemy, alembic, pydantic-settings, anthropic.)* |
| Yamada | `anthropic` の<ruby>最新<rt>さいしん</rt></ruby>バージョンを<ruby>確認<rt>かくにん</rt></ruby>して。プロンプトキャッシング<ruby>対応<rt>たいおう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Check version anthropic mới nhất. Cần hỗ trợ prompt caching.)* |
| Đại | はい――(terminal) 0.39.0 です。プロンプトキャッシング<ruby>対応<rt>たいおう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Vâng — 0.39.0. Có hỗ trợ caching rồi.)* |
| Yamada | OK。<ruby>次<rt>つぎ</rt></ruby>、alembic で15テーブルのマイグレーションを<ruby>作<rt>つく</rt></ruby>ろう。<br>*(OK. Tiếp, làm migration 15 bảng bằng alembic.)* |
| Đại | (terminal) `alembic init alembic` → `alembic revision --autogenerate -m "initial 15 tables"` → `alembic upgrade head`。<br>*(Init + autogenerate + upgrade head.)* |
| Yamada | pgvector エクステンションは？<br>*(Pgvector extension?)* |
| Đại | <ruby>別<rt>べつ</rt></ruby>マイグレーションで `CREATE EXTENSION IF NOT EXISTS vector;` を<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Em làm migration riêng `CREATE EXTENSION IF NOT EXISTS vector;`.)* |

---

## Tình huống 3 — Lab seminar room · 15:00 26/1, weekly report — backend sprint xong

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>研究室<rt>けんきゅうしつ</rt></ruby>のみなさん、Hizashi の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>をします。<br>*(Em báo cáo tiến độ Hizashi.)* |
| Đại | 1<ruby>月<rt>がつ</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>です。バックエンド FastAPI が35エンドポイント<ruby>完成<rt>かんせい</rt></ruby>、DB マイグレーション15テーブル<ruby>適用<rt>てきよう</rt></ruby><ruby>済<rt>ず</rt></ruby>、Claude API チューターのストリーミングが<ruby>動作確認<rt>どうさかくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>です。<br>*(Tháng 1 xong: FastAPI 35 endpoint, migration 15 bảng đã apply, Claude tutor streaming chạy thông.)* |
| Đại | <ruby>来月<rt>らいげつ</rt></ruby>は Flutter モバイル、8<ruby>画面<rt>がめん</rt></ruby><ruby>実装<rt>じっそう</rt></ruby>に<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Tháng sau làm Flutter mobile 8 màn hình.)* |
| Đại | <ruby>課題<rt>かだい</rt></ruby>として、ストリーミングの<ruby>応答<rt>おうとう</rt></ruby><ruby>速度<rt>そくど</rt></ruby>が<ruby>最初<rt>さいしょ</rt></ruby>のトークンまで2<ruby>秒<rt>びょう</rt></ruby>かかります。プロンプトキャッシングで<ruby>改善<rt>かいぜん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vướng: TTFT 2 giây. Sẽ cải thiện bằng prompt caching.)* |
| Inoue | <ruby>自分自身<rt>じぶんじしん</rt></ruby> いいペースだ。TTFT は<ruby>計測<rt>けいそく</rt></ruby>を<ruby>毎日<rt>まいにち</rt></ruby><ruby>続<rt>つづ</rt></ruby>けて。<ruby>卒論<rt>そつろん</rt></ruby>の<ruby>定量<rt>ていりょう</rt></ruby>データになる。<br>*(Tốc độ ổn. TTFT đo hàng ngày. Sẽ thành data định lượng cho luận văn.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>毎日<rt>まいにち</rt></ruby>ログに<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Em hiểu. Em log hàng ngày.)* |

---

## Tình huống 4 — Lab desk · 19:00 10/2, debug bug serializer với Lin Wei

*Đại stuck với bug Pydantic serialization 2 tiếng. Lin Wei ghé qua.*

| Vai | Lời thoại |
|---|---|
| Lin Wei | グエン、まだ<ruby>残<rt>のこ</rt></ruby>ってるな。<ruby>何<rt>なに</rt></ruby>か<ruby>詰<rt>つ</rt></ruby>まってる？<br>*(Đại, vẫn ngồi à. Có bị stuck gì không?)* |
| Đại | リンさん、ちょうどよかった。Pydantic で `datetime` のシリアライズが UTC タイムゾーンを<ruby>失<rt>うしな</rt></ruby>うんです。<br>*(Anh Lin, đúng lúc quá. Pydantic serialize datetime mất timezone UTC.)* |
| Lin Wei | コード<ruby>見<rt>み</rt></ruby>せて。<br>*(Cho xem code.)* |
| Đại | (chỉ màn hình) ここで `model_dump()` を<ruby>呼<rt>よ</rt></ruby>ぶと、UTC が tz-naive になります。<br>*(Đây, gọi `model_dump()` thì UTC trở thành tz-naive.)* |
| Lin Wei | あー、`model_config = ConfigDict(json_encoders={datetime: lambda v: v.isoformat()})` を<ruby>追加<rt>ついか</rt></ruby>して。または `Field(default_factory=lambda: datetime.now(timezone.utc))`。<br>*(À, thêm model_config với json_encoders. Hoặc dùng Field default_factory với timezone.utc.)* |
| Đại | あ、なるほど！(gõ code) ... <ruby>動<rt>うご</rt></ruby>きました！<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。<br>*(À hiểu! ... Chạy được rồi! Cứu em quá.)* |
| Lin Wei | (English) No worries. ペアプロは<ruby>15分<rt>じゅうごふん</rt></ruby>で<ruby>解決<rt>かいけつ</rt></ruby>。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>悩<rt>なや</rt></ruby>むな。<br>*(Không sao. Pair 15 phút là giải xong. Đừng ngồi một mình.)* |
| Đại | はい、<ruby>次<rt>つぎ</rt></ruby>からは30<ruby>分<rt>ぷん</rt></ruby>で<ruby>解決<rt>かいけつ</rt></ruby>しなかったら<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, lần sau quá 30 phút không xong là em hỏi.)* |

---

## Tình huống 5 — Lab pantry · 12:00 20/2, Yamada code review góp ý

*Yamada bring lại laptop với 8 comment trên pull request.*

| Vai | Lời thoại |
|---|---|
| Yamada | グエン、プルリクエストレビュー<ruby>完了<rt>かんりょう</rt></ruby>。8コメント<ruby>付<rt>つ</rt></ruby>けた。<br>*(Đại, review xong. Comment 8 chỗ.)* |
| Đại | ありがとうございます。<ruby>確認<rt>かくにん</rt></ruby>させていただきます。<br>*(Cảm ơn anh. Em check ngay.)* |
| Yamada | <ruby>主<rt>おも</rt></ruby>な<ruby>三<rt>みっ</rt></ruby>つ――<ruby>一<rt>ひと</rt></ruby>つ、`semantic_search` の `top_k=3` はマジックナンバー。<ruby>設定<rt>せってい</rt></ruby>ファイルに<ruby>移<rt>うつ</rt></ruby>して。<br>*(3 điểm chính — một, top_k=3 là magic number. Chuyển sang config file.)* |
| Yamada | <ruby>二<rt>ふた</rt></ruby>つ、Claude API のエラーハンドリングが<ruby>足<rt>た</rt></ruby>りない。429 と 529 だけリトライ、それ<ruby>以外<rt>いがい</rt></ruby>は<ruby>即<rt>そく</rt></ruby><ruby>失敗<rt>しっぱい</rt></ruby>。<br>*(Hai, error handling Claude API thiếu. 429 với 529 mới retry, còn lại fail ngay.)* |
| Yamada | <ruby>三<rt>みっ</rt></ruby>つ、テストカバレッジが<ruby>低<rt>ひく</rt></ruby>すぎる。<ruby>最低<rt>さいてい</rt></ruby>60%<ruby>欲<rt>ほ</rt></ruby>しい。<br>*(Ba, test coverage thấp quá. Ít nhất 60%.)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つとも<ruby>納得<rt>なっとく</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby>までに<ruby>対応<rt>たいおう</rt></ruby>して<ruby>再<rt>さい</rt></ruby>プルリクエストします。<br>*(3 điểm em thấy đúng. Thứ Sáu tuần sau em xử xong và gửi PR lại.)* |
| Yamada | OK。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(OK. Cố lên.)* |

---

## Tình huống 6 — Lab desk · 15:00 22/2, TestFlight submit + viết LINE hướng dẫn 5 beta tester

*App build xong, Đại upload TestFlight và Google Play Internal.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE 5 tester, mixed JP/VN) <br>みなさん、こんにちは。Hizashi v0.1 ベータ<ruby>版<rt>ばん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>ができました。<br>*(Xin chào mọi người. Hizashi v0.1 beta đã sẵn sàng.)* |
| Đại | (LINE VN) iPhone: TestFlight cài từ App Store, mở link mời em gửi → "Accept" → "Install".<br>Android: Google Play "Internal testing" link → "JOIN" → cài Hizashi từ store. |
| Phong (cohort N3) | (LINE JP) インストールできました。アカウント<ruby>登録<rt>とうろく</rt></ruby>の<ruby>画面<rt>がめん</rt></ruby>でストップしました。<ruby>登録<rt>とうろく</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Cài được rồi. Đứng ở màn đăng ký. Anh chỉ giúp em cách đăng ký được không?)* |
| Đại | (LINE JP) フォン、ありがとう。「Google でログイン」ボタンを<ruby>押<rt>お</rt></ruby>してください。Google アカウントで<ruby>自動<rt>じどう</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>されます。<br>*(Phong cảm ơn nhé. Bấm nút "Đăng nhập Google". Sẽ tự đăng ký bằng Google account.)* |
| Phong | (LINE JP) できました！はじめての<ruby>画面<rt>がめん</rt></ruby>が<ruby>表示<rt>ひょうじ</rt></ruby>されました。ありがとうございます！<br>*(Được rồi! Màn hình đầu hiện ra. Cảm ơn anh!)* |
| Đại | (LINE JP) <ruby>使<rt>つか</rt></ruby>って<ruby>気<rt>き</rt></ruby>になった<ruby>点<rt>てん</rt></ruby>があれば、<ruby>何<rt>なん</rt></ruby>でも<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>教<rt>おし</rt></ruby>えてくださいね。<br>*(Có điểm gì băn khoăn khi dùng, mọi người cứ chia sẻ thoải mái nhé.)* |

---

## Tình huống 7 — Phòng khách Toyonaka · 20:00 25/2, onboard Mai bằng tiếng Việt

*Đại bế Hana, Mai cầm điện thoại tự dùng app lần đầu.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em mở app lên xem. Bấm "Đăng nhập Google" trước. |
| Mai | (VN) Xong rồi. Ồ, có 3 khoá N5, N4, N2. Em chọn N2 nhé. |
| Đại | (VN) Đúng rồi. Mở module "文法 N2 — Tuần 1". Trong đó có bài về `〜ものを` đấy. |
| Mai | (VN, đọc 1 phút) Trời, giải thích bằng tiếng Việt đầy đủ! Có cả ví dụ tình huống Việt Nam — em làm bài tập ngay được. |
| Đại | (VN) Em hỏi AI Tutor thử xem. Bấm nút chat dưới góc phải. |
| Mai | (VN, gõ: "Em chưa hiểu khác nhau giữa ものを và ものの") |
| Đại | (VN) Đợi nó stream answer. |
| Mai | (VN, đọc trả lời) Wow! Tutor giải thích bằng tiếng Việt, kèm 3 ví dụ tiếng Nhật có dịch. Anh ơi, trả lời còn rõ hơn anh đêm qua. |
| Đại | (VN, cười) Vì anh đã nhồi RAG bằng đúng cuốn sách N2 em đang đọc. Có gì sai, em báo anh nhé. |
| Mai | (VN) Yên tâm. Em sẽ ghi nhật ký từng phản hồi. |

---

## Tình huống 8 — Bàn làm việc · 22:30 26/2, Linh-Anh báo phản hồi Toyota Boshoku

*LINE Linh-Anh tới ngay sau khi cài.*

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (LINE VN) Anh ơi! Em vừa thử module "Tiếng Nhật thương mại". Hay lắm, nhưng em đề nghị thêm 2 tình huống thực tế của em ở Toyota Boshoku. |
| Đại | (LINE VN) Em nói cụ thể đi. |
| Linh-Anh | (LINE VN) 1. Báo cáo tiến độ với 課長 cuối ngày — bằng keigo đầy đủ. 2. Đàm phán với khách hàng Nhật khi delay lịch giao hàng. |
| Đại | (LINE VN) Hai cái này anh cũng đang vướng. Anh ghi nhận vào v0.2 luôn. Em viết giúp anh 1-2 đoạn hội thoại mẫu thực tế của em được không? Anh sẽ tham khảo. |
| Linh-Anh | (LINE VN) Được! Cuối tuần này em gửi anh. |
| Đại | (LINE VN) Cảm ơn em. Em là beta tester quý nhất của anh đấy. |
| Linh-Anh | (LINE VN) Hehe, anh đừng nịnh. Cho em dùng free vĩnh viễn là được. |
| Đại | (LINE VN) Deal. |

---

## Tình huống 9 — Lab seminar · 15:00 1/3, báo cáo launch + xin hướng dẫn về data analysis

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>研究室<rt>けんきゅうしつ</rt></ruby>のみなさん、Hizashi v0.1 ベータ<ruby>版<rt>ばん</rt></ruby>を 2/25 に<ruby>公開<rt>こうかい</rt></ruby>しました。<ruby>現在<rt>げんざい</rt></ruby>5<ruby>名<rt>めい</rt></ruby>のテスターが<ruby>利用<rt>りよう</rt></ruby>しています。<br>*(Em đã release Hizashi v0.1 ngày 25/2. Hiện 5 tester đang dùng.)* |
| Đại | 1<ruby>週間<rt>しゅうかん</rt></ruby>のフィードバックは23<ruby>件<rt>けん</rt></ruby>、18<ruby>件<rt>けん</rt></ruby>は<ruby>修正<rt>しゅうせい</rt></ruby><ruby>済<rt>ず</rt></ruby>。<ruby>残<rt>のこ</rt></ruby>り5<ruby>件<rt>けん</rt></ruby>は<ruby>機能追加<rt>きのうついか</rt></ruby><ruby>要望<rt>ようぼう</rt></ruby>で、v0.2 で<ruby>対応<rt>たいおう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Tuần đầu nhận 23 feedback, sửa 18. Còn 5 là yêu cầu thêm tính năng, dự kiến v0.2.)* |
| Đại | <ruby>定量<rt>ていりょう</rt></ruby>データとして、<ruby>各<rt>かく</rt></ruby>テスターの<ruby>毎日<rt>まいにち</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>解答<rt>かいとう</rt></ruby><ruby>数<rt>すう</rt></ruby>、<ruby>正答率<rt>せいとうりつ</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Data định lượng: thời gian học hàng ngày, số câu trả lời, tỉ lệ đúng — em đang ghi.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>卒論<rt>そつろん</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>分析<rt>ぶんせき</rt></ruby><ruby>手法<rt>しゅほう</rt></ruby>について、ご<ruby>相談<rt>そうだん</rt></ruby>させてください。<ruby>正答率<rt>せいとうりつ</rt></ruby>の<ruby>時系列<rt>じけいれつ</rt></ruby><ruby>変化<rt>へんか</rt></ruby>を<ruby>有意<rt>ゆうい</rt></ruby>に<ruby>示<rt>しめ</rt></ruby>すには、<ruby>何<rt>なに</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うべきでしょうか？<br>*(Thầy ơi, em xin tư vấn phương pháp phân tích. Để chứng minh thay đổi tỉ lệ đúng theo thời gian là có ý nghĩa, em nên dùng gì ạ?)* |
| Inoue | サンプル<ruby>数<rt>すう</rt></ruby>5<ruby>名<rt>めい</rt></ruby>なら、<ruby>個別<rt>こべつ</rt></ruby>の<ruby>学習<rt>がくしゅう</rt></ruby>曲<ruby>線<rt>せん</rt></ruby> (learning curve) を<ruby>示<rt>しめ</rt></ruby>すのが<ruby>現実的<rt>げんじつてき</rt></ruby>。<ruby>統計的<rt>とうけいてき</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>は20<ruby>名<rt>めい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>えてから。<br>*(Sample 5 thì show learning curve cá nhân là thực tế. Kiểm định thống kê đợi tăng lên 20+ user.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>個別<rt>こべつ</rt></ruby>の<ruby>学習<rt>がくしゅう</rt></ruby><ruby>曲線<rt>きょくせん</rt></ruby>5<ruby>本<rt>ぽん</rt></ruby>を<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>します。<br>*(Hiểu rồi. 5 learning curve cá nhân em update hàng tuần.)* |

---

## Tình huống 10 — LINE Tuấn em · 21:00 5/3, phản hồi "AI Tutor giải thích 3 cách"

| Vai | Lời thoại |
|---|---|
| Tuấn em | (LINE VN) Anh ơi! Em vừa hỏi tutor một điểm ngữ pháp `〜について` em không hiểu. Tutor giải thích lần 1 em vẫn lơ mơ. Em gõ "em chưa hiểu, anh giải thích lại được không". Nó giải thích lần 2 đơn giản hơn. Em vẫn không nắm. Em gõ "ví dụ thật cụ thể đi". Lần 3 nó cho 5 ví dụ liên quan công việc IT. Em hiểu luôn! |
| Đại | (LINE VN) Trời, đúng cái anh muốn nhất! Đó là giá trị cốt lõi: tutor TỰ ĐIỀU CHỈNH cách giải thích cho từng người. Em là người đầu tiên báo lại điều đó. |
| Tuấn em | (LINE VN) Em thấy như có 1 thầy riêng vậy. Lần đầu thấy app dạy ngôn ngữ không "đọc thuộc". |
| Đại | (LINE VN) Cảm ơn em. Em ghi giúp anh nguyên đoạn chat hôm nay, anh đưa vào case study trong luận văn được không? |
| Tuấn em | (LINE VN) Anh muốn em ghi giờ luôn không? |
| Đại | (LINE VN) Mai gửi cũng được. Ngủ ngon nhé. |
| Tuấn em | (LINE VN) Anh ngủ ngon. |

---

## Tình huống 11 — Phòng khách Toyonaka · 23:00 10/3, Phong báo bug payment screen

*Phong là sinh viên trường tiếng Osaka, N3, người Nhật-Việt giao tiếp tốt nhưng đọc kanji chậm.*

| Vai | Lời thoại |
|---|---|
| Phong | (LINE mix JP) ダイさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。バグ<ruby>報告<rt>ほうこく</rt></ruby>です。Pro プランの<ruby>支払<rt>しはら</rt></ruby>い<ruby>画面<rt>がめん</rt></ruby>で、Apple Pay を<ruby>選<rt>えら</rt></ruby>ぶとアプリが<ruby>落<rt>お</rt></ruby>ちます。<br>*(Anh Đại, em báo bug. Màn payment Pro plan, chọn Apple Pay là app crash.)* |
| Đại | フォン、<ruby>報告<rt>ほうこく</rt></ruby>ありがとうございます。<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてください：<br>① iPhone のモデルとiOSバージョン<br>② <ruby>落<rt>お</rt></ruby>ちる<ruby>直前<rt>ちょくぜん</rt></ruby>の<ruby>操作<rt>そうさ</rt></ruby><br>③ クラッシュログがあれば<ruby>添付<rt>てんぷ</rt></ruby>してください。<br>*(Phong, cảm ơn báo bug. Cho anh chi tiết: model iPhone + iOS version, thao tác ngay trước crash, log crash nếu có.)* |
| Phong | iPhone 14 Pro、iOS 17.3.1。「Pro <ruby>プラン<rt>プラン</rt></ruby>に<ruby>登録<rt>とうろく</rt></ruby>」ボタン→「Apple Pay」ボタン→<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になって<ruby>落<rt>お</rt></ruby>ちる。ログ→ (gửi crashlytics screenshot)<br>*(iPhone 14 Pro, iOS 17.3.1. Bấm "Đăng ký Pro" → bấm Apple Pay → trắng màn rồi crash. Log đây.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>特定<rt>とくてい</rt></ruby>します。ETA は 2-3<ruby>日<rt>にち</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>修正<rt>しゅうせい</rt></ruby><ruby>版<rt>ばん</rt></ruby>を TestFlight に<ruby>公開<rt>こうかい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<ruby>大変<rt>たいへん</rt></ruby>ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました。<br>*(Em hiểu rồi. Em sẽ tìm nguyên nhân. ETA 2-3 ngày sẽ ra bản sửa lên TestFlight. Xin lỗi đã làm phiền anh.)* |
| Phong | <ruby>気<rt>き</rt></ruby>にしないでください。ベータですからバグは<ruby>当然<rt>とうぜん</rt></ruby>です。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Đừng ngại anh. Beta thì bug là chuyện thường. Cố lên anh.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>修正<rt>しゅうせい</rt></ruby>後<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Cảm ơn anh thật sự. Sửa xong em báo.)* |

---

## Tình huống 12 — Phòng làm việc · 23:30 25/3, nhật ký + LINE cảm ơn 5 tester

*Sprint 3 tháng đóng lại. Đại viết một message gửi nhóm 5 tester.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE group 5 testers, mix VN/JP)<br>(VN) Mọi người ơi. Hôm nay là tròn 1 tháng Hizashi v0.1 beta. Tổng cộng anh nhận 61 phản hồi, sửa 49. Có 5 người dùng — Mai, Linh-Anh, Tuấn, Phong, Hùng — mỗi người mỗi cách dùng, mỗi loại bug, mỗi mong muốn. |
| Đại | (VN) Tháng tới Hizashi mở rộng sang khoá N4 + module business JP từ phản hồi Linh-Anh + module IT vocab từ phản hồi Tuấn em. Target 50 active user tới cuối tháng 5. |
| Đại | (JP, gửi Phong) フォン、Apple Pay バグの<ruby>修正<rt>しゅうせい</rt></ruby>版<ruby>公開<rt>こうかい</rt></ruby><ruby>済<rt>ず</rt></ruby>です。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Phong, bản sửa Apple Pay đã release. Cảm ơn anh thật sự.)* |
| Mai | (VN) Em cảm ơn anh. Mỗi lần em mở Hizashi là thấy anh ngồi bên. |
| Linh-Anh | (VN) App của anh đã thay đổi cách em làm việc rồi. |
| Tuấn em | (VN) Em vẫn nói với Hùng: anh Đại làm app như có thật ấy. |
| Hùng | (VN, Hà Nội) Anh ơi em mới N5 nhưng học được 2 tuần rồi. Cảm ơn anh. |
| Phong | (JP) ダイさん、これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Đại, từ nay vẫn nhờ anh.)* |
| Đại | (VN) Cảm ơn cả nhà. Hizashi là của mọi người. |

---

## Đọng lại chương 11

3 tháng từ scaffold đến release. Đại học được nguyên bộ ngôn ngữ developer Nhật làm việc thật: pair programming hỏi senpai **「ちょうどよかった。〜が〜なんです」** + **「コード見せて」** + **「動きました！本当に助かりました」**. Nhận code review feedback: **「三つとも納得です。〜までに対応して再プルリクエストします」**. Báo bug với ETA: **「ETA は〜以内に修正版を〜に公開予定です。大変ご迷惑をおかけしました」**. Hỏi senpai chi tiết bug **「① モデルとバージョン ② 直前の操作 ③ ログ」** — đây là pattern triage chuẩn. Báo cáo seminar có **進捗 + 課題 + 質問**. Xin tư vấn 教授 về phương pháp: **「〜について、ご相談させてください。〜には、何を使うべきでしょうか」**. Bên ngôn ngữ Việt, onboarding Mai cho thấy giá trị thật của tutor adaptive: Tuấn em hỏi 3 lần khác nhau, tutor tự điều chỉnh — đó là khoảnh khắc Hizashi "sống".

> Từ vựng & mẫu câu chương này: ベータ版・TestFlight・Internal Testing・スプリント・プルリクエスト・コードレビュー・マジックナンバー・エラーハンドリング・テストカバレッジ・ストリーミング・TTFT・プロンプトキャッシング・学習曲線・サンプル数・有意・統計的検定・ETA・クラッシュログ・ご迷惑をおかけしました・対応します・お疲れさまです・気にしないでください・本当に助かりました・〜について、ご相談させてください

## Bí quyết chương

- **Pair programming pattern**: senpai ghé qua dùng **「何か詰まってる？」** — junior trả lời **「ちょうどよかった」** + mô tả bug 1 câu + mở code. Đây là nghi thức cứu thời gian.
- **Bug triage 3 cột**: ① <ruby>環境<rt>かんきょう</rt></ruby> (model + OS), ② <ruby>再現手順<rt>さいげんてじゅん</rt></ruby> (steps), ③ ログ — engineer Nhật hỏi y chang thứ tự này.
- **Code review góp ý nhận như nào**: KHÔNG bao biện, dùng **「納得です」** + **「〜までに対応します」** + commit time-bound. Bao biện = mất uy tín senpai.
- **ETA + xin lỗi**: bug khách báo phải kèm **「ETA は〜です」** + **「大変ご迷惑をおかけしました」**. Thiếu 1 trong 2 là thiếu chuyên nghiệp.
- **5 tester profile cover full audience**: vợ (N2 ôn thi), em họ (thương mại), em cohort (IT), người trường tiếng (N3 thuần học), em họ ở VN (N5). Đây là cách chọn beta user — không phải random.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 明ける | あける | MINH | Sang (năm mới) |
| 今年 | ことし | KIM NIÊN | Năm nay |
| 公開 | こうかい | CÔNG KHAI | Công bố, release |
| プルリクエスト | — | — | Pull request |
| 最新 | さいしん | TỐI TÂN | Mới nhất |
| 別 | べつ | BIỆT | Riêng |
| 動作確認 | どうさかくにん | ĐỘNG TÁC XÁC NHẬN | Kiểm tra hoạt động |
| 応答速度 | おうとうそくど | ỨNG ĐÁP TỐC ĐỘ | Tốc độ phản hồi |
| 改善 | かいぜん | CẢI THIỆN | Cải thiện |
| 詰まる | つまる | NỆ | Bí, kẹt |
| 失う | うしなう | THẤT | Mất |
| ペアプロ | — | — | Pair programming |
| 解決 | かいけつ | GIẢI QUYẾT | Giải quyết |
| 悩む | なやむ | NÃO | Băn khoăn |
| 主な | おもな | CHỦ | Chính |
| マジックナンバー | — | — | Magic number |
| 即 | そく | TỨC | Ngay |
| 失敗 | しっぱい | THẤT BẠI | Thất bại |
| カバレッジ | — | — | Coverage |
| 最低 | さいてい | TỐI ĐÊ | Tối thiểu |
| 再 | さい | TÁI | Lại |
| 準備 | じゅんび | CHUẨN BỊ | Chuẩn bị |
| 出版 | しゅっぱん | XUẤT BẢN | Xuất bản |
| 画面 | がめん | HOẠ DIỆN | Màn hình |
| 自動 | じどう | TỰ ĐỘNG | Tự động |
| 気になる | きになる | KHÍ | Băn khoăn |
| 課長 | かちょう | KHOÁ TRƯỞNG | Trưởng phòng |
| 商談 | しょうだん | THƯƠNG ĐÀM | Đàm phán thương mại |
| 遅延 | ちえん | TRÌ DUYÊN | Trì hoãn |
| 納期 | のうき | NẠP KỲ | Hạn giao |
| 利用 | りよう | LỢI DỤNG | Sử dụng |
| 機能追加 | きのうついか | CƠ NĂNG TRUY GIA | Thêm tính năng |
| 要望 | ようぼう | YÊU CẦU | Yêu cầu |
| 学習時間 | がくしゅうじかん | HỌC TẬP THỜI GIAN | Thời gian học |
| 解答数 | かいとうすう | GIẢI ĐÁP SỐ | Số câu trả lời |
| 時系列 | じけいれつ | THỜI HỆ LIỆT | Theo thời gian |
| 示す | しめす | THỊ | Chỉ ra |
| 検定 | けんてい | KIỂM ĐỊNH | Kiểm định |
| 学習曲線 | がくしゅうきょくせん | HỌC TẬP KHÚC TUYẾN | Learning curve |
| 更新 | こうしん | CẬP TÂN | Cập nhật |
| 状況 | じょうきょう | TÌNH HUỐNG | Tình hình |
| 操作 | そうさ | THAO TÁC | Thao tác |
| 落ちる | おちる | LẠC | Crash, rớt |
| 特定 | とくてい | ĐẶC ĐỊNH | Xác định |
| 修正版 | しゅうせいばん | TU CHÍNH BẢN | Bản sửa |
| 当然 | とうぜん | ĐƯƠNG NHIÊN | Lẽ đương nhiên |
| 反省 | はんせい | PHẢN TỈNH | Tự kiểm điểm |
| プロファイル | — | — | Profile |
| 拡大 | かくだい | KHUẾCH ĐẠI | Mở rộng |
