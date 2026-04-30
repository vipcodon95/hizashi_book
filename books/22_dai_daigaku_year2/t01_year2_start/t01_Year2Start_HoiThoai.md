# Sách 22 · T1. Năm 2 bắt đầu — Web + DB intro (2年生開始)

> **Mục tiêu:** 4/2027. Đại 22t năm 2 ĐH. Apt 2DK Senri-chuo với Mai. Lab Web技術 I (HTML/CSS/JS) + DB入門 (SQL) bắt đầu. Cohort cùng năm 2: Yamato + Aiko + Lin Wei + Rajesh. Yamada-senpai sang năm 5 hoặc tốt nghiệp.

## Bối cảnh

- Thời gian: 7/4/2027 (tuần đầu kỳ)
- Mai đã sang Nhật 2/5 — chờ thêm 3 tuần để bắt đầu Yamato Language School
- Đại đi học từ 8:00 (15 phút từ Senri-chuo Hankyu → Toyonaka campus)
- Sensei Web技術 I: 中村-sensei (35t, ex-Mercari engineer)
- Sensei DB入門: 高橋-sensei (50t, DB academia)

---

## Scene 1 — Sáng đi học từ apt mới · 7:30

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, internal) Căn hộ 2DK. Mai vừa thức dậy, đang nấu phở sáng.<br>*(Phở.)* |
| Mai | (VN) Anh ăn nhanh kẻo lỡ tàu! Hankyu 7:50 đấy.<br>*(Trễ.)* |
| Đại | (VN) Hôm nay buổi đầu Web技術 I. Háo hức ghê!<br>*(Web.)* |
| Mai | (VN) Web giao diện phải không anh? Em nghe anh nhắc bao nhiêu lần rồi.<br>*(Frontend.)* |
| Đại | (VN) Đúng. HTML, CSS, JavaScript. Tuần sau học React. Tháng sau Vue.<br>*(Stack.)* |
| Mai | (VN) Anh học xong dạy lại em được không?<br>*(Dạy?)* |
| Đại | (VN) Được chứ! Khi nào em xong N2 ở Yamato School là anh dạy.<br>*(Sau N2.)* |

---

## Scene 2 — Web技術 I lecture 1 · 9:00

| Speaker | Lời thoại |
|---|---|
| Nakamura | <ruby>本日<rt>ほんじつ</rt></ruby>Web<ruby>技術<rt>ぎじゅつ</rt></ruby> I <ruby>開始<rt>かいし</rt></ruby>!<br>*(Hôm nay Web Tech I bắt đầu!)* |
| Nakamura | Web = HTML + CSS + JS = "frontend trinity"<br>*(Trinity.)* |
| Nakamura | HTML = <ruby>構造<rt>こうぞう</rt></ruby> (structure). CSS = <ruby>装飾<rt>そうしょく</rt></ruby> (style). JS = <ruby>動作<rt>どうさ</rt></ruby> (behavior).<br>*(Phân vai 3 ngôn ngữ.)* |
| Nakamura | (whiteboard) HTML5 + CSS3 + ES2024 (JS modern).<br> |
| Đại | (code) `index.html`:<br>```html<br><!DOCTYPE html><br><html lang="ja"><br><head><br>  <meta charset="UTF-8"><br>  <title>Đại's First Page</title><br></head><br><body><br>  <h1>こんにちは!</h1><br>  <p>I'm Đại, year 2 ĐH Osaka.</p><br></body><br></html><br>```<br> |
| Đại | (browser) Hiển thị "こんにちは!" + paragraph.<br>*(Hiển thị.)* |

---

## Scene 3 — CSS responsive · 11:00

| Speaker | Lời thoại |
|---|---|
| Nakamura | CSS3 — Flexbox + Grid. Responsive design <ruby>必須<rt>ひっす</rt></ruby>.<br>*(Responsive.)* |
| Đại | (code) `style.css`:<br>```css<br>body {<br>  font-family: 'Noto Sans JP', sans-serif;<br>  display: flex;<br>  justify-content: center;<br>  padding: 2rem;<br>}<br>@media (max-width: 768px) {<br>  body { padding: 1rem; }<br>}<br>```<br> |
| Aiko | (cạnh) Tailwind CSS<ruby>知<rt>し</rt></ruby>ってる？Utility-first<ruby>系<rt>けい</rt></ruby>。<br>*(Biết Tailwind CSS chưa? Loại utility-first.)* |
| Đại | Hack Uで<ruby>使<rt>つか</rt></ruby>ったことある。めっちゃ<ruby>速<rt>はや</rt></ruby>い。<br>*(Hồi Hack U mình dùng rồi. Nhanh lắm.)* |
| Nakamura | Tailwindは<ruby>2027<rt>にせんにじゅうなな</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>業界標準<rt>ぎょうかいひょうじゅん</rt></ruby>。<ruby>後期<rt>こうき</rt></ruby>でやります。<br>*(Tailwind là chuẩn ngành năm 2027. Hậu kỳ sẽ học.)* |

