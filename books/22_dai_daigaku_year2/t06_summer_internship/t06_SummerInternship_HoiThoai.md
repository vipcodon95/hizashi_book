# Sách 22 · T6. Summer 2 weeks internship Cybozu Osaka (サマーインターン)

> **Mục tiêu:** 1-15/8/2027. Đại lần đầu intern tech company. Cybozu Osaka office Honmachi. Project: build Kintone plugin (low-code). Mentor Inomata-san. Stipend ¥150k cho 2 tuần.

---

## Scene 1 — Day 1 onboarding

| Speaker | Lời thoại |
|---|---|
| Đại | (sảnh tầng 8 Cybozu Osaka)<br>*(Sảnh.)* |
| HR |<ruby>本日<rt>ほんじつ</rt></ruby>はサマーインターン<ruby>5<rt>ご</rt></ruby><ruby>名<rt>めい</rt></ruby>の<ruby>皆<rt>みな</rt></ruby>さま、<ruby>歓迎<rt>かんげい</rt></ruby>いたします！<br>*(Xin chào mừng 5 bạn thực tập sinh hè.)* |
| Đại | (giới thiệu vòng tròn)<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>のグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>専攻<rt>せんこう</rt></ruby>は<ruby>情報科学<rt>じょうほうかがく</rt></ruby>で、ReactとPostgreSQLが<ruby>得意<rt>とくい</rt></ruby>です。<br>*(Đại, Osaka U năm 2, chuyên ngành CNTT.)* |
| Inomata | (mentor)<ruby>本日<rt>ほんじつ</rt></ruby>からKintoneプラグイン<ruby>開発<rt>かいはつ</rt></ruby>プロジェクトを<ruby>担当<rt>たんとう</rt></ruby>していただきます。<br>*(Từ hôm nay sẽ làm dự án phát triển plugin Kintone.)* |
| Inomata | Kintoneは<ruby>弊社<rt>へいしゃ</rt></ruby>のローコードSaaSです。プラグインはJavaScript SDKで<ruby>開発<rt>かいはつ</rt></ruby>します。<br>*(Kintone là SaaS low-code của bên mình, plugin viết bằng JS SDK.)* |

---

## Scene 2 — Tech stack overview

| Speaker | Lời thoại |
|---|---|
| Inomata |<ruby>弊社<rt>へいしゃ</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>スタックをご<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Giới thiệu stack công ty.)* |
| Inomata | -<ruby>バックエンド<rt>バックエンド</rt></ruby>:Java/Kotlin（Spring Boot）— <ruby>自社<rt>じしゃ</rt></ruby>プロダクトKintone<br> |
| Inomata | - フロントエンド:React + TypeScript<br> |
| Inomata | - DB:MySQL 8 + Redisキャッシュ<br> |
| Inomata | - インフラ:AWS（EC2, S3, RDS, CloudFront）<br> |
| Inomata | - CI/CD:GitHub Actions + ArgoCD（Kubernetes）<br> |
| Đại |<ruby>本格的<rt>ほんかくてき</rt></ruby>ですね！<ruby>大学<rt>だいがく</rt></ruby>とは<ruby>規模<rt>きぼ</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>います。<br>*(Chuyên nghiệp thật! Khác hẳn quy mô ĐH.)* |

---

## Scene 3 — Plugin project — meeting room reservation tracker

| Speaker | Lời thoại |
|---|---|
| Inomata | グエンさんのプロジェクトは「<ruby>会議室<rt>かいぎしつ</rt></ruby><ruby>予約<rt>よやく</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>プラグイン」です。<br>*(Plugin theo dõi tình trạng đặt phòng họp.)* |
| Đại | (code Kintone JS SDK)<br>```javascript<br>kintone.events.on('app.record.index.show', (event) => {<br>  const records = event.records;<br>  const today = new Date();<br>  const upcoming = records.filter(r => new Date(r.start_time.value) > today);<br>  <br>  // Add badge to UI<br>  const header = kintone.app.getHeaderMenuSpaceElement();<br>  header.innerHTML = `<span class="badge">${upcoming.length} upcoming</span>`;<br>});<br>```<br> |
| Đại | (kiểm thử) Kintone admin → upload plugin → bật lên → thấy badge "5 upcoming" ✓<br> |

---

## Scene 4 — Daily standup + code review

| Speaker | Lời thoại |
|---|---|
| (Standup hằng ngày 10:00, 5 intern + 2 mentor) |
| Đại |<ruby>昨日<rt>きのう</rt></ruby>はKintone JS SDKを<ruby>学<rt>まな</rt></ruby>びました。<ruby>本日<rt>ほんじつ</rt></ruby>はプラグインv0.1を<ruby>提出<rt>ていしゅつ</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Hôm qua học SDK, hôm nay sẽ nộp v0.1.)* |
| Inomata | (review PR) コードがきれいです。<ruby>提案<rt>ていあん</rt></ruby>ですが、localStorageのキャッシュを<ruby>追加<rt>ついか</rt></ruby>するとパフォーマンスが<ruby>向上<rt>こうじょう</rt></ruby>しますよ。<br>*(Code sạch. Đề xuất thêm cache localStorage để tăng hiệu năng.)* |
| Đại | (code v0.2) `localStorage.setItem('kintone_cache', JSON.stringify(records))` + TTL 5 phút<br> |

---

## Scene 5 — Cybozu culture · 5/8

