# Rule 08 — Walk-away point / 撤退ライン

> **Luận điểm.** **Walk-away** = danh sách cứng các điều kiện "nếu vi phạm, bỏ thương vụ". Khác BATNA (phương án thay thế): walk-away là **lằn ranh đỏ tuyệt đối** (giá / phạm vi / IP / SLA / điều kiện thanh toán). Phải được CTO + Hương ký xác nhận trước khi đàm phán.
>
> 撤退ラインは「これを破られたら deal 不可」の絶対条件リスト。価格だけでなく scope・IP・SLA・支払条件 も含む。CTO+Hương の事前承認が必須。
>
> **Liên quan:** rule 01 (BATNA), rule 07 (alignment), rule 28 (撤退の作法).

---

## Bối cảnh / 場面

Sáng đàm phán Phase 3, sau buổi họp thống nhất nội bộ. Hà CTO yêu cầu Dũng đọc lại walk-away list để xác nhận. Dũng chỉ nhớ giá, quên 3 điều kiện khác.

---

## ❌ Hội thoại XẤU — walk-away chỉ có giá

| Vai | Câu |
|---------|-----|
| **ハー CTO** | 「ズン、<ruby>撤退<rt>てったい</rt></ruby>ライン<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げて。」 |
|  | *Dũng, đọc hết walk-away list ra.* |
| **ズン** | 「¥15M <ruby>以下<rt>いか</rt></ruby>です。」 |
|  | *Dưới ¥15M ạ.* |
| **ハー CTO** | 「それだけ？IP は？SLA は？<ruby>支払<rt>しはらい</rt></ruby> net 30 か net 60 か？<ruby>大垣<rt>おおがき</rt></ruby>さんが『<ruby>価格<rt>かかく</rt></ruby> ¥18M でも、IP は<ruby>白鷗<rt>はくおう</rt></ruby><ruby>側<rt>がわ</rt></ruby> 100%』と<ruby>言<rt>い</rt></ruby>い<ruby>出<rt>だ</rt></ruby>したらどうする？」 |
|  | *Chỉ vậy thôi? IP? SLA? Payment net 30 hay net 60? Anh Ōgaki bảo 'giá ¥18M cũng được, nhưng IP 100% về Hakuō' thì em làm sao?* |
| **ズン** | 「えっ、それは…<ruby>考<rt>かんが</rt></ruby>えてなかったです。」 |
|  | *Ơ, cái đó... em chưa nghĩ tới ạ.* |
| **ハー CTO** | 「**<ruby>価格<rt>かかく</rt></ruby>は<ruby>撤退<rt>てったい</rt></ruby>ラインの 1 <ruby>軸<rt>じく</rt></ruby>でしかない**。<ruby>今<rt>いま</rt></ruby>すぐ 5 軸<ruby>書<rt>か</rt></ruby>き<ruby>出<rt>だ</rt></ruby>せ。<ruby>書<rt>か</rt></ruby>けないなら<ruby>今日<rt>きょう</rt></ruby>は<ruby>出<rt>で</rt></ruby>ない。」 |
|  | *Giá chỉ là 1 trong các trục walk-away. Viết ngay 5 trục. Không viết được thì hôm nay không đi.* |

**Vì sao xấu:** Walk-away thường bị nghĩ chỉ là giá. Nhưng IP / SLA / payment / liability cap có thể phá vỡ thương vụ nhiều hơn cả giá. 大垣 sắc sảo sẽ thử walk-away ở 1 trong 5 trục, Dũng không có lằn ranh đỏ → nhượng bộ sai chỗ.

---

## ✅ Hội thoại TỐT — walk-away 5 軸 với approval

