# Sách đại học CS năm 3 · T10. Thiết kế architecture Hizashi

> **Mục tiêu nhân vật:** Đại 23 tuổi, tháng 12/2028, lab Inoue. Học 5-6 mẫu hội thoại tiếng Nhật của sinh viên CS năm 3 viết tech doc và xin review: (1) trình bày architecture diagram trước senpai, (2) hỏi feedback DB schema, (3) thảo luận chi phí cloud với mentor, (4) xin lịch hẹn 1on1 với 教授, (5) báo cáo tiến độ trong lab seminar, (6) xác nhận hiểu yêu cầu khi chưa rõ.

---

## Bối cảnh

Tháng 12/2028, đông Osaka, lá đã rụng hết. Hana 4 tháng đã biết lẫy. Mai đăng ký N2 tháng 7/2029. Đại tập trung viết Hizashi Architecture Document — mục tiêu 30 trang. Yamada-senpai làm reviewer chính. Inoue-sensei review pass cuối. Aiko gửi Figma mockup. Lin Wei sẵn sàng review code. Chương này tập trung các mẫu câu: trình bày architecture, xin review/feedback, hỏi lại khi chưa hiểu, báo cáo progress trong seminar, xin hẹn 1on1, thảo luận chi phí — toàn bộ trong môi trường lab CS Nhật.

---

## Tình huống 1 — Lab Inoue · 9:00 1/12, Đại mở Notion bắt đầu tech doc

*Đại đến lab sớm, chỉ có Yamada-senpai đã ngồi từ 8 giờ.*

| Vai | Lời thoại |
|---|---|
| Yamada | おはよう、グエン。<ruby>早<rt>はや</rt></ruby>いな。<br>*(Chào, đến sớm thế.)* |
| Đại | おはようございます。<ruby>今日<rt>きょう</rt></ruby>から Hizashi の<ruby>技術<rt>ぎじゅつ</rt></ruby>ドキュメントを<ruby>書<rt>か</rt></ruby>き<ruby>始<rt>はじ</rt></ruby>めます。30ページ<ruby>目標<rt>もくひょう</rt></ruby>です。<br>*(Hôm nay em bắt đầu viết tech doc Hizashi. Mục tiêu 30 trang.)* |
| Yamada | おう。アウトラインはもうあるか？<br>*(Ờ. Đã có outline chưa?)* |
| Đại | Notion に10<ruby>章<rt>しょう</rt></ruby><ruby>構成<rt>こうせい</rt></ruby>で<ruby>下書<rt>したが</rt></ruby>きしました。ビジョン、アーキテクチャ、DBスキーマ、APIエンドポイント、モバイル<ruby>画面<rt>がめん</rt></ruby>、プロンプト<ruby>設計<rt>せっけい</rt></ruby>、インフラ、コスト、ロードマップ、リスクです。<br>*(Đã phác 10 chương trên Notion. Tầm nhìn, architecture, DB schema, API endpoint, mobile screen, prompt design, infrastructure, cost, roadmap, risk.)* |
| Yamada | <ruby>順番<rt>じゅんばん</rt></ruby>がいいね。<ruby>各章<rt>かくしょう</rt></ruby>1ページ<ruby>書<rt>か</rt></ruby>いたら<ruby>俺<rt>おれ</rt></ruby>にレビュー<ruby>頼<rt>たの</rt></ruby>んで。<br>*(Thứ tự ổn. Mỗi chương viết được 1 trang thì nhờ anh review.)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh.)* |

---

## Tình huống 2 — Lab whiteboard · 11:00 3/12, vẽ architecture diagram trên Excalidraw

