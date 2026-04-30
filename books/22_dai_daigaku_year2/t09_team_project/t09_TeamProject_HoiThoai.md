# Sách 22 · T9. プロジェクト演習 — team 4 web app deploy VPS (チーム開発)

> **Mục tiêu:** 11-12/2027. プロジェクト演習 = team project assigned. Đại + Yamato + Aiko + Lin Wei team build "OsakaU Cohort Platform" — site cho SV cùng khoa share notes/lab/CV. Deploy lên VPS Xserver ¥900/月. Real production traffic 101 SV khoa CNTT.

## Bối cảnh

- Sensei: Watanabe-sensei (HCI Lab head)
- Team 4: Đại (backend), Yamato (algorithm/search), Aiko (UI/UX), Lin Wei (DevOps/cloud)
- Tech: Next.js + FastAPI + PostgreSQL + Redis + Docker + Xserver VPS

---

## Scene 1 — Project assigned · 11/11

| Speaker | Lời thoại |
|---|---|
| Watanabe | <ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>4<rt>よん</rt></ruby><ruby>名<rt>めい</rt></ruby>×20<ruby>グループ<rt>グループ</rt></ruby>でチーム<ruby>編成<rt>へんせい</rt></ruby>.プロジェクト:<ruby>問題<rt>もんだい</rt></ruby><ruby>解決<rt>かいけつ</rt></ruby>+デプロイ+12<ruby>月<rt>がつ</rt></ruby>22<ruby>日<rt>にち</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>.<br>*(Hôm nay chia nhóm 4 người × 20. Project: giải bài toán + deploy + phát biểu 22/12.)* |
| Đại | (thì thầm Yamato) <ruby>俺<rt>おれ</rt></ruby>たち+ Aiko + Lin Wei = nhóm 1 OSU CS3.<br>*(Nhóm OSU CS3.)* |

---

## Scene 2 — Brainstorm + spec · 12/11

| Speaker | Lời thoại |
|---|---|
| Aiko | <ruby>問題<rt>もんだい</rt></ruby>:101<ruby>名<rt>めい</rt></ruby>khoa CNTT<ruby>連絡<rt>れんらく</rt></ruby><ruby>難<rt>むずか</rt></ruby>しい. LINE group<ruby>大<rt>おお</rt></ruby>すぎ.<br>*(101 SV khó liên lạc. LINE group lớn quá.)* |
| Lin Wei | (English) Solution: dedicated platform with notes share + lab discussion + CV/portfolio.<br>*(Nền tảng riêng để chia sẻ note + thảo luận lab + CV.)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>!<ruby>名前<rt>なまえ</rt></ruby>:「OsakaU CS Hub」.<br>*(Tán thành! Tên: OsakaU CS Hub.)* |
| Yamato | <ruby>機能<rt>きのう</rt></ruby>:<br> |
| Yamato | - Auth: GitHub OAuth (only @ecs.osaka-u.ac.jp emails)<br> |
| Yamato | - Notes share (markdown + tag)<br> |
| Yamato | - Course discussion forum<br> |
| Yamato | - CV/portfolio gallery<br> |
| Yamato | - Search (Elasticsearch hoặc full-text PostgreSQL)<br> |

---

## Scene 3 — Architecture + sprint plan · 14/11

| Speaker | Lời thoại |
|---|---|
| Đại | (whiteboard) Architecture:<br> |
| Đại | Frontend Next.js 14 + TypeScript + Tailwind (Aiko)<br> |
| Đại | Backend FastAPI + Pydantic (Đại)<br> |
| Đại | DB PostgreSQL 16 + Redis (cache + session) (Lin Wei)<br> |
| Đại | Search Postgres full-text (Yamato)<br> |
| Đại | Deploy: Xserver VPS ¥900/m + Docker Compose<br> |
| Đại | CI/CD: GitHub Actions auto-deploy on push to main<br> |
| Aiko | Sprint: 6 tuần → 12 tính năng → demo 2 tuần/lần<br>*(Sprint 6 tuần.)* |

---

## Scene 4 — Daily standup + crisis · 25/11

