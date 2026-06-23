# Sách sinh viên Đại học Osaka · T4. Web技術 I — HTML/CSS/JS sang React + Next.js

> **Mục tiêu nhân vật:** 6-7/2027. Đại đào sâu HTML/CSS/JS vanilla rồi chuyển sang React + Next.js + Tailwind + TypeScript. Deploy portfolio vandai.dev lên Vercel. Học các mẫu hội thoại tiếng Nhật của sinh viên CS năm 2 trong lab thực hành web: (1) hỏi sensei khi gặp lỗi DOM 「エラーが出ました」, (2) thảo luận kiến trúc với cohort 「〜の方が良いと思います」, (3) review code với senpai 「コードレビューお願いできますか」, (4) đăng ký Cloudflare domain qua điện thoại keigo 「ドメインを取得したいのですが」, (5) khoe portfolio với vợ tiếng Việt, (6) showcase trước cohort 「これがポートフォリオです」.

---

## Bối cảnh

Tháng 6-7 năm 2027. Web技術 I của Nakamura-sensei đã sang giai đoạn 2 — từ HTML/CSS/JS vanilla chuyển sang React 18 + Next.js 14 + Tailwind + TypeScript. Bài tập cuối kỳ: mỗi sinh viên xây personal portfolio site, deploy live URL. Đại đặt mục tiêu **vandai.dev** — domain mua Cloudflare Registrar 800 yên/year, hosting Vercel free tier. Cohort Yamato, Aiko, Lin Wei, Rajesh cũng có site riêng. Chương này tập trung mẫu câu hỏi sensei khi debug, thảo luận tech choice với cohort, và showcase portfolio.

---

## Tình huống 1 — Phòng lab Toyonaka · 9:00, Nakamura giảng DOM + Event