*Đại vẽ system diagram trên iPad, chiếu lên màn hình 75 inch của lab. Yamada đứng cạnh.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>説明<rt>せつめい</rt></ruby>させてください。4<ruby>層構造<rt>そうこうぞう</rt></ruby>です。<ruby>上<rt>うえ</rt></ruby>から、クライアント<ruby>層<rt>そう</rt></ruby>は Flutter――iOS と Android、<ruby>将来<rt>しょうらい</rt></ruby> Web も Next.js で。<br>*(Em xin trình bày. Cấu trúc 4 lớp. Trên cùng client layer là Flutter — iOS, Android, tương lai Web Next.js.)* |
| Đại | APIレイヤーは FastAPI、Pydantic で<ruby>型<rt>かた</rt></ruby><ruby>検証<rt>けんしょう</rt></ruby>。データレイヤーは PostgreSQL に pgvector を<ruby>追加<rt>ついか</rt></ruby>、キャッシュは Redis、AI チューターは Claude API。<br>*(API layer FastAPI + Pydantic kiểm tra type. Data layer Postgres + pgvector, cache Redis, AI tutor Claude API.)* |
| Đại | ストレージは Cloudflare R2――<ruby>音声<rt>おんせい</rt></ruby>と<ruby>画像<rt>がぞう</rt></ruby>を<ruby>保存<rt>ほぞん</rt></ruby>します。<br>*(Storage Cloudflare R2 — lưu audio và ảnh.)* |
| Yamada | フローは？<br>*(Flow thế nào?)* |
| Đại | クライアントから FastAPI に<ruby>要求<rt>ようきゅう</rt></ruby>が<ruby>来<rt>く</rt></ruby>る → Postgres と Redis と Claude API を<ruby>呼<rt>よ</rt></ruby>び<ruby>分<rt>わ</rt></ruby>ける → R2 のアセットURLを<ruby>返<rt>かえ</rt></ruby>す<ruby>流<rt>なが</rt></ruby>れです。<br>*(Client gửi request lên FastAPI → gọi phân nhánh Postgres/Redis/Claude → trả URL asset từ R2.)* |
| Yamada | クリアだ。<ruby>一<rt>ひと</rt></ruby>つ<ruby>質問<rt>しつもん</rt></ruby>――Claude API の<ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>しはストリーミングだよな？タイムアウトは？<br>*(Rõ. Một câu hỏi — call Claude là streaming nhỉ? Timeout?)* |
| Đại | はい、ストリーミングです。タイムアウトは60<ruby>秒<rt>びょう</rt></ruby>に<ruby>設定<rt>せってい</rt></ruby>します。<br>*(Vâng streaming. Timeout đặt 60 giây.)* |

---

## Tình huống 3 — Lab kitchen · 12:30 3/12, hỏi Yamada về retry policy

*Cùng ăn bento, đứng ở bếp nhỏ của lab.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、Claude API のリトライ<ruby>方針<rt>ほうしん</rt></ruby>って、<ruby>普通<rt>ふつう</rt></ruby>どう<ruby>設定<rt>せってい</rt></ruby>しますか？<br>*(Anh Yamada, retry policy của Claude API thông thường đặt sao?)* |
| Yamada | <ruby>指数<rt>しすう</rt></ruby>バックオフで3<ruby>回<rt>かい</rt></ruby>まで。429 (rate limit) と 529 (overload) はリトライ、4xx はリトライしない。<br>*(Exponential backoff tối đa 3 lần. 429 với 529 thì retry, 4xx khác thì không.)* |
| Đại | 「<ruby>指数<rt>しすう</rt></ruby>バックオフ」――というのは、1<ruby>秒<rt>びょう</rt></ruby>、2<ruby>秒<rt>びょう</rt></ruby>、4<ruby>秒<rt>びょう</rt></ruby>と<ruby>待<rt>ま</rt></ruby>ち<ruby>時間<rt>じかん</rt></ruby>を<ruby>倍<rt>ばい</rt></ruby>にしていくということでしょうか？<br>*(Exponential backoff — tức là 1 giây, 2 giây, 4 giây gấp đôi thời gian chờ đúng không?)* |
| Yamada | そうそう。プラス、ジッターを<ruby>足<rt>た</rt></ruby>す。<ruby>同時<rt>どうじ</rt></ruby>に<ruby>全<rt>ぜん</rt></ruby>クライアントがリトライしないように。<br>*(Đúng. Thêm jitter nữa. Để mọi client không retry cùng lúc.)* |
| Đại | なるほど、ジッターも<ruby>追加<rt>ついか</rt></ruby>します。ありがとうございます。<br>*(Hiểu rồi, em thêm jitter. Cảm ơn anh.)* |

---

## Tình huống 4 — Lab desk · 14:00 5/12, hoàn thiện DB schema và xin Yamada review ER diagram

