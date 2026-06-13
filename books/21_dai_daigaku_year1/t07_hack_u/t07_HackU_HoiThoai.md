# Sách sinh viên Đại học Osaka · T7. Hack U Osaka — hackathon đầu tiên (ハッカソン初参加)

> **Mục tiêu nhân vật:** Đại (21t, ĐH Osaka CS năm 1, 9-10/9/2026, N2) học các mẫu hội thoại tiếng Nhật trong hackathon: (1) check-in tại Yahoo office — keigo lễ tân, (2) brainstorm + bàn architecture trong team 3 người, (3) chat LINE crisis lúc 2:00 sáng, (4) pitch 5 phút trước giám khảo Yahoo/AWS/GitHub Japan, (5) Q&A keigo với judge sau pitch, (6) phát biểu nhận giải khuyến khích, (7) chat LINE Mai khoe giải.

---

## Bối cảnh

Cuối tuần 9-10/9/2026, Đại tham gia hackathon đầu đời — **Hack U Osaka** do Yahoo Japan tổ chức tại Yahoo Osaka office Umeda. Team **OsakaCS3** gồm Đại (backend FastAPI), Yamato (thuật toán), Aiko (UI/UX React). 50 team, ~150 SV từ Osaka U, Kobe U, Ritsumeikan, Osaka Inst Tech. Theme "<ruby>学生生活<rt>がくせいせいかつ</rt></ruby>を<ruby>便利<rt>べんり</rt></ruby>に". Team chọn ý tưởng **教科書MarketPlace** — sàn bán lại sách giáo khoa giới hạn ĐH + AI gợi giá. Chương này tập trung mẫu câu **keigo trong môi trường công ty công nghệ Nhật**.

---

## Tình huống 1 — Yahoo Osaka office sảnh tầng 1 · 8:30, check-in lễ tân

| Vai | Lời thoại |
|---|---|
| Đại | (đến quầy) <ruby>失礼<rt>しつれい</rt></ruby>します。Hack U Osaka 2026の<ruby>参加者<rt>さんかしゃ</rt></ruby>です。<br>*(Xin phép. Em là người tham gia Hack U Osaka 2026.)* |
| Lễ tân | お<ruby>名前<rt>なまえ</rt></ruby>とチーム<ruby>名<rt>めい</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できますか。<br>*(Cho phép xin tên và tên team ạ.)* |
| Đại | グエン・ヴァン・ダイです。チームは「OsakaCS3」です。<br>*(Em là Nguyễn Thanh Đại. Team OsakaCS3 ạ.)* |
| Lễ tân | はい、<ruby>受付<rt>うけつけ</rt></ruby>させていただきました。こちらがネームタグでございます。16<ruby>階<rt>かい</rt></ruby>のメインホールへお<ruby>進<rt>すす</rt></ruby>みください。<br>*(Vâng, tôi đã tiếp nhận ạ. Đây là thẻ tên. Mời anh lên hội trường chính tầng 16.)* |
| Đại | ありがとうございます。<br>*(Cảm ơn chị ạ.)* |
| Lễ tân | エレベーターは<ruby>右側<rt>みぎがわ</rt></ruby>にございます。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Thang máy ở bên phải ạ. Chúc anh thi tốt.)* |
| Đại | はい、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, em xin phép.)* |

---

## Tình huống 2 — Tầng 16 sảnh chờ · 8:55, ráp team

| Vai | Lời thoại |
|---|---|
| Yamato | おう、ダイ! <ruby>遅<rt>おそ</rt></ruby>かったな。<br>*(Ờ, Đại! Đến muộn ghê.)* |
| Đại | <ruby>梅田駅<rt>うめだえき</rt></ruby>で<ruby>迷子<rt>まいご</rt></ruby>になった。 Yahoo office<ruby>探<rt>さが</rt></ruby>すの<ruby>大変<rt>たいへん</rt></ruby>だった。<br>*(Tớ lạc ở ga Umeda. Tìm Yahoo office vất vả lắm.)* |
| Aiko | (đến với iPad + balo) <ruby>私<rt>わたし</rt></ruby>も<ruby>今<rt>いま</rt></ruby><ruby>着<rt>つ</rt></ruby>いた! Figma と iPad <ruby>持参<rt>じさん</rt></ruby>!<br>*(Mình cũng vừa đến! Mang theo Figma + iPad!)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>はノート PC + <ruby>外部<rt>がいぶ</rt></ruby>モニタ<ruby>持<rt>も</rt></ruby>ってきた。32<ruby>時間<rt>じかん</rt></ruby><ruby>勝負<rt>しょうぶ</rt></ruby>だぞ!<br>*(Tớ mang laptop + monitor ngoài. Trận đấu 32 tiếng đó!)* |
| Đại | アーキテクチャ<ruby>設計<rt>せっけい</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>するよ。FastAPI + PostgreSQL でいい?<br>*(Thiết kế architecture tớ phụ trách. FastAPI + PostgreSQL OK chứ?)* |
| Aiko | <ruby>賛成<rt>さんせい</rt></ruby>。フロントは React + Tailwind。デザインシステムは1<ruby>時間<rt>じかん</rt></ruby>でできる。<br>*(Tán thành. Front-end React + Tailwind. Design system 1 tiếng xong.)* |
| Yamato | アルゴリズム<ruby>担当<rt>たんとう</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>。AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>のロジックを<ruby>設計<rt>せっけい</rt></ruby>する。<br>*(Thuật toán tớ phụ trách. Thiết kế logic AI gợi giá.)* |

---

## Tình huống 3 — Hội trường tầng 16 · 9:00, khai mạc MC Yahoo phát biểu