| Vai | Lời thoại |
|---|---|
| Nakamura | DOM は Document Object Model の<ruby>略<rt>りゃく</rt></ruby>です。HTMLを JS で<ruby>操作<rt>そうさ</rt></ruby>するための<ruby>仕組<rt>しく</rt></ruby>みです。<br>*(DOM viết tắt của Document Object Model. Là cơ chế để dùng JS thao tác HTML.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、`getElementById` と `querySelector` の<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>でしょうか?<br>*(Sensei, sự khác nhau giữa `getElementById` và `querySelector` là gì ạ?)* |
| Nakamura | いい<ruby>質問<rt>しつもん</rt></ruby>です。`getElementById`は ID<ruby>専用<rt>せんよう</rt></ruby>で<ruby>速<rt>はや</rt></ruby>い。`querySelector`は CSS セレクタ<ruby>全般<rt>ぜんぱん</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>するが、<ruby>少<rt>すこ</rt></ruby>し<ruby>遅<rt>おそ</rt></ruby>い。<br>*(Câu hỏi hay. `getElementById` chỉ cho ID, nhanh. `querySelector` xử được CSS selector tổng quát nhưng chậm hơn chút.)* |
| Đại | <ruby>現場<rt>げんば</rt></ruby>ではどちらをよく<ruby>使<rt>つか</rt></ruby>いますか?<br>*(Ngoài thực tế người ta dùng cái nào nhiều hơn ạ?)* |
| Nakamura | <ruby>最近<rt>さいきん</rt></ruby>は`querySelector`が<ruby>主流<rt>しゅりゅう</rt></ruby>です。<ruby>柔軟性<rt>じゅうなんせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いからです。<br>*(Gần đây `querySelector` là chính. Vì linh hoạt cao hơn.)* |

---

## Tình huống 2 — Phòng lab · 10:30, debug click event không chạy

*Đại viết button counter nhưng click không tăng số. Đại gõ console.log debug, không in gì.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、エラーが<ruby>出<rt>で</rt></ruby>ました。クリックしても<ruby>反応<rt>はんのう</rt></ruby>しません。<br>*(Sensei, em gặp lỗi. Click không phản hồi.)* |
| Nakamura | (đến xem) コンソールに<ruby>何<rt>なに</rt></ruby>か<ruby>表示<rt>ひょうじ</rt></ruby>されていますか?<br>*(Console có hiện gì không?)* |
| Đại | "Cannot read property 'addEventListener' of null"と<ruby>出<rt>で</rt></ruby>ています。<br>*(Hiện "Cannot read property 'addEventListener' of null" ạ.)* |
| Nakamura | <ruby>原因<rt>げんいん</rt></ruby>は スクリプトが <ruby>要素<rt>ようそ</rt></ruby>より<ruby>先<rt>さき</rt></ruby>に<ruby>実行<rt>じっこう</rt></ruby>されているからです。`<script>`タグを `<body>` の<ruby>最後<rt>さいご</rt></ruby>に<ruby>移動<rt>いどう</rt></ruby>するか、`defer`<ruby>属性<rt>ぞくせい</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>してください。<br>*(Nguyên nhân: script chạy trước khi element tồn tại. Em chuyển `<script>` xuống cuối `<body>` hoặc thêm thuộc tính `defer`.)* |
| Đại | (thêm `defer`) できました! クリックで<ruby>数字<rt>すうじ</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えます。ありがとうございます。<br>*(Em làm được rồi! Click tăng số rồi. Cảm ơn sensei.)* |
| Nakamura | DOM<ruby>関連<rt>かんれん</rt></ruby>のエラーで<ruby>一番<rt>いちばん</rt></ruby><ruby>多<rt>おお</rt></ruby>いのが この パターンです。<ruby>覚<rt>おぼ</rt></ruby>えておいてください。<br>*(Lỗi DOM phổ biến nhất là pattern này. Nhớ nha.)* |

---

## Tình huống 3 — Phòng lab · 14:00, Nakamura giới thiệu React

| Vai | Lời thoại |
|---|---|
| Nakamura | バニラJSは<ruby>小規模<rt>しょうきぼ</rt></ruby>では<ruby>十分<rt>じゅうぶん</rt></ruby>ですが、<ruby>規模<rt>きぼ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きくなると<ruby>状態管理<rt>じょうたいかんり</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>になります。そこで React を<ruby>導入<rt>どうにゅう</rt></ruby>します。<br>*(Vanilla JS đủ cho quy mô nhỏ, nhưng quy mô lớn thì quản lý state vất vả. Vì vậy ta dùng React.)* |
| Nakamura | React は Meta<ruby>社<rt>しゃ</rt></ruby>が<ruby>2013<rt>にせんじゅうさん</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>公開<rt>こうかい</rt></ruby>。コンポーネント<ruby>指向<rt>しこう</rt></ruby>と Virtual DOM が<ruby>特徴<rt>とくちょう</rt></ruby>です。<br>*(React do Meta phát hành năm 2013. Đặc trưng là hướng component và Virtual DOM.)* |
| Aiko | <ruby>先生<rt>せんせい</rt></ruby>、Vue との<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Sensei, khác Vue thế nào ạ?)* |
| Nakamura | React は JSXで JS の<ruby>柔軟性<rt>じゅうなんせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い。Vue はテンプレート<ruby>記法<rt>きほう</rt></ruby>で<ruby>習<rt>なら</rt></ruby>いやすい。<ruby>業界<rt>ぎょうかい</rt></ruby>シェアは React の<ruby>方<rt>ほう</rt></ruby>が<ruby>圧倒的<rt>あっとうてき</rt></ruby>に<ruby>高<rt>たか</rt></ruby>いです。<br>*(React dùng JSX, JS linh hoạt cao. Vue dùng template, dễ học. Thị phần ngành thì React áp đảo.)* |
| Đại | <ruby>就職<rt>しゅうしょく</rt></ruby>するなら React の<ruby>方<rt>ほう</rt></ruby>が<ruby>良<rt>よ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Đi xin việc thì học React tốt hơn phải không sensei?)* |
| Nakamura | はい。<ruby>特<rt>とく</rt></ruby>に<ruby>大手<rt>おおて</rt></ruby> IT は React が<ruby>主流<rt>しゅりゅう</rt></ruby>です。<br>*(Đúng. Đặc biệt IT lớn React là chính.)* |