*Đại in ra A3 file ER diagram, đem đến bàn Yamada.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、DBスキーマ15テーブルのER<ruby>図<rt>ず</rt></ruby>ができました。レビューしていただけますか？<br>*(Anh Yamada, ER diagram 15 bảng đã xong. Anh review giúp em được không?)* |
| Yamada | おう、<ruby>置<rt>お</rt></ruby>いて。<ruby>30分後<rt>さんじゅっぷんご</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>って。<br>*(Ờ, để đây. 30 phút sau quay lại.)* |
| Đại | (30 phút sau) <ruby>山田<rt>やまだ</rt></ruby>さん、いかがでしたか？<br>*(Anh thấy sao ạ?)* |
| Yamada | <ruby>全体<rt>ぜんたい</rt></ruby>は<ruby>明確<rt>めいかく</rt></ruby>だ。3<ruby>点<rt>てん</rt></ruby>コメント：<br>*(Tổng thể rõ. 3 điểm comment:)* |
| Yamada | <ruby>一<rt>ひと</rt></ruby>つ、`questions_answers` テーブルに `time_spent_ms` <ruby>列<rt>れつ</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>して――<ruby>学習<rt>がくしゅう</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Một, thêm cột `time_spent_ms` vào bảng `questions_answers` — cần cho phân tích học tập.)* |
| Yamada | <ruby>二<rt>ふた</rt></ruby>つ、`document_embeddings` の vector(1024) は<ruby>大<rt>おお</rt></ruby>きすぎる。768 で<ruby>十分<rt>じゅうぶん</rt></ruby>。<br>*(Hai, vector(1024) hơi to. 768 là đủ.)* |
| Yamada | <ruby>三<rt>みっ</rt></ruby>つ、`users` に `deleted_at` の soft delete を<ruby>追加<rt>ついか</rt></ruby>。GDPR<ruby>対応<rt>たいおう</rt></ruby>。<br>*(Ba, thêm `deleted_at` soft delete cho `users`. Để chuẩn GDPR.)* |
| Đại | 3<ruby>点<rt>てん</rt></ruby>とも<ruby>納得<rt>なっとく</rt></ruby>です。<ruby>修正<rt>しゅうせい</rt></ruby>します。ありがとうございます。<br>*(Cả 3 điểm em thấy đúng. Em sửa. Cảm ơn anh.)* |

---

## Tình huống 5 — Lab seminar room · 15:00 12/12, báo cáo progress weekly seminar

*Mỗi thứ Sáu lab Inoue có seminar 30 phút. Đại trình bày 5 phút status update.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>研究室<rt>けんきゅうしつ</rt></ruby>のみなさん、Hizashi の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>をします。<br>*(Mọi người ở lab Inoue, em báo cáo tiến độ Hizashi.)* |
| Đại | <ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つです。<ruby>一<rt>ひと</rt></ruby>つ、アーキテクチャ<ruby>図<rt>ず</rt></ruby>を<ruby>完成<rt>かんせい</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ、DBスキーマ15テーブルとER<ruby>図<rt>ず</rt></ruby>を<ruby>完成<rt>かんせい</rt></ruby>、<ruby>山田<rt>やまだ</rt></ruby>さんのレビュー<ruby>済<rt>ず</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ、APIエンドポイント<ruby>設計<rt>せっけい</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>、40<ruby>本<rt>ぽん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Tuần này 3 kết quả. Một, hoàn thành architecture diagram. Hai, DB schema 15 bảng và ER diagram đã xong, Yamada review xong. Ba, API endpoint thiết kế dở, dự kiến 40 cái.)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby>は、コスト<ruby>試算<rt>しさん</rt></ruby>とプロンプト<ruby>設計<rt>せっけい</rt></ruby>に<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Tuần sau em làm phần ước tính chi phí và prompt design.)* |
| Đại | <ruby>課題<rt>かだい</rt></ruby>として、Claude API のトークン<ruby>消費量<rt>しょうひりょう</rt></ruby>の<ruby>見積<rt>みつ</rt></ruby>もりに<ruby>不安<rt>ふあん</rt></ruby>があります。アドバイスをいただけたら<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vướng mắc: em chưa chắc về ước tính token Claude. Mong được lời khuyên.)* |
| Inoue | トークンの<ruby>件<rt>けん</rt></ruby>は、<ruby>後<rt>あと</rt></ruby>で1on1で<ruby>話<rt>はな</rt></ruby>そう。よく<ruby>整理<rt>せいり</rt></ruby>されている。<br>*(Vấn đề token để 1on1 sau nói. Trình bày tốt.)* |
| Đại | ありがとうございます。<ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Cảm ơn thầy. Em xong rồi.)* |

---

## Tình huống 6 — Email Inoue · 16:00 12/12, xin lịch 1on1

*Đại gõ email keigo trang trọng.*

