# N4 — Báo cáo rà soát Phần IV (Closing + Hợp đồng), rule_30 → rule_39

> Phạm vi: 10 file `nội_dung/phần_IV/rule_*/rule.md` (853 dòng).
> Áp dụng `.claude/rules/book-review.md` mục 4 (trục A→F) + cảnh báo rủi ro pháp lý đặc thù.
> **Chỉ báo cáo. Không sửa file nội dung.**
> Mọi kết luận đều đã strip ruby bằng python trước khi grep (mục 1.1). Số dòng là dòng thật trong file.

---

## 0. Bảng tổng kết

| Rule | 🔴 | 🟡 | 🔵 | Kết luận 1 dòng |
|---|---|---|---|---|
| 30 合意確認 | 0 | 2 | 1 | **Sạch về nội dung dạy.** Chỉ lỗi Hán Việt + 1 điểm quy trình 稟議 đáng bàn |
| 31 要約メール | 0 | 2 | 1 | **Sạch.** 1 lỗi đánh máy tiếng Việt, 1 ca lẫn tiếng Anh nặng |
| 32 LOI契約 | **2** | 1 | 1 | **Nặng nhất về pháp lý.** LOI KHÔNG nêu tính ràng buộc; mâu thuẫn hạn 4 tuần vs 2 tuần |
| 33 条項調整 | **2** | 2 | 0 | Lỗi `貴社` uchi/soto + `clientA` lọt bản thảo; thiếu 責任除外 |
| 34 調印依頼 | 0 | 1 | 1 | **Tiếng Nhật chuẩn nhất phần này.** Đã WebSearch xác nhận |
| 35 商談打切 | **1** | 1 | 0 | **Lệch trục giá walk-away ¥15M vs ¥15.5M** — đúng kiểu lỗi sách 05 |
| 36 成立後挨拶 | 0 | 1 | 1 | Sạch. `締結` Hán Việt lệch với rule_34 |
| 37 社内キックオフ | **1** | 2 | 0 | **Sai số học: ¥17M ≠ +24% Phase 2** (thực tế +17%) |
| 38 対外発表 | **1** | 2 | 0 | **`数千万円規模` sai bậc số** với ¥17M; mâu thuẫn nội bộ về thứ tự tên |
| 39 関係者感謝 | 0 | 2 | 0 | Sạch về nội dung. Lỗi Hán Việt `指摘` + lẫn tiếng Anh |

**Tổng: 7 lỗi 🔴 · 16 lỗi 🟡 · 5 điểm 🔵.**

> ⚠️ Tự chặn phóng đại (mục 3): tôi **KHÔNG** báo các mục sau dù script có gạch đỏ, vì kiểm tận nơi thấy hợp lệ:
> - `弊社`/`当社` 20 lượt — **đều đúng**. `当社` chỉ xuất hiện trong lời 大垣 nói về công ty MÌNH (r33 d23, d38), là dùng chuẩn.
> - `御社`/`貴社` — chỉ có **1 ca sai thật** (r33 d40, xem 🔴 C-1). Còn lại đều đúng ngữ cảnh.
> - **0 ca 二重敬語 / 過剰敬語 / さ入れ言葉** trong cả 10 rule. 3 ca main Claude tự tìm (`部長様` ×2, `お伺いさせて` ×1) đều nằm ở phần II, **không thuộc phạm vi tôi**.
> - **0 ca ký tự lạ** (Hangul / giản thể). **0 ca emoji-strip** làm mất cột phán định.
> - **0 ca ruby-loss** ở câu lặp giữa khối XẤU và TỐT (bug sách 03 mục 1.3) — đã kiểm riêng r30/r33/r35 là 3 rule có câu lặp.
> - Mục lục vs H1: **10/10 khớp** cột `Tên JP`. Cột `Tên VN` lệch diễn đạt (vd "Confirm point of agreement" vs "Confirm point of agreement") nhưng đây là **lỗi toàn sách 37/45** main Claude đã đo, không phải lỗi riêng phần IV → không tính vào bảng trên.

---

## 1. 🔴 MỤC RIÊNG — ĐÁNH GIÁ RỦI RO PHÁP LÝ

Đây là phần rủi ro pháp lý cao nhất cả sách. Tôi soi theo đúng 5 câu hỏi được giao.

### 1.1 Sách có dạy cam kết vượt thẩm quyền không? → **KHÔNG. Ngược lại, dạy rất tốt.**

Đây là điểm **mạnh nhất** của phần IV và tôi muốn ghi nhận rõ để không ai sửa nhầm:

- `rule_33` d39 dạy chính xác phản xạ đúng: 「ご要望承知しました。**ただし**、indemnity 無制限は弊社 legal および取締役会上限規定 (年契約額) を超えるため、本日中に**持ち帰り検討**させてください」 — ghi nhận yêu cầu, **không hứa**, viện dẫn quy định nội bộ, mang về. Đây là mẫu chuẩn sách giáo khoa.
- `rule_33` d24 (khối XẤU) dựng đúng phản diện: 「承知しました、それで進めます」 rồi 1 tháng sau Tuấn phát hiện đã ký bồi thường vô hạn. Bài học được dạy đúng chiều.
- `rule_35` d40 khi rút lui vẫn giữ 「させていただきます」 — không tự ý quyết thay công ty.

→ **Không có ca nào dạy học viên hứa vượt quyền.** Trục A ở khía cạnh này: **sạch**.

### 1.2 Có dạy nhận trách nhiệm quá sớm / vô điều kiện không? → **KHÔNG.**

Đã grep toàn phạm vi: **0 ca** `全責任`, `全面的に弊社の責任`, `弊社の責任でございます`. Câu xin lỗi duy nhất là `申し訳ございません` ở khối XẤU (r31 d25, r38 d27) — dùng đúng chỗ (lỗi thật của mình: gửi mail trễ, tự ý publish PR). Không có câu học thuộc nào nhận trách nhiệm vô điều kiện.

→ Bẫy `全責任は弊社にございます` của sách 04 **không tái diễn ở đây**. Sạch.

### 1.3 🔴 LOI có được giải thích đúng tính ràng buộc không? → **KHÔNG. Đây là lỗi pháp lý nặng nhất phần IV.**

**Rule 32 dạy toàn bộ vòng đời LOI (86 dòng) mà TUYỆT ĐỐI không nói LOI ràng buộc hay không.**

