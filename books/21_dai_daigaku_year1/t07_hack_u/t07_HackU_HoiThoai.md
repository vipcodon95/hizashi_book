# Sách 21 · T7. Hack U Osaka 9/2026 — first hackathon (ハッカソン初参加)

> **Mục tiêu:** 9-10/9/2026 (weekend 36h hackathon do Yahoo Japan tổ chức tại Osaka). Team "OsakaCS3" = Đại (backend) + Yamato (algorithm) + Aiko (UI/UX). Theme: "学生生活を便利に" (Make student life easier). Team build app "教科書MarketPlace" (textbook resale + AI price suggest). 50 teams thi. Đại team đoạt giải khuyến khích (top 10).

## Bối cảnh

- Thời gian: thứ 7 9/9 09:00 → CN 10/9 17:00 (32h coding + 4h judging)
- Địa điểm: Yahoo! JAPAN Osaka office (Umeda)
- Sponsor: Yahoo, AWS Japan, GitHub Japan
- Tech stack team: Python (FastAPI) + React + PostgreSQL + Heroku
- Total 50 teams ~150 SV từ Osaka U + Kobe U + 立命館 + Osaka Inst Tech

---

## Scene 1 — Sáng thứ 7 đến venue · 8:30

| Speaker | Lời thoại |
|---|---|
| Đại | (LINE team) おはよう！ <ruby>梅田<rt>うめだ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>。Yahoo office<ruby>探<rt>さが</rt></ruby>す。<br>*(Sáng! Đến Umeda. Tìm office Yahoo.)* |
| Yamato | (LINE) <ruby>俺<rt>おれ</rt></ruby>5<ruby>分前<rt>ふんまえ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>。<ruby>16<rt>じゅうろく</rt></ruby>F<ruby>受付<rt>うけつけ</rt></ruby>。<br>*(Tớ đến 5 phút trước. Reception 16F.)* |
| Aiko | (LINE) <ruby>私<rt>わたし</rt></ruby>10<ruby>分後<rt>ぷんご</rt></ruby>。Figma + iPad<ruby>持参<rt>じさん</rt></ruby>。<br>*(Mình 10 phút nữa. Figma + iPad mang theo.)* |
| Đại | (vào lobby) 16F!<br>*(16F!)* |

---

## Scene 2 — Opening ceremony 9:00

| Speaker | Lời thoại |
|---|---|
| MC (Yahoo) | <ruby>本日<rt>ほんじつ</rt></ruby>、Hack U Osaka 2026を<ruby>開催<rt>かいさい</rt></ruby>いたします！<br>*(Hôm nay, chúng tôi khai mạc Hack U Osaka 2026!)* |
| MC | テーマは「<ruby>学生生活<rt>がくせいせいかつ</rt></ruby>を<ruby>便利<rt>べんり</rt></ruby>に」でございます。<br>*(Chủ đề là "Làm cuộc sống sinh viên tiện lợi hơn".)* |
| MC | <ruby>制限時間<rt>せいげんじかん</rt></ruby>は32<ruby>時間<rt>じかん</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>の17:00が<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>締切<rt>しめきり</rt></ruby>となっております。<br>*(Thời gian giới hạn 32 tiếng. Hạn nộp vào 17:00 ngày mai.)* |
| MC | <ruby>賞品<rt>しょうひん</rt></ruby>は、<ruby>最優秀賞<rt>さいゆうしゅうしょう</rt></ruby>が¥300kとYahooの<ruby>採用<rt>さいよう</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby><ruby>確約<rt>かくやく</rt></ruby>でございます。<br>*(Giải nhất ¥300k và cam kết phỏng vấn tuyển dụng Yahoo.)* |
| Đại | (whisper Yamato) ¥300kは<ruby>魅力的<rt>みりょくてき</rt></ruby>だな。<br>*(¥300k hấp dẫn ghê.)* |
| Yamato | <ruby>厳<rt>きび</rt></ruby>しいぞ。<ruby>50<rt>ごじゅう</rt></ruby>チームが<ruby>競合<rt>きょうごう</rt></ruby>するんだから。<br>*(Khốc liệt đấy. 50 team cạnh tranh nhau cơ mà.)* |

---

## Scene 3 — Brainstorm idea · 9:30-11:00

