# Rule 39 — Xây dựng văn hóa Hou-Ren-Sou cấp team / チーム文化作り

> **Luận điểm.** Hou-Ren-Sou cá nhân ≠ Hou-Ren-Sou team. Mỗi cá nhân tốt nhưng team không có **cẩm nang vận hành chung** thì khách Nhật vẫn cảm nhận "không nhất quán". Cấp độ team cần **5 thành phần cẩm nang**: **(1) Nghi thức cố định** (họp đứng hàng ngày 9:30, họp hồi cố hàng tuần thứ Sáu, họp toàn công ty hàng tháng), **(2) Đường dẫn bảng chỉ số** (nguồn tra cứu duy nhất cho trạng thái — link Notion / Confluence), **(3) OKR / KPI Hou-Ren-Sou** (vd: thời gian phản hồi SLA 95%, không bỏ sót leo thang Sev1, phủ sóng Sổ ghi quyết định 100%), **(4) Ma trận leo thang** (ai báo lên ai, khi nào), **(5) Hướng dẫn nhập việc** (rule 34 nhân lên cấp team). Trưởng nhóm (Hà CTO + Hương) là **người bảo trợ văn hóa**.
>
> チーム文化5要素：①Rituals (朝会9:30、週次retro、月次all-hands)②Dashboard URL ③OKR (response SLA 95%、Sev1 escalation 漏れ0、DR coverage 100%)④Escalation matrix ⑤Onboarding playbook。
>
> **Liên quan:** rule 27 (DR), rule 34 (新人指導), rule 38 (自己診断), rule 40 (振り返り).

---

## Bối cảnh / 場面

Cuộc họp lãnh đạo ティエンファット tháng 4. Anh Hà CTO + chị Hương + Tuấn nhận thấy mỗi thành viên tốt ở mức cá nhân nhưng cả team chưa nhất quán → quyết định viết cẩm nang vận hành.

---

## Hội thoại XẤU — không có cẩm nang vận hành chung

| Vai | Câu |
|---------|-----|
| **ハーCTO** | 「<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>から feedback : 『ティエンファット は<ruby>人<rt>ひと</rt></ruby>によって<ruby>対応<rt>たいおう</rt></ruby> quality が<ruby>違<rt>ちが</rt></ruby>う』。ズン と ハイ で<ruby>同<rt>おな</rt></ruby>じ Phase 2 の<ruby>話<rt>はなし</rt></ruby>なのに、<ruby>片方<rt>かたほう</rt></ruby>は<ruby>丁寧<rt>ていねい</rt></ruby>、<ruby>片方<rt>かたほう</rt></ruby>は<ruby>雑<rt>ざつ</rt></ruby>。」 <br/>*Anh Matsumoto feedback: 「Thiên Phát quality theo người mà khác」. Cùng vụ Phase 2, Dũng thì chu đáo, Hải thì sơ sài.* |
| **フオン** | 「<ruby>個人<rt>こじん</rt></ruby>レベルでは<ruby>皆<rt>みな</rt></ruby> rule を<ruby>知<rt>し</rt></ruby>っている。でも team レベルの **<ruby>共通<rt>きょうつう</rt></ruby> playbook がない**から、<ruby>新人<rt>しんじん</rt></ruby>が<ruby>真似<rt>まね</rt></ruby>する<ruby>基準<rt>きじゅん</rt></ruby>もブレる。」 <br/>*Cá nhân thì ai cũng biết rule. Nhưng team không có playbook chung, nên junior bắt chước cũng lệch.* |
| **トゥアン** | 「Slack の<ruby>標準<rt>ひょうじゅん</rt></ruby> format も<ruby>人<rt>ひと</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>うし、escalation も case-by-case。これは<ruby>個人<rt>こじん</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>じゃなくて **<ruby>チーム文化<rt>チームぶんか</rt></ruby>の<ruby>欠如<rt>けつじょ</rt></ruby>**。」 <br/>*Format Slack chuẩn cũng khác theo người, escalation cũng case-by-case. Đây không phải lỗi cá nhân mà thiếu văn hóa team.* |
| **ハーCTO** | 「playbook を<ruby>作<rt>つく</rt></ruby>ろう。<ruby>私<rt>わたし</rt></ruby>と フオン が culture sponsor、トゥアン が tech ritual owner。<ruby>来週中<rt>らいしゅうちゅう</rt></ruby>に v1 ドラフト。」 <br/>*Viết cẩm nang vận hành đi. Anh và chị Hương là người bảo trợ văn hóa, anh Tuấn là chủ trì nghi thức kỹ thuật. Trong tuần sau làm xong bản thảo v1.* |