Đã grep phạm vi: **0 lượt** `法的拘束力`, `拘束力`, `binding`, `ràng buộc` trong cả rule_32.

WebSearch xác nhận thực tế pháp lý Nhật:
> LOI/基本合意書 **về nguyên tắc là non-binding**, nhưng **KHÔNG phải mọi điều khoản đều không ràng buộc**. Hai điều khoản thường **CÓ** hiệu lực ràng buộc là **独占交渉権の付与** (quyền đàm phán độc quyền) và **秘密保持義務** (nghĩa vụ bảo mật). Ngoài ra `解除`, `有効期限`, `讓渡禁止`, `費用負担`, `合意管轄` cũng có thể ràng buộc. Văn bản thường ghi rõ 「本書は法的拘束力を有しない」. **Điều quan trọng là xác định TỪNG điều khoản có ràng buộc hay không, chứ không phải coi cả LOI là ràng buộc hoặc không ràng buộc.**
> — [日本M&Aセンター](https://www.nihon-ma.co.jp/magazine/learn/adjustment-mou/), [トランビ](https://www.tranbi.com/ma-column/detail/?id=4), [豊中司法書士ふじた事務所](https://toyonaka-shihoshoshi.com/ma-houtekikousokuryoku/)

**Vì sao đây là lỗi nghiêm trọng, không phải thiếu sót nhỏ:**

`rule_32` d3 (nguyên văn luận điểm):
> **LOI (Thư xác nhận ý định)** — văn bản 1-2 trang xác nhận **điều khoản thương mại + ý định ký hợp đồng**, ký 2 bên trong 1-2 tuần.

`rule_32` d54 (Câu chốt — phần học viên nhớ nhất):
> 「**LOI = 商務合意のロック**。本契約 = 条項詳細。順番を飛ばすと商務再交渉が発生する。」
> *LOI **khóa** điều khoản thương mại.*

Chữ 「**ロック**」/「**khóa**」 + `rule_32` d48 「LOI đã chốt điều khoản thương mại → **Không mở lại phần thương mại**」 dạy học viên tin rằng **LOI đã đóng đinh giá**. Trên thực tế, một LOI ghi 「本書は法的拘束力を有しない」 (mẫu phổ biến nhất) thì khách **hoàn toàn có quyền** mở lại giá ở giai đoạn hợp đồng chính. Học viên tin lời sách → **không phòng bị cho đúng tình huống sách hứa đã ngăn được**.

Trớ trêu: chính khối XẤU của rule_32 (d25-d27) dựng ra tranh chấp 税込/税抜 ¥1.7M, và sách bảo "LOI 1 trang ký 2 bên đã ngăn được chính xác chuyện này" (d29). Nhưng nếu LOI là non-binding thuần thì **nó KHÔNG ngăn được** — nó chỉ là bằng chứng về nhận thức chung, không phải nghĩa vụ.

**Đề xuất (không tự sửa):**
1. Bổ sung vào luận điểm d3 hoặc thành ghi chú 【4】 mới: nêu rõ LOI **nguyên tắc non-binding**, và phải **ghi rõ trong chính LOI** điều khoản nào ràng buộc — tối thiểu `秘密保持義務` + `独占交渉権` + `有効期限`.
2. Sửa câu chốt d54: 「LOI = 商務合意のロック」 → đề xuất 「LOI = 商務合意の**文書化**。拘束力の範囲は**条項ごとに明記**する」 (LOI = văn bản hoá đồng thuận thương mại; phạm vi ràng buộc phải ghi rõ theo từng điều khoản).
3. Bổ sung 2 từ vào bảng từ vựng d70-d80: `法的拘束力 / ほうてきこうそくりょく / PHÁP ĐÍCH CÂU THÚC LỰC / Hiệu lực ràng buộc pháp lý` và `独占交渉権 / どくせんこうしょうけん / ĐỘC CHIẾM GIAO THIỆP QUYỀN / Quyền đàm phán độc quyền`.
4. Mục "LOI 6 mục" ở 【1】 d46 nên thành **7 mục**, thêm mục "điều khoản nào có hiệu lực ràng buộc".

**🔵 Lỗi liên đới NGOÀI phạm vi tôi — ghi để chủ nhà quyết:**
`_thuat_ngu.md` dòng 24 định nghĩa LOI là "văn bản **ràng buộc nhẹ** trước khi ký hợp đồng chính thức". "Ràng buộc nhẹ" là cách nói **không tồn tại trong pháp lý** — LOI hoặc có điều khoản ràng buộc, hoặc không. Cần sửa đồng bộ với rule_32 (bài học mục 5: vá rule mà quên vá bảng thuật ngữ).

### 1.4 Quy trình 稟議 / 押印 / 契約締結 có được mô tả đúng không? → **ĐÚNG về đại thể, thiếu 1 bước.**

WebSearch xác nhận sách mô tả **đúng** các điểm sau:
- 稟議 chạy được kích hoạt bằng **văn bản chính thức**, thiếu văn bản thì bị 保留 (r31 d24) — đúng thực tế.
- Trình tự 決裁 xong → mới đóng dấu — sách theo đúng (r34: hợp đồng OK cả 2 bên → mới mời ký).
- Chọn giữa 電子契約 và 紙原本郵送 (r34 d44) — đúng bối cảnh Nhật hiện nay, thời kỳ giao thoa.

**Thiếu:** WebSearch cho thấy nhiều doanh nghiệp Nhật có **捺印稟議** — vòng ringi **THỨ HAI** chỉ để xin phép đóng dấu công ty, chạy SAU khi nội dung hợp đồng đã được duyệt:
> 日本企業には「捺印稟議」という慣習が存在する場合があります。これは、契約内容を承認するビジネス判断が下りた後に、承認された契約書に法的に有効な社印を押す許可を得るために**再度回付される稟議**を指し、この「**二重の承認プロセス**」は業務の非効率性を象徴する典型的な例です。
> — [クラウドサイン](https://www.cloudsign.jp/media/20200401-dounyu-7step/), [LegalAgent](https://legalagent.co.jp/column/c59-contract-signing-authority/)

Đây **chính là nguyên nhân thực tế phổ biến nhất** khiến hợp đồng nằm im 2-3 tuần sau khi "đã thống nhất xong" — đúng tình huống rule_34 khối XẤU dựng ra (3 tuần im lặng). Nhưng sách quy nguyên nhân cho "thiếu hạn chót + tiêu đề mơ hồ" (d30), bỏ qua yếu tố cấu trúc.

🟡 **Đề xuất:** thêm 1 gạch đầu dòng vào 📝 Ghi chú rule_34: cảnh báo học viên rằng ngay cả khi 大垣 đã đồng ý, còn một vòng 捺印稟議 nội bộ nữa — nên **hỏi thẳng** 「ご捺印までにどのくらいお時間を要しますでしょうか」 khi đặt hạn chót, thay vì đoán.

### 1.5 Có dạy gây áp lực chốt deal phi đạo đức không? → **KHÔNG. Sạch.**

Đã soi kỹ vì đây là vùng dễ trượt:
- `rule_34` đặt hạn chót 6/25 nhưng **có lý do thật** (kickoff 7/1) và nói rõ 【2】 "không phải thúc giục mà có lý". → deadline thật, không giả.
- `rule_35` d50 có câu **rất sát ranh giới**: "rút lui phong nhã đôi khi kích hoạt việc khách tự điều chỉnh lại ngân sách". Nhưng đọc trọn ngữ cảnh, rule_35 dựng lý do rút lui là **giá thật sự dưới ngưỡng sinh lời**, và d41 giải thích bằng 原価構造. Đây là walk-away **thật**, không phải walk-away diễn để ép giá. → **Hợp lệ, không báo.**
- `rule_36` d72 chủ động **cấm** thúc bước tiếp theo ("次のフェーズもお願いします!" → NG).
- **0 ca** khan hiếm giả ("chỉ còn 1 suất"), **0 ca** deadline bịa.

→ Trục đạo đức chốt deal: **sạch**.

### 1.6 🔵 Điểm pháp lý còn thiếu (mức tham khảo, không phải lỗi sai)

`rule_33` dạy 3 trục: giới hạn bồi thường / IP / SLA + phạt. WebSearch xác nhận **giới hạn = 委託料相当額 / 年間取引額 đúng là thông lệ B2B Nhật**, nên khẳng định 「業界標準でございます」 (d41) là **có căn cứ, không phải bịa** — ghi nhận sách đúng.

Nhưng thực tiễn Nhật gần như luôn kèm **責任除外事由** — điều khoản loại trừ: giới hạn bồi thường **KHÔNG áp dụng** cho thiệt hại do 故意 (cố ý) hoặc 重過失 (lỗi nặng). Nguồn nêu rõ điều khoản cap có thể bị vô hiệu theo 民法90条 nếu ép cả thiệt hại do cố ý vào trong mức trần:
> B2B事業者間の損害賠償上限条項は、契約自由の原則から原則有効…もっとも、**民法90条の公序良俗違反として無効化される可能性**もあり、極端に低い上限や**故意による損害も上限内に抑える条項**などが該当する場合があります。
> — [law-bright](https://law-bright.com/corporationlaw/articles/keiyaku-itaku-baisho-jogen/), [弁護士法人クラフトマン](https://www.ishioroshi.com/biz/kaisetu/it/index/baishouseigen/)

Học viên học rule_33 rồi đi đàm phán thật sẽ tin cap ¥17M che được mọi thứ. Nếu Ōgaki đời thực đòi thêm 「故意・重過失の場合を除く」, học viên không có kịch bản. **Đề xuất:** thêm 1 dòng vào mục "Tránh" hoặc ghi chú 【3】.

---

## 2. 🔴 B — BẢNG SỐ TIỀN / ĐIỀU KHOẢN & CÁC MÂU THUẪN

### 2.1 Bảng trục số phần IV (đã strip ruby)

| Rule | Giá deal | SLA | Walk-away | Số khác |
|---|---|---|---|---|
| 30 | **¥17M** (税抜) | 99.9% (99.5% là bẫy khối XẤU) | — | 2 năm 7/2026–6/2028; 7 mục |
| 31 | ¥17M | — | — | 24h; 5 phần |
| 32 | ¥17M | — | — | ¥1.7M chênh thuế; LOI 6 mục; **4 tuần / 2 tuần** ⚠ |
| 33 | ¥17M (= cap bồi thường) | 99.9% | — | phạt cap 5%/tháng; ¥100M rủi ro |
| 34 | — | — | — | ¥1.5M mất do trễ; 3 tuần |
| 35 | **¥14M → ¥15.5M** | — | **¥15M** ⚠ | ¥30M Phase 4 |
| 36 | — | — | — | 30% khó hơn |
| 37 | ¥17M (**+24%** ⚠) | 99.9% (99.5% NG) | — | ¥0.5M lãng phí |
| 38 | ¥17M (**数千万円規模** ⚠) | — | — | embargo 5/15 09:00 |
| 39 | ¥17M | — | — | 6 senior + 4 junior |

**Trục giá ¥17M nhất quán 9/10 rule** — rất tốt. Ba dấu ⚠ ở trên là 3 lỗi thật, mổ xẻ dưới đây.

### 2.2 🔴 B-1 — `rule_35` lệch trục walk-away với `rule_26` + `rule_28` (ĐÚNG KIỂU LỖI SÁCH 05)

Đây là ca mục 6 của rule cảnh báo: **lỗi vắt qua hai phạm vi agent**, phần III giữ một con số, phần IV giữ con số khác.

`rule_35` d13 (Bối cảnh — trong phạm vi tôi):
> Phase 3 vòng 4: 大垣 thúc ép mức cuối ¥14M (**dưới ngưỡng rút lui ¥15M của Hà CTO**).

`rule_26` d43 (phần III — Hà CTO nói **trực tiếp với khách**, nguyên văn):
> 「Phase 2 <ruby>同等</ruby>のスコープであれば、**弊社 walk-away ライン ¥15.5M、これは<ruby>承認済</ruby>みの<ruby>最終条件</ruby>**でございます。」

`rule_28` d13 (phần III):
> Round 4: 大垣 + 中村 CFO push xuống ¥14M (**dưới điểm rút lui ¥15.5M**).

**Cốt lõi vấn đề — không chỉ là con số lệch:** sách có một **arc có chủ ý** rất đẹp — walk-away khởi điểm ¥15M (r01 d40, r02 d21/d34, r05 d35, r08, r43 d3), rồi ở r26 Hà CTO **nâng công khai lên ¥15.5M** và tuyên bố đó là 「承認済みの最終条件」. Từ r26 trở đi, ¥15.5M là con số sống. `rule_28` (ngay sau đó, cùng Round 4) tôn trọng arc này.

`rule_35` **quay ngược về ¥15M** — tức là bối cảnh của r35 mô tả Hà CTO đang giữ một ngưỡng mà chính ông đã công khai từ bỏ ở rule trước. Học viên đọc tuần tự r26 → r28 → r35 sẽ thấy sách tự phản bội.

Càng rõ hơn khi nhìn kết cục: r35 d44 khách nâng lên **¥15.5M** rồi xin đàm phán lại. Nếu walk-away thật là ¥15M như d13 nói, thì ¥15.5M đã **vượt ngưỡng từ lâu** — Dũng lẽ ra phải nhận ngay, chứ không phải "đàm phán lại". Con số ¥15.5M ở d44 chỉ có ý nghĩa kịch tính khi ngưỡng là ¥15.5M (khách vừa **chạm đúng** ngưỡng). **Chính nội bộ rule_35 cũng đang nói ¥15.5M mới đúng.**

**Đề xuất:** sửa `rule_35` d13 `¥15M` → `¥15.5M`. Đây là sửa **1 chữ số ở 1 dòng**, và làm cả 3 rule + kết cục d44 khớp nhau.
⚠️ **Bẫy kỹ thuật (mục 1.1 biến thể chữ số):** d13 là dòng văn xuôi tiếng Việt, `¥15M` **không có ruby** — Edit trực tiếp được. Nhưng `¥14M` ở d23/d24/d38/d41 **có ruby chen ngay sau** (`<ruby>最終<rt>さいしゅう</rt></ruby> ¥14M`) — đừng đụng nhầm.

### 2.3 🔴 B-2 — `rule_37`: ¥17M KHÔNG phải +24% so với Phase 2 (SAI SỐ HỌC)

`rule_37` d44 (JA) và d45 (VN) — nguyên văn:
> 「**<ruby>価格<rt>かかく</rt></ruby> ¥17M は Phase 2 <ruby>比<rt>ひ</rt></ruby> +24%**、<ruby>内訳<rt>うちわけ</rt></ruby>は AI レコメンド + <ruby>専任<rt>せんにん</rt></ruby> PM + dashboard customization 1 <ruby>機能<rt>きのう</rt></ruby>。」
> *Giá ¥17M là **+24%** so với Phase 2.*

**Phase 2 = ¥14.5M**, được khẳng định 2 lần độc lập ngoài phạm vi tôi:
- `rule_02` d36: 「Phase 2 が **¥14.5M** でクローズ」 (và dùng nó để tính 14.5 × 1.15 ≒ ¥16.7M)
- `rule_15` d38: 「**Phase 2 が ¥14.5M でした**が」

Phép tính:
```
17 / 14.5 = 1.172  →  +17.2%   (KHÔNG phải +24%)
18 / 14.5 = 1.241  →  +24.1%   ← +24% thuộc về ¥18M
14.5 × 1.24 = 17.98 ≈ ¥18M
```

Con số **+24% gắn với ¥18M** và sách dùng đúng như vậy ở 2 chỗ khác (đều ngoài phạm vi tôi, đều là giá chào ¥18M):
- `rule_18` d39: 「**¥18M** の根拠は、Phase 2 比 **+24%**」
- `rule_41` d44: 「**¥18M** の根拠は Phase 2 比 **+24%**、ROI 4.4 倍」

→ Nguyên nhân rõ ràng: rule_37 **bê nguyên câu justify của giá chào ¥18M** sang gán cho giá chốt cuối ¥17M mà quên tính lại %. Đây là lỗi thật, không phải hai mốc khác nhau (khác ca `5月末 / 7月末` sách 03 ở mục 3 của rule).

**Nghiêm trọng vì:** rule_37 là rule **bàn giao bối cảnh cho đội thực thi** — dạy đúng tinh thần "chia sẻ lý do đằng sau con số". Nhưng chính con số được chia sẻ lại sai. Tuấn nhận bàn giao sai → tính reliability budget trên nền sai.

**Đề xuất:** sửa **cả d44 (JA) lẫn d45 (VN)** `+24%` → `+17%`. Bài học mục 5: **vá JA mà quên VN là hụt**, ở đây con số nằm ở cả hai vế.
⚠️ Bẫy: d44 có ruby dày đặc chen giữa; `+24%` đứng ngay sau `Phase 2 <ruby>比<rt>ひ</rt></ruby>`. Phải `sed -n '44p'` lấy nguyên văn rồi mới Edit.

### 2.4 🔴 B-3 — `rule_38`: `数千万円規模` sai bậc số với ¥17M

`rule_38` d39/d41/d43/d47/d56/d78 — sách dạy che số tiền bằng 「**数千万円規模**」 cho deal ¥17M.

`数千万円` = "vài chục triệu yên" trong nghĩa **数 + 千万円**, tức bội số của 千万 (10 triệu) từ khoảng **2,000万 đến 9,000万円** (¥20M–¥90M). Deal ¥17M = **1,700万円**, thuộc bậc 「**一千万円台**」 hoặc 「**1千万円台後半**」. Gọi 1,700万円 là 「数千万円規模」 là **nống lên một bậc** — trong thông cáo báo chí là phóng đại quy mô hợp đồng.

Điều này va thẳng vào chính luận điểm rule_38: sách dạy che số **để bảo vệ ngân sách khách khỏi đối thủ**, chứ không phải để làm deal trông to hơn. Dùng sai cách diễn đạt biến hành vi phòng vệ thành hành vi thổi phồng — đúng thứ mà d3 nói doanh nghiệp Nhật 「**cực kỳ nhạy cảm**」. Pháp chế 白鷗 review (d42) mà bỏ qua điểm này thì kịch bản kém thuyết phục.

**Đề xuất:** đổi sang cách diễn đạt đúng bậc, thống nhất **6 chỗ**:
- Phương án A (khuyến nghị): 「**1<ruby>千万円台</ruby>**」 — chính xác, vẫn che số lẻ.
- Phương án B: 「**億円<ruby>未満</ruby>の<ruby>規模</ruby>**」 — che rộng hơn.
- Kèm sửa bảng từ vựng d78 (`数千万円規模 | SỐ THIÊN VẠN VIÊN QUY MÔ | Quy mô vài chục triệu yên`).
⚠️ Nếu chọn giữ nguyên `数千万円規模` thì phải nâng giá deal — **KHÔNG nên**, vì ¥17M đã nhất quán 9/10 rule phần IV + xuyên r24/r29/r40/r45. **Sửa cách diễn đạt, đừng đụng giá.**

### 2.5 🔴 B-4 — `rule_32` tự mâu thuẫn về hạn LOI (trong cùng 1 file)

| Dòng | Nguyên văn | Hạn |
|---|---|---|
| d3 (luận điểm) | "LOI … **ký 2 bên trong 1-2 tuần**. Sau LOI mới soạn hợp đồng chính (**4-8 tuần**)" | 1-2 tuần |
| d41 (thoại) | 「ご<ruby>捺印</ruby>頂きましたら、続いて **4 週間以内**に本契約書ドラフトをご提示」 | 4 tuần |
| d47 (ghi chú【2】) | "**LOI → hợp đồng chính trong 4 tuần**" | 4 tuần |
| d65 (Tránh) | "ghi rõ **hạn đóng dấu 2 tuần**" | 2 tuần |

Hai trục thời gian bị trộn: (a) hạn khách **đóng dấu LOI**, (b) hạn mình **giao bản thảo hợp đồng chính**. d3 nói hợp đồng chính mất **4-8 tuần**, nhưng d41 + d47 cam kết **4 tuần** cứng. Học viên đọc d3 rồi hứa 4-8 tuần với khách, đọc d41 lại thấy hứa 4 tuần.

**Đề xuất:** sửa d3 `(4-8 tuần)` → `(4 tuần)` để khớp d41+d47 — vì d41 là **câu mẫu học viên copy vào mail thật**, phải là chuẩn. Và giữ d65 "hạn đóng dấu 2 tuần" (trục khác, không xung đột) nhưng nói rõ đó là hạn cho **LOI**, không phải hợp đồng chính.

### 2.6 🟡 B-5 — `rule_33` d41: phạt SLA "5%" không nói rõ 5% của cái gì

> 「(iii) SLA 99.9% <ruby>維持</ruby>、<ruby>罰則</ruby>は **月額 5% upper cap**。」
> *SLA giữ 99.9%, phạt vi phạm giới hạn **5% giá trị tháng**.*

¥17M / 24 tháng ≈ ¥708k/tháng → 5% ≈ **¥35k**. Mức phạt ¥35.000 cho một sự cố ngừng dịch vụ là **thấp bất thường** so với thông lệ SLA ngành (thường 10–30% phí tháng, có bậc theo mức độ vi phạm). Không phải sai tuyệt đối — cap thấp có lợi cho bên bán và đàm phán được — nhưng sách trình bày nó như thoả thuận cân bằng mà Ōgaki chấp nhận ngay (d42-d43), trong khi thực tế pháp chế khách sẽ đẩy lại.

Cũng không rõ 5% là **của tháng vi phạm** hay **của tổng phí năm**. Đề xuất ghi rõ: 「**当該月の<ruby>委託料</ruby>の 5%**」 (5% phí uỷ thác của chính tháng vi phạm).

---

## 3. 🔴 C — TIẾNG NHẬT

### 3.1 🔴 C-1 — `rule_33` d40: Hà CTO dùng `貴社` gọi công ty MÌNH (lỗi uchi/soto)

Nguyên văn (họp **nội bộ khẩn** của Tiên Phát, chỉ có người Tiên Phát):
> **ハー CTO**: 「3 つ<ruby>譲</ruby>れない: ①<ruby>損害賠償上限</ruby> = <ruby>年契約額</ruby> ¥17M、②IP <ruby>分割</ruby> (clientA <ruby>固有</ruby>コードは**<ruby>貴社</ruby>**、thành phần AI tái dùng は<ruby>弊社</ruby>)、③SLA 99.9% は<ruby>維持</ruby>。」
> *②Quyền sở hữu trí tuệ chia 2 lớp (**code riêng của khách thuộc khách**, thành phần AI tái dùng thuộc mình)*

`貴社` = "quý công ty", **chỉ dùng khi nói VỚI đối phương**. Đây là cuộc họp nội bộ Tiên Phát, Hà CTO đang nói với nhân viên mình về 白鷗 — phải là 「**白鷗様**」 hoặc 「**先方**」 hoặc 「**御社**→không, cũng sai trong nội bộ」. Ghép `貴社` cạnh `弊社` trong cùng một câu nội bộ khiến người đọc hiểu Hà CTO đang gọi Tiên Phát là "quý công ty" — vô nghĩa.

Đối chiếu: bản VN dịch **đúng ý** ("code riêng của khách thuộc khách"), nên đây là lỗi **chỉ ở vế JA** — nhưng lỗi JA nặng hơn vì học viên học mẫu câu.

**Đề xuất:** `貴社` → 「**白鷗様**」 (nhất quán với cách gọi nội bộ ở r37 d46: 「大垣様 — trực tiếp」).

### 3.2 🔴 C-2 — `rule_33` d40: `clientA` là mã bản thảo lọt vào bản in

Cùng dòng: 「IP <ruby>分割</ruby> (**clientA** <ruby>固有</ruby>コードは…」

`clientA` là **placeholder** thời viết nháp, không phải thuật ngữ. Trong sách khách hàng luôn là `白鷗` / `御社` / `貴社`. Bản VN cùng dòng dịch là "**code riêng của khách**" — không có "clientA". Đây là **tàn dư bản thảo**, đúng loại lỗi mục 5 (fix nửa vời: sửa VN, quên JA).

**Đề xuất:** `clientA 固有コード` → 「**白鷗様<ruby>固有</ruby>のコード**」 hoặc 「**御社<ruby>固有</ruby>コード**」 (khớp d41 dùng `御社固有`).

### 3.3 🟡 C-3 — Lẫn tiếng Anh trong ô tiếng Nhật ở mức bất thường

Rule cảnh báo mục 4E: kiểm tiếng Anh thừa **cả trong ô JA**, audit cũ sách 09 bỏ sót 22 chỗ phía Nhật. Phần IV **nặng hơn nhiều**:

| Rule | Dòng có tiếng Anh lọt ô JA | Ví dụ nguyên văn |
|---|---|---|
| 33 | 6 dòng | 「**indemnity** <ruby>無制限</ruby>は弊社 **legal** および取締役会…」 d39 |
| 37 | 9 dòng | 「SLA 99.9% の **reasoning** ありがたい。<ruby>最初</ruby> **sprint** で **reliability budget** <ruby>厳</ruby>しめに<ruby>設定</ruby>」 d50 |
| 38 | 6 dòng | 「**joint quote** として『大垣 営業部長コメント』も…」 d42 |
| 39 | 5 dòng | 「Senior 6 <ruby>名</ruby>、**junior** 4 <ruby>名分</ruby>で<ruby>個別</ruby> **specific** にします」 d39 |
| 31/32/34/36 | 3-4 dòng mỗi rule | 「**recap** OK <ruby>来</ruby>たし」 r32 d23 |

Phân định (tránh phóng đại):
- **Hợp lệ, KHÔNG báo:** `SLA`, `LOI`, `IP`, `ROI`, `PMO`, `CTO`, `CFO`, `PR`, `SOW`, `DocuSign`, `Slack`, `AI` — đều nằm trong `_thuat_ngu.md`, là viết tắt ngành dùng thật ở Nhật.
- **Đáng báo:** những từ **có sẵn từ Nhật tương đương và người Nhật thật sẽ dùng từ Nhật**: `legal` → `法務` (chính sách đã có `法務` trong bảng từ vựng r32 d79!), `indemnity` → `損害賠償` (đã có ở bảng r33 d74!), `draft` → `ドラフト`/`草案`, `review` → `レビュー`, `reasoning` → `<ruby>根拠</ruby>`, `junior/senior` → `<ruby>若手</ruby>`/`<ruby>ベテラン</ruby>`, `specific` → `<ruby>具体的</ruby>`.

Nghịch lý rõ nhất: `rule_32` bảng từ vựng dạy `法務 = Bộ phận pháp chế`, nhưng **cả 3 lượt trong thoại đều viết `legal`** (d40, d42) — học viên học từ mà không thấy nó được dùng.

**Đề xuất:** không cần quét sạch (một phần là văn phong công ty IT Nhật thật). Nhưng **tối thiểu** thay `legal` → `法務` và `indemnity` → `損害賠償` để thoại khớp bảng từ vựng của chính nó.

### 3.4 🔵 C-4 — Ghi nhận: `rule_34` chuẩn, ĐÃ WebSearch xác nhận

Câu chốt 「**ご<ruby>署名</ruby>・ご<ruby>捺印</ruby>いただけますでしょうか**」 (d40, d52, d61) — WebSearch xác nhận **đúng hoàn toàn**:
> 「ご捺印いただけますでしょうか？」は謙譲語をうまく使い、上司・目上・**社外取引先に使える素晴らしい敬語フレーズ**…自分の氏名を書いて印鑑を押してほしいときは「**ご署名ご捺印**」と明記します。
> — [のまどサラリーマン](https://nomad-salaryman.com/post-24949/), [bizushiki](https://bizushiki.com/ouin-irai)

Sách còn đúng cả ở điểm tinh tế: nguồn khuyên "押印箇所・**期限を具体化**" và "**理由**を添える" — rule_34 làm đúng cả hai (hạn 6/25 + lý do kickoff 7/1). Cảnh báo 「サイン」 NG (d52, d69) cũng chuẩn.
→ **CẤM SỬA.** (Ghi chú: có nguồn nói 「〜いただけますでしょうか」 hơi バカ丁寧, 「いただけますか」 đã đủ. Nhưng với 調印 — nghi thức trang trọng nhất — mức của sách là **phù hợp**. Đừng "tối giản" nhầm.)

---

## 4. 🟡 D/E/F — TIẾNG VIỆT, HÁN VIỆT, NHẤT QUÁN

### 4.1 🟡 Lỗi đánh máy tiếng Việt

| Rule | Dòng | Nguyên văn | Sửa |
|---|---|---|---|
| 31 | d13 | "phải gửi mail **tóm tắtp**" | `tóm tắt` |

Chỉ **1 lỗi chính tả** trong 853 dòng — chất lượng tiếng Việt phần IV tốt.

### 4.2 🟡 Hán Việt sai / lệch trong bảng từ vựng

| Rule | Dòng | Từ | Sách ghi | Đúng phải là | Ghi chú |
|---|---|---|---|---|---|
| **34** | d87 | 締結 | **ĐẾ KẾT** | **ĐẾ KẾT / ĐÌNH KẾT** ⚠ | **Mâu thuẫn với r36 d87 ghi `ĐÌNH KẾT`** — cùng 1 từ, 2 Hán Việt, cách nhau 2 rule |
| 36 | d87 | 締結 | **ĐÌNH KẾT** | (như trên) | 締 = ĐẾ/ĐÌNH; phải **chọn 1** và thống nhất |
| 32 | d75 | 捺印 | **NẶT ẤN** | **NÁP ẤN** | 捺 âm Hán Việt là "náp"; "nặt" không phải âm Hán Việt |
| 34 | d83 | ご捺印 | **NẶT ẤN** | **NÁP ẤN** | như trên |
| 33 | d82 | 営業日 | **DOANH NGHIỆP NHẬT** | **DOANH NGHIỆP NHẬT** | 営業日 = DOANH NGHIỆP NHẬT đúng chữ, nhưng nghĩa Việt "Ngày làm việc" thì Hán Việt gây hiểu nhầm là "nước Nhật" — nên ghi `DOANH NGHIỆP NHẬT (nhật = ngày)` |
| 39 | d81 | 指摘 | **CHỈ TRÍCH** | **CHỈ TRÍCH** | Đúng chữ Hán Việt, nhưng "chỉ trích" trong tiếng Việt hiện đại = phê phán gay gắt, **lệch nghĩa** với 指摘 (chỉ ra). Cột nghĩa Việt đã ghi đúng ("Chỉ ra / nêu ra") — chỉ cần chú thích |
| 30 | d74 | 齟齬 | **TRỞ NGỮ** | **SỞ NGỮ / TỔ NGỮ** | 齟 âm "sở/tổ", không phải "trở" |
| 30 | d75 | 月末締め | **NGUYỆT MẠT ĐÌNH** | **NGUYỆT MẠT ĐẾ/ĐÌNH** | Cùng chữ 締ように r34/r36 — phải thống nhất cả 3 chỗ |
| 30 | d76 | 翌月末払い | **DỰC NGUYỆT MẠT BẢI** | **DỰC NGUYỆT MẠT PHẤT** | 払 âm Hán Việt là "phất", không phải "bải" |

⚠️ **Lưu ý cho main Claude:** `取締役会 = THỦ ĐẾ DỊCH HỘI` (r33 d80) **KHÔNG phải lỗi riêng phần IV** — r12 d83 và r23 d78 ghi y hệt. Nhất quán toàn sách → nếu sửa phải sửa cả 3, thuộc việc của N5/main.

### 4.3 🟡 F-1 — `rule_38` tự mâu thuẫn về thứ tự tên trong PR

`rule_38` d3 (luận điểm) và d39 dạy: đặt tên khách **SAU** tên Tiên Phát.
`rule_38` d66 (mục Tránh) lại viết:
> - Đặt tên 白鷗 lên trước (例:「白鷗株式会社、ティエンファット社と…」) → **đi ngược thế "Tiên Phát là nhà cung cấp được chọn"** (khiêm tốn OK, nhưng hiệu quả quảng bá giảm)

Hai vấn đề:
1. **Lý do bị đảo chiều.** d3 nói lý do đặt khách sau là để **tránh tạo cảm giác 「勝った」 (khoe thắng)** — tức là lý do **quan hệ/lễ độ**. d66 lại nói lý do là **hiệu quả quảng bá của Tiên Phát**. Hai động cơ trái ngược nhau: một cái vì khách, một cái vì mình.
2. d66 tự phủ định trong chính nó: "(khiêm tốn OK, nhưng hiệu quả quảng bá giảm)" — mục "Tránh" mà lại thừa nhận cách đó OK, thì học viên không biết nên tránh hay không.

**Đề xuất:** viết lại d66 theo đúng trục d3 (lý do là lễ độ, không phải marketing), bỏ vế ngoặc tự mâu thuẫn.

### 4.4 🟡 F-2 — `rule_38` d39: `弊社 名前` thiếu の

> 「白鷗様の<ruby>名前</ruby>は**弊社 名前**の<ruby>後段</ruby>に<ruby>配置</ruby>しています」

Thiếu 「の」: phải là 「**弊社の名前**」 hoặc gọn hơn 「**弊社名**」. Đối xứng ngay trong câu đã có 「白鷗様**の**名前」.

### 4.5 🔵 F-3 — Cấu trúc bảng `rule_37` có dòng thừa

`rule_37` d43/d45/d47/d49/d51/d53 mở đầu bằng `| | |` (2 ô rỗng) thay vì `| |` như các rule khác — bảng có cột lệch. Không sai nội dung nhưng render sẽ lệch. Kiểm chéo: r34/r36 dùng `| |` (1 ô rỗng) và render đúng.

### 4.6 🔵 F-4 — `rule_31` + `rule_32` + `rule_38` có mục `## Mẫu` rỗng

Cả 3 rule kết bằng:
> (Mẫu … JP/VN với N phần — **xem hướng dẫn đính kèm cuốn sách**)

Đây là **placeholder**, không phải nội dung. Front matter d21 hứa "Phụ lục D (templates tổng hợp)" và mục lục d90/d96 gắn nhãn `[TEMPLATE: report]` cho r32/r38, `[TEMPLATE: email_followup]` cho r31 → **có thể mẫu thật nằm ở Phụ lục D**, không phải thiếu (đúng bài học mục 6: "X có nằm ở chỗ khác không?"). Tôi **không kết luận là thiếu** — cần main Claude đối chiếu Phụ lục D. Nếu Phụ lục D có đủ, chỉ cần sửa câu dẫn thành "xem Phụ lục D".

---

## 5. 🔵 NGOÀI PHẠM VI — ghi để chủ nhà quyết, KHÔNG tự sửa

| # | Vị trí | Vấn đề |
|---|---|---|
| 1 | `_thuat_ngu.md` d24 | LOI định nghĩa "văn bản **ràng buộc nhẹ**" — sai khái niệm pháp lý (xem 1.3). Cần sửa đồng bộ với rule_32 |
| 2 | `_thuat_ngu.md` d34 | "deal ¥18M → ROI 4.4x" — khớp r18/r41, **không phải lỗi**; ghi để tránh ai đó sửa nhầm thành ¥17M |
| 3 | `meta/mục_lục.md` d84-97 | Cột `Tên VN` phần IV vẫn là tiếng Anh ("Confirm point of agreement", "Final negotiation on terms", "Public announcement") trong khi H1 rule.md đã Việt hoá. Thuộc lỗi mục lục toàn sách 37/45 |
| 4 | `meta/mục_lục.md` d131 | Cross-ref "Sách 05 Pitch: rule_19 価格 ↔ rule_19 sách 06" — **LIÊN SÁCH**, tôi không kiểm chứng được, đừng nhầm là rule cùng sách (bẫy mục 1.6) |
| 5 | `rule_28` d7 | `**Liên quan:** … rule 35 (sách 06 phần IV — 商談打ち切り)` — ghi "sách 06" trong chính sách 06, thừa. Nhưng nằm ở phần III, ngoài phạm vi tôi |
| 6 | conversation.json ×10 | **Không mở, không đụng** theo phạm vi |

---

## 6. ⛔ DANH SÁCH CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| # | Vị trí | Vì sao dễ bị sửa nhầm | Vì sao PHẢI GIỮ |
|---|---|---|---|
| 1 | `r30` d25-26, d40 · SLA **99.5% vs 99.9%** | Trông y hệt "mâu thuẫn số liệu" — đúng cái bẫy sách 03 rule_05/rule_39 | **Chủ ý thiết kế.** 99.5% là con số **Tanaka nhớ nhầm** trong khối XẤU để dựng bài học; 99.9% là số thật. Sửa cho "khớp" = **giết chết bài học của cả rule** |
| 2 | `r37` d44 · **「SLA 99.5% に落とすことは交渉的に NG」** | Có 99.5% → dễ bị gom vào đợt "thống nhất SLA" | Đây là **lời dạy chủ động**: 99.5% khả thi kỹ thuật nhưng cấm về đàm phán. Câu này cần 99.5% tồn tại mới có nghĩa |
| 3 | `r34` d40/d52/d61 · 「ご署名・ご捺印いただけますでしょうか」 | Có thể bị "tối giản" thành 「いただけますか」 vì nguồn nói 〜ますでしょうか hơi バカ丁寧 | **Đã WebSearch xác nhận đúng** cho 社外取引先. 調印 là nghi thức trang trọng nhất — mức này phù hợp |
| 4 | `r33` d23/d38 · 大垣 dùng **`当社`** | Script keigo gạch đỏ vì lẫn `弊社`/`当社` trong 1 rule | **Đúng.** `当社` là 大垣 nói về công ty **của ông ta** (白鷗); `弊社` là Dũng nói về Tiên Phát. Hai người khác nhau, đều chuẩn |
| 5 | `r35` d23/d24 · **`弊社`** trong lời 大垣 | Trông như lỗi vì Dũng cũng dùng `弊社` | **Đúng.** 大垣 khiêm nhường về 白鷗 khi nói với Dũng. `弊社` là khiêm nhường ngữ, ai cũng dùng cho công ty mình |
| 6 | `r35` d13 · **¥14M** và d44 · **¥15.5M** | Khi sửa B-1 (¥15M→¥15.5M ở d13) rất dễ đụng nhầm | ¥14M = giá khách ép, ¥15.5M = giá khách nâng sau. **Chỉ sửa đúng chuỗi `¥15M`**, không đụng 2 số kia |
| 7 | `r36` d21-24 · 「ありがとうございます！！」「嬉しいです！！」 | Nhìn như lỗi văn phong cần "sửa cho lịch sự" | **Là khối XẤU cố ý.** Toàn bộ rule_36 tồn tại để dạy KHÔNG viết như vậy |
| 8 | `r32` d3/d54 · chữ 「ロック」/「khóa」 | Sau khi vá lỗi LOI (1.3) dễ xoá sạch | Nếu sửa, phải sửa **có chủ đích** (khoá về mặt **kỳ vọng thương mại**, không phải khoá pháp lý) — đừng xoá trắng làm mất luận điểm rule |
| 9 | `r33` d3/d41 · cap = **年契約額 ¥17M** | Trông "trùng giá deal" nên dễ bị đổi | **Đúng thông lệ Nhật** (WebSearch: 委託料相当額/年間取引額). Trùng số là **cố ý** — cap chính bằng giá trị hợp đồng năm |
| 10 | `r30` d40 · **7 mục đánh số ①-⑦** | Dễ bị "gọn hoá" | 7 mục = xương sống bài học (mỗi mục 1 nguồn sai lệch). Cắt mục nào cũng hỏng ghi chú 【2】 |
| 11 | `r39` d43 · Loan gọi Dũng 「ズンさん」 còn tự xưng ngôi 2 là "chị" ở bản VN | Trông như lỗi xưng hô | Bản JA không có đại từ tự xưng; VN chọn "chị" nhất quán với 「ロアン**さん**」 Dũng gọi. **Hợp lệ** (bẫy mục 3: ngôi 2 ≠ ngôi 1) |
| 12 | `r31` d38-43 · thoại **không có ruby** | Trông như "ruby-loss" bug sách 03 | Kiểm rồi: **không phải câu lặp** giữa khối XẤU/TỐT, mà là khối thoại Slack nội bộ viết mới. Đây là lựa chọn nhất quán của r31/r32 (thoại nội bộ ít ruby hơn thoại với khách) |

---

## 7. Thứ tự sửa đề xuất (theo mục 8 của rule)

| Vòng | Việc | Rule | Rủi ro |
|---|---|---|---|
| 1 | `tóm tắtp` → `tóm tắt` · `弊社 名前` → `弊社の名前` · `clientA` → `白鷗様固有` | 31, 38, 33 | Thấp |
| 1 | Hán Việt: `NẶT ẤN`→`NÁP ẤN` (×2), `TRỞ NGỮ`→`SỞ NGỮ`, `BẢI`→`PHẤT`, thống nhất `締結` | 30,32,34,36 | Thấp |
| 2 | **B-2** `+24%` → `+17%` (**cả JA d44 lẫn VN d45**) | 37 | Trung bình — bẫy ruby |
| 2 | **B-3** `数千万円規模` → `1千万円台` (6 chỗ + bảng từ vựng) | 38 | Trung bình |
| 3 | **B-1** walk-away `¥15M` → `¥15.5M` (d13) | 35 | Trung bình — đừng đụng ¥14M/¥15.5M |
| 3 | **B-4** hạn LOI `4-8 tuần` → `4 tuần` (d3) | 32 | Thấp |
| 3 | **C-1** `貴社` → `白鷗様` | 33 | Thấp |
| 3 | **F-1** viết lại mục Tránh d66 theo trục d3 | 38 | Trung bình — cần đọc ngữ cảnh |
| 4 | **🔴 LOI binding** — bổ sung luận điểm + câu chốt + 2 từ vựng + đồng bộ `_thuat_ngu.md` | 32 | **Cao — cần chủ nhà duyệt hướng** |
| 4 | 責任除外 (故意・重過失) + làm rõ phạt "5% tháng nào" | 33 | **Cao — cần chủ nhà duyệt** |
| 4 | 捺印稟議 (vòng ringi thứ 2) | 34 | Trung bình — bổ sung nội dung mới |
| 4 | Đối chiếu Phụ lục D trước khi kết luận mục `## Mẫu` | 31,32,38 | Cần main Claude bắc cầu |

---

## Nguồn WebSearch đã dùng

- LOI / 基本合意書 tính ràng buộc: [日本M&Aセンター](https://www.nihon-ma.co.jp/magazine/learn/adjustment-mou/) · [トランビ](https://www.tranbi.com/ma-column/detail/?id=4) · [M&Aベストパートナーズ](https://mabp.co.jp/magazine/15627/) · [豊中司法書士ふじた事務所](https://toyonaka-shihoshoshi.com/ma-houtekikousokuryoku/)
- 損害賠償上限 thông lệ B2B/IT: [行政書士法人Tree](https://office-tree.jp/blog/legal-documents/damages-liability-clause-design/) · [law-bright](https://law-bright.com/corporationlaw/articles/keiyaku-itaku-baisho-jogen/) · [弁護士法人クラフトマン](https://www.ishioroshi.com/biz/kaisetu/it/index/baishouseigen/) · [IT弁護士大阪](https://www.ys-law.jp/IT/column/column-10946/)
- 稟議 / 捺印稟議 / 電子契約: [クラウドサイン 7ステップ](https://www.cloudsign.jp/media/20200401-dounyu-7step/) · [クラウドサイン 稟議](https://www.cloudsign.jp/media/20210721-syanairingi/) · [LegalAgent](https://legalagent.co.jp/column/c59-contract-signing-authority/)
- 調印依頼 敬語: [のまどサラリーマン](https://nomad-salaryman.com/post-24949/) · [bizushiki 押印依頼メール](https://bizushiki.com/ouin-irai) · [bizushiki 押印・捺印・調印の違い](https://bizushiki.com/ouin)

---

*N4 — phần_IV (rule_30→39). Chỉ báo cáo, không sửa file nội dung.*