---

## Tình huống 4 — Phòng lab · 15:30, Đại viết Counter component đầu

| Vai | Lời thoại |
|---|---|
| Đại | (gõ) `const [count, setCount] = useState(0);`<br> |
| Nakamura | (đi vòng quanh) グエンさん、useState は<ruby>状態管理<rt>じょうたいかんり</rt></ruby>フックです。`count` が<ruby>現在<rt>げんざい</rt></ruby>の<ruby>値<rt>あたい</rt></ruby>、`setCount` で<ruby>更新<rt>こうしん</rt></ruby>します。<br>*(Đại, useState là hook quản lý state. `count` là giá trị hiện tại, `setCount` để cập nhật.)* |
| Đại | `setCount` を<ruby>呼<rt>よ</rt></ruby>ぶと どうなりますか?<br>*(Gọi `setCount` thì điều gì xảy ra ạ?)* |
| Nakamura | コンポーネントが<ruby>再描画<rt>さいびょうが</rt></ruby>されます。<ruby>差分<rt>さぶん</rt></ruby>のみ DOM に<ruby>反映<rt>はんえい</rt></ruby>されます。Virtual DOM の<ruby>仕組<rt>しく</rt></ruby>みです。<br>*(Component sẽ re-render. Chỉ phần khác biệt được phản ánh lên DOM. Cơ chế của Virtual DOM.)* |
| Đại | <ruby>効率的<rt>こうりつてき</rt></ruby>ですね。<br>*(Hiệu quả thật ha.)* |
| Aiko | (cạnh bên) Figmaのコンポーネントが React の コンポーネントに<ruby>1<rt>いっ</rt></ruby><ruby>対<rt>たい</rt></ruby><ruby>1<rt>いち</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>するのが<ruby>気持<rt>きも</rt></ruby>ちいい。<br>*(Component Figma map 1:1 với component React thấy phê ghê.)* |

---

## Tình huống 5 — Căng tin · 12:30, thảo luận stack với cohort

