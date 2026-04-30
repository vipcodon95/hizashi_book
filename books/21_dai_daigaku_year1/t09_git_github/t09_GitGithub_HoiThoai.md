# Sách 21 · T9. Git + GitHub + open source intro (Git・GitHub入門)

> **Mục tiêu:** 12/2026. Lecture đặc biệt do industry guest (Kawasaki-san, GitHub Japan DevRel) dạy. Git deep: branch, merge, rebase, conflict. GitHub Flow + PR review. Đại first PR vào open source — Hugo theme nhỏ. Cohort setup mono-repo cho team project.

## Bối cảnh

- Thời gian: 12/2026 (cuối kỳ 1)
- Guest: Kawasaki-san (40t, GitHub Japan Developer Relations, đến Osaka U guest 1 buổi)
- Đại đã có GitHub account 1 năm (từ trường tiếng) nhưng chỉ commit cá nhân, chưa contribute open source

---

## Scene 1 — Kawasaki-san intro · 10:00

| Speaker | Lời thoại |
|---|---|
| Kawasaki | <ruby>本日<rt>ほんじつ</rt></ruby>はGitHub<ruby>入門<rt>にゅうもん</rt></ruby><ruby>講義<rt>こうぎ</rt></ruby>です。GitHub Japan DevRelの<ruby>川崎<rt>かわさき</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Hôm nay là buổi giảng nhập môn GitHub. Tôi là Kawasaki, thuộc bộ phận DevRel của GitHub Japan.)* |
| Kawasaki | Gitは2005<ruby>年<rt>ねん</rt></ruby>にLinus Torvalds（Linuxの<ruby>創始者<rt>そうししゃ</rt></ruby>）が<ruby>開発<rt>かいはつ</rt></ruby>しました。<br>*(Git được Linus Torvalds — người sáng lập Linux — phát triển vào năm 2005.)* |
| Kawasaki | <ruby>分散型<rt>ぶんさんがた</rt></ruby>バージョン<ruby>管理<rt>かんり</rt></ruby>システム（DVCS）です。<br>*(Là hệ thống quản lý phiên bản phân tán — DVCS.)* |
| Kawasaki | GitHubはMicrosoftが2018<ruby>年<rt>ねん</rt></ruby>に<ruby>買収<rt>ばいしゅう</rt></ruby>しました。2024<ruby>年<rt>ねん</rt></ruby>には1<ruby>億<rt>おく</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>を<ruby>突破<rt>とっぱ</rt></ruby>。<br>*(GitHub được Microsoft mua lại năm 2018. Đến năm 2024 đã vượt mốc 100 triệu người dùng đăng ký.)* |

---

## Scene 2 — Branch + merge · 10:30

| Speaker | Lời thoại |
|---|---|
| Kawasaki | (whiteboard) Nhánh `main` + nhánh `feature/login`.<br>*(2 nhánh.)* |
| Đại | (terminal) `git checkout -b feature/add-search`<br> |
| Đại | (terminal) `git add .; git commit -m "Add search feature"`<br> |
| Đại | (terminal) `git push origin feature/add-search`<br> |
| Đại | (trình duyệt) GitHub UI → "Create Pull Request" → giao Yamato làm reviewer<br> |
| Yamato | (LINE) PRを<ruby>確認<rt>かくにん</rt></ruby>しました。Approveします!<br>*(Tớ xem PR rồi. Approve nhé!)* |
| Đại | (GitHub UI) Merge vào nhánh main<br> |

---

## Scene 3 — Conflict resolution · 11:00

| Speaker | Lời thoại |
|---|---|
| Kawasaki | <ruby>競合<rt>きょうごう</rt></ruby>（Conflict）とは、<ruby>二<rt>ふた</rt></ruby>りが<ruby>同<rt>おな</rt></ruby>じファイルを<ruby>編集<rt>へんしゅう</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>に<ruby>起<rt>お</rt></ruby>きます。<br>*(Xung đột (Conflict) là khi hai người cùng sửa một file.)* |
| Đại | (demo) `git pull origin main` → `CONFLICT (content): Merge conflict in app.py`<br> |
| Đại | (VSCode) Dấu hiệu xung đột:<br>```<br><<<<<<< HEAD<br>print("Hello from Đại")<br>=======<br>print("Hello from Yamato")<br>>>>>>>> main<br>```<br> |
| Đại | (sửa thủ công) Giữ cả hai:<br>```python<br>print("Hello from Đại")<br>print("Hello from Yamato")<br>```<br> |
| Đại | (terminal) `git add app.py; git commit -m "Resolve conflict"`<br> |
| Aiko | <ruby>競合<rt>きょうごう</rt></ruby><ruby>解決<rt>かいけつ</rt></ruby>は<ruby>最初<rt>さいしょ</rt></ruby><ruby>怖<rt>こわ</rt></ruby>かったけど、<ruby>慣<rt>な</rt></ruby>れますね！<br>*(Lúc đầu sợ giải quyết xung đột nhưng rồi cũng quen!)* |