| Vai | Lời thoại |
|---|---|
| MC | みなさま、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はHack U Osaka 2026にご<ruby>参加<rt>さんか</rt></ruby>いただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Kính chào quý vị. Hôm nay xin cảm ơn quý vị đã tham gia Hack U Osaka 2026.)* |
| MC | テーマは「<ruby>学生生活<rt>がくせいせいかつ</rt></ruby>を<ruby>便利<rt>べんり</rt></ruby>に」でございます。<ruby>制限時間<rt>せいげんじかん</rt></ruby>は32<ruby>時間<rt>じかん</rt></ruby>、<ruby>明日<rt>あした</rt></ruby>17<ruby>時<rt>じ</rt></ruby><ruby>締切<rt>しめきり</rt></ruby>です。<br>*(Chủ đề là "Làm cuộc sống sinh viên tiện lợi hơn". Thời gian 32 tiếng, hạn nộp 17h ngày mai.)* |
| MC | <ruby>最優秀賞<rt>さいゆうしゅうしょう</rt></ruby>は¥300,000とYahoo<ruby>採用面接<rt>さいようめんせつ</rt></ruby><ruby>確約<rt>かくやく</rt></ruby>でございます。<br>*(Giải nhất ¥300,000 và cam kết phỏng vấn tuyển dụng Yahoo.)* |
| Đại | (whisper Yamato) Yahoo<ruby>面接<rt>めんせつ</rt></ruby><ruby>確約<rt>かくやく</rt></ruby>って<ruby>大<rt>おお</rt></ruby>きいな!<br>*(Cam kết phỏng vấn Yahoo to ghê!)* |
| Yamato | (whisper) <ruby>厳<rt>きび</rt></ruby>しい<ruby>戦<rt>たたか</rt></ruby>いだ。50チームが<ruby>競合<rt>きょうごう</rt></ruby>するんだから。<br>*(Cuộc chiến khốc liệt. 50 team cạnh tranh nhau.)* |
| MC | それでは、<ruby>9時<rt>くじ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>から<ruby>開発開始<rt>かいはつかいし</rt></ruby>です。ご<ruby>健闘<rt>けんとう</rt></ruby>をお<ruby>祈<rt>いの</rt></ruby>りいたします。<br>*(Vậy thì, 9h30 bắt đầu phát triển. Chúc quý vị thi tốt.)* |

---

## Tình huống 4 — Phòng team OsakaCS3 (booth 12) · 9:30, brainstorm idea

| Vai | Lời thoại |
|---|---|
| Aiko | (whiteboard) アイディア3つ<ruby>出<rt>だ</rt></ruby>す。<br>*(Đưa 3 ý tưởng.)* |
| Aiko | 1: ノート<ruby>共有<rt>きょうゆう</rt></ruby>アプリ。2: <ruby>食堂<rt>しょくどう</rt></ruby><ruby>混雑<rt>こんざつ</rt></ruby><ruby>予測<rt>よそく</rt></ruby>。3: <ruby>教科書<rt>きょうかしょ</rt></ruby><ruby>転売<rt>てんばい</rt></ruby> + AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>。<br>*(1: chia sẻ ghi chép. 2: dự đoán mức đông căng tin. 3: bán lại sách + AI gợi giá.)* |
| Yamato | 3<ruby>番<rt>ばん</rt></ruby><ruby>推<rt>お</rt></ruby>す。<ruby>需要<rt>じゅよう</rt></ruby>もあるし、AIも<ruby>魅力的<rt>みりょくてき</rt></ruby>。<br>*(Vote số 3. Có nhu cầu, AI lại hấp dẫn.)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>は<ruby>今年<rt>ことし</rt></ruby><ruby>教科書<rt>きょうかしょ</rt></ruby>に¥40,000<ruby>使<rt>つか</rt></ruby>った。<ruby>来年<rt>らいねん</rt></ruby>はもう<ruby>不要<rt>ふよう</rt></ruby>。<br>*(Tán thành. Năm nay tớ tiêu ¥40,000 cho sách. Sang năm hết cần.)* |
| Aiko | <ruby>名前<rt>なまえ</rt></ruby>は「<ruby>教科書<rt>きょうかしょ</rt></ruby>MarketPlace」でどう?<br>*(Tên "Kyokasho MarketPlace" thế nào?)* |
| Yamato | シンプルで<ruby>良<rt>よ</rt></ruby>い。<ruby>差別化<rt>さべつか</rt></ruby><ruby>要因<rt>よういん</rt></ruby>は AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby> + <ruby>大学<rt>だいがく</rt></ruby><ruby>限定<rt>げんてい</rt></ruby> (メルカリと<ruby>違<rt>ちが</rt></ruby>って)。<br>*(Đơn giản, tốt. Điểm khác biệt: AI gợi giá + chỉ trong trường, khác Mercari.)* |
| Đại | OK、<ruby>決定<rt>けってい</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>はバックエンドを<ruby>始<rt>はじ</rt></ruby>める。<br>*(OK, quyết. Tớ bắt đầu backend.)* |

---

## Tình huống 5 — Booth 12 · 11:30, Đại bàn architecture với Yamato

*Đại đứng cạnh whiteboard, vẽ kiến trúc cho Yamato.*