| Vai | Câu |
|---------|-----|
| **ハー CTO** | 「ズン、<ruby>撤退<rt>てったい</rt></ruby>ライン<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げて。」 |
|  | *Dũng, đọc hết walk-away list ra.* |
| **ズン** | 「**5 <ruby>軸<rt>じく</rt></ruby><ruby>読<rt>よ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げます**【1】。(1) **<ruby>価格<rt>かかく</rt></ruby>**: ¥15M <ruby>未満<rt>みまん</rt></ruby>は<ruby>撤退<rt>てったい</rt></ruby>。(2) **IP**: ベース<ruby>技術<rt>ぎじゅつ</rt></ruby>の<ruby>所有権<rt>しょゆうけん</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby>、white-label OK だが core IP <ruby>譲渡<rt>じょうと</rt></ruby>は<ruby>撤退<rt>てったい</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>。(3) **SLA**: 99.5% <ruby>以下<rt>いか</rt></ruby>は<ruby>受<rt>う</rt></ruby>けない、その<ruby>下<rt>した</rt></ruby>は<ruby>罰則<rt>ばっそく</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>リスクが<ruby>粗利<rt>あらり</rt></ruby>を<ruby>超<rt>こ</rt></ruby>える。(4) **<ruby>支払<rt>しはらい</rt></ruby>**: net 60 まで OK、net 90 <ruby>以上<rt>いじょう</rt></ruby>は<ruby>撤退<rt>てったい</rt></ruby>。(5) **<ruby>責任<rt>せきにん</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby>**: <ruby>契約<rt>けいやく</rt></ruby><ruby>金額<rt>きんがく</rt></ruby>の 100% <ruby>超<rt>こ</rt></ruby>えは<ruby>撤退<rt>てったい</rt></ruby>【2】。」 |
|  | *Em đọc 5 trục ạ. (1) Giá: dưới ¥15M là rút. (2) IP: quyền sở hữu công nghệ nền là bên em, white-label OK nhưng nhượng core IP là walk-away. (3) SLA: dưới 99.5% không nhận, dưới ngưỡng đó risk penalty vượt margin. (4) Payment: tới net 60 OK, từ net 90 trở lên là rút. (5) Liability cap: vượt 100% giá hợp đồng là rút.* |
| **ハー CTO** | 「IP の white-label と core IP の<ruby>境界<rt>きょうかい</rt></ruby>は？」 |
|  | *Ranh giới white-label và core IP của em đâu?* |
| **ズン** | 「<ruby>白鷗<rt>はくおう</rt></ruby><ruby>向<rt>む</rt></ruby>けカスタマイズ<ruby>部分<rt>ぶぶん</rt></ruby>は white-label OK。AI レコメンドエンジン<ruby>本体<rt>ほんたい</rt></ruby>・モデルパラメータは core IP として<ruby>留保<rt>りゅうほ</rt></ruby>【3】。これフオン<ruby>副部長<rt>ふくぶちょう</rt></ruby> + ハー CTO <ruby>両者<rt>りょうしゃ</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです (Slack <ruby>昨日<rt>きのう</rt></ruby>)。」 |
|  | *Phần customize cho Hakuō white-label OK. Bản thể AI recommend engine + model parameter giữ lại làm core IP. Cả chị Hương + anh Hà CTO đã duyệt trên Slack hôm qua ạ.* |
| **ハー CTO** | 「OK、5 軸どれか<ruby>破<rt>やぶ</rt></ruby>られたら『<ruby>弊社<rt>へいしゃ</rt></ruby> CTO に<ruby>確認<rt>かくにん</rt></ruby>させてください』で<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り。その<ruby>場<rt>ば</rt></ruby>で yes は<ruby>絶対<rt>ぜったい</rt></ruby><ruby>言<rt>い</rt></ruby>わない。」 |
|  | *OK, vi phạm 1 trong 5 trục là dùng câu 'cho phép em xác nhận với CTO bên em' để mang về. Tuyệt đối không nói yes tại chỗ.* |

📝 **Ghi chú:**
- 【1】**5 軸 walk-away** — 価格 / IP / SLA / 支払 / 責任上限. Một số vụ thêm: 競業避止、再委託禁止 etc.
- 【2】**責任上限 (liability cap)** — thường = 契約金額の 100%. Khách JP đôi khi đòi vô hạn (unlimited) → walk-away ngay.
- 【3】**Core IP vs white-label** — định nghĩa rõ ranh giới. AI engine bản thể vs lớp tùy chỉnh (customization layer).

---

## 🎯 Câu chốt

> **「<ruby>撤退<rt>てったい</rt></ruby>ラインは<ruby>価格<rt>かかく</rt></ruby>1<ruby>軸<rt>じく</rt></ruby>ではなく5軸 (<ruby>価格<rt>かかく</rt></ruby>・IP・SLA・<ruby>支払<rt>しはらい</rt></ruby>・<ruby>責任<rt>せきにん</rt></ruby>) で<ruby>持<rt>も</rt></ruby>つ。CTO <ruby>承認<rt>しょうにん</rt></ruby><ruby>必須<rt>ひっす</rt></ruby>。」**
>
> *Walk-away không chỉ là giá — 5 trục: giá / IP / SLA / payment / liability. CTO bắt buộc duyệt.*

---

## ⚠ Tránh

- Walk-away chỉ có giá → bị lách qua IP / SLA
- Walk-away không có bằng chứng đã duyệt → tới giờ G CTO không bảo chứng
- Tùy hứng thêm walk-away mới ngay trong phòng họp → mất uy tín
- Cho khách thấy walk-away list ("đây là lằn ranh đỏ của em") → là sai lầm chiến thuật, walk-away là thông tin nội bộ

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 撤退ライン | てったいライン | Walk-away line |
| 知財 / IP | ちざい | Intellectual Property |
| 所有権 | しょゆうけん | Quyền sở hữu |
| white-label | howaitorēberu | OEM / nhãn trắng |
| 罰則賠償 | ばっそくばいしょう | Penalty / damages |
| 支払条件 | しはらいじょうけん | Điều kiện thanh toán |
| 責任上限 | せきにんじょうげん | Liability cap |
| 競業避止 | きょうぎょうひし | Non-compete |