| Vai | Lời thoại |
|---|---|
| Lin Wei | <ruby>個人<rt>こじん</rt></ruby>サイトに <ruby>静的<rt>せいてき</rt></ruby>サイトジェネレーター<ruby>使<rt>つか</rt></ruby>うか、それとも Next.js<ruby>使<rt>つか</rt></ruby>うか<ruby>迷<rt>まよ</rt></ruby>っている。<br>*(Trang cá nhân mình phân vân dùng static site generator hay Next.js.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>は Next.js の<ruby>方<rt>ほう</rt></ruby>が<ruby>良<rt>よ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>います。<ruby>将来<rt>しょうらい</rt></ruby>ブログとかAPI<ruby>追加<rt>ついか</rt></ruby>したい<ruby>時<rt>とき</rt></ruby>、<ruby>移行<rt>いこう</rt></ruby>しなくていいから。<br>*(Mình thấy Next.js tốt hơn. Tương lai thêm blog hay API thì không cần migrate.)* |
| Lin Wei | <ruby>確<rt>たし</rt></ruby>かに。<ruby>俺<rt>おれ</rt></ruby>は AWS Architecture を<ruby>記事<rt>きじ</rt></ruby>にしたい。<ruby>記事<rt>きじ</rt></ruby><ruby>機能<rt>きのう</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>やな。<br>*(Đúng đấy. Mình muốn viết bài về AWS Architecture. Cần chức năng blog.)* |
| Rajesh | I'll use Astro instead. Faster.<br>*(Mình dùng Astro thay. Nhanh hơn.)* |
| Yamato | (Osaka-ben) アストロも<ruby>速<rt>はや</rt></ruby>いんやけど、エコシステムは Next.js の<ruby>方<rt>ほう</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいで。<br>*(Astro cũng nhanh, nhưng hệ sinh thái Next.js lớn hơn.)* |
| Đại | TypeScript も<ruby>使<rt>つか</rt></ruby>うんやろ?<br>*(Có dùng TypeScript chứ?)* |
| Yamato | <ruby>当然<rt>とうぜん</rt></ruby>や。バニラJSはもう<ruby>書<rt>か</rt></ruby>かへん。<br>*(Đương nhiên. Không viết vanilla JS nữa.)* |

---

## Tình huống 6 — Phòng lab cuối tuần · Thứ 7 14:00, mua domain Cloudflare

*Đại ngồi trước laptop trong apt. Mở trang Cloudflare Registrar, đăng nhập, tìm `vandai.dev`.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi, vandai.dev còn trống! 800 yên/year! |
| Mai | (tiếng Việt) Mua đi anh. Tên domain phải có cá tính. |
| Đại | (terminal) `npx create-next-app@latest vandai-portfolio --typescript --tailwind --app`<br> |
| Đại | (code) Pages: `/` home, `/about`, `/projects`, `/blog`, `/contact`<br> |
| Đại | (tiếng Việt) Mai, em xem trang home anh viết tự giới thiệu chưa OK chưa? |
| Mai | (xem) (tiếng Việt) "Đại Nguyen — CS student @ Osaka University. Interested in web development, distributed systems, and bridging Vietnam-Japan." Hay ghê. |
| Đại | (deploy) `vercel --prod`<br> |
| Đại | (DNS Cloudflare) A record vandai.dev → Vercel<br> |
| Đại | (browser) https://vandai.dev → loaded! <br> |
| Đại | (tiếng Việt) Online rồi em ơi! |
| Mai | (ôm) (tiếng Việt) Anh là lập trình viên thực thụ rồi. |

---

## Tình huống 7 — Sảnh Toyonaka · 9:00 thứ 2, nhờ Yamato review code

| Vai | Lời thoại |
|---|---|
| Đại | (Osaka-ben mix) ヤマト、ちょっと コードレビューお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Yamato, cậu review code giúp mình được không?)* |
| Yamato | おお、ええで。vandai.devの<ruby>件<rt>けん</rt></ruby>?<br>*(OK đó. Vụ vandai.dev hả?)* |
| Đại | <ruby>主<rt>おも</rt></ruby>にコンポーネント<ruby>構成<rt>こうせい</rt></ruby>と TypeScript の<ruby>型定義<rt>かたていぎ</rt></ruby>。<ruby>初心者<rt>しょしんしゃ</rt></ruby>すぎる<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>になってないか<ruby>心配<rt>しんぱい</rt></ruby>。<br>*(Chính là cấu trúc component và type definition TypeScript. Lo viết kiểu newbie quá.)* |
| Yamato | (xem GitHub) `src/components/ProjectCard.tsx`... props の<ruby>型定義<rt>かたていぎ</rt></ruby>は OK や。ただ、<ruby>個別<rt>こべつ</rt></ruby>のtypeにせず、<ruby>共通<rt>きょうつう</rt></ruby> type `types.ts` に<ruby>切<rt>き</rt></ruby>り<ruby>出<rt>だ</rt></ruby>した<ruby>方<rt>ほう</rt></ruby>がいいで。<br>*(Type props OK. Nhưng nên tách thành file `types.ts` chung thay vì định nghĩa riêng từng chỗ.)* |
| Đại | なるほど、リファクタする。<ruby>他<rt>ほか</rt></ruby>は?<br>*(Hiểu rồi, mình refactor. Khác?)* |
| Yamato | `useState`の<ruby>初期値<rt>しょきち</rt></ruby>が`any`に なってる<ruby>場所<rt>ばしょ</rt></ruby>がある。<ruby>明示的<rt>めいじてき</rt></ruby>に<ruby>型<rt>かた</rt></ruby><ruby>指定<rt>してい</rt></ruby>して。<br>*(Có chỗ initial value của `useState` đang `any`. Chỉ định type rõ ràng đi.)* |
| Đại | ありがとう! <ruby>夜<rt>よる</rt></ruby>に<ruby>修正<rt>しゅうせい</rt></ruby>して、また<ruby>見<rt>み</rt></ruby>てもらってもいいですか?<br>*(Cảm ơn! Tối mình sửa, lát nhờ cậu xem lại nhé?)* |
| Yamato | ええよ。プルリクエスト<ruby>送<rt>おく</rt></ruby>って。<br>*(OK. Gửi pull request nha.)* |