| Vai | Lời thoại |
|---|---|
| Đại | アーキテクチャはこんな<ruby>感<rt>かん</rt></ruby>じ：Frontend React、Backend FastAPI、DB PostgreSQL、AI は GPT-3.5 API、デプロイは Heroku <ruby>無料<rt>むりょう</rt></ruby>プラン。<br>*(Architecture thế này: Frontend React, Backend FastAPI, DB PostgreSQL, AI dùng GPT-3.5 API, deploy Heroku free.)* |
| Yamato | <ruby>認証<rt>にんしょう</rt></ruby>は?<br>*(Authentication thì sao?)* |
| Đại | GitHub OAuth で<ruby>大学<rt>だいがく</rt></ruby>メールのみ。@ecs.osaka-u.ac.jp とかをフィルタする。<br>*(GitHub OAuth, lọc chỉ email đại học, ví dụ @ecs.osaka-u.ac.jp.)* |
| Yamato | <ruby>賢<rt>かしこ</rt></ruby>い。AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>のロジック:<br>*(Khéo đấy. Logic AI gợi giá:)* |
| Yamato | <ruby>推奨価格<rt>すいしょうかかく</rt></ruby> = <ruby>過去<rt>かこ</rt></ruby>30<ruby>日<rt>にち</rt></ruby><ruby>市場平均<rt>しじょうへいきん</rt></ruby> × <ruby>状態係数<rt>じょうたいけいすう</rt></ruby> + <ruby>新着<rt>しんちゃく</rt></ruby>ボーナス。<br>*(Giá gợi = giá trung bình 30 ngày × hệ số tình trạng + bonus mới đăng.)* |
| Yamato | <ruby>状態<rt>じょうたい</rt></ruby>は5<ruby>段階<rt>だんかい</rt></ruby>:<ruby>新品同様<rt>しんぴんどうよう</rt></ruby> (1.0)、<ruby>良<rt>よ</rt></ruby>い (0.85)、<ruby>普通<rt>ふつう</rt></ruby> (0.65)、<ruby>悪<rt>わる</rt></ruby>い (0.45)、ボロボロ (0.25)。<br>*(Tình trạng 5 cấp với hệ số.)* |
| Đại | エクセレント。<ruby>俺<rt>おれ</rt></ruby>は POST /books と GET /books/{id}/price-suggest を<ruby>実装<rt>じっそう</rt></ruby>する。<br>*(Tuyệt. Tớ cài endpoint POST /books với GET /books/{id}/price-suggest.)* |

---

## Tình huống 6 — Booth 12 · 13:00, Aiko show Figma prototype

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>見<rt>み</rt></ruby>てこれ! 3<ruby>画面<rt>がめん</rt></ruby>:<ruby>一覧<rt>いちらん</rt></ruby>、<ruby>詳細<rt>しょうさい</rt></ruby>、<ruby>出品<rt>しゅっぴん</rt></ruby>フォーム。<br>*(Xem này! 3 màn: danh sách, chi tiết, form đăng bán.)* |
| Đại | おお、デザインが<ruby>洗練<rt>せんれん</rt></ruby>されている。AIサジェストの<ruby>表示<rt>ひょうじ</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>は?<br>*(Ồ, thiết kế tinh tế. Hiển thị AI suggest thế nào?)* |
| Aiko | <ruby>出品<rt>しゅっぴん</rt></ruby>フォームで「AIによる<ruby>推奨価格<rt>すいしょうかかく</rt></ruby>: ¥2,800」と<ruby>表示<rt>ひょうじ</rt></ruby>して、ワンクリックで<ruby>適用<rt>てきよう</rt></ruby>できるようにする。<br>*(Trong form đăng bán hiển thị "Giá AI gợi: ¥2,800", một click để áp dụng.)* |
| Yamato | <ruby>素晴<rt>すば</rt></ruby>らしいUX。<ruby>競合<rt>きょうごう</rt></ruby>のメルカリには<ruby>真似<rt>まね</rt></ruby>できない<ruby>差別化<rt>さべつか</rt></ruby>。<br>*(UX tuyệt. Mercari không bắt chước được.)* |
| Aiko | カラーパレットは Yahoo の<ruby>赤<rt>あか</rt></ruby>と<ruby>白<rt>しろ</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせてみた。<ruby>主催<rt>しゅさい</rt></ruby><ruby>側<rt>がわ</rt></ruby>へのリスペクト。<br>*(Bảng màu mình lấy đỏ-trắng của Yahoo. Tôn trọng nhà tổ chức.)* |
| Đại | <ruby>戦略的<rt>せんりゃくてき</rt></ruby>!<br>*(Chiến lược ghê!)* |

---

## Tình huống 7 — Booth 12 · 2:00 AM chủ nhật, crisis DB index (LINE)

*Đại deploy lên Heroku, gọi list books mất 3 giây. Aiko ngủ gục bên cạnh, Yamato đi vệ sinh. Đại nhắn LINE riêng Yamato.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE) ヤマト! `SELECT * FROM books WHERE seller_id = X` が3<ruby>秒<rt>びょう</rt></ruby>かかる!<ruby>遅<rt>おそ</rt></ruby>すぎる!<br>*(Yamato! Truy vấn mất 3 giây! Chậm quá!)* |
| Yamato | (LINE) インデックスがないんじゃない? `\d books` で<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(Thiếu index à? Check `\d books` đi.)* |
| Đại | (LINE) <ruby>確認<rt>かくにん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>… primary key の id しかインデックスがない。seller_id にはない。<br>*(Đang check... chỉ có index trên primary key. Không có trên seller_id.)* |
| Yamato | (LINE) `CREATE INDEX idx_books_seller_id ON books(seller_id);` を<ruby>実行<rt>じっこう</rt></ruby>。<br>*(Chạy lệnh này đi.)* |
| Đại | (LINE) <ruby>実行<rt>じっこう</rt></ruby><ruby>済<rt>ず</rt></ruby>。<ruby>再<rt>さい</rt></ruby>クエリ → 50ms。✓<br>*(Đã chạy. Truy vấn lại → 50ms. ✓)* |
| Đại | (LINE) <ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<ruby>勉強<rt>べんきょう</rt></ruby>になった。<br>*(Cảm ơn thật. Học được bài hay.)* |
| Yamato | (LINE) DB の<ruby>授業<rt>じゅぎょう</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>必修<rt>ひっしゅう</rt></ruby>だ。インデックスは<ruby>基本<rt>きほん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>。<br>*(Lớp DB sang năm là bắt buộc. Index là cơ bản nhất.)* |
| Đại | (LINE) <ruby>戻<rt>もど</rt></ruby>ってきたら<ruby>缶<rt>かん</rt></ruby>コーヒーおごる。<br>*(Quay lại tớ mời cà phê lon.)* |