**Vì sao xấu:** L1 chất lượng của team không nhất quán là biểu hiện. L2-L3 rút ra: thiếu **cẩm nang vận hành chung**.

---

## Hội thoại TỐT — cẩm nang vận hành 5 thành phần được xây dựng

*2週間後 leadership 会議*

| Vai | Câu |
|---------|-----|
| **ハーCTO** | 「ティエンファット Hou-Ren-Sou Playbook v1 を<ruby>共有<rt>きょうゆう</rt></ruby>します。**<ruby>5要素構成<rt>ごようそこうせい</rt></ruby>**【1】です。」 <br/>*Em share Thiên Phát Hou-Ren-Sou Playbook v1. Cấu trúc 5 thành phần.* |
| **ハーCTO** | 「**①Rituals**: <ruby>朝会<rt>あさかい</rt></ruby> Slack 9:30 (DDBN format)、<ruby>週次<rt>しゅうじ</rt></ruby> retro <ruby>金曜<rt>きんよう</rt></ruby> 16:00、<ruby>月次<rt>げつじ</rt></ruby> all-hands <ruby>第<rt>だい</rt></ruby>1<ruby>月曜<rt>げつよう</rt></ruby> 10:00。**②Dashboard**: Notion『チーム Hou-Ren-Sou ダッシュボード』〈URL〉に response SLA、Sev1 <ruby>件数<rt>けんすう</rt></ruby>、DR <ruby>数<rt>すう</rt></ruby>を<ruby>可視化<rt>かしか</rt></ruby>【2】。」 <br/>*[1 Nghi thức] Họp đứng Slack 9:30 (định dạng DDBN), họp hồi cố tuần 16:00 thứ Sáu, họp toàn công ty tháng 10:00 thứ Hai đầu tháng. [2 Bảng chỉ số] Notion 「Bảng Hou-Ren-Sou Team」 〈URL〉 hữu hình hóa thời gian phản hồi SLA, số Sev1, số dòng Sổ ghi quyết định.* |
| **ハーCTO** | 「**③OKR Q2-2026**: (a) Slack <ruby>客先<rt>きゃくさき</rt></ruby> response 1h <ruby>以内<rt>いない</rt></ruby> 95% / (b) Sev1 escalation <ruby>漏<rt>も</rt></ruby>れ 0<ruby>件<rt>けん</rt></ruby> / (c) Decision Register カバレッジ 100% (1<ruby>相談<rt>そうだん</rt></ruby>1<ruby>行<rt>ぎょう</rt></ruby>) / (d) <ruby>自己診断<rt>じこしんだん</rt></ruby> C-D ≤ 1 が team <ruby>平均<rt>へいきん</rt></ruby>【3】。」 <br/>*[3 OKR Q2-2026] (a) Slack phản hồi khách trong 1h ≥ 95% / (b) Sev1 leo thang sót = 0 / (c) Sổ ghi quyết định phủ sóng 100% (1 tham vấn 1 dòng) / (d) Tự chẩn đoán C-D ≤ 1 trung bình team.* |
| **ハーCTO** | 「**④Escalation Matrix**: <ruby>客先<rt>きゃくさき</rt></ruby> → BD owner → フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby> → ハー CTO / <ruby>技術<rt>ぎじゅつ</rt></ruby> Sev1 → <ruby>検知者<rt>けんちしゃ</rt></ruby> → トゥアン → ハー CTO / <ruby>経理<rt>けいり</rt></ruby> → ロアン<ruby>経理部長<rt>けいりぶちょう</rt></ruby> → フオン。**⑤Onboarding**: <ruby>新人<rt>しんじん</rt></ruby><ruby>入社後<rt>にゅうしゃご</rt></ruby>30<ruby>日<rt>にち</rt></ruby>で Playbook <ruby>全項目<rt>ぜんこうもく</rt></ruby>に exposure、60<ruby>日<rt>にち</rt></ruby>で<ruby>自己診断<rt>じこしんだん</rt></ruby><ruby>初回<rt>しょかい</rt></ruby>、90<ruby>日<rt>にち</rt></ruby>で<ruby>1人立<rt>ひとりだ</rt></ruby>ち。」 <br/>*[4 Ma trận leo thang] Khách → người phụ trách BD → chị Hương → anh Hà CTO / Sev1 kỹ thuật → người phát hiện → anh Tuấn → anh Hà CTO / Kế toán → chị Loan → chị Hương. [5 Hướng dẫn nhập việc] Nhân viên mới sau 30 ngày tiếp cận đủ cẩm nang, 60 ngày tự chẩn đoán lần đầu, 90 ngày tự đứng.* |
| **フオン** | 「culture sponsor として: <ruby>月次<rt>げつじ</rt></ruby> all-hands で『<ruby>今月<rt>こんげつ</rt></ruby>の Good ホウレンソウ』『<ruby>今月<rt>こんげつ</rt></ruby>の Lesson』を Slack <ruby>投票<rt>とうひょう</rt></ruby>で<ruby>選<rt>えら</rt></ruby>び、HR の<ruby>評価<rt>ひょうか</rt></ruby>にも<ruby>反映<rt>はんえい</rt></ruby>させましょう【4】。」 <br/>*Với vai người bảo trợ văn hóa: trong họp toàn công ty tháng, tổ chức bình chọn Slack 「Hou-Ren-Sou tốt tháng này」 và 「Bài học tháng này」, kết nối vào đánh giá nhân sự luôn.* |
| **トゥアン** | 「Tech ritual owner として: <ruby>朝会<rt>あさかい</rt></ruby>と Sev1 escalation drill を<ruby>四半期<rt>しはんき</rt></ruby>ごとに simulation。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>運用開始<rt>うんようかいし</rt></ruby>。」 <br/>*Với vai chủ trì nghi thức kỹ thuật: họp đứng và diễn tập leo thang Sev1 mỗi quý. Tuần sau bắt đầu vận hành.* |