---

## Tình huống 8 — Phòng lab · Thứ 5 14:00, showcase portfolio trước cohort

*Nakamura-sensei yêu cầu mỗi sinh viên 5 phút show portfolio. Đại lên trước.*

| Vai | Lời thoại |
|---|---|
| Nakamura | では、グエンさん どうぞ。<br>*(Vâng, mời em Đại.)* |
| Đại | (đứng) <ruby>失礼<rt>しつれい</rt></ruby>します。これがポートフォリオです。<ruby>ドメイン<rt>どめいん</rt></ruby>は vandai.dev、ホスティングは Vercel、フレームワークは Next.js 14 + TypeScript + Tailwind CSSです。<br>*(Em xin phép. Đây là portfolio. Domain vandai.dev, hosting Vercel, framework Next.js 14 + TypeScript + Tailwind CSS.)* |
| Đại | <ruby>主<rt>おも</rt></ruby>な<ruby>機能<rt>きのう</rt></ruby>は<ruby>4<rt>よっ</rt></ruby>つ:プロフィール、プロジェクト<ruby>一覧<rt>いちらん</rt></ruby>、ブログ、コンタクトフォームです。コンタクトフォームは Resend API でメール<ruby>送信<rt>そうしん</rt></ruby>します。<br>*(Có 4 chức năng chính: hồ sơ, danh sách dự án, blog, form liên hệ. Form gửi mail qua Resend API.)* |
| Nakamura | <ruby>質問<rt>しつもん</rt></ruby>です。レスポンシブは どう<ruby>対応<rt>たいおう</rt></ruby>していますか?<br>*(Cho hỏi. Em xử responsive thế nào?)* |
| Đại | Tailwind の breakpoint を<ruby>使<rt>つか</rt></ruby>っています。`md:` で <ruby>768<rt>ななひゃくろくじゅうはち</rt></ruby>px、`lg:` で <ruby>1024<rt>せんにじゅうよん</rt></ruby>px<ruby>以上<rt>いじょう</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けています。<br>*(Em dùng breakpoint Tailwind. `md:` cho ≥768px, `lg:` cho ≥1024px.)* |
| Nakamura | いいですね。SEO<ruby>対策<rt>たいさく</rt></ruby>はしていますか?<br>*(Tốt. Có làm SEO không?)* |
| Đại | はい、Next.js の `metadata` API で OGP と meta description を<ruby>設定<rt>せってい</rt></ruby>しています。Lighthouseで<ruby>95<rt>きゅうじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<br>*(Vâng, em dùng `metadata` API Next.js cho OGP và meta description. Lighthouse 95 điểm.)* |
| Nakamura | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>業界<rt>ぎょうかい</rt></ruby>レベルです。<ruby>拍手<rt>はくしゅ</rt></ruby>。<br>*(Tuyệt. Trình độ ngành luôn. Mời vỗ tay.)* |
| Cả lớp | (vỗ tay)<br> |

---

## Tình huống 9 — Phòng lab · 14:30, xem portfolio cohort khác