---

## Tình huống 8 — Booth 12 · 6:00 AM chủ nhật, Aiko thức dậy hỏi tiến độ

| Vai | Lời thoại |
|---|---|
| Aiko | (vươn vai) おはよう…<ruby>進捗<rt>しんちょく</rt></ruby>どう?<br>*(Chào... tiến độ sao rồi?)* |
| Đại | バックエンドは8<ruby>割<rt>わり</rt></ruby><ruby>完成<rt>かんせい</rt></ruby>。DBインデックスのバグを<ruby>夜中<rt>よなか</rt></ruby>に<ruby>修正<rt>しゅうせい</rt></ruby>した。<br>*(Backend xong 80%. Đêm tớ sửa bug DB index.)* |
| Yamato | (đi qua) AIエンドポイントは<ruby>完成<rt>かんせい</rt></ruby>。OpenAI APIに request <ruby>送<rt>おく</rt></ruby>って、JSON で<ruby>推奨価格<rt>すいしょうかかく</rt></ruby>と<ruby>説明文<rt>せつめいぶん</rt></ruby>が<ruby>返<rt>かえ</rt></ruby>ってくる。<br>*(AI endpoint xong. Gửi request đến OpenAI API, JSON trả giá gợi + giải thích.)* |
| Aiko | フロントエンドも7<ruby>割<rt>わり</rt></ruby>。あと2<ruby>時間<rt>じかん</rt></ruby>で<ruby>完成<rt>かんせい</rt></ruby>させる。<br>*(Frontend cũng 70%. 2 tiếng nữa xong.)* |
| Đại | <ruby>残<rt>のこ</rt></ruby>り11<ruby>時間<rt>じかん</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>ろう! <ruby>俺<rt>おれ</rt></ruby>はデモ<ruby>動画<rt>どうが</rt></ruby>の<ruby>台本<rt>だいほん</rt></ruby>を<ruby>書<rt>か</rt></ruby>く。<br>*(Còn 11 tiếng, cố lên! Tớ viết kịch bản video demo.)* |
| Aiko | <ruby>動画<rt>どうが</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が iMovie で<ruby>編集<rt>へんしゅう</rt></ruby>する。5<ruby>分<rt>ふん</rt></ruby><ruby>以内<rt>いない</rt></ruby>で。<br>*(Video mình edit bằng iMovie. Dưới 5 phút.)* |

---

## Tình huống 9 — Booth 12 · 14:00 chủ nhật, deploy & submit

| Vai | Lời thoại |
|---|---|
| Đại | (terminal) `git push origin main` → Heroku tự<ruby>動<rt>どう</rt></ruby>デプロイ<ruby>開始<rt>かいし</rt></ruby>!<br>*(Heroku tự deploy!)* |
| Đại | (theo dõi log) ビルド<ruby>成功<rt>せいこう</rt></ruby>… サーバー<ruby>起動<rt>きどう</rt></ruby>… ✓ kyokasho-mp.herokuapp.com で<ruby>動<rt>うご</rt></ruby>く!<br>*(Build success... server start... chạy được!)* |
| Yamato | (kiểm tra) AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>テスト: ISBN 978-4-7973-9847-3、<ruby>状態<rt>じょうたい</rt></ruby>4 → ¥2,800<ruby>推奨<rt>すいしょう</rt></ruby>。<ruby>新品<rt>しんぴん</rt></ruby>¥3,800、<ruby>状態係数<rt>じょうたいけいすう</rt></ruby>0.85だから<ruby>計算合<rt>けいさんあ</rt></ruby>ってる!<br>*(Test AI: ¥2,800 đúng công thức!)* |
| Aiko | <ruby>動画<rt>どうが</rt></ruby>も<ruby>完成<rt>かんせい</rt></ruby>! 4<ruby>分<rt>ぷん</rt></ruby>30<ruby>秒<rt>びょう</rt></ruby>!<br>*(Video xong! 4 phút 30 giây!)* |
| Đại | (submit form Yahoo) URL、GitHubリポジトリ、デモ<ruby>動画<rt>どうが</rt></ruby>、<ruby>提出<rt>ていしゅつ</rt></ruby>!<br>*(URL, repo GitHub, video — nộp!)* |
| Yamato | <ruby>提出完了<rt>ていしゅつかんりょう</rt></ruby>! <ruby>残<rt>のこ</rt></ruby>り3<ruby>時間<rt>じかん</rt></ruby>でピッチ<ruby>練習<rt>れんしゅう</rt></ruby>!<br>*(Nộp xong! Còn 3 tiếng luyện pitch!)* |

---

## Tình huống 10 — Hội trường tầng 16 · 15:00, pitch 5 phút trước judges

*3 giám khảo: Yahoo engineer Yoshida-san, AWS evangelist Sato-san, GitHub Japan PM Tanaka-san.*