---

## Scene 4 — JavaScript intro · 14:00

| Speaker | Lời thoại |
|---|---|
| Nakamura | JS — <ruby>動的<rt>どうてき</rt></ruby><ruby>動作<rt>どうさ</rt></ruby>. ES6+ syntax.<br>*(Dynamic.)* |
| Đại | (code) `script.js`:<br>```javascript<br>const users = ['Đại', 'Yamato', 'Aiko'];<br>users.forEach(user => console.log(`Hello, ${user}!`));<br><br>const square = x => x * x;<br>console.log(square(5));  // 25<br>```<br> |
| Nakamura | Arrow function + template literal — Pythonic-feel.<br>*(Pythonic.)* |
| Đại | Pythonの<ruby>経験<rt>けいけん</rt></ruby>があるので、<ruby>移行<rt>いこう</rt></ruby>が<ruby>速<rt>はや</rt></ruby>いです。<br>*(Có kinh nghiệm Python nên chuyển sang nhanh.)* |
| Yamato | (whisper, Osaka-ben) JS<ruby>生<rt>なま</rt></ruby>(vanilla)、<ruby>面倒<rt>めんどう</rt></ruby>くさいねん。リアクトかVue<ruby>使<rt>つか</rt></ruby>ったら<ruby>楽<rt>らく</rt></ruby>やで。<br>*(JS thuần mệt lắm. Dùng React/Vue dễ hơn nhiều.)* |
| Nakamura | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>からリアクト<ruby>入門<rt>にゅうもん</rt></ruby>。<ruby>前期<rt>ぜんき</rt></ruby><ruby>後半<rt>こうはん</rt></ruby>はVue。<br>*(Tháng 5 vào React. Nửa sau kỳ học Vue.)* |

---

## Scene 5 — DB入門 lecture · 16:00

| Speaker | Lời thoại |
|---|---|
| Takahashi | DB入門. Codd 1970 relational model.<br>*(Codd 1970.)* |
| Takahashi | RDBMS: PostgreSQL, MySQL, Oracle, SQL Server.<br>*(RDBMS.)* |
| Takahashi | <ruby>本講座<rt>ほんこうざ</rt></ruby>PostgreSQL 16<ruby>使用<rt>しよう</rt></ruby>.<br>*(Dùng PostgreSQL 16.)* |
| Đại | (terminal) `psql -U postgres`<br> |
| Đại | (SQL)<br>```sql<br>CREATE TABLE users (<br>  id SERIAL PRIMARY KEY,<br>  name VARCHAR(100) NOT NULL,<br>  email VARCHAR(200) UNIQUE,<br>  created_at TIMESTAMP DEFAULT NOW()<br>);<br><br>INSERT INTO users (name, email)<br>VALUES ('Đại', 'dai@osaka-u.ac.jp');<br><br>SELECT * FROM users WHERE name LIKE 'Đ%';<br>```<br> |
| Takahashi | <ruby>正解<rt>せいかい</rt></ruby>. SQL standard syntax.<br>*(Đúng. SQL chuẩn.)* |

---

## Scene 6 — Cohort Yamada-senpai farewell + Mai homestay visit Tony · 19:00 thứ 6

| Speaker | Lời thoại |
|---|---|
| Yamada-senpai | (LINE) みんな！<ruby>俺<rt>おれ</rt></ruby>、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>修士<rt>しゅうし</rt></ruby><ruby>進学<rt>しんがく</rt></ruby>でInoue<ruby>研<rt>けん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>った。<ruby>来年<rt>らいねん</rt></ruby>から<ruby>後輩<rt>こうはい</rt></ruby><ruby>指導<rt>しどう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>するで！<br>*(Mọi người ơi! Tớ tháng 4 lên cao học vào lab Inoue. Sang năm phụ trách hướng dẫn đàn em!)* |
| Đại | (LINE) <ruby>俺<rt>おれ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>になりました！<ruby>研究室<rt>けんきゅうしつ</rt></ruby><ruby>見学<rt>けんがく</rt></ruby>は<ruby>後期<rt>こうき</rt></ruby>に<ruby>行<rt>い</rt></ruby>きます！<br>*(Em lên năm 2 rồi! Tham quan lab cuối kỳ ạ!)* |
| Yamada | <ruby>後期<rt>こうき</rt></ruby>Inoue<ruby>研<rt>けん</rt></ruby><ruby>見学<rt>けんがく</rt></ruby><ruby>歓迎<rt>かんげい</rt></ruby>するで！<br>*(Cuối kỳ qua thăm lab Inoue, tớ welcome!)* |
| Đại | (về apt 19:30) Mai ơi! Cô chú Tony với Yumi mời hai vợ chồng mình ăn tối Chủ nhật!<br>*(Mời.)* |
| Mai | (VN) Em hồi hộp quá, lần đầu gặp gia đình homestay của anh!<br>*(Hồi hộp.)* |