| Vai | Lời thoại |
|---|---|
| Đại | (email)<br>件名：1on1<ruby>面談<rt>めんだん</rt></ruby>の<ruby>日程<rt>にってい</rt></ruby>のお<ruby>願<rt>ねが</rt></ruby>い<br><br><ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby><br><br>お<ruby>疲<rt>つか</rt></ruby>れさまです。グエン・ヴァン・ダイです。<br><br><ruby>本日<rt>ほんじつ</rt></ruby>のセミナーで<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げた Claude API のトークン<ruby>消費量<rt>しょうひりょう</rt></ruby>の<ruby>見積<rt>みつ</rt></ruby>もりについて、ご<ruby>相談<rt>そうだん</rt></ruby>させていただきたいです。<br><br><ruby>来週<rt>らいしゅう</rt></ruby>、30<ruby>分<rt>ぷん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby>をいただけませんでしょうか。<ruby>候補<rt>こうほ</rt></ruby>は<ruby>以下<rt>いか</rt></ruby>です：<br>・15<ruby>日<rt>にち</rt></ruby>（<ruby>月<rt>げつ</rt></ruby>）14:00〜<br>・16<ruby>日<rt>にち</rt></ruby>（<ruby>火<rt>か</rt></ruby>）10:00〜<br>・17<ruby>日<rt>にち</rt></ruby>（<ruby>水<rt>すい</rt></ruby>）終日<br><br>ご<ruby>都合<rt>つごう</rt></ruby>のよろしい<ruby>日<rt>ひ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<br><br>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>グエン・ヴァン・ダイ |
| Inoue | (reply 30 phút sau) 17<ruby>日<rt>にち</rt></ruby>10:00<ruby>研究室<rt>けんきゅうしつ</rt></ruby>で。<br>*(17/12 10h ở lab.)* |
| Đại | (reply) ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cảm ơn thầy.)* |

---