| Vai | Lời thoại |
|---|---|
| MC | <ruby>次<rt>つぎ</rt></ruby>、チーム「OsakaCS3」、5<ruby>分<rt>ふん</rt></ruby>のピッチをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tiếp theo, team OsakaCS3, pitch 5 phút.)* |
| Đại | (đứng giữa) みなさん、こんにちは。チーム「OsakaCS3」、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学部<rt>じょうほうかがくぶ</rt></ruby>1<ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイです。<br>*(Xin chào mọi người. Team OsakaCS3, em là Nguyễn Thanh Đại năm 1 khoa CNTT ĐH Osaka.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>は「<ruby>教科書<rt>きょうかしょ</rt></ruby>MarketPlace」を<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます。<br>*(Hôm nay xin được trình bày "Kyokasho MarketPlace".)* |
| Đại | <ruby>問題<rt>もんだい</rt></ruby>: <ruby>大学生<rt>だいがくせい</rt></ruby>は<ruby>毎年<rt>まいとし</rt></ruby>¥40,000を<ruby>教科書<rt>きょうかしょ</rt></ruby>に<ruby>費<rt>つい</rt></ruby>やすが、<ruby>翌年<rt>よくねん</rt></ruby>には<ruby>不要<rt>ふよう</rt></ruby>になる。<ruby>処分<rt>しょぶん</rt></ruby>に<ruby>困<rt>こま</rt></ruby>る。<br>*(Vấn đề: SV mỗi năm tốn ¥40,000 cho sách, năm sau không cần nữa, không biết xử lý sao.)* |
| Đại | <ruby>解決策<rt>かいけつさく</rt></ruby>: <ruby>大学<rt>だいがく</rt></ruby><ruby>限定<rt>げんてい</rt></ruby>の<ruby>転売<rt>てんばい</rt></ruby>プラットフォーム + AIによる<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>。<br>*(Giải pháp: nền tảng bán lại trong trường + AI gợi giá.)* |
| Đại | (live demo) アルゴリズム<ruby>入門<rt>にゅうもん</rt></ruby>を<ruby>検索<rt>けんさく</rt></ruby> → 5<ruby>名<rt>めい</rt></ruby><ruby>出品中<rt>しゅっぴんちゅう</rt></ruby> → AI<ruby>推奨<rt>すいしょう</rt></ruby>¥2,800 → ワンクリック<ruby>購入<rt>こうにゅう</rt></ruby>。<br>*(Demo trực tiếp: tìm sách → 5 người bán → AI gợi ¥2,800 → một click mua.)* |
| Yamato | <ruby>技術的<rt>ぎじゅつてき</rt></ruby><ruby>差別化<rt>さべつか</rt></ruby>は2<ruby>点<rt>てん</rt></ruby>: AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby> + <ruby>大学<rt>だいがく</rt></ruby><ruby>限定<rt>げんてい</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>。メルカリには<ruby>真似<rt>まね</rt></ruby>できません。<br>*(Khác biệt kỹ thuật 2 điểm: AI gợi giá + xác thực giới hạn trường. Mercari không bắt chước được.)* |
| Aiko | UIはモバイルファースト、ユーザーは<ruby>3<rt>さん</rt></ruby>クリックで<ruby>取引完了<rt>とりひきかんりょう</rt></ruby>。<br>*(UI mobile-first, user 3 click hoàn tất giao dịch.)* |
| Đại | ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました。<br>*(Cảm ơn quý vị đã lắng nghe.)* |

---

## Tình huống 11 — Hội trường · 15:08, Q&A với judges

| Vai | Lời thoại |
|---|---|
| Yoshida (Yahoo) | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>発表<rt>はっぴょう</rt></ruby>でした。<ruby>質問<rt>しつもん</rt></ruby>があります。<br>*(Phát biểu tuyệt vời. Tôi có câu hỏi.)* |
| Yoshida | AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>のデータが<ruby>少<rt>すく</rt></ruby>ない<ruby>初期段階<rt>しょきだんかい</rt></ruby>、どう<ruby>対処<rt>たいしょ</rt></ruby>しますか?<br>*(Giai đoạn đầu ít dữ liệu thì AI gợi giá xử lý sao?)* |
| Yamato | ご<ruby>指摘<rt>してき</rt></ruby>ありがとうございます。<ruby>初期<rt>しょき</rt></ruby>は<ruby>定価<rt>ていか</rt></ruby>の50%を<ruby>基準<rt>きじゅん</rt></ruby>とし、<ruby>取引<rt>とりひき</rt></ruby><ruby>件数<rt>けんすう</rt></ruby>が10<ruby>件<rt>けん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えたら<ruby>実績<rt>じっせき</rt></ruby>データに<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えます。<br>*(Cảm ơn câu hỏi. Đầu lấy 50% giá gốc làm chuẩn, sau 10 giao dịch chuyển sang dữ liệu thực.)* |
| Sato (AWS) | <ruby>商業化<rt>しょうぎょうか</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>はいかがでしょうか。<br>*(Khả năng thương mại hoá thế nào?)* |
| Đại | <ruby>取引手数料<rt>とりひきてすうりょう</rt></ruby>5%を<ruby>想定<rt>そうてい</rt></ruby>しています。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>規模<rt>きぼ</rt></ruby>(<ruby>2.5<rt>にてんご</rt></ruby><ruby>万人<rt>まんにん</rt></ruby>)で<ruby>年間<rt>ねんかん</rt></ruby>¥10<ruby>万<rt>まん</rt></ruby>。<ruby>全国<rt>ぜんこく</rt></ruby><ruby>展開<rt>てんかい</rt></ruby>なら<ruby>大<rt>おお</rt></ruby>きい<ruby>市場<rt>しじょう</rt></ruby>。<br>*(Phí giao dịch 5%. Quy mô ĐH Osaka (25,000 SV) năm ¥100k. Mở rộng toàn quốc thì thị trường lớn.)* |
| Tanaka (GitHub) | コードは GitHub に<ruby>公開<rt>こうかい</rt></ruby>されていますか?<br>*(Code có public trên GitHub không?)* |
| Aiko | はい、osakacs3/kyokasho-marketplace で<ruby>公開<rt>こうかい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。MIT ライセンスです。<br>*(Vâng, đã public ở osakacs3/kyokasho-marketplace. MIT license.)* |
| Yoshida | ありがとうございました。<br>*(Cảm ơn các em.)* |

---

## Tình huống 12 — Hội trường · 17:00, lễ trao giải

| Vai | Lời thoại |
|---|---|
| MC | それでは<ruby>結果発表<rt>けっかはっぴょう</rt></ruby>でございます。<br>*(Xin công bố kết quả.)* |
| MC | <ruby>最優秀賞<rt>さいゆうしゅうしょう</rt></ruby>¥300,000、チーム「ScheduleAI」<ruby>京都大学<rt>きょうとだいがく</rt></ruby>!<br>*(Giải nhất: team ScheduleAI ĐH Kyoto!)* |
| Đại | (whisper) <ruby>京大<rt>きょうだい</rt></ruby><ruby>強<rt>つよ</rt></ruby>いな…<br>*(ĐH Kyoto mạnh thật.)* |
| MC | <ruby>優秀賞<rt>ゆうしゅうしょう</rt></ruby>¥150,000、チーム「VoiceNote」<ruby>立命館大学<rt>りつめいかんだいがく</rt></ruby>!<br>*(Giải nhì: VoiceNote Ritsumeikan!)* |
| MC | <ruby>奨励賞<rt>しょうれいしょう</rt></ruby>¥50,000×5チーム!<br>*(Giải khuyến khích ¥50,000 × 5 đội!)* |
| MC | チーム「<ruby>教科書<rt>きょうかしょ</rt></ruby>MarketPlace」<ruby>大阪大学<rt>おおさかだいがく</rt></ruby> OsakaCS3!<br>*(Team Kyokasho MarketPlace ĐH Osaka OsakaCS3!)* |
| Đại + Yamato + Aiko | (đồng thanh) やった!<br>*(Tuyệt!)* |
| MC | 3<ruby>名<rt>めい</rt></ruby>とも<ruby>壇上<rt>だんじょう</rt></ruby>へお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời 3 bạn lên bục.)* |
| Yoshida | (trao thưởng) ¥50,000 + Yahooクラウドクレジット¥30,000 + GitHub Pro 1<ruby>年<rt>ねん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>。おめでとう!<br>*(¥50k + credit Yahoo Cloud ¥30k + GitHub Pro 1 năm. Chúc mừng!)* |
| Đại | (cúi) ありがとうございます!<br>*(Cảm ơn ạ!)* |

