# Sách 22 · T4. Web技術 I — HTML/CSS/JS vanilla → React intro (Webフロントエンド)

> **Mục tiêu:** 6-7/2027. Lecture HTML/CSS/JS deep + React intro. Cohort xây personal portfolio site đầu. Đại deploy site cá nhân (vandai.dev) lên Vercel.

## Bối cảnh

- Sensei Nakamura chuyển từ vanilla → React giữa kỳ
- Hosting: Vercel free tier
- Domain: vandai.dev mua Cloudflare Registrar ¥800/year

---

## Scene 1 — DOM + JavaScript event · 9:00

| Speaker | Lời thoại |
|---|---|
| Nakamura | DOM＝Document Object Model。JSでHTMLを<ruby>操作<rt>そうさ</rt></ruby>します。<br>*(DOM. Dùng JS để thao tác HTML.)* |
| Đại | (code)<br>```javascript<br>const btn = document.getElementById('myBtn');<br>btn.addEventListener('click', () => {<br>  document.querySelector('h1').textContent = 'Clicked!';<br>});<br>```<br> |
| Nakamura | <ruby>注意点<rt>ちゅういてん</rt></ruby>として、バニラJSは<ruby>小規模<rt>しょうきぼ</rt></ruby>アプリ<ruby>向<rt>む</rt></ruby>け。<ruby>大規模<rt>だいきぼ</rt></ruby>になればリアクトかVueに<ruby>移行<rt>いこう</rt></ruby>します。<br>*(Lưu ý: Vanilla JS hợp ứng dụng nhỏ. Quy mô lớn thì chuyển sang React hoặc Vue.)* |

---

## Scene 2 — React intro · 14:00

| Speaker | Lời thoại |
|---|---|
| Nakamura | リアクトはMeta<ruby>社<rt>しゃ</rt></ruby>が<ruby>2013<rt>にせんじゅうさん</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>公開<rt>こうかい</rt></ruby>。コンポーネント<ruby>指向<rt>しこう</rt></ruby>でVirtual DOMを<ruby>採用<rt>さいよう</rt></ruby>しています。<br>*(React do Meta phát hành năm 2013. Hướng component, dùng Virtual DOM.)* |
| Đại | (code) Counter component:<br>```jsx<br>import { useState } from 'react';<br><br>function Counter() {<br>  const [count, setCount] = useState(0);<br>  return (<br>    <div><br>      <p>Count: {count}</p><br>      <button onClick={() => setCount(count + 1)}>+1</button><br>    </div><br>  );<br>}<br><br>export default Counter;<br>```<br> |
| Nakamura | useStateは<ruby>状態管理<rt>じょうたいかんり</rt></ruby>フックです。setCountを<ruby>呼<rt>よ</rt></ruby>ぶと<ruby>再描画<rt>さいびょうが</rt></ruby>されます。<br>*(useState là hook quản lý trạng thái. Gọi setCount sẽ kích hoạt vẽ lại giao diện.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>のFigmaのUI、コンポーネントに<ruby>変換<rt>へんかん</rt></ruby>しやすい！<br>*(UI Figma của mình chuyển sang component dễ ghê!)* |

---

## Scene 3 — useEffect + API call · 16:00

| Speaker | Lời thoại |
|---|---|
| Nakamura | useEffectは<ruby>副作用<rt>ふくさよう</rt></ruby>フックです。APIの<ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>しが<ruby>主<rt>おも</rt></ruby>な<ruby>用途<rt>ようと</rt></ruby>です。<br>*(useEffect là hook dành cho hiệu ứng phụ. Chủ yếu dùng để gọi API.)* |
| Đại | (code)<br>```jsx<br>import { useState, useEffect } from 'react';<br><br>function UserList() {<br>  const [users, setUsers] = useState([]);<br>  <br>  useEffect(() => {<br>    fetch('https://jsonplaceholder.typicode.com/users')<br>      .then(res => res.json())<br>      .then(data => setUsers(data));<br>  }, []);<br>  <br>  return (<br>    <ul><br>      {users.map(u => <li key={u.id}>{u.name}</li>)}<br>    </ul><br>  );<br>}<br>```<br> |
| Nakamura | `[]` の<ruby>依存配列<rt>いぞんはいれつ</rt></ruby>を<ruby>指定<rt>してい</rt></ruby>すると、マウント<ruby>時<rt>じ</rt></ruby>に<ruby>1<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby>だけ<ruby>実行<rt>じっこう</rt></ruby>されます。<br>*(Khi truyền mảng dependency rỗng `[]`, chỉ chạy đúng một lần lúc mount.)* |

---

## Scene 4 — Personal portfolio project · weekend

| Speaker | Lời thoại |
|---|---|
| Đại | (terminal) `npx create-next-app@latest vandai-portfolio --typescript --tailwind --app`<br> |
| Đại | (code) Pages: `/` home, `/about`, `/projects`, `/contact`<br> |
| Đại | (deploy) `vercel --prod`<br> |
| Đại | (DNS Cloudflare) Set A record vandai.dev → Vercel<br> |
| Đại | (browser) https://vandai.dev → "Đại Nguyen — CS student @ Osaka U" ✓<br> |
| Đại | (LINE Mai) Em ơi! Trang cá nhân của anh lên rồi: vandai.dev<br>*(Site!)* |
| Mai | (VN) Đẹp ghê! Anh là lập trình viên thực thụ rồi đấy.<br>*(Pro.)* |

---

## Scene 5 — Cohort show portfolios · 27/7

| Speaker | Lời thoại |
|---|---|
| Yamato | yamatotanaka.dev — Algorithm + AtCoder problems blog<br> |
| Aiko | aikosato.design — Figma + UI projects gallery<br> |
| Lin Wei | linwei.io — Distributed systems + AWS architecture<br> |
| Rajesh | rajesh.cloud — DevOps + Terraform tutorials<br> |
| Đại | vandai.dev — Generic portfolio + CV + blog<br> |

---

## Scene 6 — Đêm reflect

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 6-7/2027. Đào sâu Web giao diện. HTML5 → CSS3 → JS ES2024 → React 18 với Next.js 14.<br>*(Web.)* |
| Đại | (VN) Trang cá nhân vandai.dev đã chạy rồi! Tên miền 800 yên cộng Vercel gói miễn phí.<br>*(Online.)* |
| Đại | (VN) Cả nhóm năm trang — mỗi đứa một stack riêng. Mỗi đứa một bản sắc.<br>*(Cohort sites.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| DOM | ドム | Document Object Model |
| addEventListener | アドイベントリスナー | Bind event |
| React | リアクト | Meta JS lib |
| Component | コンポーネント | Reusable UI piece |
| Virtual DOM | バーチャルDOM | React optimization |
| useState | ユーズステート | React state hook |
| useEffect | ユーズエフェクト | React side effect hook |
| Next.js | ネクストジェイエス | React meta-framework |
| TypeScript | タイプスクリプト | Typed JS by Microsoft |
| Tailwind | テールウィンド | Utility CSS |
| Vercel | ヴァーセル | Hosting platform (Next.js maker) |
| Cloudflare Registrar | クラウドフレアレジストラー | Cheap domain registrar |

## Bí quyết chương

- **React + Next.js + Tailwind + TypeScript = 2027 stack chuẩn**.
- **vandai.dev**: Personal branding sớm.

> *"React 18 + Next.js 14 + TypeScript + Tailwind. vandai.dev online. Cohort 5 sites identity."*