| Vai | Lời thoại |
|---|---|
| Yamato | yamatotanaka.dev — AtCoder<ruby>競技<rt>きょうぎ</rt></ruby>プログラミングの<ruby>解説<rt>かいせつ</rt></ruby>ブログです。<ruby>記事<rt>きじ</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>書<rt>か</rt></ruby>きました。<br>*(yamatotanaka.dev — Blog giải thích competitive programming AtCoder. Em viết 30 bài.)* |
| Aiko | aikosato.design — Figma <ruby>作品<rt>さくひん</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>のギャラリーです。デザイナーとしての<ruby>個性<rt>こせい</rt></ruby>を<ruby>出<rt>だ</rt></ruby>しました。<br>*(aikosato.design — Gallery 20 tác phẩm Figma. Em đưa cá tính designer ra.)* |
| Lin Wei | linwei.io — <ruby>分散<rt>ぶんさん</rt></ruby>システムと AWS Architecture の<ruby>記事<rt>きじ</rt></ruby>です。<ruby>英語<rt>えいご</rt></ruby>で<ruby>書<rt>か</rt></ruby>いています。<br>*(linwei.io — Bài viết về hệ thống phân tán và AWS Architecture. Em viết bằng tiếng Anh.)* |
| Rajesh | rajesh.cloud — DevOps + Terraform tutorials.<br> |
| Nakamura | <ruby>5<rt>ご</rt></ruby><ruby>名<rt>めい</rt></ruby>とも<ruby>個性<rt>こせい</rt></ruby>が<ruby>出<rt>で</rt></ruby>ていて<ruby>素晴<rt>すば</rt></ruby>らしい。これからも<ruby>更新<rt>こうしん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けてください。<ruby>就活<rt>しゅうかつ</rt></ruby>に<ruby>役立<rt>やくだ</rt></ruby>ちます。<br>*(Cả 5 người đều có cá tính, tuyệt thật. Tiếp tục cập nhật nhé. Sẽ có ích cho xin việc.)* |

---

## Tình huống 10 — Apt Senri-chuo · Tối 20:00, Đại refactor sau review

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai, anh đang refactor theo review của Yamato. Tách common type ra file riêng. |
| Mai | (tiếng Việt) Khó không anh? |
| Đại | (tiếng Việt) Không khó nhưng tốn thời gian. 10 file đều phải sửa import. May là TypeScript catch lỗi ngay khi sửa sai. |
| Mai | (tiếng Việt) TypeScript là gì hả anh? Em nghe tên hoài mà chưa biết. |
| Đại | (tiếng Việt) JavaScript có thêm type. Vd `string`, `number`, `boolean`. Viết sai type — compiler báo đỏ ngay. Đi xin việc ở Nhật bắt buộc phải biết. |
| Mai | (tiếng Việt) Mai em hỏi cô ở Yamato School có lớp lập trình cho người mới không nhỉ. |
| Đại | (tiếng Việt) Em ôn N2 xong tháng 12 đã. Sau đó anh dạy em React từ đầu. |

---

## Tình huống 11 — Cảnh tiếng Việt cuối · Chủ nhật trưa 12:00, gọi bố mẹ VN khoe vandai.dev

> Cảnh tiếng Việt — Đại và Mai gọi video call về cho bố mẹ Đại ở Hà Nội, khoe trang vandai.dev mới làm.