## Tình huống 7 — Văn phòng Inoue · 10:00 17/12, 1on1 thảo luận chi phí Claude API

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Cháu xin phép.)* |
| Inoue | どうぞ。トークンの<ruby>話<rt>はなし</rt></ruby>ですね。<br>*(Mời vào. Chuyện token nhỉ.)* |
| Đại | はい。<ruby>現在<rt>げんざい</rt></ruby>の<ruby>試算<rt>しさん</rt></ruby>では、100ユーザーで<ruby>月<rt>つき</rt></ruby> Claude API が<ruby>約<rt>やく</rt></ruby>$45 です。<ruby>入力<rt>にゅうりょく</rt></ruby>300<ruby>万<rt>まん</rt></ruby>トークン、<ruby>出力<rt>しゅつりょく</rt></ruby>50<ruby>万<rt>まん</rt></ruby>トークン、<ruby>平均<rt>へいきん</rt></ruby><ruby>一人<rt>ひとり</rt></ruby><ruby>月<rt>つき</rt></ruby>10チャットを<ruby>想定<rt>そうてい</rt></ruby>しています。<br>*(Vâng. Ước tính 100 user/tháng Claude API ~$45. Input 3M token, output 500k, giả định trung bình 10 chat/người/tháng.)* |
| Inoue | プロンプトキャッシングは<ruby>使<rt>つか</rt></ruby>っているか？<br>*(Có dùng prompt caching không?)* |
| Đại | あ、まだ<ruby>検討<rt>けんとう</rt></ruby>していませんでした。<ruby>共通<rt>きょうつう</rt></ruby>の system prompt と RAG context を<ruby>キャッシュ<rt>キャッシュ</rt></ruby>すれば、<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>削減<rt>さくげん</rt></ruby>できそうですね。<br>*(À, em chưa tính tới. Cache system prompt và RAG context chắc giảm đáng kể.)* |
| Inoue | そう。Anthropic の<ruby>公式<rt>こうしき</rt></ruby>ドキュメントによると、キャッシュヒットでコスト10<ruby>分<rt>ぶん</rt></ruby>の1。100ユーザーで$5 まで<ruby>落<rt>お</rt></ruby>とせる<ruby>可能性<rt>かのうせい</rt></ruby>がある。<br>*(Ờ. Theo doc Anthropic, cache hit còn 1/10 chi phí. 100 user xuống $5 là khả thi.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<ruby>今週<rt>こんしゅう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>にプロンプトキャッシングを<ruby>設計<rt>せっけい</rt></ruby>に<ruby>組<rt>く</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みます。<br>*(Em học được. Trong tuần em lồng prompt caching vào thiết kế.)* |
| Inoue | <ruby>頑張<rt>がんば</rt></ruby>って。あと、コスト<ruby>試算<rt>しさん</rt></ruby>は1000ユーザー、1<ruby>万<rt>まん</rt></ruby>ユーザーの<ruby>段階<rt>だんかい</rt></ruby>も<ruby>出<rt>だ</rt></ruby>しておくこと。スケール<ruby>時<rt>じ</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby><ruby>材料<rt>ざいりょう</rt></ruby>になる。<br>*(Cố lên. Còn ước tính chi phí ở mức 1k, 10k user cũng làm. Cần cho quyết định khi scale.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございました。<br>*(Vâng cháu hiểu. Cảm ơn thầy.)* |

---

## Tình huống 8 — Lab desk · 15:00 18/12, Aiko gửi Figma mockup → góp ý qua LINE

*Aiko gửi link Figma cho 8 màn hình mobile.*

| Vai | Lời thoại |
|---|---|
| Aiko | (LINE) ダイ、モックアップ8<ruby>画面<rt>がめん</rt></ruby><ruby>完成<rt>かんせい</rt></ruby>！<ruby>確認<rt>かくにん</rt></ruby>して→ figma.com/file/hizashi-v01<br>*(Đại, mockup 8 màn xong! Check đi.)* |
| Đại | (LINE) <ruby>早<rt>はや</rt></ruby>い！すごい。<ruby>今<rt>いま</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Nhanh quá! Em xem ngay.)* |
| Đại | (LINE, 20 phút sau) アイコちゃん、<ruby>本当<rt>ほんとう</rt></ruby>にきれい！2<ruby>点<rt>てん</rt></ruby>だけ<ruby>相談<rt>そうだん</rt></ruby>させて：<br>*(Aiko, đẹp thật! Chỉ 2 điểm em xin được trao đổi:)* |
| Đại | (LINE) ①「Vocab SRS<ruby>画面<rt>がめん</rt></ruby>」のカードめくりアニメ、ベトナム<ruby>語<rt>ご</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby><ruby>位置<rt>いち</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>下<rt>した</rt></ruby>にできますか？<br>*(Animation flip card vocab — vị trí tiếng Việt hạ xuống chút được không?)* |
| Đại | (LINE) ② チャット<ruby>画面<rt>がめん</rt></ruby>のストリーミングカーソル、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>遅<rt>おそ</rt></ruby>くしてほしい――ベトナム<ruby>人<rt>じん</rt></ruby><ruby>読者<rt>どくしゃ</rt></ruby>は<ruby>漢字<rt>かんじ</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むのに<ruby>時間<rt>じかん</rt></ruby>がかかるので。<br>*(Cursor streaming chat — chậm thêm chút — vì người Việt đọc kanji mất thời gian.)* |
| Aiko | (LINE) なるほど、ユーザー<ruby>目線<rt>めせん</rt></ruby>のフィードバックいいね。<ruby>修正<rt>しゅうせい</rt></ruby>するよ。<br>*(Hiểu, phản hồi từ user POV hay đấy. Mình sửa.)* |
| Đại | (LINE) ありがとう、アイコちゃん。<ruby>料金<rt>りょうきん</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>払<rt>はら</rt></ruby>わなくていいの？<br>*(Cảm ơn nha. Tiền công thật sự không nhận à?)* |
| Aiko | (LINE) <ruby>料金<rt>りょうきん</rt></ruby>ナシ！ただ、リリースしたらクレジットに「UI by Aiko」って<ruby>入<rt>い</rt></ruby>れてね（笑）<br>*(Không lấy! Nhưng khi release ghi credit "UI by Aiko" nhé hihi.)* |
| Đại | (LINE) <ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>入<rt>い</rt></ruby>れる！<br>*(Chắc chắn em ghi!)* |

---

## Tình huống 9 — Cafe Senri-Chuo · 17:00 19/12, gặp Lin Wei nhờ review API design

| Vai | Lời thoại |
|---|---|
| Đại | リンさん、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。API エンドポイントの<ruby>設計<rt>せっけい</rt></ruby>レビューをお<ruby>願<rt>ねが</rt></ruby>いしたくて。<br>*(Anh Lin, em làm phiền lúc anh bận. Em muốn nhờ anh review thiết kế API endpoint.)* |
| Lin Wei | (English mix) ノープロブレム。<ruby>見<rt>み</rt></ruby>せて。40 endpoints だっけ？<br>*(Không sao. Cho xem. 40 endpoint nhỉ?)* |
| Đại | はい、これです。(mở iPad) 一つ気になるのは、`/answers` のPOSTで、<ruby>採点<rt>さいてん</rt></ruby>ロジックを<ruby>同<rt>おな</rt></ruby>じエンドポイントに<ruby>入<rt>い</rt></ruby>れるか、<ruby>分<rt>わ</rt></ruby>けるかです。<br>*(Vâng đây. Em băn khoăn `/answers` POST — logic chấm điểm nhét cùng endpoint hay tách?)* |
| Lin Wei | <ruby>同<rt>おな</rt></ruby>じでいい。Idempotency<ruby>気<rt>き</rt></ruby>をつけて――<ruby>同<rt>おな</rt></ruby>じ user+question で2<ruby>回<rt>かい</rt></ruby> POST が<ruby>来<rt>こ</rt></ruby>た<ruby>場合<rt>ばあい</rt></ruby>のルール<ruby>決<rt>き</rt></ruby>めて。<br>*(Cùng được. Lo idempotency — cùng user+question gửi POST 2 lần xử lý sao.)* |
| Đại | あ、その<ruby>点<rt>てん</rt></ruby>は<ruby>抜<rt>ぬ</rt></ruby>けていました。`Idempotency-Key` ヘッダーを<ruby>導入<rt>どうにゅう</rt></ruby>します。<br>*(À điểm đó em sót. Em đưa vào header `Idempotency-Key`.)* |
| Lin Wei | あと、`/chat` のストリーミングは Server-Sent Events か WebSocket？<br>*(`/chat` streaming dùng SSE hay WebSocket?)* |
| Đại | SSE です。Flutter から flutter_client_sse <ruby>使<rt>つか</rt></ruby>います。<br>*(SSE. Flutter dùng flutter_client_sse.)* |
| Lin Wei | OK. <ruby>残<rt>のこ</rt></ruby>りは<ruby>後<rt>あと</rt></ruby>でメールで<ruby>送<rt>おく</rt></ruby>る。<br>*(OK. Còn lại anh email sau.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。ありがとうございます。<br>*(Thật sự cứu em. Cảm ơn anh.)* |

---

## Tình huống 10 — Lab desk · 11:00 20/12, ước tính chi phí và viết chương 8 tech doc

*Đại mở Google Sheets, gọi Yamada qua xem.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、コスト<ruby>試算<rt>しさん</rt></ruby>の<ruby>三<rt>みっ</rt></ruby>つのシナリオを<ruby>作<rt>つく</rt></ruby>りました。<ruby>見<rt>み</rt></ruby>てください。<br>*(Anh Yamada, em làm 3 kịch bản ước tính. Xem giúp em.)* |
| Đại | 100ユーザー<ruby>段階<rt>だんかい</rt></ruby>：プロンプトキャッシング<ruby>適用<rt>てきよう</rt></ruby><ruby>前<rt>まえ</rt></ruby>$100/<ruby>月<rt>つき</rt></ruby>、<ruby>適用<rt>てきよう</rt></ruby><ruby>後<rt>ご</rt></ruby>$55/<ruby>月<rt>つき</rt></ruby>。<br>*(100 user: trước cache $100, sau cache $55.)* |
| Đại | 1000ユーザー<ruby>段階<rt>だんかい</rt></ruby>：$550/<ruby>月<rt>つき</rt></ruby>。Postgres を Supabase Pro に upgrade。<br>*(1000 user: $550. Upgrade Supabase Pro.)* |
| Đại | 1<ruby>万<rt>まん</rt></ruby>ユーザー<ruby>段階<rt>だんかい</rt></ruby>：$4500/<ruby>月<rt>つき</rt></ruby>。Render から AWS ECS に<ruby>移行<rt>いこう</rt></ruby><ruby>検討<rt>けんとう</rt></ruby>。<br>*(10k user: $4500. Cân nhắc chuyển từ Render sang AWS ECS.)* |
| Yamada | いいね。MRR <ruby>目標<rt>もくひょう</rt></ruby>は？<br>*(Tốt. Mục tiêu MRR?)* |
| Đại | $5/ユーザー/<ruby>月<rt>つき</rt></ruby>です。<ruby>粗利率<rt>あらりりつ</rt></ruby>80%が<ruby>目標<rt>もくひょう</rt></ruby>です。<br>*(5 USD/user/tháng. Mục tiêu biên gộp 80%.)* |
| Yamada | <ruby>無料<rt>むりょう</rt></ruby>プランは？<br>*(Free plan?)* |
| Đại | はい、5<ruby>問<rt>もん</rt></ruby>/<ruby>日<rt>にち</rt></ruby>と AI チャット3<ruby>回<rt>かい</rt></ruby>/<ruby>日<rt>にち</rt></ruby>までは<ruby>無料<rt>むりょう</rt></ruby>。それ<ruby>以上<rt>いじょう</rt></ruby>は Pro プラン。<br>*(Vâng. Tới 5 câu/ngày + 3 chat AI/ngày miễn phí. Trên thì gói Pro.)* |
| Yamada | freemium モデル<ruby>典型<rt>てんけい</rt></ruby>だな。OK。<br>*(Mô hình freemium chuẩn. OK.)* |

---

## Tình huống 11 — Phòng khách Toyonaka · 22:00 22/12, Mai hỏi tiến độ

*Đại ngồi sofa với Hana ngủ trên ngực. Mai pha trà yuzu.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh xong tech doc chưa? Trông anh thấm mệt. |
| Đại | (VN) 28/30 trang rồi. Hôm nay xong chương cost projection — thầy Inoue dạy anh dùng prompt caching, chi phí giảm gần một nửa. |
| Mai | (VN) Prompt caching là gì? |
| Đại | (VN) Tưởng tượng anh đưa Claude API một đoạn hướng dẫn dài, dùng đi dùng lại. Anh đánh dấu đoạn đó "cache" — lần sau API chỉ tính giá 1/10. Y như mua sỉ. |
| Mai | (VN) À hiểu rồi! Vậy anh nên xếp những phần nào hay lặp lại vào cache? |
| Đại | (VN) System prompt mô tả Hizashi là gì, RAG context kiến thức ngữ pháp N5-N1, format JSON trả về. Bốn người dùng đầu họ đều dùng chung. |
| Mai | (VN) Hay quá. Tự nhiên em thấy app sắp xuất hiện thật. |
| Đại | (VN) Tháng 1 anh bắt đầu code. Tháng 2 có version đầu cho em test. |
| Mai | (VN, cười) Em chờ. Mà nay anh nhớ ngủ trước 24h nhé. Hana 4 tháng đang dậy nhiều cữ. |

---

## Tình huống 12 — Bàn làm việc · 23:30 23/12, đêm hoàn thiện 30 trang + email Inoue xin review

| Vai | Lời thoại |
|---|---|
| Đại | (email Inoue)<br>件名：Hizashi <ruby>技術<rt>ぎじゅつ</rt></ruby>ドキュメント v1.0 レビューのお<ruby>願<rt>ねが</rt></ruby>い<br><br><ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby><br><br>お<ruby>疲<rt>つか</rt></ruby>れさまです。<br><br>Hizashi <ruby>技術<rt>ぎじゅつ</rt></ruby>ドキュメント v1.0 が<ruby>完成<rt>かんせい</rt></ruby>しました。<ruby>全<rt>ぜん</rt></ruby>30ページ、10<ruby>章構成<rt>しょうこうせい</rt></ruby>です。<ruby>山田<rt>やまだ</rt></ruby>さんのレビューも<ruby>反映<rt>はんえい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br><br><ruby>添付<rt>てんぷ</rt></ruby>のPDFをご<ruby>確認<rt>かくにん</rt></ruby>いただき、<ruby>来年<rt>らいねん</rt></ruby>1<ruby>月<rt>がつ</rt></ruby>の<ruby>実装<rt>じっそう</rt></ruby><ruby>開始<rt>かいし</rt></ruby><ruby>前<rt>まえ</rt></ruby>にフィードバックをいただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<br><br>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br><br>グエン・ヴァン・ダイ |
| Đại | (LINE Mai, VN) Em ơi. Anh vừa gửi tech doc 30 trang cho thầy. Đi ngủ đây. |
| Mai | (LINE VN) Chúc mừng anh! Mai em làm phở cho. Anh ngủ ngon. |
| Đại | (LINE VN) Yêu em. |

---

## Đọng lại chương 10

Một tháng viết tech doc — Đại học được nguyên bộ ngôn ngữ "engineer Nhật trình bày kỹ thuật". Khi trình bày diagram: **「説明させてください。〜層構造です」** chia mạch lạc. Khi hỏi convention chưa rõ: **「〜って、普通どう設定しますか」** + **「〜というのは、〜ということでしょうか」**. Khi báo cáo seminar: **「今週の成果は三つです」** → **「来週は〜に取り組みます」** → **「課題として〜があります。アドバイスをいただけたら嬉しいです」**. Khi nhờ review: **「レビューしていただけますか」**, khi nhận phản hồi: **「納得です。修正します」**. Email keigo lên 教授 theo cấu trúc cố định: 件名 → お疲れさまです → 本文 → ご都合のよろしい日を教えていただけますと幸いです. Cuộc gọi 1on1 với Inoue dạy 1 bài học kỹ thuật thật: prompt caching giảm 10 lần chi phí Claude API — vừa học JP vừa học CS.

> Từ vựng & mẫu câu chương này: 技術ドキュメント・アーキテクチャ図・〜層構造・データレイヤー・ストリーミング・タイムアウト・指数バックオフ・ジッター・リトライ方針・ER図・soft delete・GDPR対応・プロンプトキャッシング・トークン消費量・コスト試算・MRR・粗利率・freemium・Idempotency-Key・SSE・進捗報告・〜していただけませんでしょうか・ご都合のよろしい日・課題として・アドバイスをいただけたら・承知しました

## Bí quyết chương

- **エンジニアの<ruby>説明<rt>せつめい</rt></ruby>3段法**: <ruby>結論<rt>けつろん</rt></ruby> → 構造分解 → 具体数値. Đại dùng nguyên pattern này trình bày architecture (4 layer → flow → timeout 60s).
- **Hỏi lại trong tech meeting không yếu**: **「〜というのは？」** là dấu hiệu engineer cẩn thận. Yamada dạy jitter chính vì Đại hỏi lại exponential backoff.
- **Seminar weekly report 4 phần**: <ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby> → <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby> → <ruby>課題<rt>かだい</rt></ruby> → <ruby>質問<rt>しつもん</rt></ruby>. Cấu trúc này dùng được cả đời.
- **Email xin 1on1**: bắt buộc 3 候補 (3 lựa chọn ngày), không hỏi 1 ngày duy nhất — đó là phép lịch sự tối thiểu với sensei/sếp Nhật.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 下書き | したがき | HẠ THƯ | Bản nháp |
| 章 | しょう | CHƯƠNG | Chương |
| 各章 | かくしょう | CÁC CHƯƠNG | Mỗi chương |
| 説明 | せつめい | THUYẾT MINH | Giải thích |
| 層構造 | そうこうぞう | TẦNG CẤU TẠO | Cấu trúc theo lớp |
| 将来 | しょうらい | TƯƠNG LAI | Tương lai |
| 型検証 | かたけんしょう | HÌNH KIỂM CHỨNG | Kiểm tra type |
| 保存 | ほぞん | BẢO TỒN | Lưu trữ |
| 要求 | ようきゅう | YÊU CẦU | Yêu cầu |
| 呼び分ける | よびわける | HÔ PHÂN | Gọi tách biệt |
| 返す | かえす | PHẢN | Trả về |
| クリア | — | — | Rõ |
| 指数 | しすう | CHỈ SỐ | Hàm mũ |
| 倍 | ばい | BỘI | Gấp đôi |
| ジッター | — | — | Jitter |
| 同時 | どうじ | ĐỒNG THỜI | Cùng lúc |
| 全 | ぜん | TOÀN | Toàn bộ |
| 列 | れつ | LIỆT | Cột (DB) |
| 必要 | ひつよう | TẤT YẾU | Cần thiết |
| 課題 | かだい | KHOÁ ĐỀ | Vướng mắc, đề tài |
| 不安 | ふあん | BẤT AN | Lo lắng |
| 見積もり | みつもり | KIẾN TÍCH | Ước tính |
| 件名 | けんめい | KIỆN DANH | Tiêu đề mail |
| 日程 | にってい | NHẬT TRÌNH | Lịch |
| 終日 | しゅうじつ | CHUNG NHẬT | Cả ngày |
| 入力 | にゅうりょく | NHẬP LỰC | Đầu vào |
| 出力 | しゅつりょく | XUẤT LỰC | Đầu ra |
| 公式 | こうしき | CÔNG THỨC | Chính thức |
| ヒット | — | — | Hit |
| 落とす | おとす | LẠC | Giảm xuống |
| 組み込む | くみこむ | TỔ NHẬP | Lồng vào |
| 判断材料 | はんだんざいりょう | PHÁN ĐOÁN TÀI LIỆU | Cơ sở phán đoán |
| 完成 | かんせい | HOÀN THÀNH | Hoàn thành |
| 表示 | ひょうじ | BIỂU THỊ | Hiển thị |
| 読者 | どくしゃ | ĐỘC GIẢ | Người đọc |
| 漢字 | かんじ | HÁN TỰ | Kanji |
| 目線 | めせん | MỤC TUYẾN | Góc nhìn |
| 入れる | いれる | NHẬP | Thêm vào |
| 採点 | さいてん | THÁI ĐIỂM | Chấm điểm |
| 抜ける | ぬける | BẠT | Sót, thiếu |
| シナリオ | — | — | Kịch bản |
| 適用前 | てきようまえ | THÍCH DỤNG TIỀN | Trước khi áp dụng |
| 適用後 | てきようご | THÍCH DỤNG HẬU | Sau khi áp dụng |
| 移行 | いこう | DI HÀNH | Chuyển sang |
| 粗利率 | あらりりつ | THÔ LỢI SUẤT | Biên lợi gộp |
| 無料プラン | むりょうプラン | VÔ LIỆU — | Gói miễn phí |
| 典型 | てんけい | ĐIỂN HÌNH | Điển hình |
| 反映 | はんえい | PHẢN ÁNH | Phản ánh |
| 添付 | てんぷ | THIẾP PHÓ | Đính kèm |
| 開始 | かいし | KHAI THỦY | Bắt đầu |