📝 **Ghi chú:**
- 【1】**「5要素構成」** — cẩm nang vận hành không phải tài liệu dài 50 trang. 5 thành phần dạng mô-đun.
- 【2】**Đường dẫn bảng chỉ số** — nguồn tra cứu duy nhất. Tránh "tôi nghĩ" / "tôi nhớ".
- 【3】**OKR đo lường được** — không "cải thiện giao tiếp" mơ hồ mà "95% trong 1h".
- 【4】**「HR の評価にも反映」** — biến văn hóa thành chỉ số đánh giá hiệu suất. Không có thưởng = không nhân rộng được.

---

## Câu chốt

> **「<ruby>報連相<rt>ほうれんそう</rt></ruby>はチーム<ruby>競技<rt>きょうぎ</rt></ruby>です。 Playbook <ruby>5要素<rt>ごようそ</rt></ruby> (Rituals + Dashboard + OKR + Escalation + Onboarding) を<ruby>持<rt>も</rt></ruby>って<ruby>初<rt>はじ</rt></ruby>めて、quality が<ruby>個人差<rt>こじんさ</rt></ruby>に<ruby>左右<rt>さゆう</rt></ruby>されない。Leader が culture sponsor。」**

---

## Tránh

- Cẩm nang vận hành 50 trang mà không ai đọc — phải có bản tóm tắt 1 trang + bảng chỉ số.
- OKR mơ hồ kiểu 「コミュニケーション改善」 — không đo được = không tồn tại.
- Ma trận leo thang không cập nhật khi cơ cấu thay đổi (vd: Hải nghỉ dài hạn) — sẽ hỏng vào thời điểm quan trọng.
- Người bảo trợ văn hóa không cam kết dành thời gian → cẩm nang vận hành tàn lụi.

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| チーム文化 | チームぶんか | VĂN HÓA | Văn hóa team |
| プレイブック | ぷれいぶっく | — | Cẩm nang vận hành |
| Rituals | りちゅあるず | — | Nghi thức / sinh hoạt định kỳ |
| ダッシュボード | だっしゅぼーど | — | Bảng chỉ số / bảng theo dõi |
| OKR | おーけーあーる | — | OKR |
| エスカレーション | えすかれーしょん | — | Leo thang / báo cấp trên |
| カバレッジ | かばれっじ | — | Tỉ lệ phủ |
| 文化醸成 | ぶんかじょうせい | VĂN HÓA NHƯƠNG THÀNH | Nuôi dưỡng văn hóa |
| 1人立ち | ひとりだち | — | Tự đứng (hoạt động độc lập) |