| Vai | Lời thoại |
|---|---|
| Bố Đại | (qua video) A con! Mai con! Bố mẹ đợi từ sáng. |
| Đại | Bố ơi mở trình duyệt giúp con, gõ "vandai.dev" nha. |
| Bố Đại | (đeo kính, gõ chậm) v-a-n-d-a-i chấm d-e-v... À! Hiện ra trang đẹp ghê! Có ảnh con luôn! |
| Đại | Đó là trang cá nhân con tự làm bằng React với Next.js. Bài tập cuối kỳ Web Tech I đó bố. |
| Mẹ Đại | Mẹ không hiểu kỹ thuật nhưng nhìn đẹp. Sạch sẽ, gọn gàng. Giống tính con nhỉ. |
| Đại | Cảm ơn mẹ. Con mua tên miền vandai.dev với 800 yên một năm — khoảng 130 nghìn VND. |
| Bố Đại | Rẻ vậy à? Tưởng đắt. |
| Đại | Hosting Vercel miễn phí cho sinh viên. Tiền chỉ trả cho domain thôi. |
| Mai | Bố mẹ ơi, hôm nay anh Đại tự refactor cả buổi sau khi Yamato — bạn cùng khoá — review code. Em nấu phở mà anh ấy không kịp ăn nóng. |
| Mẹ Đại | Mai phải nhắc con trai mẹ ăn đúng giờ. Lập trình mệt mắt lắm. |
| Đại | Vâng mẹ. À, tháng 7 con đi intern Cybozu Osaka 2 tuần luôn. Lương 10.000 yên/ngày. |
| Bố Đại | Tốt quá con! Bố tự hào về con. |
| Mẹ Đại | Linh-Anh em con cũng vừa bảo Sato hôm chủ nhật sang Senri thăm hai vợ chồng. Nhớ chuẩn bị tiếp đón. |
| Đại | Vâng con biết rồi. Bố mẹ giữ gìn sức khoẻ. |
| Mai | Bố mẹ chào ạ. |
| Bố mẹ | Chào hai con. |

---

## Đọng lại chương 4

Web技術 I chuyển sang giai đoạn 2 — Đại đào sâu DOM/event vanilla rồi nhảy thẳng React 18 + Next.js 14 + TypeScript + Tailwind. Khi gặp lỗi `Cannot read property 'addEventListener' of null`, Đại học **「エラーが出ました」** mở đầu nhờ sensei + **「コンソールに何か表示されていますか?」** từ Nakamura — cách debug standard. Thảo luận với cohort, Đại đưa quan điểm bằng **「〜の方が良いと思います」** chọn Next.js thay static site generator. Nhờ Yamato review code bằng **「コードレビューお願いできますか」** — refactor common type ra `types.ts`. Showcase với Nakamura-sensei mở đầu **「これがポートフォリオです」** + đáp câu hỏi về responsive, SEO, Lighthouse score 95. Mua domain Cloudflare 800 yên/year, deploy Vercel free tier, **vandai.dev online**. Cả cohort 5 người đều có site riêng — mỗi đứa một bản sắc (algorithm blog, design gallery, distributed systems, DevOps, generic portfolio). Cuối tuần khoe bố mẹ qua video call — bố Đại tự hào, mẹ Đại nhắc Mai cho con ăn đúng giờ.

> Từ vựng & mẫu câu chương này: エラーが出ました・〜の方が良いと思います・コードレビューお願いできますか・これがポートフォリオです・コンソールに表示されていますか・DOM・getElementById・querySelector・addEventListener・defer 属性・useState・状態管理フック・Virtual DOM・再描画・コンポーネント指向・JSX・型定義・リファクタ・プルリクエスト・レスポンシブ・breakpoint・SEO対策・Lighthouse・metadata API・ドメイン取得・ホスティング・Vercel・Cloudflare Registrar

## Bí quyết chương