---

## Scene 4 — Rebase vs Merge · 11:30

| Speaker | Lời thoại |
|---|---|
| Kawasaki | Merge：<ruby>合流<rt>ごうりゅう</rt></ruby>の<ruby>履歴<rt>りれき</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>ります。<ruby>履歴<rt>りれき</rt></ruby>が<ruby>枝分<rt>えだわ</rt></ruby>かれします。<br>*(Merge: lưu lại lịch sử hợp nhánh, lịch sử có chia nhánh.)* |
| Kawasaki | Rebase：<ruby>履歴<rt>りれき</rt></ruby>が<ruby>一直線<rt>いっちょくせん</rt></ruby>になります。<ruby>変更<rt>へんこう</rt></ruby>のコミット<ruby>順<rt>じゅん</rt></ruby>を<ruby>並<rt>なら</rt></ruby>べ<ruby>替<rt>か</rt></ruby>えます。<br>*(Rebase: lịch sử thành đường thẳng. Sắp xếp lại thứ tự các commit thay đổi.)* |
| Kawasaki | <ruby>注意<rt>ちゅうい</rt></ruby>：push<ruby>済<rt>ず</rt></ruby>みのブランチをrebaseするのは<ruby>危険<rt>きけん</rt></ruby>です。<ruby>個人<rt>こじん</rt></ruby>のブランチのみにしてください。<br>*(Lưu ý: rebase nhánh đã push lên rất nguy hiểm. Chỉ dùng cho nhánh cá nhân.)* |
| Đại | (terminal) `git rebase main` (khi đang ở feature branch) → lịch sử thẳng<br> |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>のチームは<ruby>常<rt>つね</rt></ruby>にmergeの<ruby>前<rt>まえ</rt></ruby>にrebaseするよ。<ruby>履歴<rt>りれき</rt></ruby>がきれい。<br>*(Team tớ luôn rebase trước khi merge. Lịch sử gọn gàng.)* |

---

## Scene 5 — GitHub Flow · 13:00

| Speaker | Lời thoại |
|---|---|
| Kawasaki | GitHub Flowは<ruby>5<rt>ご</rt></ruby>つのステップです：<br>*(GitHub Flow gồm 5 bước:)* |
| Kawasaki | 1：`main`ブランチは<ruby>常<rt>つね</rt></ruby>にデプロイ<ruby>可能<rt>かのう</rt></ruby>な<ruby>状態<rt>じょうたい</rt></ruby>に。<br>*(1: nhánh main luôn ở trạng thái có thể triển khai.)* |
| Kawasaki | 2：featureブランチを<ruby>作成<rt>さくせい</rt></ruby>。<br>*(2: tạo nhánh feature.)* |
| Kawasaki | 3：commitとpushを<ruby>頻繁<rt>ひんぱん</rt></ruby>に。<br>*(3: commit và push thường xuyên.)* |
| Kawasaki | 4：Pull Requestを<ruby>開<rt>ひら</rt></ruby>いてレビュー。<br>*(4: mở Pull Request và review.)* |
| Kawasaki | 5：mainにmergeしてデプロイ。<br>*(5: merge vào main và triển khai.)* |
| Đại | シンプルですね！<br>*(Đơn giản nhỉ!)* |
| Kawasaki | GitFlow（Nielsen 2010<ruby>年<rt>ねん</rt></ruby>）は<ruby>古<rt>ふる</rt></ruby>めです：developブランチ＋releaseブランチ＋hotfix。<ruby>大企業<rt>だいきぎょう</rt></ruby><ruby>向<rt>む</rt></ruby>けですね。<ruby>現代<rt>げんだい</rt></ruby>のスタートアップはGitHub Flow＋Trunk-Basedです。<br>*(GitFlow đã cũ. Phù hợp doanh nghiệp lớn. Startup hiện đại dùng GitHub Flow + Trunk-Based.)* |

---

## Scene 6 — First open source PR · 14:30