| Speaker | Lời thoại |
|---|---|
| Aiko | (whiteboard) アイディア<ruby>3<rt>みっ</rt></ruby>つ：<br>*(3 ý tưởng:)* |
| Aiko | 1：ノート<ruby>共有<rt>きょうゆう</rt></ruby>アプリ<br>*(1: App chia sẻ ghi chép.)* |
| Aiko | 2：<ruby>食堂<rt>しょくどう</rt></ruby><ruby>混雑<rt>こんざつ</rt></ruby><ruby>予測<rt>よそく</rt></ruby>アプリ<br>*(2: App dự đoán mức đông căng tin.)* |
| Aiko | 3：<ruby>教科書<rt>きょうかしょ</rt></ruby><ruby>転売<rt>てんばい</rt></ruby> + AI<ruby>価格<rt>かかく</rt></ruby><ruby>提案<rt>ていあん</rt></ruby><br>*(3: Bán lại sách giáo khoa + AI gợi ý giá.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>を<ruby>推<rt>お</rt></ruby>す。<ruby>需要<rt>じゅよう</rt></ruby>もあるし、AIも<ruby>魅力的<rt>みりょくてき</rt></ruby>だ。<br>*(Tớ vote ý số 3. Có nhu cầu, lại có AI hấp dẫn.)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>で<ruby>教科書<rt>きょうかしょ</rt></ruby>に¥40k<ruby>使<rt>つか</rt></ruby>った。<ruby>第<rt>だい</rt></ruby>2セメスターはもう<ruby>不要<rt>ふよう</rt></ruby>だ。<br>*(Tán thành. Năm 1 tớ tiêu ¥40k cho sách. Học kỳ 2 không cần nữa.)* |
| Aiko | <ruby>名前<rt>なまえ</rt></ruby>は「<ruby>教科書<rt>きょうかしょ</rt></ruby>MarketPlace」。シンプルでいい。<br>*(Tên là "Kyokasho MarketPlace". Đơn giản, hay.)* |
| Yamato | <ruby>差別化<rt>さべつか</rt></ruby>ポイント：AIが<ruby>価格<rt>かかく</rt></ruby>を<ruby>推奨<rt>すいしょう</rt></ruby> + メルカリと<ruby>違<rt>ちが</rt></ruby>って<ruby>大学<rt>だいがく</rt></ruby><ruby>限定<rt>げんてい</rt></ruby>だ。<br>*(Điểm khác biệt: AI gợi giá + chỉ trong trường (khác Mercari mở rộng).)* |

---

## Scene 4 — Architecture design · 11:30

| Speaker | Lời thoại |
|---|---|
| Đại | (whiteboard) Architecture:<br>*(Architecture:)* |
| Đại | Frontend: React (Aiko)<br> |
| Đại | Backend: FastAPI (Đại) — REST API<br> |
| Đại | DB: PostgreSQL — table `books`, `users`, `transactions`<br> |
| Đại | AI: GPT-3.5 API price suggestion based on book metadata + market history<br> |
| Đại | Auth: GitHub OAuth (only ĐH email)<br> |
| Đại | Deploy: Heroku free tier<br> |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>はアルゴリズムを<ruby>設計<rt>せっけい</rt></ruby>する：<br>*(Tớ thiết kế thuật toán:)* |
| Yamato | <ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby> = (<ruby>過去<rt>かこ</rt></ruby>30<ruby>日<rt>にち</rt></ruby><ruby>市場<rt>しじょう</rt></ruby><ruby>平均<rt>へいきん</rt></ruby><ruby>価格<rt>かかく</rt></ruby> × <ruby>状態<rt>じょうたい</rt></ruby><ruby>係数<rt>けいすう</rt></ruby>) + <ruby>新着<rt>しんちゃく</rt></ruby>ボーナス。<br>*(Công thức gợi giá.)* |
| Yamato | <ruby>状態<rt>じょうたい</rt></ruby>は5<ruby>段階<rt>だんかい</rt></ruby>（<ruby>新品同様<rt>しんぴんどうよう</rt></ruby>、<ruby>良<rt>よ</rt></ruby>い、<ruby>普通<rt>ふつう</rt></ruby>、<ruby>悪<rt>わる</rt></ruby>い、ボロボロ）。<br>*(Tình trạng 5 cấp.)* |
| Aiko | UIは<ruby>3<rt>さん</rt></ruby><ruby>画面<rt>がめん</rt></ruby>：<ruby>一覧<rt>いちらん</rt></ruby> + <ruby>詳細<rt>しょうさい</rt></ruby> + <ruby>出品<rt>しゅっぴん</rt></ruby>フォーム。Figmaで<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>のうちにプロトタイプ<ruby>作<rt>つく</rt></ruby>る。<br>*(3 màn UI: Danh sách + Chi tiết + Form đăng bán. Figma 1h ra prototype.)* |

---

## Scene 5 — Coding intensive Saturday · 12:00 → midnight

| Speaker | Lời thoại |
|---|---|
| Đại | (terminal) `mkdir kyokasho-marketplace; cd kyokasho-marketplace`<br> |
| Đại | (terminal) `git init`<br> |
| Đại | (terminal) `gh repo create osakacs3/kyokasho-marketplace --private --source=. --remote=origin`<br> |
| Đại | (code FastAPI)<br>```python<br>from fastapi import FastAPI, Depends<br>from pydantic import BaseModel<br>from sqlalchemy.orm import Session<br><br>app = FastAPI(title="Kyokasho MarketPlace API")<br><br>class BookCreate(BaseModel):<br>    title: str<br>    isbn: str<br>    condition: int  # 1-5<br>    asking_price: int<br>    seller_id: int<br><br>@app.post("/books")<br>async def create_book(book: BookCreate, db: Session = Depends(get_db)):<br>    # Save to DB + suggest price via AI<br>    suggested = await suggest_price(book.isbn, book.condition)<br>    return {"book": book, "ai_suggested": suggested}<br>```<br> |
| Yamato | (LINE Đại) AI price endpoint:<br>*(Endpoint AI price:)* |
| Yamato | (code) `POST /ai/suggest-price` → call GPT-3.5 với prompt "Book ISBN X, condition Y, last 30d avg ¥Z. Suggest fair price in JPY."<br> |
| Aiko | (Figma export → React) Component `<BookCard />`, `<SearchBar />`, `<SellForm />` HTML done.<br> |

---

## Scene 6 — Crisis 2:00 AM Sunday — DB schema bug

| Speaker | Lời thoại |
|---|---|
| Đại | (LINE crisis 2:00) Yamato！ `SELECT * FROM books WHERE seller_id = 1` が<ruby>遅<rt>おそ</rt></ruby>すぎる。<ruby>3<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>かかる。<br>*(Truy vấn chậm quá. Mất 3 giây.)* |
| Yamato | (LINE) インデックスが<ruby>抜<rt>ぬ</rt></ruby>けてるんじゃない？<br>*(Thiếu index à?)* |
| Đại | (terminal) `\d books` → no index on seller_id.<br> |
| Đại | (terminal) `CREATE INDEX idx_books_seller_id ON books(seller_id);`<br> |
| Đại | (terminal) Re-run query → 50ms. ✓<br> |
| Đại | (LINE Yamato) <ruby>解決<rt>かいけつ</rt></ruby>！50ms。<ruby>勉強<rt>べんきょう</rt></ruby>になった。<br>*(Xong! 50ms. Học được bài hay.)* |
| Yamato | (LINE) <ruby>本格的<rt>ほんかくてき</rt></ruby>なDBの<ruby>授業<rt>じゅぎょう</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>からだぞ。インデックスは<ruby>必修<rt>ひっしゅう</rt></ruby>。<br>*(Bài giảng DB chính thức từ năm 2. Index là bắt buộc.)* |

---

## Scene 7 — Final push Sunday · 14:00

| Speaker | Lời thoại |
|---|---|
| Aiko | UI ✓ Reactで<ruby>完成<rt>かんせい</rt></ruby>。Tailwind CSSでレスポンシブ<ruby>対応<rt>たいおう</rt></ruby>。<br>*(UI xong. Tailwind responsive.)* |
| Đại | バックエンド ✓ FastAPI 8 エンドポイント。Herokuにデプロイ<ruby>済<rt>ず</rt></ruby>み。URL: kyokasho-mp.herokuapp.com<br>*(Backend 8 endpoint. Đã triển khai Heroku.)* |
| Yamato | AIが<ruby>動<rt>うご</rt></ruby>くぞ！<br>*(AI chạy được rồi!)* |
| Yamato | (demo) ISBN 978-4-7973-9847-3 (sách アルゴリズム入門), <ruby>状態<rt>じょうたい</rt></ruby>4 (<ruby>良<rt>よ</rt></ruby>い), → AI ¥2,800を<ruby>推奨<rt>すいしょう</rt></ruby> (<ruby>新品<rt>しんぴん</rt></ruby>¥3,800、<ruby>市場<rt>しじょう</rt></ruby>30<ruby>日<rt>にち</rt></ruby><ruby>平均<rt>へいきん</rt></ruby>¥3,000、<ruby>状態<rt>じょうたい</rt></ruby><ruby>係数<rt>けいすう</rt></ruby>0.85)。<br>*(Demo gợi giá ¥2,800.)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>提出<rt>ていしゅつ</rt></ruby>しよう！<br>*(Tuyệt vời! Nộp thôi!)* |
| Aiko | (gh push) `git push origin main`<br> |
| Đại | (Submit form Yahoo) URL + GitHubリポジトリ + 5<ruby>分<rt>ふん</rt></ruby>のデモ<ruby>動画<rt>どうが</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>。<br>*(Nộp URL + repo GitHub + video demo 5 phút.)* |

---

## Scene 8 — Judging round 1 · 15:00

| Speaker | Lời thoại |
|---|---|
| Yamato | (whisper) <ruby>審査員<rt>しんさいん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>：Yahooエンジニア + AWSエバンジェリスト + GitHub Japan PM。<br>*(3 giám khảo: kỹ sư Yahoo + chuyên gia truyền thông AWS + PM GitHub Japan.)* |
| Đại | (5min pitch) <ruby>本日<rt>ほんじつ</rt></ruby>は「<ruby>教科書<rt>きょうかしょ</rt></ruby>MarketPlace」を<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます。<br>*(Hôm nay xin được trình bày "Kyokasho MarketPlace".)* |
| Đại | <ruby>問題<rt>もんだい</rt></ruby>：<ruby>大学生<rt>だいがくせい</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>で<ruby>4<rt>よん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>の<ruby>教科書<rt>きょうかしょ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>いますが、<ruby>翌年<rt>よくねん</rt></ruby>には<ruby>不要<rt>ふよう</rt></ruby>になります。<br>*(Vấn đề: SV tiêu ¥40k/năm cho sách, năm sau không cần đến nữa.)* |
| Đại | <ruby>解決策<rt>かいけつさく</rt></ruby>：<ruby>大学<rt>だいがく</rt></ruby><ruby>限定<rt>げんてい</rt></ruby>の<ruby>転売<rt>てんばい</rt></ruby>プラットフォーム + AIによる<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>。<br>*(Giải pháp: nền tảng bán lại trong trường + AI gợi giá.)* |
| Đại | (live demo) 「アルゴリズム<ruby>入門<rt>にゅうもん</rt></ruby>」を<ruby>検索<rt>けんさく</rt></ruby> → <ruby>出品者<rt>しゅっぴんしゃ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>名<rt>めい</rt></ruby> + AI<ruby>価格<rt>かかく</rt></ruby>¥2,800 → <ruby>購入<rt>こうにゅう</rt></ruby> → マッチング ✓。<br>*(Tìm "Algorithm Intro" → 5 người bán + AI giá ¥2800 → mua → khớp ✓.)* |
| Judge 1 | <ruby>素晴<rt>すば</rt></ruby>らしいですね！AI<ruby>価格<rt>かかく</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>の<ruby>発想<rt>はっそう</rt></ruby>が<ruby>新鮮<rt>しんせん</rt></ruby>です。<br>*(Tuyệt vời! Ý tưởng AI gợi giá rất mới mẻ.)* |
| Judge 2 (AWS) | <ruby>商業化<rt>しょうぎょうか</rt></ruby>できる<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>十分<rt>じゅうぶん</rt></ruby>にありますね。<br>*(Hoàn toàn có khả năng thương mại hoá.)* |

---

## Scene 9 — Award ceremony · 17:00

| Speaker | Lời thoại |
|---|---|
| MC | それでは<ruby>結果発表<rt>けっかはっぴょう</rt></ruby>です！<br>*(Xin công bố kết quả!)* |
| MC | <ruby>最優秀賞<rt>さいゆうしゅうしょう</rt></ruby>¥300k：Team「ScheduleAI」 — <ruby>京都大学<rt>きょうとだいがく</rt></ruby><br>*(Giải nhất: Team ScheduleAI — ĐH Kyoto.)* |
| MC | <ruby>優秀賞<rt>ゆうしゅうしょう</rt></ruby>¥150k：Team「VoiceNote」 — <ruby>立命館大学<rt>りつめいかんだいがく</rt></ruby><br>*(Giải nhì: VoiceNote — ĐH Ritsumeikan.)* |
| MC | <ruby>奨励賞<rt>しょうれいしょう</rt></ruby>¥50k × <ruby>5<rt>ご</rt></ruby>チーム：<br>*(Giải khuyến khích ¥50k × 5 đội:)* |
| MC | ……Team「<ruby>教科書<rt>きょうかしょ</rt></ruby>MarketPlace」 — <ruby>大阪大学<rt>おおさかだいがく</rt></ruby> CS3！<br>*(... Team Kyokasho MP — ĐH Osaka CS3!)* |
| Đại + Yamato + Aiko | （<ruby>叫<rt>さけ</rt></ruby>ぶ）やった！<br>*(Reo lên! Tuyệt!)* |
| MC | ¥50k + Yahooクラウドクレジット¥30k + GitHub Pro<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>でございます。<br>*(¥50k + credit Yahoo Cloud ¥30k + GitHub Pro 1 năm.)* |

---

## Scene 10 — Đêm reflect + LINE Mai · 21:00

| Speaker | Lời thoại |
|---|---|
| Đại | (LINE Mai) Em ơi! Team anh đoạt giải khuyến khích ¥50k + credit cloud + GitHub Pro!<br>*(Đoạt giải!)* |
| Mai | (VN) Ôi! Anh giỏi quá! Em tự hào về anh lắm!<br>*(Tự hào!)* |
| Đại | (VN) ¥50k chia 3 = ¥16.5k mỗi đứa. Anh sẽ dùng để mua quà cưới em!<br>*(Quà cưới.)* |
| Mai | (VN) Em yêu anh!<br>*(Yêu.)* |
| Đại | (VN, nhật ký) 9-10/9/2026 Hack U Osaka — hackathon đầu tiên. Team OsakaCS3 (Đại+Yamato+Aiko) làm 教科書MarketPlace trong 32h.<br>*(Hack U.)* |
| Đại | (VN) FastAPI + React + PostgreSQL + GPT-3.5 gợi giá. Bug index DB 2 giờ sáng đã sửa. 50 team, top 7 = giải khuyến khích ¥50k.<br>*(Top 7.)* |
| Đại | (VN) Credit Yahoo Cloud ¥30k + GitHub Pro 1 năm. Hackathon đầu tay của cả nhóm!<br>*(Chiến thắng đầu.)* |
| Đại | (VN) 4 tháng nữa cưới Mai. Quà cưới sắp có ngân sách rồi.<br>*(Quà cưới.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| ハッカソン | ハッカソン | Hackathon |
| Hack U | ハックユー | Yahoo Japan student hackathon (annual) |
| 制限時間 | せいげんじかん | Time limit |
| 提出締切 | ていしゅつしめきり | Submission deadline |
| 賞品 | しょうひん | Prize |
| 採用面接 | さいようめんせつ | Recruitment interview |
| 教科書 | きょうかしょ | Textbook |
| MarketPlace | マーケットプレイス | Marketplace |
| FastAPI | ファストエーピーアイ | Modern Python web framework |
| React | リアクト | JS frontend lib (Meta) |
| Tailwind CSS | テールウィンドCSS | Utility-first CSS framework |
| PostgreSQL | ポストグレ | Open-source RDB |
| GPT-3.5 | ジーピーティー | OpenAI LLM |
| Heroku | ヘロク | PaaS deploy |
| Index (DB) | インデックス | DB index (perf) |
| 奨励賞 | しょうれいしょう | Encouragement prize |
| GitHub Pro | ギットハブプロ | GitHub paid tier |

## Bí quyết chương

- **First hackathon win**: Top 7/50 = realistic cho team năm 1. Không phải #1 (Kyoto U thường top) nhưng khuyến khích = good entry.
- **Tech stack hợp lý**: FastAPI + React + PostgreSQL + GPT-3.5 (2026 timing — GPT-4 ra rồi nhưng GPT-3.5 free tier OK cho hackathon).
- **DB index bug 2AM**: Realistic crisis. Đại học bài index trước khi lecture chính thức năm 2.
- **Money allocation**: ¥50k chia 3 → ¥16.5k mỗi đứa → quà cưới Mai. Realistic SV financial.
- **Yahoo Cloud + GitHub Pro**: Real prizes from Yahoo Hack U pattern.

> *"Hackathon đầu. 32h coding. Top 7/50 ¥50k giải khuyến khích. DB index bug 2AM. Quà cưới Mai có ngân sách."*