---

## Tình huống 13 — Stage bên · 17:10, mini interview MC

| Vai | Lời thoại |
|---|---|
| MC | OsakaCS3<ruby>代表<rt>だいひょう</rt></ruby>のグエンさん、<ruby>感想<rt>かんそう</rt></ruby>を<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đại diện OsakaCS3 anh Nguyễn, cho một lời cảm tưởng nhé.)* |
| Đại | はい。<ruby>初<rt>はじ</rt></ruby>めてのハッカソンで<ruby>奨励賞<rt>しょうれいしょう</rt></ruby>をいただけて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vâng. Lần đầu hackathon mà được giải khuyến khích, em vô cùng vui ạ.)* |
| Đại | チームメイトのヤマト<ruby>君<rt>くん</rt></ruby>と<ruby>愛子<rt>あいこ</rt></ruby>さん、それから<ruby>応援<rt>おうえん</rt></ruby>してくれたみなさんに<ruby>感謝<rt>かんしゃ</rt></ruby>します。<br>*(Cảm ơn đồng đội Yamato và Aiko cùng tất cả mọi người đã cổ vũ.)* |
| MC | ベトナムからの<ruby>留学生<rt>りゅうがくせい</rt></ruby>と<ruby>伺<rt>うかが</rt></ruby>っていますが、<ruby>日本語<rt>にほんご</rt></ruby>でこんなにうまくピッチできるのはすごいですね。<br>*(Nghe nói anh là du học sinh từ Việt Nam, mà pitch tiếng Nhật giỏi thế đấy.)* |
| Đại | <ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>にN5から<ruby>始<rt>はじ</rt></ruby>めて、<ruby>今<rt>いま</rt></ruby>N2です。<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねです。<br>*(2 năm trước em bắt đầu từ N5, giờ N2. Tích luỹ mỗi ngày.)* |
| MC | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>今後<rt>こんご</rt></ruby>の<ruby>活躍<rt>かつやく</rt></ruby>を<ruby>期待<rt>きたい</rt></ruby>しています。<br>*(Tuyệt vời! Mong tương lai anh phát triển.)* |
| Đại | ありがとうございました。<br>*(Cảm ơn chị.)* |

---

## Tình huống 14 — Quán izakaya Umeda · 19:30, ăn mừng cùng team (LINE Mai cảnh tiếng Việt)

*Sau lễ trao giải, team ăn mừng. Đại tách ra góc quán gọi video Mai.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, video) Anh ơi! Sao rồi? Hồi hộp quá! |
| Đại | (VN) Em ơi! Team anh được giải khuyến khích ¥50,000! Cộng credit Yahoo Cloud ¥30,000 + GitHub Pro 1 năm! |
| Mai | (VN) Trời ơi anh giỏi quá! Em tự hào về anh lắm! |
| Đại | (VN) Anh xếp thứ 3-7/50 đội. Đội nhất là Kyoto U, đội nhì Ritsumeikan. Cả 3 đội đứng đầu đều là ĐH lớn. Tụi anh năm 1 mà lọt top 7 là OK rồi. |
| Mai | (VN) Anh được lên sân khấu phải không? Em xem stream YouTube nhưng lag. |
| Đại | (VN) Ừ, MC còn phỏng vấn anh. Anh nói "2 năm trước em bắt đầu từ N5, giờ N2". MC khen anh giỏi tiếng Nhật. |
| Mai | (VN) Em khóc rồi đó. Từ ngày anh sang Nhật N5 lúng ta lúng túng, giờ pitch tiếng Nhật trước Yahoo. |
| Đại | (VN) ¥50k chia 3 = ¥16,500 mỗi đứa. Anh dùng tiền này mua nhẫn đính hôn cho em. |
| Mai | (VN) Anh đâu cần. Em chỉ cần anh về thôi. |
| Đại | (VN) 7 tháng nữa. À, sách giáo trình "アルゴリズム入門" của Ohno-sensei chính là sách đầu tiên đăng bán trên app team anh làm mẫu. Anh khoe sensei sẽ sốc lắm. |
| Mai | (VN) (cười) Sensei sẽ tự hào. Ngủ ngon nhé anh. |
| Đại | (VN) Anh về izakaya nhậu tiếp với Yamato, Aiko. Tối nay anh say cho biết. Thương em. |