| Speaker | Lời thoại |
|---|---|
| Inomata | Cybozuで<ruby>有名<rt>ゆうめい</rt></ruby>なのは「<ruby>100<rt>ひゃく</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>100<rt>ひゃく</rt></ruby><ruby>通<rt>とお</rt></ruby>りの<ruby>働<rt>はたら</rt></ruby>き<ruby>方<rt>かた</rt></ruby>」です。<br>*(Slogan nổi tiếng: 100 người 100 cách làm việc.)* |
| Inomata | リモートワークとフレックスタイム、<ruby>各自<rt>かくじ</rt></ruby>で<ruby>選<rt>えら</rt></ruby>べます。<br>*(Remote + flex, mỗi người tự chọn.)* |
| Inomata |<ruby>新卒<rt>しんそつ</rt></ruby>の<ruby>初任給<rt>しょにんきゅう</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>35<rt>さんじゅうご</rt></ruby>～<ruby>45<rt>よんじゅうご</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby> +<ruby>賞与<rt>しょうよ</rt></ruby><ruby>6<rt>ろっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>分<rt>ぶん</rt></ruby>です。<br>*(Lương fresh ¥350–450k/tháng + thưởng 6 tháng.)* |
| Đại |<ruby>魅力的<rt>みりょくてき</rt></ruby>ですね！<br>*(Hấp dẫn quá!)* |

---

## Scene 6 — Final present + offer hint · 14/8

| Speaker | Lời thoại |
|---|---|
| Đại | (thuyết trình 10 phút + demo plugin)<br>*(Thuyết trình.)* |
| Senior eng |<ruby>素晴<rt>すば</rt></ruby>らしいです！コードの<ruby>品質<rt>ひんしつ</rt></ruby>もキャッシュの<ruby>提案<rt>ていあん</rt></ruby>も<ruby>賢<rt>かしこ</rt></ruby>いです。<br>*(Tuyệt vời! Chất lượng code và đề xuất cache đều thông minh.)* |
| HR | グエンさん、<ruby>3<rt>さん</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>での<ruby>長期<rt>ちょうき</rt></ruby>インターンシップにご<ruby>興味<rt>きょうみ</rt></ruby>ありますか？<br>*(Anh có quan tâm internship dài hạn vào năm 3 không?)* |
| Đại |<ruby>是非<rt>ぜひ</rt></ruby><ruby>参加<rt>さんか</rt></ruby>したいです！<br>*(Em rất muốn tham gia!)* |
| HR |<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>のRAGプロジェクトに<ruby>応募<rt>おうぼ</rt></ruby>してください！<br>*(Apply dự án RAG 3 tháng từ 6/2028!)* |
| Đại | (LINE gửi Mai) Em ơi! Cybozu mời anh apply intern dài 3 tháng năm 3 nè!<br>*(Được mời.)* |
| Mai | (VN) Trời ơi tuyệt vời quá anh!<br>*(Tuyệt.)* |

---

## Scene 7 — Stipend ¥150k + reflect

| Speaker | Lời thoại |
|---|---|
| Đại | (VN) ¥150k cho 2 tuần intern. Sau thuế còn khoảng ¥130k.<br>*(¥150k.)* |
| Đại | (VN) Tiền nhà + điện nước tháng 8/2027 = ¥85k + ¥10k. Tiền hỗ trợ intern đủ trả.<br>*(Trả nhà.)* |
| Đại | (VN, nhật ký) 1–15/8/2027 thực tập hè ở Cybozu Osaka. Build plugin Kintone theo dõi đặt phòng họp.<br>*(Intern.)* |
| Đại | (VN) Stack thực tế: React + Java/Kotlin + MySQL + AWS + GitHub Actions.<br>*(Stack.)* |
| Đại | (VN) Được mời apply intern dài 3 tháng 6/2028 dự án RAG! Mở đường cho sách 23.<br>*(Mở đường.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| サマーインターン | サマーインターン | Thực tập hè |
| Kintone | キントーン | SaaS low-code của Cybozu |
| Plugin | プラグイン | Plugin / mô-đun mở rộng |
| JavaScript SDK | ジャバスクリプトSDK | Bộ SDK JavaScript |
| Spring Boot | スプリングブート | Framework Java |
| MySQL 8 | マイエスキューエル | RDB mã nguồn mở |
| Redis | レディス | DB cache trong RAM |
| AWS | エーダブリュエス | Amazon Web Services |
| EC2/S3/RDS | イーシーツー/エススリー/アールディーエス | Dịch vụ lõi AWS |
| CI/CD | シーアイシーディー | Tích hợp / triển khai liên tục |
| GitHub Actions | ギットハブ アクションズ | CI/CD của GitHub |
| Kubernetes | クバネティス | Điều phối container |
| ArgoCD | アルゴシーディー | GitOps cho Kubernetes |
| 100人100通り | ひゃくにんひゃくとおり | Slogan "100 người 100 cách" của Cybozu |
| 初任給 | しょにんきゅう | Lương khởi điểm sinh viên mới ra trường |

## Bí quyết chương

- **Lần đầu intern thật**: Plugin Kintone là dự án thực tế hợp với SV năm 2.
- **Stack Cybozu chuẩn**: Đúng công nghệ 2027.
- **Lời mời intern dài**: Mở đường cho dự án RAG ở sách 23.

> *"Cybozu intern 2 tuần. Kintone plugin. ¥150k stipend. Long intern RAG mời 6/2028."*