- **「エラーが出ました」** + đọc message lỗi nguyên văn = mẫu báo lỗi standard với sensei. Không bao giờ "không chạy được" chung chung.
- **「〜の方が良いと思います」** = câu thảo luận tech choice trong cohort — đưa quan điểm có lý do, không áp đặt.
- **「コードレビューお願いできますか」** với senpai/sempai = chuẩn mực collab trong tech Nhật. Đi kèm pull request rõ ràng.
- Showcase portfolio: mở đầu **「これがポートフォリオです」** + nêu stack (framework + hosting + domain) + 4-5 chức năng chính → đáp Q&A về performance/SEO.
- Stack 2027 chuẩn ngành: **Next.js 14 + TypeScript + Tailwind CSS + Vercel + Cloudflare Registrar**. Sinh viên CS năm 2 nắm được = competitive trong xin việc.
- Domain `.dev` của Google requires HTTPS by default — phù hợp portfolio dev. 800 yên/year là giá vừa túi sinh viên.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 略 | りゃく | LƯỢC | viết tắt |
| 操作 | そうさ | THAO TÁC | thao tác |
| 仕組み | しくみ | — | cơ chế |
| 専用 | せんよう | CHUYÊN DỤNG | chuyên dụng |
| 全般 | ぜんぱん | TOÀN BAN | toàn bộ, tổng quát |
| 対応 | たいおう | ĐỐI ỨNG | hỗ trợ, xử lý |
| 現場 | げんば | HIỆN TRƯỜNG | thực tế công việc |
| 主流 | しゅりゅう | CHỦ LƯU | chủ đạo |
| 柔軟性 | じゅうなんせい | NHU NHUYỄN TÍNH | tính linh hoạt |
| 反応 | はんのう | PHẢN ỨNG | phản hồi |
| 原因 | げんいん | NGUYÊN NHÂN | nguyên nhân |
| 要素 | ようそ | YẾU TỐ | element |
| 実行 | じっこう | THỰC HÀNH | thực thi |
| 属性 | ぞくせい | THUỘC TÍNH | thuộc tính |
| 移動 | いどう | DI ĐỘNG | di chuyển |
| 数字 | すうじ | SỐ TỰ | số |
| 関連 | かんれん | QUAN LIÊN | liên quan |
| 状態管理 | じょうたいかんり | TRẠNG THÁI QUẢN LÝ | quản lý state |
| 導入 | どうにゅう | ĐẠO NHẬP | đưa vào, áp dụng |
| 公開 | こうかい | CÔNG KHAI | phát hành, công khai |
| 指向 | しこう | CHỈ HƯỚNG | hướng (paradigm) |
| 特徴 | とくちょう | ĐẶC TRƯNG | đặc trưng |
| 記法 | きほう | KÝ PHÁP | cú pháp |
| 圧倒的 | あっとうてき | ÁP ĐẢO ĐÍCH | áp đảo |
| 就職 | しゅうしょく | TỰU CHỨC | xin việc |
| 大手 | おおて | ĐẠI THỦ | công ty lớn |
| 再描画 | さいびょうが | TÁI MIÊU HOẠ | re-render |
| 差分 | さぶん | SAI PHÂN | diff, khác biệt |
| 反映 | はんえい | PHẢN ÁNH | phản ánh |
| 効率的 | こうりつてき | HIỆU SUẤT ĐÍCH | hiệu quả |
| 静的 | せいてき | TĨNH ĐÍCH | tĩnh |
| 移行 | いこう | DI HÀNH | migrate |
| 取得 | しゅとく | THỦ ĐẮC | mua, lấy được |
| 型定義 | かたていぎ | HÌNH ĐỊNH NGHĨA | định nghĩa kiểu |
| 共通 | きょうつう | CỘNG THÔNG | chung |
| 切り出す | きりだす | — | tách ra |
| 初期値 | しょきち | SƠ KỲ TRỊ | giá trị khởi tạo |
| 明示的 | めいじてき | MINH THỊ ĐÍCH | rõ ràng |
| 指定 | してい | CHỈ ĐỊNH | chỉ định |
| 修正 | しゅうせい | TU CHÍNH | sửa |
| 機能 | きのう | CƠ NĂNG | chức năng |
| 一覧 | いちらん | NHẤT LÃM | danh sách |
| 送信 | そうしん | TỐNG TÍN | gửi đi |
| 対策 | たいさく | ĐỐI SÁCH | biện pháp |
| 設定 | せってい | THIẾT ĐỊNH | cài đặt |
| 拍手 | はくしゅ | PHÁCH THỦ | vỗ tay |
| 個性 | こせい | CÁ TÍNH | cá tính |
| 作品 | さくひん | TÁC PHẨM | tác phẩm |
| 分散 | ぶんさん | PHÂN TÁN | phân tán |
| 就活 | しゅうかつ | TỰU HOẠT | hoạt động xin việc |