---

## Đọng lại chương 7

Đại trải qua hackathon đầu tiên với rất nhiều mẫu câu keigo môi trường công ty công nghệ Nhật. Tại quầy lễ tân Yahoo, **「<ruby>受付<rt>うけつけ</rt></ruby>させていただきました」** (sonkeigo + kenjougo) là chuẩn. Khi MC khai mạc dùng **「ご<ruby>健闘<rt>けんとう</rt></ruby>をお<ruby>祈<rt>いの</rt></ruby>りいたします」** — câu chúc thi tốt trang trọng. Trong booth team, ngôn ngữ chuyển sang `〜形` ngắn gọn giữa bạn. Lúc 2h sáng nhắn LINE crisis, Đại dùng câu cụt **「<ruby>遅<rt>おそ</rt></ruby>すぎる!」** — không keigo. Khi pitch trước judges, Đại dùng **「<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます」「ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました」** — câu mở-đóng pitch chuẩn. Q&A dùng **「ご<ruby>指摘<rt>してき</rt></ruby>ありがとうございます」「<ruby>想定<rt>そうてい</rt></ruby>しています」**. Lúc nhận giải cúi đầu **「ありがとうございます」**. Phỏng vấn mini với MC: **「<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねです」** — câu khiêm tốn chuẩn. Cuối ngày gọi Mai bằng tiếng Việt, khoe thành tích và hứa dùng tiền thưởng mua nhẫn đính hôn.

> Từ vựng & mẫu câu chương này: <ruby>受付<rt>うけつけ</rt></ruby>・ネームタグ・<ruby>制限時間<rt>せいげんじかん</rt></ruby>・<ruby>採用面接<rt>さいようめんせつ</rt></ruby><ruby>確約<rt>かくやく</rt></ruby>・アーキテクチャ・<ruby>状態係数<rt>じょうたいけいすう</rt></ruby>・<ruby>差別化<rt>さべつか</rt></ruby><ruby>要因<rt>よういん</rt></ruby>・<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>締切<rt>しめきり</rt></ruby>・<ruby>奨励賞<rt>しょうれいしょう</rt></ruby>・<ruby>商業化<rt>しょうぎょうか</rt></ruby>・<ruby>取引手数料<rt>とりひきてすうりょう</rt></ruby>・<ruby>結果発表<rt>けっかはっぴょう</rt></ruby>・〜させていただきます・ご<ruby>健闘<rt>けんとう</rt></ruby>をお<ruby>祈<rt>いの</rt></ruby>りいたします・ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました・ご<ruby>指摘<rt>してき</rt></ruby>ありがとうございます・<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ね・お<ruby>名前<rt>なまえ</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できますか

## Bí quyết chương