| Speaker | Lời thoại |
|---|---|
| (Daily 19:30 Discord 30 phút)<br> |
| Đại | Backend: 8/12 endpoint xong. Auth + notes CRUD ✓. Forum 50%.<br> |
| Yamato | Search: full-text trigram index. Đại sẽ giúp phần DB.<br> |
| Aiko | UI 9/12 màn hình xong. Mobile responsive ✓.<br> |
| Lin Wei | (English) Crisis: Xserver VPS RAM limit 1GB → Redis OOM.<br>*(Sự cố: VPS giới hạn 1GB → Redis tràn bộ nhớ.)* |
| Đại | Cách giải: chuyển session từ Redis → Postgres + Redis chỉ dùng cho cache hot.<br>*(Chuyển session.)* |
| Lin Wei | (English) OK. Will refactor tonight.<br>*(OK, tối nay sẽ refactor.)* |

---

## Scene 5 — Production launch · 12/12

| Speaker | Lời thoại |
|---|---|
| Đại | (terminal) `gh release create v1.0.0 --notes "First production launch"`<br> |
| Đại | (browser) https://cs-hub.osu-cs3.dev → live!<br> |
| Aiko | (LINE 101 SV khoa) みんな!OsakaU CS Hub<ruby>公開<rt>こうかい</rt></ruby>!GitHub<ruby>認証<rt>にんしょう</rt></ruby>で<ruby>登録<rt>とうろく</rt></ruby>してね!<br>*(Mọi người! OsakaU CS Hub đã lên! Đăng ký bằng tài khoản GitHub nhé!)* |
| (10 phút sau)<br> |
| Đại | (Datadog dashboard) 25 SV đăng ký ngay giờ đầu!<br>*(25 SV giờ đầu!)* |
| Yamato | (Discord) Note "OS Lecture 5 summary" đang trending!<br>*(Đang trending.)* |

---

## Scene 6 — Final present · 22/12

| Speaker | Lời thoại |
|---|---|
| Watanabe | <ruby>本日<rt>ほんじつ</rt></ruby>20<ruby>チーム<rt>チーム</rt></ruby><ruby>最終<rt>さいしゅう</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>です.<br>*(Hôm nay 20 nhóm phát biểu cuối khóa.)* |
| Đại | (phát biểu 5 phút) 「OsakaU CS Hub」: 75/101 SV active sau 2 tuần. 250 note. 95 forum thread. Đã production có monitoring.<br>*(Số liệu.)* |
| Watanabe | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby><ruby>実<rt>じつ</rt></ruby>トラフィック!<ruby>採点<rt>さいてん</rt></ruby>A+.<br>*(Tuyệt! Lưu lượng thật ở môi trường production! Điểm A+.)* |
| Aiko | (LINE nhóm) A+!!!<br>*(A+!!!)* |

---

## Scene 7 — Đêm reflect

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 11-12/2027. プロジェクト演習 nhóm 4. "OsakaU CS Hub" Next.js + FastAPI + Postgres + Redis + Docker + Xserver.<br>*(Project nhóm.)* |
| Đại | (VN) Sprint 6 tuần. Đã ra production. 75/101 SV active. A+.<br>*(Production.)* |
| Đại | (VN) Sự cố Redis OOM → chuyển session sang Postgres. Đúng kiểu debug production thật.<br>*(Sự cố.)* |
| Đại | (VN) Mạch ý tưởng Hizashi tiếp diễn — em đã có kinh nghiệm full-stack production.<br>*(Mầm Hizashi.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| プロジェクト演習 | プロジェクトえんしゅう | Team project class |
| GitHub OAuth | ギットハブオーオース | OAuth via GitHub |
| Pydantic | パイダンティック | Python data validation |
| Redis | レディス | In-memory cache |
| Elasticsearch | エラスティックサーチ | Search engine |
| Full-text search | フルテキストサーチ | DB native search |
| Trigram index | トライグラム インデックス | PostgreSQL fuzzy search |
| Docker Compose | ドッカーコンポーズ | Multi-container orchestration |
| Xserver VPS | エックスサーバー | Japan VPS provider |
| OOM | オーオーエム | Out of Memory |
| Datadog | データドッグ | Monitoring SaaS |
| Sprint | スプリント | Agile sprint |

## Bí quyết chương

- **Lưu lượng production thật**: Khác hackathon — duy trì 6 tuần + có monitoring.
- **Sự cố Redis OOM**: Tình huống giới hạn VPS rất thực tế.
- **101 SV cùng dùng**: Network effect thật sự.
- **Chuẩn bị Hizashi**: Đại đã có kinh nghiệm full-stack production.

> *"Project nhóm: OsakaU CS Hub. 75/101 active. A+. Có kinh nghiệm full-stack production."*