| Speaker | Lời thoại |
|---|---|
| Kawasaki | <ruby>本日<rt>ほんじつ</rt></ruby>はみんな<ruby>初<rt>はじ</rt></ruby>めてのオープンソースPRを<ruby>提出<rt>ていしゅつ</rt></ruby>しましょう！<br>*(Hôm nay mọi người sẽ gửi PR mã nguồn mở đầu tiên!)* |
| Kawasaki | <ruby>練習<rt>れんしゅう</rt></ruby><ruby>用<rt>よう</rt></ruby>のリポジトリ：github.com/firstcontributions/first-contributions<br>*(Repo dùng để luyện tập.)* |
| Đại | (terminal) `gh repo fork firstcontributions/first-contributions --clone`<br> |
| Đại | (sửa Contributors.md) Thêm `- [Đại Nguyen](https://github.com/vandai-osaka)` theo thứ tự ABC<br> |
| Đại | (terminal) `git checkout -b add-dai-name; git add .; git commit -m "Add Đại Nguyen to contributors"; git push origin add-dai-name`<br> |
| Đại | (trình duyệt) GitHub → Mở PR<br> |
| Đại | (10 phút sau) Maintainer tự động merge!<br>*(Tự động merge!)* |
| Đại | (VN, độc thoại) Đóng góp mã nguồn mở đầu tiên! Nhỏ nhưng mang tính biểu tượng.<br>*(Đóng góp đầu.)* |

---

## Scene 7 — Real PR — Hugo theme · 18:00

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, độc thoại) Cohort vừa cài đặt blog Hugo. Đi tìm theme đẹp → hugo-theme-stack có lỗi không hỗ trợ ngôn ngữ RTL.<br>*(Phát hiện lỗi.)* |
| Đại | (terminal) `gh repo fork CaiJimmy/hugo-theme-stack --clone`<br> |
| Đại | (sửa code) `assets/scss/_mixin.scss` — sửa flex-direction cho RTL:<br> |
| Đại | (commit) `git commit -m "fix: RTL support for sidebar layout"`<br> |
| Đại | (mô tả PR, tiếng Anh):<br>"Fixes #245. The sidebar layout had hardcoded `flex-direction: row` which broke for RTL languages (Arabic, Hebrew). Added `[dir='rtl'] .sidebar { flex-direction: row-reverse; }`."<br> |
| Đại | (Gửi PR → 2 ngày sau)<br> |
| Maintainer | (bình luận PR) "Great catch! LGTM. Merging."<br> |
| Đại | (LINE Yamato) Maintainer đã merge PR của tớ! Đóng góp OSS thực thụ đầu tiên!<br>*(OSS thực thụ đầu tiên!)* |
| Yamato | (LINE) おめでとう！GitHubのプロフィールが<ruby>華<rt>はな</rt></ruby>やかになるね！<br>*(Chúc mừng! Profile GitHub đẹp lên rồi nhé!)* |

---

## Scene 8 — Đêm reflect · 23:00

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 12/2026. Học sâu Git + GitHub. Kawasaki-san DevRel GitHub Japan đến giảng khách mời.<br>*(Buổi giảng Git.)* |
| Đại | (VN) Nhánh, merge, rebase, xung đột, GitHub Flow ✓<br>*(Xong.)* |
| Đại | (VN) PR mã nguồn mở đầu tiên (firstcontributions) → PR thực thụ sửa RTL cho Hugo theme → đã merge!<br>*(OSS!)* |
| Đại | (VN) Profile GitHub có 2 ô đóng góp xanh. Năm 2 sẽ đóng góp nhiều hơn.<br>*(GitHub.)* |
| Đại | (VN) 1 tháng nữa về Việt Nam cưới Mai. Vừa hồi hộp vừa hạnh phúc.<br>*(1 tháng.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| 分散型バージョン管理 | ぶんさんがたバージョンかんり | DVCS |
| ブランチ | ブランチ | Branch |
| マージ | マージ | Merge |
| リベース | リベース | Rebase |
| 競合 | きょうごう | Conflict |
| Pull Request | プルリクエスト | PR |
| Code Review | コードレビュー | Code review |
| GitHub Flow | ギットハブフロー | Modern simple Git workflow |
| GitFlow | ギットフロー | Old enterprise workflow |
| Trunk-Based | トランクベース | Modern alternative |
| Open Source | オープンソース | OSS |
| Contribution | コントリビューション | Đóng góp |
| Fork | フォーク | Fork repo |
| LGTM | エルジーティーエム | Looks Good To Me (PR approve) |
| DevRel | デブレル | Developer Relations |

## Bí quyết chương

- **GitHub Japan guest**: Realistic — GitHub Japan DevRel hay đến Osaka U/Tokyo U guest lectures.
- **GitHub Flow vs GitFlow**: Modern best practice. Reader học cập nhật.
- **First OSS PR**: Symbolic moment. Setup cho contributing nhiều hơn năm 2-3.
- **Hugo theme RTL fix**: Realistic small but impactful PR — không phải mock.

> *"Git + GitHub deep. First OSS PR merged. GitHub profile 2 contributions xanh. 1 tháng cưới Mai."*