- **Lễ tân Yahoo dùng keigo cao**: `お<ruby>名前<rt>なまえ</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できますか` (xin tên), `〜でございます` (= です trang trọng). Đại đáp `失礼いたします` khi rời quầy.
- **Pitch 5 phút**: Cấu trúc chuẩn — `〜を<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます` (mở) → vấn đề → giải pháp → demo → `ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました` (đóng).
- **Q&A keigo**: `ご<ruby>指摘<rt>してき</rt></ruby>ありがとうございます` mở đầu mọi câu trả lời. Tránh nói "đúng đấy" trống không.
- **Code-switch ngữ cảnh**: Lễ tân/MC/judge = keigo cao. Team booth = `〜形` ngắn. LINE 2AM = câu cụt cảm xúc. Mai = tiếng Việt full.
- **Cảm tưởng nhận giải**: `<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ね` (tích luỹ mỗi ngày) — câu khiêm tốn truyền thống Nhật.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 参加者 | さんかしゃ | THAM GIA GIẢ | người tham gia |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | xin nhận |
| 階 | かい | GIAI | tầng |
| 梅田駅 | うめだえき | MAI ĐIỀN DỊCH | ga Umeda |
| 迷子 | まいご | MÊ TỬ | lạc |
| 探す | さがす | THÁM | tìm |
| 外部 | がいぶ | NGOẠI BỘ | bên ngoài |
| 勝負 | しょうぶ | THẮNG PHỤ | trận đấu |
| 設計 | せっけい | THIẾT KẾ | thiết kế |
| 制限時間 | せいげんじかん | CHẾ HẠN THỜI GIAN | thời gian giới hạn |
| 最優秀賞 | さいゆうしゅうしょう | TỐI ƯU TÚ THƯỞNG | giải nhất |
| 採用面接 | さいようめんせつ | THÁI DỤNG DIỆN TIẾP | phỏng vấn tuyển dụng |
| 確約 | かくやく | XÁC ƯỚC | cam kết |
| 厳しい | きびしい | NGHIÊM | khắc nghiệt |
| 競合 | きょうごう | CẠNH HỢP | cạnh tranh |
| 開発開始 | かいはつかいし | KHAI PHÁT KHAI THỦY | bắt đầu phát triển |
| 健闘 | けんとう | KIỆN ĐẤU | thi tốt |
| 祈る | いのる | KỲ | cầu chúc |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 混雑 | こんざつ | HỖN TẠP | đông đúc |
| 予測 | よそく | DỰ TRẮC | dự đoán |
| 転売 | てんばい | CHUYỂN MÃI | bán lại |
| 価格 | かかく | GIÁ CÁCH | giá |
| 推す | おす | THÔI | đề cử |
| 需要 | じゅよう | NHU YẾU | nhu cầu |
| 魅力的 | みりょくてき | MỊ LỰC ĐÍCH | hấp dẫn |
| 不要 | ふよう | BẤT YẾU | không cần |
| 差別化 | さべつか | SAI BIỆT HOÁ | khác biệt hoá |
| 要因 | よういん | YẾU NHÂN | yếu tố |
| 限定 | げんてい | HẠN ĐỊNH | giới hạn |
| 認証 | にんしょう | NHẬN CHỨNG | xác thực |
| 状態係数 | じょうたいけいすう | TRẠNG THÁI HỆ SỐ | hệ số tình trạng |
| 新着 | しんちゃく | TÂN TRỨ | mới đăng |
| 段階 | だんかい | ĐOẠN GIAI | cấp độ |
| 新品同様 | しんぴんどうよう | TÂN PHẨM ĐỒNG DẠNG | như mới |
| 実装 | じっそう | THỰC TRANG | cài đặt |
| 画面 | がめん | HOẠ DIỆN | màn hình |
| 一覧 | いちらん | NHẤT LÃM | danh sách |
| 詳細 | しょうさい | TƯỜNG TẾ | chi tiết |
| 出品 | しゅっぴん | XUẤT PHẨM | đăng bán |
| 洗練 | せんれん | TẨY LUYỆN | tinh tế |
| 適用 | てきよう | THÍCH DỤNG | áp dụng |
| 真似 | まね | CHÂN TỰ | bắt chước |
| 主催 | しゅさい | CHỦ THÔI | nhà tổ chức |
| 戦略的 | せんりゃくてき | CHIẾN LƯỢC ĐÍCH | chiến lược |
| 秒 | びょう | DIỄU | giây |
| 進捗 | しんちょく | TIẾN THẮC | tiến độ |
| 修正 | しゅうせい | TU CHÍNH | sửa |
| 動画 | どうが | ĐỘNG HOẠ | video |
| 台本 | だいほん | ĐÀI BẢN | kịch bản |
| 編集 | へんしゅう | BIÊN TẬP | chỉnh sửa |
| 起動 | きどう | KHỞI ĐỘNG | khởi động |
| 発表 | はっぴょう | PHÁT BIỂU | trình bày |
| 解決策 | かいけつさく | GIẢI QUYẾT SÁCH | giải pháp |
| 費やす | ついやす | PHÍ | tiêu tốn |
| 翌年 | よくねん | DỰC NIÊN | năm sau |
| 処分 | しょぶん | XỬ PHÂN | xử lý |
| 困る | こまる | KHỐN | gặp khó |
| 購入 | こうにゅう | CẤU NHẬP | mua |
| 技術的 | ぎじゅつてき | KỸ THUẬT ĐÍCH | kỹ thuật |
| 清聴 | せいちょう | THANH THÍNH | lắng nghe |
| 指摘 | してき | CHỈ TRÍCH | góp ý |
| 初期段階 | しょきだんかい | SƠ KỲ ĐOẠN GIAI | giai đoạn đầu |
| 対処 | たいしょ | ĐỐI XỬ | xử lý |
| 定価 | ていか | ĐỊNH GIÁ | giá gốc |
| 基準 | きじゅん | CƠ CHUẨN | chuẩn |
| 取引 | とりひき | THỦ DẪN | giao dịch |
| 件数 | けんすう | KIỆN SỐ | số lượng |
| 超える | こえる | SIÊU | vượt |
| 実績 | じっせき | THỰC TÍCH | thành tích |
| 切り替える | きりかえる | THIẾT THẾ | chuyển đổi |
| 商業化 | しょうぎょうか | THƯƠNG NGHIỆP HOÁ | thương mại hoá |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | khả năng |
| 手数料 | てすうりょう | THỦ SỐ LIỆU | phí |
| 想定 | そうてい | TƯỞNG ĐỊNH | dự kiến |
| 規模 | きぼ | QUY MÔ | quy mô |
| 全国 | ぜんこく | TOÀN QUỐC | toàn quốc |
| 展開 | てんかい | TRIỂN KHAI | mở rộng |
| 市場 | しじょう | THỊ TRƯỜNG | thị trường |
| 公開 | こうかい | CÔNG KHAI | công khai |
| 結果発表 | けっかはっぴょう | KẾT QUẢ PHÁT BIỂU | công bố kết quả |
| 優秀賞 | ゆうしゅうしょう | ƯU TÚ THƯỞNG | giải nhì |
| 奨励賞 | しょうれいしょう | KHUYẾN LỆ THƯỞNG | giải khuyến khích |
| 壇上 | だんじょう | ĐÀN THƯỢNG | bục |
| 代表 | だいひょう | ĐẠI BIỂU | đại diện |
| 感想 | かんそう | CẢM TƯỞNG | cảm tưởng |
| 一言 | ひとこと | NHẤT NGÔN | một lời |
| 積み重ね | つみかさね | TÍCH TRỌNG | tích luỹ |
| 活躍 | かつやく | HOẠT DƯỢC | phát triển |
| 期待 | きたい | KỲ ĐÃI | mong đợi |