---

## Scene 7 — CN ăn tối Tanaka · gặp Mai lần đầu

| Speaker | Lời thoại |
|---|---|
| Tony | (Osaka-ben) マイさん！ようこそ、よう<ruby>来<rt>き</rt></ruby>てくれはったなぁ！<br>*(Mai! Mời vào, mừng quá cháu đến rồi!)* |
| Mai | (VN+JP basic) こんにちは！マイです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Cháu chào cô chú! Cháu là Mai. Mong cô chú giúp đỡ ạ!)* |
| Yumi | まぁ<ruby>素敵<rt>すてき</rt></ruby>！ダイ<ruby>君<rt>くん</rt></ruby>と<ruby>幸<rt>しあわ</rt></ruby>せそうやねぇ！<br>*(Ồ xinh quá! Trông hạnh phúc với Đại ghê!)* |
| Mai | (VN) Cô Yumi xinh thật! Chú Tony dễ mến quá!<br>*(Đẹp.)* |
| Tony | (Osaka-ben + VN broken) マイさん、ベトナム<ruby>料理<rt>りょうり</rt></ruby><ruby>教<rt>おし</rt></ruby>えてや！<br>*(Mai dạy chú nấu món Việt nha!)* |
| Mai | (VN+JP) はい！<ruby>今度<rt>こんど</rt></ruby>フォー、<ruby>教<rt>おし</rt></ruby>えますね！<br>*(Vâng! Lần tới cháu dạy cô chú nấu phở ạ!)* |

---

## Scene 8 — Đêm reflect · 23:00 apt

| Speaker | Lời thoại |
|---|---|
| Mai | (VN, nằm trên giường) Anh ơi! Hôm nay vui quá trời. Cô chú Tony với Yumi như bố mẹ thứ hai của em ở Nhật ấy.<br>*(Bố mẹ 2.)* |
| Đại | (VN) Đúng đấy. Ba năm trước anh sang Nhật một mình cô đơn lắm. Giờ có em, có nhóm bạn cùng khoá, có cô chú Tony với Yumi nữa.<br>*(Cộng đồng.)* |
| Đại | (VN, nhật ký) 7-12/4/2027 tuần đầu năm 2 ĐH. Buổi đầu Web技術 I và DB入門. HTML/CSS/JS căn bản. PostgreSQL 16 với SQL.<br>*(Tuần 1.)* |
| Đại | (VN) Mai đã gặp cô chú Tony với Yumi. Cô Yumi quý lắm. Sẽ là gia đình thứ hai cho cả Mai nữa.<br>*(Family.)* |
| Đại | (VN) Yamada-senpai lên cao học vào lab Inoue. Sang năm 3 mình cũng sẽ vào lab. Báo trước về lab Inoue.<br>*(Foreshadow.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| Web技術 | ウェブぎじゅつ | Web technology |
| HTML5 | エイチティーエムエル ファイブ | HTML version 5 |
| CSS3 | シーエスエス スリー | CSS version 3 |
| ES2024 | イーエス | ECMAScript 2024 (JS) |
| Flexbox | フレックスボックス | CSS layout |
| Grid | グリッド | CSS grid layout |
| Responsive | レスポンシブ | Responsive design |
| Tailwind CSS | テールウィンドCSS | Utility-first CSS framework |
| Arrow function | アローファンクション | JS ES6 arrow |
| Template literal | テンプレートリテラル | JS ES6 backtick string |
| RDBMS | アールディービーエムエス | Relational DB |
| PostgreSQL 16 | ポストグレ シックスティーン | DB version 16 |
| SERIAL | シリアル | PostgreSQL auto-incr type |
| 修士 | しゅうし | Master degree |

## Bí quyết chương

- **Mai apt life starts**: Senri-chuo 2DK với Mai làm phở sáng — domestic life realistic.
- **Web stack basic**: HTML5/CSS3/ES2024 — current 2027 standard.
- **PostgreSQL 16**: Latest production version 2027.
- **Yamada senpai → Master**: Setup lab pipeline cho Đại year 3.
- **Tony+Yumi welcome Mai**: Family bond expanded.

> *"Năm 2 bắt đầu. Mai apt life. Web技術 I + DB入門. Tony+Yumi mê Mai. Inoue Lab foreshadow."*
