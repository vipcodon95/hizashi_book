# [08-A2] Rà soát rule.md phần III + IV + V (31 rule)

> Agent: A2 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: phần_III rule_21..33, phần_IV rule_34..41, phần_V rule_42..51
> Đã đọc trọn 31 file `rule.md` (~6.019 dòng). Đối chiếu `meta/STATUS.md` + `REVIEW_FINDINGS_JP.md` + `REVIEW_FINDINGS_VN.md` để KHÔNG lặp lỗi đã fix ở v1.1.
> Đã dùng WebSearch kiểm chứng 12 khẳng định sự thật đáng ngờ (bảng ở cuối).

## Tóm tắt số lỗi

| Mức | Số lượng |
|---|---|
| 🔴 SAI (sự thật / tiếng Nhật / lời khuyên rủi ro) | 17 |
| 🟡 NHẤT QUÁN / TIẾNG VIỆT | 12 |
| 🔵 CHẤT LƯỢNG SƯ PHẠM | 6 |
| **Tổng** | **35** |

Trong đó **7 lỗi là "fix v1.1 chưa ăn"** — tức đã ghi trong REVIEW_FINDINGS nhưng thực tế chưa sửa hoặc sửa chưa hết.

---

## Danh sách lỗi

### PHẦN III — rule_21..33

#### rule_21_北海道

- **[🔴 SAI SỰ THẬT]** `dòng 145` | trích: `| **Nhân vật nổi tiếng** | 新庄剛志 (cựu HLV Fighters), 大泉洋 (diễn viên) |`
  - **Vấn đề:** Đây là bảng **"Bảng tra nhanh vùng miền — 北海道"**, mục "Nhân vật nổi tiếng" trong 12 bảng vùng miền khác của sách đều dùng để liệt kê **người xuất thân từ vùng đó** (so sánh: rule_24 liệt kê 織田信長/イチロー xuất thân Aichi; rule_26 liệt kê ダウンタウン xuất thân Osaka; rule_30 liệt kê タモリ/武田鉄矢 xuất thân Fukuoka). **新庄剛志 sinh ở 長崎県対馬市, lớn lên và xuất thân 福岡県福岡市南区** — không có liên hệ xuất thân Hokkaido, chỉ là HLV đội Hokkaido. Đây đúng **cùng loại lỗi** với 黒田博樹 gán nhầm Fukuoka mà v1.1 đã gỡ ở rule_30.
  - **Đề xuất sửa:** Bỏ 新庄剛志 khỏi cột này, hoặc tách rõ: `大泉洋 (diễn viên, 江別市), 安田顕 (室蘭市), 中島みゆき (帯広市)` cho hàng "Nhân vật nổi tiếng"; nếu muốn giữ 新庄 thì chuyển sang hàng "Đội thể thao" với chú thích `新庄剛志 (cựu HLV Fighters — quê Fukuoka)`.
  - **Nguồn:** ja.wikipedia.org/wiki/新庄剛志; media.fighters.co.jp/player/1/ — xác nhận 長崎県対馬市生まれ・福岡県福岡市南区出身.

- **[🟡 TIẾNG VIỆT]** `dòng 169` | trích: `| ライラック | ライラック | — | Hoa lilac (quốc hoa Sapporo) |`
  - **Vấn đề:** "quốc hoa" nghĩa là hoa biểu tượng **quốc gia**. Lilac là **市の木/市の花 của thành phố Sapporo** — dịch "quốc hoa Sapporo" là sai bậc hành chính. Ngoài ra dòng 33 bản JP nói `北海道の花` (hoa của Hokkaido) trong khi vocab nói Sapporo — không nhất quán.
  - **Đề xuất sửa:** `Hoa lilac (hoa biểu tượng thành phố Sapporo)`. Đồng thời sửa dòng 33-34 JP: `ライラック、札幌の木ですよね` + VN `Lilac, cây biểu tượng Sapporo nhỉ`.

- **[🔵 CHẤT LƯỢNG]** `dòng 90-103` (Scenario 4) | **Vấn đề:** Scenario NG chỉ có **3 lượt thoại**, trong khi 3 scenario trước có 6 lượt. Không có màn "GOOD pivot" cho học viên thấy cách gỡ tiếp. Điều này JP review đã nêu (P2) và **chưa được sửa**.
  - **Đề xuất sửa:** Thêm 2-3 lượt sau lời xin lỗi: Dũng chuyển ngay sang `「中村CFOは札幌のご出身でしたよね、5月のライラック、もう咲きましたか?」` → Nakamura hồi tâm trạng → mẫu học viên copy được.

#### rule_22_東北

- **[🔴 SAI — FIX v1.1 CHƯA ĂN]** `dòng 55` | trích VN: `*Ồ, em nói chuẩn! Yamagata là **vùng sake số 1 Tohoku**. Dewazakura, Juyondai, Tatenokawa... đều Yamagata.*`
  - **Vấn đề:** v1.1 (`STATUS.md` P1) ghi rõ đã sửa `「東北一の酒どころ」→「東北屈指の酒どころ」`. **Bản JP dòng 54 ĐÃ sửa thành 東北屈指** nhưng **bản dịch tiếng Việt dòng 55 vẫn giữ nguyên "vùng sake số 1 Tohoku"** — tức là fix chỉ chạy 1 nửa, JP và VN nay mâu thuẫn nhau. Học viên đọc VN vẫn học sai thông tin ("số 1") và sai sắc thái (屈指 = "hàng đầu / trong nhóm dẫn đầu", không phải "số 1").
  - **Đề xuất sửa:** VN → `*Ồ, em nói chuẩn! Yamagata là vùng sake thuộc hàng đầu Tohoku. Dewazakura, Juyondai, Tatenokawa... đều Yamagata.*`

- **[🔴 TIẾNG NHẬT SAI]** `dòng 37` | trích: `| **吉田** | 「私は**喜助**。<ruby>塩加減...` — VN: `*Anh phe Kisuke...*`; và `dòng 98` | trích: `| **吉田** | 「本当だよ。**東家**が老舗で有名。ベテランは150杯食べる人もいるよ。」`
  - **Vấn đề:** Yoshida là **khách hàng Nhật của Hakuō** (bối cảnh dòng 19: "4 khách Hakuō Tokyo HQ"), gặp Dũng lần đầu trong bữa nhậu. Nhưng câu thoại dùng **thể thường trống trơn** 「本当だよ」「食べる人もいるよ」 với người mới gặp — trong khi cùng nhân vật ở dòng 33/41 lại dùng đúng 「〜ですよ」「〜ください」. Mức lịch sự **dao động bất nhất trong cùng một nhân vật, cùng một buổi**.
  - **Đề xuất sửa:** Thống nhất về thể lịch sự nhẹ: dòng 98 → 「本当ですよ。**東家**が老舗で有名でね。ベテランだと150杯食べる人もいます。」

- **[🟡 NHẤT QUÁN]** `dòng 33, 54` | trích: `| **吉田 (placeholder)** |` và `| **遠藤 (placeholder)** |`
  - **Vấn đề:** Chữ "(placeholder)" **lọt vào bản thành phẩm**. 30 rule còn lại không có nhân vật nào ghi placeholder. Đây là dấu vết bản nháp chưa dọn.
  - **Đề xuất sửa:** Bỏ "(placeholder)". Nếu 吉田/遠藤 là nhân vật hợp lệ thì phải đăng ký vào `voice_profiles.json` như các nhân vật khác (hiện tại **không có** trong cast ở `_front_matter.md`) — nếu không thì đổi sang nhân vật đã có (ví dụ dùng 田中PMO dẫn dắt + 1 khách vùng).

- **[🟡 NHẤT QUÁN]** `dòng 129-130` | trích Câu vàng: `「山形の十四代、幻ですよね…」` / `「秋田の新政、ラベルが綺麗で。」`
  - **Vấn đề:** Rule khuyên câu mở này nhưng **không cảnh báo** rằng 十四代 và 新政 là 2 loại sake **cực khó mua, giá chợ đen gấp 5-10 lần**. Nói với người Yamagata rằng mình "muốn uống 十四代" dễ đặt họ vào thế khó xử (họ cũng khó kiếm). Rule 25 có cảnh báo tương tự cho 白川郷 ライトアップ ("dân địa phương cũng khó lấy vé") — chỗ này thiếu.
  - **Đề xuất sửa:** Thêm ghi chú sau dòng 130: `※ 十四代 / 新政 là sake cực hiếm — nói "幻ですよね" (huyền thoại nhỉ) để KHEN, đừng nói "飲んでみたい" theo kiểu nhờ vả, khách sẽ thấy áp lực phải kiếm cho mình.`

#### rule_23_関東東京

- **[🔴 SAI SỰ THẬT]** `dòng 101` | trích: `| **ズン** | 「121<ruby>年目<rt>ねんめ</rt></ruby>の<ruby>店<rt>みせ</rt></ruby>!すごいですね。」` — VN: `*Quán năm thứ 121! Ghê thật.*`
  - **Vấn đề:** Đây là **số cứng sẽ lỗi thời**. Bối cảnh rule là tháng 5/2026 (dòng 20) → 1905 + 121 = 2026, đúng cho năm nay nhưng **sách xuất bản dùng nhiều năm**. Đây đúng loại lỗi mà v1.1 đã sửa ở rule_28 (`創業60年 → 創業半世紀以上`, lý do ghi rõ trong STATUS.md: "evergreen") nhưng **không áp dụng nhất quán sang rule_23**.
  - **Đề xuất sửa:** `「創業1905年、120年以上の店!すごいですね。」` / VN `*Khai trương 1905, quán hơn 120 năm! Ghê thật.*`
  - **Nguồn:** allabout.co.jp — みますや 創業明治38年(1905), được coi là quán nhậu lâu đời nhất Tokyo còn ở nguyên vị trí.

- **[🔴 LỜI KHUYÊN RỦI RO]** `dòng 133` | trích Câu vàng: `「みますや、行ったことあります。」(khách lớn tuổi 大ヒット)`
  - **Vấn đề:** Sách bảo học viên **nói câu này để ghi điểm**, nhưng nếu chưa từng đi thật thì đây là **nói dối trắng trợn** — và người Tokyo lớn tuổi sẽ hỏi ngay "どのメニューが好き?" / "2階上がった?" → lộ ngay. Toàn bộ triết lý sách (rule_33/50) là "thật thà > giả vờ nhớ" (rule_33 dòng 138-139 ghi rõ). Đây là **mâu thuẫn nội tại**.
  - **Đề xuất sửa:** `「みますや、名前は伺ったことがあります。いつか連れて行っていただけたら…」` — thể hiện biết mà không giả vờ đã đi.

- **[🟡 NHẤT QUÁN]** `dòng 59-60` | trích: `月島は**もんじゃストリート**って言ってね、80軒以上ある` — VN: `*Tsukishima có 'monja street', hơn 80 quán.*`
  - **Vấn đề:** Con số "80 軒以上" thường được nêu là **khoảng 50-70 quán** tùy nguồn (số quán biến động, một số nguồn du lịch nói "70軒以上"). "80軒以上" là mốc cao nhất, dễ bị bắt lỗi giống trường hợp お好み村 "25店舗" ở rule_28.
  - **Đề xuất sửa:** Dùng mốc mềm giống cách v1.1 đã xử lý お好み村: `「もんじゃストリート、数十軒が軒を連ねてるよ」`.

#### rule_24_愛知

- **[🔴 SAI SỰ THẬT]** `dòng 35` | trích: `「これが**コスパの名古屋**ですよ。コメダの**<ruby>白雪<rt>しろゆき</rt></ruby>みたいなシロノワール**もぜひ。」`
  - **Vấn đề:** 「白雪みたいなシロノワール」 vô nghĩa. **シロノワール** = "shiro" (blanc) + "noir" — tên ghép Pháp-ngữ, **không liên quan gì tới 白雪 (bạch tuyết)**. Ruby 白雪=しろゆき chèn vào đây là **giải thích từ nguyên SAI**, người Nagoya nghe sẽ thấy kỳ. Bản VN dòng 36 khôn hơn — bỏ luôn cụm này, nên JP↔VN không khớp.
  - **Đề xuất sửa:** `「これがコスパの名古屋ですよ。コメダの**シロノワール**もぜひ。デニッシュにソフトクリームを乗せた名古屋発祥のやつです。」`

- **[🔴 SAI SỰ THẬT]** `dòng 104` | trích: `「**カクキュー**と**まるや**、岡崎で2社しか作ってないんですよ。<ruby>最低<rt>さいてい</rt></ruby>2年<ruby>熟成<rt>じゅくせい</rt></ruby>。」`
  - **Vấn đề:** Hai điểm cần siết. (1) "2社しか作ってない" đúng với **八丁味噌 truyền thống vùng 八丁村 (Okazaki)** — nhưng có **tranh chấp GI (地理的表示) nổi tiếng** giữa 2 nhà Okazaki và hiệp hội 愛知県味噌溜醤油工業協同組合 về việc ai được gọi 八丁味噌; nói tuyệt đối "2社しか" là đứng hẳn một phía một tranh chấp đang mở. (2) Chuẩn truyền thống của 2 nhà này là **二夏二冬 (khoảng 2 năm)** — "最低2年" thì được, nhưng cần gắn với cụm 二夏二冬 mới ra chất chuyên gia.
  - **Đề xuất sửa:** `「**カクキュー**と**まるや**、八丁村の2軒が伝統の造り手でね。**二夏二冬**、木桶に石を積んで2年以上寝かせる。深みが違う。」` — tránh khẳng định độc quyền, thêm chi tiết 木桶+石積み là điểm cộng thật.

- **[🟡 NHẤT QUÁN]** `dòng 172` | trích NG: `- Hỏi về **F1 鈴鹿** quên rằng 鈴鹿 thuộc 三重県 (không Aichi).`
  - **Vấn đề:** Mục NG này **không có chỗ nào trong rule nhắc tới 鈴鹿** — nó cảnh báo về một lỗi chưa từng được giới thiệu. So sánh: các NG khác đều gắn với nội dung đã dạy (八丁味噌, コスパ, ケチ). Học viên đọc sẽ hụt.
  - **Đề xuất sửa:** Hoặc thêm 1 dòng vào bảng tra nhanh (`| **Lưu ý ranh giới** | 鈴鹿サーキット(F1) thuộc 三重県, 長島スパーランド cũng 三重 — KHÔNG phải Aichi |`), hoặc bỏ mục NG này.

- **[🔵 CHẤT LƯỢNG]** `dòng 162` | trích: `イチロー (西春出身)`
  - **Vấn đề:** 西春 là tên **cũ** của 西春日井郡西春町, đã sáp nhập thành **北名古屋市 từ 2006** — 20 năm trước. Người Aichi trẻ có thể không biết địa danh này.
  - **Đề xuất sửa:** `イチロー (豊山町生まれ・北名古屋市育ち)`.

#### rule_25_岐阜 — chất lượng tổng thể cao nhất phần III

- **[🔴 SAI — FIX v1.1 CHƯA ĂN]** `dòng 65, 168` | trích dòng 65: `**飛騨高山には7つの蔵元**があるんですよ` ; dòng 168: `| **酒** | 飛騨7蔵元: 老田酒造店 (鬼ころし), 舩坂酒造店, 川尻酒造場, 二木酒造, 平瀬酒造店, 平田酒造場, 原田酒造場 |`
  - **Vấn đề:** JP review nêu rõ (P1) rằng con số 7 gây tranh cãi (高山市 nội thành thường đếm 6; 原田酒造場 nằm ở ranh giới cách đếm) và đề nghị `「6〜7蔵元」` hoặc ghi rõ "高山+飛騨地域で7蔵". **Không có dấu vết sửa** — cả dòng thoại lẫn bảng vẫn giữ "7". STATUS.md cũng không liệt kê fix này.
  - **Đề xuất sửa:** dòng 65 → `「**飛騨高山周辺には6〜7の蔵元**があるんですよ」`; dòng 168 → `| **酒** | 飛騨地域6〜7蔵元: 二木酒造, 平瀬酒造店, 平田酒造場, 川尻酒造場, 老田酒造店 (鬼ころし), 舩坂酒造店 (+ 飛騨古川の蒲酒造場など) |`

- **[🔴 SAI — FIX v1.1 CHƯA ĂN]** `dòng 117-118` | trích: `**ハットリハンゾー**って<ruby>映画<rt>えいが</rt></ruby>の<ruby>刀<rt>かたな</rt></ruby>、<ruby>関製<rt>せきせい</rt></ruby>って<ruby>噂<rt>うわさ</rt></ruby>もありますね(<ruby>笑<rt>わら</rt></ruby>)` — VN: `*Thanh kiếm trong phim Hattori Hanzō nghe đồn cũng do Seki làm (cười).*`
  - **Vấn đề:** JP review (P2) đề nghị thay bằng "関の包丁が世界中の三ツ星レストランで使われている" vì reference Tarantino lệch tông với thợ thủ công Gifu 50-55 tuổi. **Chưa sửa.** Ngoài ra chính nội dung cũng **sai sự thật**: kiếm Hattori Hanzō trong Kill Bill là **đạo cụ phim của Mỹ**, không có "tin đồn" nào về Seki chế tác — sách đang phát tán một giai thoại tự bịa và gán vào miệng người Gifu.
  - **Đề xuất sửa:** `「今は**シェフ用包丁**が世界中に輸出されてる。ボキューズやデュカスみたいな三ツ星の厨房でも関の包丁が使われとるんですよ。」`

- **[🟡 TIẾNG VIỆT]** `dòng 62` | trích VN: `*Ồ em biết rồi! Sarubobo là búp bê truyền thống Hida, nghĩa là 'khỉ con'. Đỏ=tránh tai, hồng=tình yêu, xanh=học, **vàng=tiền**...*`
  - **Vấn đề:** **Bản dịch VN thêm "vàng=tiền" mà bản JP dòng 61 KHÔNG có** (JP chỉ có 赤/ピンク/青 rồi "…色で意味が違うんです"). Điều này phá hỏng nhịp kịch: dòng 63-65 ngay sau đó là Dũng **hỏi** về màu vàng và Kato mới **tiết lộ** vàng=金運. Bản VN spoil trước, làm mất "cú chốt" của đoạn.
  - **Đề xuất sửa:** Bỏ "vàng=tiền" khỏi dòng 62 để khớp JP.

- **[🟡 TIẾNG VIỆT]** `dòng 199-200` | trích vocab: `| 鵜飼 | うかい | **ĐỀ TỰ** | ... |` và `| 鵜匠 | うしょう | **ĐỀ TƯỢNG** | ... |`
  - **Vấn đề:** Hán Việt sai. 鵜 âm Hán Việt là **ĐỀ/ĐÊ** (chim cốc) — nhưng 飼 là **TỰ**? Không, 飼 = **TỰ (nuôi)** thì tạm được, còn 匠 = **TƯỢNG (thợ)** cũng được. Vấn đề là cột này **thiếu nhất quán về mục đích**: các dòng khác trong cùng bảng ghi Hán Việt có nghĩa (白川郷 = BẠCH XUYÊN HƯƠNG), nhưng 鵜飼 "ĐỀ TỰ" không nói lên gì cho người Việt vì không ai dùng cụm này. So sánh với dòng 201 `関の刃物 | QUAN — NHẬN VẬT` — 刃 âm Hán Việt là **NHẬN** đúng, nhưng "NHẬN VẬT" dễ đọc nhầm thành "nhân vật".
  - **Đề xuất sửa:** Với các cụm không tồn tại trong tiếng Việt, ghi `—` như sách đã làm cho さるぼぼ, thay vì ghép âm cưỡng ép. Riêng 刃物 nên ghi `NHẬN VẬT (= đồ có lưỡi)` để tránh đọc nhầm.

#### rule_26_大阪

- **[🔴 SAI SỰ THẬT — FIX v1.1 CHƯA ĂN]** `dòng 129-130` | trích: `「あ、**KFCの像を道頓堀に投げ込んで18年勝てなかった**伝説…!2009年に発見されたんですよね?」` — VN: `*À, ném tượng KFC xuống Dōtonbori, 18 năm không vô địch huyền thoại! 2009 vớt lên đúng không?*`
  - **Vấn đề:** JP review (P2) đã chỉ ra chỗ này **trộn lẫn 3 mốc**, chưa sửa. Sự thật: tượng bị ném **1985** (năm 日本一); từ 1985 → **2003** là 18 năm không đoạt **リーグ優勝**; nhưng 2003 chưa phải 日本一; 日本一 phải chờ **2023 = 38 năm**; tượng được vớt **2009**. Câu trong sách nói "ném tượng → 18 năm không thắng → 2009 vớt lên" khiến người đọc hiểu **tượng vớt năm 2009 mới hết lời nguyền**, sai hoàn toàn. Nghiêm trọng hơn vì **ngay dòng 123** Yamamoto vừa nói "**18年ぶり**やった!" về chức vô địch **2023** (đúng, 2005→2023 là 18 năm リーグ優勝) — nên trong cùng 1 scenario, con số "18年" mang **2 nghĩa khác nhau** mà không phân biệt. Học viên chắc chắn rối.
  - **Đề xuất sửa:** `「あ、**1985年の日本一の後、KFCの像を道頓堀に投げ込んだ**っていう伝説…!像は2009年に見つかって、日本一は2023年、**38年ぶり**でしたよね?」` — và sửa dòng 123 để rõ `「**リーグ優勝は18年ぶり、日本一は38年ぶり**やった!」`
  - **Nguồn:** ja.wikipedia.org/wiki/カーネル・サンダースの呪い; npb.jp/news/detail/20230914_01.html — 2023年 セ・リーグ優勝は2005年以来18年ぶり, 日本一は1985年以来38年ぶり; tượng được vớt 2009年3月10日.

- **[🟡 NHẤT QUÁN]** `dòng 121-124` | trích: Dũng nói `**2023年の優勝**、感動的でした` → Yamamoto đáp `**18年ぶり**やった!アレ(=優勝)`
  - **Vấn đề:** Bối cảnh rule là **tháng 8/2026** (dòng 20) và Yamamoto nói "今日勝ってほしいなぁ" như thể mùa giải đang diễn ra, nhưng cả đoạn hoài niệm 2023 như vừa mới xảy ra. Ngoài ra 岡田監督 (dòng 121) — Okada đã **rời chức cuối mùa 2025**, nên tháng 8/2026 nói "岡田監督ですよね、最近" là **lỗi thì**.
  - **Đề xuất sửa:** Đổi thành `「**岡田監督時代の2023年の優勝**、感動的でした」` (quá khứ rõ ràng) để evergreen, giống cách sách đã làm với 新井監督 ở rule_28.

- **[🔵 CHẤT LƯỢNG]** `dòng 131-132` | trích: `「ズンさん…ほんまに大阪人やん…うちの会社、来年から大阪支店勤務でええで(笑)」`
  - **Vấn đề:** Motif "khách mời sang chi nhánh làm việc" xuất hiện **3 lần gần như y hệt** trong phần III: rule_26 dòng 131 (Osaka), rule_30 dòng 126 (`福岡支店勤務でええばい(笑)`), rule_31 dòng 125 (`鹿児島支店長候補で(笑)`). Đến lần thứ 3 mất hết sức nặng, thành công thức. Đây là biến thể của điểm JP review đã nêu (P2: "phản ứng kinh ngạc lặp lại thành fan-fic") và **chưa xử lý**.
  - **Đề xuất sửa:** Giữ 1 lần (rule_26 hợp nhất vì Osaka thân nhanh), 2 chỗ còn lại đổi kết: rule_30 → Sato **bổ sung tri thức Dũng chưa biết** (`「じゃけど、ズンさん一つ知らんことがあるばい。追い山の前に**櫛田入り**いうのがあってな…」`); rule_31 → partner **sửa nhẹ** Dũng (`「惜しか!前割りは前日やのうて、**3日前**から寝かせる人もおるとよ」`).

#### rule_27_京都 — sạch về sự thật, có 2 điểm nhân vật

- **[🟡 NHẤT QUÁN]** `dòng 20, 32, 57, 69` | trích: `**黒田社長**` và `| **ハーCTO** |`
  - **Vấn đề:** (1) 黒田社長 **không có trong cast** ở `_front_matter.md` (chỉ liệt kê Matsumoto, Ōgaki, Nakamura, Tanaka + 6 khách vùng). Rule_27 là rule vùng miền **duy nhất** giới thiệu khách hoàn toàn mới mà không nằm trong danh sách. (2) Tên hiển thị **ハーCTO** (dòng 57) vs **ハー** (rule_28 dòng 47/101) vs **ha_cto** (rule_28 dòng 47 dùng key snake_case) — **3 cách viết cho cùng 1 người**, trong cùng một phần sách.
  - **Đề xuất sửa:** Thêm 黒田社長 vào cast trong `_front_matter.md` và `voice_profiles.json`. Thống nhất nhãn hiển thị: dùng **ハー** ở mọi nơi (hoặc mọi nơi dùng snake_case key) — không trộn.

- **[🟡 TIẾNG VIỆT]** `dòng 96-97` | trích JP: `**<ruby>夢京都<rt>ゆめきょうと</rt></ruby>**さんがおすすめどす。` — VN: `*Tiệm Yume Kyōto là gợi ý "dosu" (tiếng Kyoto).*`
  - **Vấn đề:** Bản dịch **để nguyên "dosu" trong ngoặc kép giữa câu tiếng Việt** — người học đọc sẽ tưởng "dosu" là một từ trong lời khuyên, chứ không hiểu đó là đuôi câu ngữ pháp. Cách xử lý đúng ở chỗ khác trong sách là dịch mượt rồi chú thích ở dòng VN bên dưới (như rule_27 đã làm tốt ở dòng 99).
  - **Đề xuất sửa:** VN → `*Tiệm Yume Kyōto là gợi ý của tôi đó.*` (bỏ "dosu" khỏi câu dịch — đã có ghi chú giải thích 〜どす ở dòng 99 và vocab dòng 208).

- **[🔵 CHẤT LƯỢNG]** `dòng 61-62` | trích: Dũng đọc liền một mạch 9 món kaiseki `先付・椀物・向付・八寸・焚合せ・強肴・御飯・止め椀・水菓子`
  - **Vấn đề:** Đây là điểm JP review (P2) đã cảnh báo — "Dũng nhớ kiểu bách khoa toàn thư trở nên thiếu thuyết phục". Đọc thuộc lòng 9 thuật ngữ kaiseki trước mặt chủ tịch công ty dệt 200 năm nghe như đọc bài. Người Nhật bình thường cũng không thuộc đủ 9 món theo thứ tự.
  - **Đề xuất sửa:** Cắt còn 4-5 món + thêm sự thành thật: `「**先付、椀物、向付**…あとは八寸と焚合せくらいまでしか覚えておりませんが、順番に意味があると伺いました。」` → 黒田社長 bổ sung phần còn lại. Vừa tự nhiên hơn, vừa cho khách vai trò "dạy".

#### rule_28_広島

- **[🔴 SAI — FIX v1.1 CHƯA ĂN]** `dòng 35-36` | trích: `| **ズン** | 「『じゃけぇ』、**広島弁**ですね。**25店舗**もあるんですか…どこ行きますか?」` — VN: `*'Jakē', Hiroshima-ben nhỉ. **25 quán** cơ. Mình vào quán nào?*`
  - **Vấn đề:** **Đây là lỗi nghiêm trọng nhất của cả đợt rà soát này.** STATUS.md v1.1 P1 ghi: `rule_28 お好み村 "4階建て25店舗" → "3階建て約20店舗" (rule.md + conversation.json)`. Fix **chỉ chạy ở dòng 33** (câu của Hiroshi, nay là 3階建て約20店舗) và **dòng 183** (bảng tra) và **dòng 154** (câu vàng) — nhưng **BỎ SÓT dòng 35**, là câu Dũng **lặp lại** con số. Kết quả: Hiroshi vừa nói "khoảng 20 quán" thì ngay câu sau Dũng nhại lại "25 quán cơ" — **hội thoại tự mâu thuẫn ngay 2 dòng liền nhau**, và con số sai vẫn còn nguyên trong sách.
  - **Đề xuất sửa:** `| **ズン** | 「『じゃけぇ』、**広島弁**ですね。**20店舗**もあるんですか…どこ行きますか?」` / VN `*'Jakē', Hiroshima-ben nhỉ. Tới 20 quán cơ. Mình vào quán nào?*`

- **[🔴 SAI SỰ THẬT]** `dòng 45-46` | trích: `「**オタフク**ね!**1922年広島創業**、お好み焼ソース全国シェア**6割**。」` — VN: `*Otafuku! 1922 Hiroshima, sốt okonomiyaki 60% cả nước.*`
  - **Vấn đề:** Hai điểm sai. (1) **1922 không phải năm Otafuku bắt đầu làm sốt** — 1922 là năm 佐々木清一 mở 佐々木商店 (cửa hàng tạp hóa), 1938 mới bắt đầu làm giấm, **1950 mới bắt đầu sản xuất và bán sốt**. Nói "1922年創業" cho **thương hiệu sốt** là gán nhầm ~28 năm. (2) "お好み焼ソース全国シェア6割" — con số 8割 là thị phần **sốt okonomiyaki dùng trong gia đình vùng Kansai**; thị phần **toàn quốc** của Otafuku ở **nhóm sốt nói chung là ~25%**. Con số "全国6割" không khớp nguồn nào.
  - **Đề xuất sửa:** `「**オタフク**ね!**大正11年、1922年に広島で創業**した会社でな、**お好みソースは戦後から**。今じゃ**関西の家庭のお好み焼ソースの8割**がオタフクいうくらいよ。」` — giữ 1922 nhưng gắn đúng vào "công ty", và dùng con số 8割/Kansai có nguồn.
  - **Nguồn:** otafuku.co.jp/100th/history/ (1922 佐々木商店開業, 1938 酢醸造, 1950 ソース製造販売開始); nikkei.com — 関西家庭のお好み焼ソースで8割シェア; xtrend.nikkei.com — ソース類国内シェア約25%で最大手.

- **[🔴 SAI SỰ THẬT]** `dòng 195` | trích: `| **Người nổi tiếng** | 大野智 (嵐, 三原市生まれの都市伝説あり実は東京), 西城秀樹 (広島市出身), 鬼龍院翔 (尾道) |`
  - **Vấn đề:** JP review (P1) đề nghị **bỏ hẳn 大野智** vì "nêu người nổi tiếng chỉ để bác bỏ tin đồn là filler khó hiểu trong mục niềm tự hào vùng" và gợi ý thay bằng 有吉弘行 / 山本浩二 / Perfume. **Chưa sửa.** Về mặt sự thật, 大野智 sinh tại **東京都三鷹市** — không có liên hệ Hiroshima nào; đây **cùng loại lỗi** với 黒田博樹 (rule_30) và 安倍晋三 (rule_26) mà v1.1 đã gỡ, nhưng chỗ này sót lại.
  - **Đề xuất sửa:** `| **Người nổi tiếng** | 西城秀樹 (広島市), 有吉弘行 (広島市), Perfume (3人とも広島市), 山本浩二 (カープ伝説・広島市), 鬼龍院翔 (尾道) |`

- **[🟡 NHẤT QUÁN]** `dòng 188` vs `dòng 74` | trích dòng 188 bảng: `**2016-2018 3連覇**` ; dòng 74 thoại: `**2016年25年ぶり優勝**`
  - **Vấn đề:** Cả hai đều đúng nhưng **thoại chỉ nói 2016** trong khi thành tích ấn tượng nhất của Carp là **3連覇 2016-2018**. Hiroshi là fan cuồng mà không nhắc 3連覇 là thiếu tự nhiên — người Hiroshima sẽ nói "3連覇" trước.
  - **Đề xuất sửa:** dòng 74 → `「…**2016年25年ぶり優勝**、そこから**3連覇**じゃ。2016年は黒田さんの最後のシーズンじゃった。」`

#### rule_29_四国

- **[🔴 SAI SỰ THẬT]** `dòng 85` | trích: `「**<ruby>よさこい祭<rt>まつ</rt></ruby>り**、毎年8月ですよね。」` đối chiếu `dòng 163` bảng: `**よさこい祭り** (8/9-12, 鳴子)` và `dòng 200` vocab: `よさこい祭り | Yosakoi (Aug 9-12)`
  - **Vấn đề:** Ngày trong bảng đúng (9-12/8) nhưng **dòng 87 thoại** lại nói `**1954年**から始まった、**毎年200チーム以上**参加` mà **không nêu ngày** — trong khi rule này định vị là "chiều sâu hạng S" và mọi lễ hội khác đều có ngày cụ thể trong thoại (阿波踊り 8/12-15 ở dòng 100). Bất đối xứng.
  - **Đề xuất sửa:** dòng 87 → `「**1954年**から始まった、**8月9日の前夜祭から12日の後夜祭まで4日間**、毎年200チーム以上参加。**鳴子**を持って踊る。」`
  - **Nguồn:** welcome-kochi.jp/yosakoi — 8/9 前夜祭, 8/10-11 本祭, 8/12 後夜祭+全国大会.

- **[🔴 TIẾNG NHẬT SAI]** `dòng 75-76` | trích: `「高知の**カツオのたたき**、**塩たたき**で食うのが本場流。**<ruby>大谷石<rt>おおやいし</rt></ruby>**じゃなく、**藁焼き**で表面焦がして…」` — VN: `*Không phải đá Ōya, mà nướng rơm...*`
  - **Vấn đề:** **大谷石 (đá Ōya) hoàn toàn không liên quan gì tới cách chế biến katsuo tataki.** 大谷石 là loại đá tuff khai thác ở 栃木県宇都宮市, dùng làm vật liệu xây dựng (tường, kho). Không có phương pháp nướng cá nào gọi là "大谷石". Câu này vô nghĩa với người Nhật — có lẽ nhầm với **ガスや炭火 (gas/than)** là thứ đối lập thật sự với 藁焼き.
  - **Đề xuất sửa:** `「高知の**カツオのたたき**、**塩たたき**で食うのが本場流。**ガスや炭火**じゃのうて、**藁焼き**で一気に表面を焦がして、生姜・にんにく・ねぎを載せてな。」`

- **[🟡 NHẤT QUÁN]** `dòng 19, 29` | trích: `**anh Kondo**, nhân viên kinh doanh của 1 nhà cung cấp Hakuō` / `| **近藤** |`
  - **Vấn đề:** Giống rule_22 — 近藤 **không có trong cast** `_front_matter.md`. Nhưng khác rule_22, chỗ này **không ghi "(placeholder)"** nên trông như nhân vật chính thức. Trong khi 6 khách vùng chính thức (Hiroshi, Yamamoto, Sato, Kobayashi, Ito, Kato) đều dùng key snake_case (`hiroshi_chugoku` v.v.), 近藤 chỉ dùng chữ Nhật. **Bất nhất cách đặt nhãn giữa nhân vật chính thức và nhân vật phụ.**
  - **Đề xuất sửa:** Chọn 1 quy ước: hoặc mọi nhân vật (kể cả phụ) đều vào `voice_profiles.json` với key, hoặc quy định rõ "nhân vật phụ dùng tên Nhật, nhân vật cast dùng key" và ghi vào `_schema/`.

- **[🟡 TIẾNG VIỆT]** `dòng 102-103` | trích: `**鳴門の渦潮**、**渦巻き**世界三大ですよね。**鳴門海峡**に**直径20m**渦が出る。`
  - **Vấn đề:** "世界三大" chỉ nêu Naruto là 1 trong 3, nhưng **không nói 2 cái còn lại** — trong khi rule này ở mọi chỗ khác đều liệt kê đủ (dòng 93 rule_28 liệt kê đủ 3 của 日本三景; dòng 117 rule_25 liệt kê đủ 3 của 世界三大刃物産地). Bỏ dở khiến học viên không dùng được để nói chuyện.
  - **Đề xuất sửa:** `「**鳴門の渦潮**、世界三大潮流(**メッシーナ海峡・セイモア海峡**と並ぶ)ですよね。」`

#### rule_30_福岡 — chất lượng tốt, đã fix v1.1 đúng

Rule này **đã fix đúng và đủ**: 麦焼酎 nay ghi `大分が生産量日本一` (dòng 72, 174), 黒田博樹 đã bị gỡ, thay bằng 武田鉄矢 (dòng 179). ✅

- **[🔴 LỜI KHUYÊN RỦI RO — FIX v1.1 CHƯA ĂN]** `dòng 114, 155, 177` | trích: `**全国12,000の天満宮の<ruby>総本宮<rt>そうほんぐう</rt></ruby>**`
  - **Vấn đề:** JP review (P1) chỉ rõ **北野天満宮 (Kyoto) cũng tự nhận 総本社**, và tranh chấp này rất nổi tiếng trong giới thần đạo; đề nghị làm mềm thành `「総本宮の一つ」`. **Chưa sửa, xuất hiện 3 chỗ.** Rủi ro thực tế: nếu học viên nói câu này trước khách **Kyoto** (rule_27 có hẳn 1 khách Kyoto), sẽ bị phản bác — đây là bẫy chéo giữa 2 rule trong cùng sách.
  - **Đề xuất sửa:** Cả 3 chỗ → `「全国約12,000の天満宮の**総本宮のひとつ**」` hoặc `「**菅公信仰の中心**」`.

- **[🟡 NHẤT QUÁN]** `dòng 95-96` | trích: `「**博多祇園山笠**、**7/1-15**、**770年以上**の歴史ですよね。」` vs `dòng 176` bảng: `**博多祇園山笠** (7/1-15, **770+年**, 追い山7/15 4:59...)`
  - **Vấn đề:** Con số 770年 nhất quán nội bộ ✅ nhưng đây là **con số cứng lỗi thời** — truyền thống tính từ 1241, nên năm 2026 là 785 năm. "770年以上" đúng về mặt "以上" nhưng sẽ ngày càng lạc hậu, giống lỗi 創業60年 mà v1.1 đã sửa ở rule_28.
  - **Đề xuất sửa:** `**780年以上**` hoặc tốt hơn là `**1241年から続く**` (evergreen tuyệt đối, và nêu năm gốc còn ấn tượng hơn).

#### rule_31_熊本鹿児島

- **[🔴 SAI SỰ THẬT]** `dòng 115-116` | trích: `| **ズン** | 「**<ruby>芋焼酎<rt>いもじょうちゅう</rt></ruby>**、**鹿児島が99%**なんですよね。」` — VN: `*Imo shōchū, Kagoshima 99% nhỉ.*` và `dòng 178` bảng: `| **酒 — 芋焼酎** | 鹿児島99%. |`
  - **Vấn đề:** Con số **99% không có nguồn xác thực**. Kagoshima là tỉnh số 1 về 芋焼酎 và về số nhà máy chưng cất, nhưng **宮崎県 cũng sản xuất imo shōchū lớn** (黒霧島 của 霧島酒造 là thương hiệu imo shōchū **bán chạy nhất Nhật Bản** và là **hãng Miyazaki**, không phải Kagoshima). Nói "Kagoshima 99%" là loại trừ Miyazaki khỏi bản đồ — người Kyushu sẽ bắt lỗi ngay. Nghiêm trọng hơn: **chính dòng 178 của sách liệt kê 黒霧島 trong danh sách "một般" của mục 鹿児島 芋焼酎** — tức là sách vừa nói Kagoshima chiếm 99% vừa xếp nhầm một thương hiệu Miyazaki vào Kagoshima.
  - **Đề xuất sửa:** dòng 115 → `「**芋焼酎**、**鹿児島が蔵元数も生産量も日本一**なんですよね。」`; dòng 178 → `| **酒 — 芋焼酎** | 鹿児島が蔵元数・生産量日本一 (宮崎も主要産地). **3M = 森伊蔵・魔王・村尾**. 一般: 白波, 富乃宝山, 七窪. ※黒霧島は宮崎(霧島酒造). **前割り**製法 |`

- **[🔴 SAI SỰ THẬT]** `dòng 63` | trích: `「**東西18km南北25km**、世界有数のカルデラ。**阿蘇神社**は**2300年**以上前に創建。」`
  - **Vấn đề:** Kích thước caldera Aso chuẩn là **東西約18km × 南北約25km** ✅ đúng. Nhưng dòng 61 Dũng nói `**世界最大級のカルデラ**` — cách nói này **không còn chính xác**: Aso là caldera lớn **hàng đầu Nhật Bản** nhưng thế giới có nhiều caldera lớn hơn nhiều (Toba, Yellowstone). Bản thân dòng 63 partner đã tự sửa thành "世界有数" — nên **Dũng nói sai, khách nói đúng, mà sách không đánh dấu đây là điểm cần sửa**. Học viên sẽ học theo câu của Dũng (dòng 61) vì đó là câu mẫu cho mình.
  - **Đề xuất sửa:** dòng 61 → `「**阿蘇山**、**日本最大級のカルデラ**ですよね。」` (và có thể giữ dòng 63 để partner bổ sung số đo).

- **[🟡 NHẤT QUÁN]** `dòng 32, 40, 55, 80` | trích: `| **partner Matsumoto** |`, `| **partner** |`, `| **partner 鹿児島支店** |`
  - **Vấn đề:** **3 cách gọi khác nhau cho vai người dẫn**, và tệ nhất là dòng 32 dùng tên **"Matsumoto"** — trùng hoàn toàn với **松本PM**, nhân vật cast chính (khách Tokyo, rule_23/34/35/37/38/39/40/42/44/50). Người đọc sẽ tưởng anh Matsumoto Tokyo bỗng thành người Kumamoto. Ngoài ra dòng 80 chuyển sang "partner 鹿児島支店" giữa chừng mà không giới thiệu, không rõ có phải cùng người không.
  - **Đề xuất sửa:** Đặt tên riêng cho 2 người: `**中村(熊本支店)**` (không được — trùng 中村CFO) → dùng tên mới hẳn, ví dụ `**緒方(熊本)**` và `**有村(鹿児島)**`, đăng ký vào cast, dùng nhất quán suốt rule.

- **[🟡 TIẾNG VIỆT]** `dòng 151` | trích Câu vàng: `■ KNICHI (慎重):`
  - **Vấn đề:** "KNICHI" **không phải từ nào cả** — không phải tiếng Việt, tiếng Nhật hay tiếng Anh. Có vẻ là lỗi gõ/dán còn sót. Các mục khác trong cùng khối là `■ KUMAMOTO:` / `■ KAGOSHIMA:` — mục này lẽ ra là chủ đề nhạy cảm.
  - **Đề xuất sửa:** `■ CHỦ ĐỀ NHẠY CẢM (慎重):`

- **[🟡 TIẾNG VIỆT]** `dòng 92-93` | trích JP: `「**薩摩藩**から**3傑**+海軍元帥+いっぱい出した。**朝鮮通信使**が江戸時代見た**薩摩示現流**剣術も特筆たい。」` — VN: `*Phiên Satsuma sinh ra 3 kiệt + nguyên soái hải quân + nhiều người. Kiếm thuật Jigen-ryū Satsuma sứ Triều Tiên thời Edo cũng từng thán phục.*`
  - **Vấn đề:** (1) "3傑" mơ hồ — 維新の三傑 là **西郷隆盛・大久保利通・木戸孝允**, nhưng **木戸孝允 là người 長州 (Yamaguchi)**, không phải Satsuma. Nói "Satsuma sinh ra 3傑" là sai — Satsuma chỉ đóng góp 2/3. (2) Câu VN "sứ Triều Tiên thời Edo cũng từng thán phục" — bản JP chỉ nói "見た" (nhìn thấy), bản VN tự thêm "thán phục".
  - **Đề xuất sửa:** JP → `「**薩摩藩**から**維新の三傑のうち二人**(西郷・大久保)、それに東郷平八郎…**薩摩示現流**の剣術も特筆たい。」`; VN dịch sát, bỏ "thán phục".

#### rule_32_沖縄 — chất lượng cao, xử lý nhạy cảm rất tốt

- **[🔴 SAI SỰ THẬT — SẼ LỖI THỜI NGAY]** `dòng 116-117, 187` | trích: `**正殿**は**2019年10月火災**で焼失したけど、**2026年復元完成目指して**復興中ね。` — VN: `*...đang phục hồi, mục tiêu hoàn thành 2026.*`
  - **Vấn đề:** JP review (P1) đã cảnh báo chính xác điểm này và đề nghị ghi rõ `2026年秋`. **Chưa sửa.** Hiện trạng: lễ hoàn thành **22/11/2026**, mở cửa công chúng **23/11/2026**. Bối cảnh rule là **tháng 2/2027** (dòng 20) — tức là **trong truyện, Shuri-jō ĐÃ hoàn thành và đã mở cửa được 3 tháng**, nhưng Kobayashi vẫn nói "đang phục hồi, nhắm 2026". **Lỗi mốc thời gian trong chính thế giới truyện.**
  - **Đề xuất sửa:** dòng 116 → `「**首里城**は**琉球王国の王城**(1429-1879)、**正殿**は**2019年10月火災**で焼失したけど、**2026年11月に復元が完成**して、また見られるようになったのよ〜。」`; dòng 187 bảng → `**首里城 (UNESCO 2000, 1429王城, 2019火災→2026年11月正殿復元完成)**`
  - **Nguồn:** oki-park.jp/shurijo/information/detail/10959 — 2026年11月22日 完成式, 11月23日 供用開始.

- **[🔵 CHẤT LƯỢNG — FIX v1.1 CHƯA ĂN]** `dòng 62-63` | trích: `**ポーク玉子おにぎり**も生活食さ。`
  - **Vấn đề:** JP review (P2) đề nghị thêm `「地元では『ポーたま』って呼ぶよ」` để tăng chiều sâu. Chưa thêm. Đây là điểm cộng dễ lấy — "ポーたま" là cách gọi thật của dân địa phương và cũng là tên chuỗi cửa hàng nổi tiếng.
  - **Đề xuất sửa:** `「**ポーク玉子おにぎり**も生活食さ。地元じゃ『**ポーたま**』って呼ぶよ〜。」`

- **[🔵 CHẤT LƯỢNG — FIX v1.1 CHƯA ĂN]** `dòng 190` | trích: `| **Thể thao** | **FC琉球 (J)**, **琉球ゴールデンキングス (B)**, **沖縄SV** |`
  - **Vấn đề:** JP review (P2) chỉ ra 沖縄SV thuộc **JFL** (không phải J-League) nên gây hiểu nhầm khi xếp cạnh FC琉球 (J), và đề nghị thêm 琉球コラソン (handball). Chưa sửa.
  - **Đề xuất sửa:** `| **Thể thao** | **FC琉球 (Jリーグ)**, **琉球ゴールデンキングス (Bリーグ)**, **沖縄SV (JFL)**, **琉球コラソン (ハンドボール)** |`

#### rule_33_メモバンク — sạch

Không phát hiện lỗi sự thật. Cấu trúc khác 12 rule vùng miền (không có bảng tra vùng) nhưng **hợp lý vì đây là rule phương pháp**. Xử lý ranh giới riêng tư (dòng 84-85: "chỉ ghi phạm vi khách tự kể") là điểm mạnh về đạo đức nghề nghiệp.

- **[🟡 NHẤT QUÁN]** Rule_33 và rule_50 **trùng chủ đề gần như hoàn toàn** — cả hai đều là "kho ghi nhớ / memory bank", cùng dạy ghi memo sau bữa tối + ôn 3 phút trước họp, cùng dùng ví dụ Ōgaki. rule_33 dòng 3 nói "5 yếu tố", rule_50 dòng 3 nói "30 phút ghi + 3 phút ôn". **Xem mục "Lỗi hệ thống" bên dưới.**

---

### PHẦN IV — rule_34..41

#### rule_34_フォー

- **[🟡 TIẾNG VIỆT — FIX v1.1 BỎ QUA CÓ CHỦ ĐÍCH, NÊN LÀM LẠI]** `dòng 84-85` | trích: `ホーチミンなら**フォー・パスツール(Phở Pasteur)**か**フォー・ホア(Phở Hòa)**。`
  - **Vấn đề:** VN review (P2-18) nêu rằng **không có quán tên "Phở Pasteur"** thuần túy; quán thật ở 260C Pasteur tên là **Phở Hòa Pasteur**. STATUS.md ghi "chưa apply do là stylistic". Nhưng đây **không phải stylistic mà là sai tên riêng**: sách đang liệt kê "Phở Pasteur" và "Phở Hòa" như **2 quán khác nhau**, trong khi thực tế **đó là cùng một quán**. Khách Nhật cầm sách đi tìm sẽ bối rối. Sách này bán điểm mạnh "gợi ý quán cụ thể" nên tên quán sai làm hỏng giá trị cốt lõi.
  - **Đề xuất sửa:** `ホーチミンなら**フォー・ホア・パスツール(Phở Hòa Pasteur)**か**フォー・レー(Phở Lệ)**。` — 2 quán có thật, khác nhau thật.

- **[🟡 TIẾNG VIỆT]** `dòng 103-104` | trích: `ナムディンの**フォー村(Cồ Lễ村)**ってのがあって` ; đối chiếu `dòng 128` Câu vàng: `フォー職人の村『**コーレ村**』がナムディンにあります。`
  - **Vấn đề:** Làng phở nổi tiếng nhất Nam Định là **làng Vân Cù (xã Đồng Sơn, huyện Nam Trực)** — đây mới là "làng nghề phở" được công nhận là nơi xuất thân của phần lớn thợ phở. **Cồ Lễ** là một thị trấn ở huyện Trực Ninh, nổi tiếng vì **chùa Cổ Lễ**, không phải vì phở. Gán nhầm địa danh trong chính thông tin về Việt Nam — đây đúng loại lỗi mà đề bài cảnh báo.
  - **Đề xuất sửa:** `ナムディンの**フォー職人の村(Làng Vân Cù)**ってのがあって、職人がほとんどそこ出身らしいです。` + sửa dòng 128 tương ứng thành `『ヴァンクー村』`.

- **[🔵 CHẤT LƯỢNG]** `dòng 76` | trích: `**②フォー・ティン(Phở Thìn)** — 牛肉炒めスタイル、味濃いめ。`
  - **Vấn đề:** VN review (P2) đã nêu: có **2 quán Phở Thìn nổi tiếng khác nhau** — Phở Thìn Bờ Hồ (13 Đinh Tiên Hoàng, phở truyền thống) và Phở Thìn 13 Lò Đúc (phở tái lăn/bò xào, chính là loại mô tả trong sách). Không ghi rõ địa chỉ thì khách Nhật đến nhầm quán sẽ ăn món hoàn toàn khác với mô tả. Chưa sửa.
  - **Đề xuất sửa:** `**②フォー・ティン・ロードゥック(Phở Thìn 13 Lò Đúc)** — 牛肉炒めスタイル、味濃いめ。※同名で別系統の「Phở Thìn Bờ Hồ」もあるので住所で確認を。`

#### rule_35_テト — nhiều lỗi nhất phần IV

- **[🔴 SAI SỰ THẬT — FIX v1.1 CHƯA ĂN]** `dòng 91-92` | trích: `これが**バンザン<ruby>花卉村<rt>かきむら</rt></ruby>(Làng hoa Vạn Giã)**の桃の市場で、テト前は花だけで埋まります。` — VN: `*Đây là chợ hoa đào làng Vạn Giã, trước Tết toàn hoa.*`
  - **Vấn đề:** **Vạn Giã là một thị trấn ở huyện Vạn Ninh, tỉnh Khánh Hòa (miền Trung)** — cách Hà Nội ~1.300km, khí hậu nhiệt đới, **không trồng và không có chợ hoa đào**. Hoa đào Tết miền Bắc gắn với **làng đào Nhật Tân (quận Tây Hồ, Hà Nội)** và chợ đầu mối **Quảng Bá**. VN review (P2) đã nghi ngờ chính xác điểm này và yêu cầu verify — **chưa sửa.** Đây là **lỗi sự thật về Việt Nam nghiêm trọng nhất trong phần IV**: sách dạy người Việt giới thiệu quê hương mình mà gán sai làng nghề sang tỉnh khác cách 1.300km.
  - **Đề xuất sửa:** `これが**ニャッタン花卉村(Làng hoa Nhật Tân・ハノイ)**の桃の市場で、テト前は花だけで埋まります。`
  - **Nguồn:** vov.vn / vinwonders.com — Làng hoa Nhật Tân (Tây Hồ, Hà Nội) là làng đào lớn nhất miền Bắc; baochinhphu.vn — chợ hoa Quảng Bá là chợ hoa đầu mối lớn nhất Hà Nội; Vạn Giã thuộc huyện Vạn Ninh, Khánh Hòa.

- **[🔴 SAI SỰ THẬT — FIX v1.1 TẠO RA MÂU THUẪN MỚI]** `dòng 57-58` và `dòng 70-71`
  - trích dòng 57: `**ほぼ日本と同じ12支**ですが、**4つ違いがあります、特に大きく違うのは2つで**、**牛の代わりに水牛**、**兎の代わりに猫**です。`
  - trích dòng 71 chú thích 【2】: `**3 con giáp VN khác JP:** Sửu = trâu, Mão = mèo, Hợi = lợn, Mùi = dê — **JP có 4 điểm khác nhỏ**...`
  - **Vấn đề:** STATUS.md ghi fix "2つだけ違います → 4つ違いがあります、特に大きく違うのは2つで". Fix đã chạy ở dòng 57, nhưng **chú thích 【2】 ở dòng 71 KHÔNG được cập nhật**: nó vẫn mở đầu bằng "**3 con giáp** VN khác JP" rồi **liệt kê 4 con** (Sửu/Mão/Hợi/Mùi) rồi kết bằng "JP có **4** điểm khác". Tức là trong **cùng một chú thích**, con số nhảy 3 → 4. Cộng với dòng 57 nói "4つ", học viên đọc 3 con số khác nhau (2/3/4) cho cùng một sự việc.
  - **Đề xuất sửa:** dòng 71 → `【2】 **4 con giáp VN khác JP:** Sửu = trâu (JP: 丑 bò), Mão = mèo (JP: 卯 thỏ), Mùi = dê (JP: 未 cừu), Hợi = lợn nhà (JP: 亥 lợn rừng). Trong đó **"mèo vs thỏ"** là điểm gây ấn tượng nhất.`

- **[🔴 SAI SỰ THẬT]** `dòng 95-96` | trích: `**カスタードアップル/釈迦頭(Cầu)・イチジク(Sung)・パパイヤ(Vừa Đủ)・ココナッツ(Dừa)・マンゴー(Xoài)**で読むと『十分に欲しいだけ』って意味になります。` — VN: `*...xoài (Xài) đọc thành "mong đủ xài".*`
  - **Vấn đề:** v1.1 đã sửa đúng phần mapping trái cây ✅. Nhưng còn sót **lỗi logic chơi chữ**: bản JP ghi `マンゴー(**Xoài**)` — tức là ghi từ **"Xoài"** (tên quả), trong khi câu chơi chữ "Cầu Sung Vừa Đủ Xài" cần từ **"Xài"** (tiêu xài). Bản VN dòng 96 ghi đúng là `xoài (**Xài**)` nhưng bản JP thì không. Khách Nhật đọc bản JP sẽ thấy chuỗi "Cầu-Sung-Vừa Đủ-Dừa-Xoài" và **không hiểu tại sao lại thành "十分に欲しいだけ"** — mất trọn vẹn cú chốt mà cả scenario xây dựng tới (dòng 97-98 Yamamoto cười vì "ダジャレ").
  - **Đề xuất sửa:** JP → `**マンゴー(Xoài→「Xài」=使う)**` và thêm 1 dòng giải thích: `※ベトナム語の発音が「Cầu(求める)・Sung(豊かに)・Vừa Đủ(十分)・Dừa→Vừa・Xoài→Xài(使う)」と重なるダジャレです。`

- **[🟡 NHẤT QUÁN]** `dòng 18` vs `dòng 30` | trích dòng 18 bối cảnh: `mùng 1 = **17/2/2026**, năm Ngọ 午年` ; dòng 30 thoại: `今年は**2月17日**、来年は**2月6日**です。`
  - **Vấn đề:** Ngày Tết 2026 = 17/2/2026 ✅, Tết 2027 = 6/2/2027 ✅ (VN review đã xác nhận). Nhưng **năm 2026 là 丙午 (Bính Ngọ) ✅**, còn bối cảnh sách là **cuối tháng 1/2026** — tức là **chưa tới Tết**, nên theo âm lịch vẫn đang là **năm Tỵ (2025)**. Dũng nói "今年は午年" (năm nay là năm Ngọ) vào cuối tháng 1/2026 là **sai theo cách tính âm lịch** mà chính rule này đang dạy. Nếu nói theo dương lịch thì đúng, nhưng cả rule là bài giảng về âm lịch nên tự mâu thuẫn.
  - **Đề xuất sửa:** dòng 65 → `「**今度のテトからが午年(うま)**です、これは日本と同じ。」` (rõ ràng là "từ Tết sắp tới").

- **[🔵 CHẤT LƯỢNG]** `dòng 61-62` | trích: `ベトナム語で『**卯(マオ)**』が猫(メオ)に音が似てるから`
  - **Vấn đề:** Giải thích này phổ biến nhưng katakana **マオ** phiên âm sai. Âm Hán Việt của 卯 là **"Mão"** (đọc gần "mao" nhưng có dấu ngã) và mèo là **"mèo"** — katakana đúng hơn là **マオ→メオ** thì phải viết `「Mão(マーオ)」が「Mèo(メオ)」`. Hiện tại viết マオ/メオ khá ổn nhưng thiếu chữ Latin nên khách Nhật không nối được với chữ viết. Sách ở chỗ khác luôn kèm chữ Latin (Bánh Trung Thu, cà phê sữa đá).
  - **Đề xuất sửa:** `ベトナム語で『卯』を**「Mão(マーオ)」**と読んで、猫の**「Mèo(メオ)」**と音が似てるから`

#### rule_36_コーヒー

Fix v1.1 đã chạy đúng: dòng 36 nay ghi `ブオンマトート・ダクラク省周辺` ✅.

- **[🟡 NHẤT QUÁN]** `dòng 36` vs `dòng 167` | trích dòng 36: `**標高1000m以上の中部高原(ブオンマトート・ダクラク省周辺)**` ; dòng 167 vocab: `| 中部高原 | ちゅうぶこうげん | ... | Cao nguyên Trung phần (**Buôn Ma Thuột, Đà Lạt**) |`
  - **Vấn đề:** **Fix v1.1 chạy ở thoại nhưng KHÔNG chạy ở bảng vocab** — dòng 167 vẫn còn "Đà Lạt", đúng cái mà v1.1 muốn bỏ. Ngoài ra về mặt sự thật: Buôn Ma Thuột ở độ cao **~500m**, không phải "1000m以上"; vùng trên 1000m ở Tây Nguyên là **Đà Lạt/Lâm Đồng — nơi trồng ARABICA, không phải robusta**. Nên câu "robusta trồng ở độ cao 1000m+ quanh Buôn Ma Thuột" tự nó vẫn còn mâu thuẫn địa lý sau khi fix.
  - **Đề xuất sửa:** dòng 36 → `**標高500〜800mの中部高原(ブオンマトート・ダクラク省周辺)で育てたロブスタ**`; dòng 167 → `| 中部高原 | ちゅうぶこうげん | TRUNG BỘ CAO NGUYÊN | Tây Nguyên (Buôn Ma Thuột · Đắk Lắk — vùng robusta lớn nhất) |`

- **[🟡 TIẾNG VIỆT — FIX v1.1 CHƯA ĂN]** `dòng 107` | trích: `**1940年代、戦後ハノイで牛乳が手に入らなくて**、代わりに卵黄を使った`
  - **Vấn đề:** VN review (P2) đã chỉ rõ: cà phê trứng do **Nguyễn Văn Giảng sáng tạo khoảng 1946**, thời điểm đó là **cuối thời Pháp thuộc / đầu kháng chiến**, chưa phải "戦後" theo nghĩa hậu Thế chiến II ở Việt Nam (Việt Nam bước vào chiến tranh Đông Dương từ 12/1946). Đề nghị sửa thành "1946年頃、牛乳が高価で". Chưa sửa.
  - **Đề xuất sửa:** `**1946年頃、ハノイで牛乳が高価で手に入りにくくて**、代わりに卵黄を泡立てて使った`

- **[🔵 CHẤT LƯỢNG — FIX v1.1 CHƯA ĂN]** `dòng 86` | trích: `ホーチミンの**Trung Nguyên Legend**で本格的に飲めます。`
  - **Vấn đề:** VN review (P2) đề nghị thêm katakana vì khách Nhật không đọc được chữ Latin Việt có dấu. Chưa thêm. Cùng vấn đề ở dòng 111 (`Café Giảng`) và dòng 63-64 (`フィンコーヒー` có katakana ✅ nhưng `ベトちゃん` cũng ✅) — nên chỗ có chỗ không, **bất nhất**.
  - **Đề xuất sửa:** `**Trung Nguyên Legend(チュングエン・レジェンド)**` và `**Café Giảng(カフェ・ザン)**`.

#### rule_37_気候

Fix v1.1 đã chạy đúng ở dòng 32 (`1月の寒波で10度切ることもあります` ✅) và dòng 44 (`夏は35度を超える日が多く、稀に40度近く` ✅).

- **[🔴 SAI SỰ THẬT]** `dòng 63-64` | trích: `**2017年のダムレイ台風では、ホイアン旧市街が腰の高さまで浸水**しました。` — VN: `*Bão Damrey 2017 phố cổ Hội An ngập đến hông.*`
  - **Vấn đề:** **Bão Damrey (bão số 12, tháng 11/2017) đổ bộ trực tiếp vào Khánh Hòa (Nha Trang)**, gây thiệt hại nặng nhất ở Khánh Hòa (12/20 người chết), Bình Định, Lâm Đồng — **không phải Hội An**. Hội An có bị ngập lụt nặng vào tháng 11/2017 nhưng do **đợt mưa lũ và bão Damrey gây mưa hoàn lưu**, và trận ngập nổi tiếng nhất của Hội An gắn với các đợt lũ khác. Gán "Damrey = Hội An ngập" là **sai địa điểm đổ bộ**. Rule này lại dùng ví dụ đó để thuyết phục khách Okinawa về rủi ro bão miền Trung — thông tin sai làm hỏng độ tin cậy.
  - **Đề xuất sửa:** Bỏ tên bão cụ thể, giữ hiện tượng có thật: `**中部は毎年10-11月に洪水があって、ホイアン旧市街は腰の高さまで浸水することもあります**。` — an toàn và vẫn đúng.
  - **Nguồn:** vi.wikipedia.org/wiki/Bão_Damrey_(2017); gfdrr.org báo cáo đánh giá — đổ bộ Khánh Hòa sáng 4/11/2017, gió 135km/h, 15 tỉnh Nam Trung Bộ và Tây Nguyên bị ảnh hưởng.

- **[🔴 SAI SỰ THẬT — FIX v1.1 CHƯA ĂN]** `dòng 107` | trích: `**桃の花の春、ロータスの夏、菊の秋、<ruby>菊酒<rt>きくざけ</rt></ruby>の冬**って母から教わって育ちました。` — VN: `*'xuân hoa đào, hạ sen, thu cúc, đông rượu cúc'*`
  - **Vấn đề:** VN review (P2) đã chỉ rõ: **"菊酒" (rượu hoa cúc) là văn hóa Nhật cổ (重陽の節句), KHÔNG phải truyền thống mùa đông miền Bắc Việt Nam.** Chưa sửa. Nghiêm trọng ở chỗ: (1) mùa đông miền Bắc gắn với **hoa thủy tiên, hoa mai trắng, hoa đào sớm**, không có "rượu cúc"; (2) chính câu này đặt vào miệng Dũng như **ký ức tuổi thơ mẹ dạy** — tức là sách đang **bịa một truyền thống gia đình Việt Nam** và dạy học viên kể lại như thật với khách Nhật. Nếu khách Nhật (vốn biết 菊酒 là của họ) hỏi sâu, học viên sẽ lộ. Đây là lỗi **kép**: sai sự thật về Việt Nam + rủi ro giao tiếp.
  - **Đề xuất sửa:** `**桃の花の春、蓮の夏、菊の秋、水仙の冬**って母から教わって育ちました。` (thủy tiên = hoa Tết truyền thống Hà Nội, có thật, và vẫn giữ được nhịp 4 mùa 4 loài hoa).

- **[🟡 NHẤT QUÁN]** `dòng 32` vs `dòng 116` | trích dòng 32: `ハノイは1月の寒波で**10度切ることもあります**` ; rule_36 dòng 116: `ハノイの12-2月は**朝5度くらいまで下がる**`
  - **Vấn đề:** rule_36 nói Hà Nội mùa đông sáng xuống ~5°C như chuyện thường; rule_37 (rule chuyên về khí hậu, đã được v1.1 làm mềm) nói dưới 10°C là "có khi". **Hai rule mâu thuẫn nhau về cùng một dữ kiện**, và rule_36 là bản chưa được làm mềm. Fix v1.1 chỉ chạy ở rule_37 mà không rà chéo sang rule_36.
  - **Đề xuất sửa:** rule_36 dòng 116 → `ハノイの12-2月は**朝10度前後まで冷え込む日もある**ので、**温かい卵コーヒー**が体に染みます。`

#### rule_38_都市

- **[🟡 TIẾNG VIỆT — FIX v1.1 CHƯA ĂN]** `dòng 106, 142, 168` | trích: `**朝統一会堂**(旧大統領官邸、歴史)`
  - **Vấn đề:** VN review (P2) nêu: `統一会堂` nên chú thích rõ là **旧南ベトナム大統領府(独立宮殿)** để phân biệt. Chưa sửa. Ngoài ra dòng 106 có **lỗi gõ**: `**朝**統一会堂` — chữ 朝 ở đây là "buổi sáng" (thuộc cụm "sáng thì đi Dinh Thống Nhất") nhưng dính liền vào tên riêng thành `朝統一会堂`, đọc như tên một tòa nhà. Bản VN dòng 107 dịch đúng ("Sáng Dinh Thống Nhất") nên lỗi chỉ ở bản JP.
  - **Đề xuất sửa:** `**朝は統一会堂**(旧南ベトナム大統領府・独立宮殿、歴史)` — tách 朝 ra và bổ sung chú thích.

- **[🟡 TIẾNG VIỆT]** `dòng 64-65` | trích JP: `**3区の路地裏Phở Le**、**1区のフォークインギン**、**Banh Xeo 46A**もミシュラン入りです。` — VN: `*Phở Lệ trong hẻm Q3, Phở Quỳnh Q1, Bánh Xèo 46A đều vào sao.*`
  - **Vấn đề:** (1) Bản VN dịch `フォークインギン` thành **"Phở Quỳnh"** — nhưng katakana クインギン đọc là "Quinh Ngân/Quỳnh Ngân", không phải "Quỳnh". Không rõ quán nào. (2) **"đều vào sao"** là dịch sai nghiêm trọng: các quán này thuộc **Bib Gourmand / Michelin Selected**, **không phải quán được gắn sao (starred)**. Nói "vào sao" với khách Nhật rồi họ tra ra không có sao = mất uy tín. Bản JP `ミシュラン入り` mơ hồ hơn nên bản VN làm nặng thêm.
  - **Đề xuất sửa:** JP → `**3区のPhở Lệ(フォー・レ)**、**Bánh Xèo 46A(バインセオ)**もミシュランの**ビブグルマン**に入ってます。`; VN → `*Phở Lệ Q3, Bánh Xèo 46A đều nằm trong danh sách Bib Gourmand của Michelin.*`

- **[🔵 CHẤT LƯỢNG]** `dòng 19` | trích bối cảnh: `Sato (khách lớn tuổi) chỉ 1 ngày quá cảnh ở HCM.`
  - **Vấn đề:** Scenario 4 (dòng 100-117) gợi ý cho Sato lịch trình gồm **Dinh Thống Nhất + Bảo tàng Chứng tích + Nhà thờ + Bưu điện + cơm tấm + cruise sông + dinner** — tức **7 điểm trong 1 ngày quá cảnh**. Khách 60 tuổi transit (còn phải tính giờ ra sân bay, gửi hành lý) không thể làm hết. Rule_41 dòng 159 có NG chính xác về việc này (`Ép khách "phải đi cả Hạ Long + Sapa" 5 ngày → quá tải`) nhưng rule_38 lại phạm đúng lỗi đó.
  - **Đề xuất sửa:** Cắt xuống 3-4 điểm + thêm 1 câu Dũng tự tiết chế: `「1日でしたら**午前に統一会堂と大聖堂・郵便局、昼にコムタム、午後は戦争証跡博物館を1時間**くらいが現実的です。空港まで1時間見ておきましょう。」`

#### rule_39_祭り

- **[🔴 SAI SỰ THẬT]** `dòng 42-43, 135, 179` | trích dòng 42: `中身は**蓮の実、カラスミ卵黄、緑豆あん、カスタード**等。**カラスミ入り**は日本人結構衝撃受けます` ; dòng 179 vocab: `| カラスミ | カラスミ | — | Trứng cá muối (bắc cầu sang trứng muối VN) |`
  - **Vấn đề:** **カラスミ (karasumi) = trứng cá đối muối phơi khô (botargo)** — một trong 日本三大珍味, hoàn toàn khác với **trứng muối trong bánh trung thu = lòng đỏ trứng vịt muối (塩漬け卵黄 / アヒルの塩漬け卵黄)**. Sách dùng sai từ ở **3 chỗ**, và tệ nhất là dòng 179 còn ghi chú "bắc cầu sang trứng muối VN" — tức là **cố ý dùng sai từ như một thủ pháp**, dạy học viên gọi lòng đỏ trứng vịt muối là karasumi. Khách Nhật nghe "月餅にカラスミが入ってる" sẽ hình dung **trứng cá đối trong bánh ngọt** — hoàn toàn sai món, và dòng 44 họ nói "食べてみたい" thì khi ăn thật sẽ ngỡ ngàng. VN review đã chạm vào điểm này (dòng 99) nhưng không kết luận rõ.
  - **Đề xuất sửa:** dòng 42 → `中身は**蓮の実あん、塩漬け卵黄(アヒルの卵)、緑豆あん、カスタード**等。**塩漬け卵黄入り**は日本人結構衝撃受けます(笑)`; dòng 135 tương ứng; dòng 179 vocab → `| 塩漬け卵黄 | しおづけらんおう | DIÊM TÍCH NOÃN HOÀNG | Lòng đỏ trứng vịt muối (nhân bánh trung thu) |`

- **[🔴 SAI SỰ THẬT — FIX v1.1 CHƯA ĂN]** `dòng 42, 135` | trích: `**バインチュンチュー(Bánh Trung Thu)**`
  - **Vấn đề:** VN review (P2) chỉ rõ phiên âm katakana sai: "Thu" → **トゥー**, không phải **チュー**. Chưa sửa. Katakana hiện tại đọc là "banh-chun-chuu" — khách Nhật đọc lên người Việt sẽ không hiểu.
  - **Đề xuất sửa:** `**バインチュントゥー(Bánh Trung Thu)**` ở cả 2 chỗ.

- **[🔴 SAI SỰ THẬT]** `dòng 57-58` | trích: `**フンヴオン王の命日(Giỗ Tổ Hùng Vương)**、旧暦3月10日です。**4000年前の伝説の初代王様の命日**で、毎年祝日になります。`
  - **Vấn đề:** "4000年前" là cách nói tuyên truyền phổ biến ("4000 năm lịch sử") nhưng **về mặt lịch sử học không có căn cứ** — thời kỳ Hùng Vương/Văn Lang được các nhà sử học đặt vào khoảng **thế kỷ 7 TCN - 258 TCN**, tức khoảng 2.700 năm. Nghiêm trọng hơn: sách để Dũng nói "4000年前" như **sự kiện lịch sử xác định** trước khách Nhật, rồi dòng 61 so sánh với **天皇陛下** — đặt một truyền thuyết chưa xác thực ngang hàng với hoàng thất Nhật, dễ khiến khách Nhật đánh giá thấp khi họ tra lại. Rule_34 dạy rất hay cách né bằng "諸説あって、私は専門家じゃないので" — rule_39 lại không áp dụng chính công thức của sách mình.
  - **Đề xuất sửa:** `**フンヴオン王の命日(Giỗ Tổ Hùng Vương)**、旧暦3月10日です。**建国神話に出てくる初代の王様**で、「4000年の歴史」って言い方をよくします。毎年祝日ですね。` — chuyển từ "sự thật" sang "cách người Việt vẫn nói", an toàn và trung thực.

- **[🔵 CHẤT LƯỢNG — FIX v1.1 CHƯA ĂN]** `dòng 111` | trích: `**朝5時に酒漬けのもち米とフルーツを食べて、体内の寄生虫を殺す**`
  - **Vấn đề:** VN review (P2) nêu "5時" không phải chi tiết truyền thống chuẩn (thường là "sáng sớm khi vừa thức dậy"). Chưa sửa. Con số cụ thể giả tạo làm giảm độ tin cậy khi khách Nhật hỏi lại.
  - **Đề xuất sửa:** `**朝起きてすぐ、まだ何も食べないうちに酒漬けのもち米とフルーツを食べて、体内の虫を殺す**`

#### rule_40_和食

- **[🟡 TIẾNG VIỆT]** `dòng 36-37` | trích: `**Daejin通り**で、英語+日本語+ベトナム語のメニュー。` — VN: `*Phố Đặng Tiến, menu Anh-Nhật-Việt.*`
  - **Vấn đề:** **"Daejin" là phiên âm kiểu Hàn Quốc (Daejin = 대진)**, không phải cách viết tên đường Việt Nam. Bản VN dịch thành "Đặng Tiến" — nhưng Hà Nội **không có phố nào tên "Đặng Tiến"**. Đây là tên địa danh bịa hoặc lỗi phiên âm nghiêm trọng, trong một rule mà giá trị cốt lõi là "gợi ý địa chỉ cụ thể".
  - **Đề xuất sửa:** Thay bằng tên phố có thật trong khu người Nhật ở Hà Nội, ví dụ `**リンラン通り(Phố Linh Lang)**` (chính rule này dòng 59 đã dùng "リンランビレッジ" cho quán khác) hoặc `**キムマー通り(Phố Kim Mã)**`. Kèm chỉnh bản VN.

- **[🟡 TIẾNG VIỆT]** `dòng 40` | trích: `**おまかせ4500万ドン(約23,000円)**で` — VN: `*Omakase 4.5 triệu (~23k yen)*`
  - **Vấn đề:** **Sai đơn vị 10 lần.** 4.500万ドン = 45 triệu đồng ≈ 230.000 yên, không phải 23.000 yên. Con số đúng cho "khoảng 23.000 yên" là **450万ドン (4,5 triệu đồng)**. Bản VN dịch "4.5 triệu" (đúng ý định) nhưng bản JP ghi 4500万 (sai). Học viên dùng bản JP sẽ báo giá gấp 10 lần cho khách. Đối chiếu: dòng 88 ghi `コース150万ドン〜`, dòng 111 ghi `250万ドン(約13,000円)` — cả hai đều đúng tỉ lệ, chứng tỏ dòng 40 là lỗi gõ đơn lẻ.
  - **Đề xuất sửa:** `**おまかせ450万ドン(約23,000円)**`

- **[🟡 NHẤT QUÁN]** `dòng 82, 90` | trích: `| **広島** | 「ズンさん、ホーチミンで日本食、おすすめは?」`
  - **Vấn đề:** Nhãn nhân vật là **「広島」** — tức tên **tỉnh**, không phải tên người. Nhân vật này ở rule_28 tên là **Hiroshi (hiroshi_chugoku)**, và ở rule_28 dòng 147 câu vàng còn có `「広島さんはご地元、広島ですよね。」` — nghĩa là sách đang gọi ông là **"広島さん"**. Điều này **rất bất thường trong tiếng Nhật**: gọi một người bằng đúng tên tỉnh quê của họ. Nếu tên thật là 広島 (họ Hiroshima) thì việc ông quê Hiroshima là trùng hợp hài hước cần được xử lý; nếu tên là "Hiroshi" (ヒロシ) thì nhãn 広島 sai.
  - **Đề xuất sửa:** Thống nhất trên toàn sách: nhân vật là **ヒロシ部長** → nhãn dùng `**ヒロシ**` hoặc key `hiroshi_chugoku`; sửa câu vàng rule_28 dòng 147 thành `「ヒロシさんのご地元は広島でしたよね。」`

- **[🔵 CHẤT LƯỢNG]** `dòng 90-91` | trích: `「広島の人としてはお好み焼きが恋しいんやけど、**ハノイあたり**にあるんかな?」` → dòng 92 Dũng đáp: `**ホーチミンに**『お好み焼き きじ』って店があります。`
  - **Vấn đề:** Hiroshi đang ở **HCM 2 ngày** (dòng 78) và hỏi "quanh Hà Nội có không?" — hỏi về thành phố mình **không** ở. Dũng trả lời về HCM. Đây là **lỗi logic hội thoại**: câu hỏi không khớp bối cảnh. Ngoài ra Hiroshi dùng **「〜んやけど」「あるんかな」** = Kansai-ben, nhưng ở rule_28 ông nói **Hiroshima-ben** (「じゃけぇ」「〜とる」). Tuy dòng 21 rule_28 ghi ông là 関西支店長 nên có thể lẫn, nhưng trong rule_28 ông giữ Hiroshima-ben triệt để — **bất nhất giữa 2 rule**.
  - **Đề xuất sửa:** dòng 90 → `「広島の人間としてはお好み焼きが恋しいんじゃけど、**ホーチミンあたり**にあるんかのう?」` (sửa cả địa danh lẫn phương ngữ).

#### rule_41_観光

- **[🔴 SAI SỰ THẬT]** `dòng 42-43` | trích: `サパは**Bac Ha Marketの日曜マーケット**でモン族の伝統衣装が見られます。` — VN: `*Sapa thì chợ Bắc Hà chủ nhật xem trang phục truyền thống của người Mông.*`
  - **Vấn đề:** **Chợ Bắc Hà không ở Sapa.** Bắc Hà là một huyện riêng của tỉnh Lào Cai, cách Sapa khoảng **110km, đi ô tô 2,5-3 giờ** (phải quay ngược về Lào Cai rồi đi tiếp). Không thể ghép vào lịch "Sapa 1 đêm 2 ngày" (dòng 34) như sách gợi ý. Chợ phiên gần Sapa mà khách thường đi là **chợ Bắc Hà (phải đi tour riêng)** hoặc **chợ Cán Cấu (thứ Bảy)** — đều thuộc Bắc Hà, hoặc **chợ tình Sapa / bản Cát Cát** ngay tại Sapa. Sách đang khiến khách Nhật lên lịch bất khả thi.
  - **Đề xuất sửa:** `サパからは**バックハー(Bắc Hà)の日曜市**まで車で3時間ほどかかるので、1泊なら**サパ市内のカットカット村やタヴァン村**でモン族・ザオ族の伝統衣装を見るのがおすすめです。`

- **[🟡 NHẤT QUÁN]** `dòng 18` vs `dòng 76` | trích dòng 18 bối cảnh: `Tanaka + Hai (2 khách trẻ) đi riêng **Hà Nội - HCM 4 ngày** — có yêu cầu "1 đêm Tạ Hiện"` ; dòng 76 Tanaka: `「タヒエン通り、**ベトナムのナイトライフの聖地**って聞いたんだけど…」`
  - **Vấn đề:** Nhân vật **Hai (ハイ)** được nêu trong bối cảnh nhưng **không xuất hiện một câu nào** trong cả 4 scenario. Rule_45 và rule_48 đều cho Hai vai trò rõ (đàn em VN hồi hộp / lỡ hỏi tuổi). Ở đây chỉ được nhắc rồi bỏ rơi.
  - **Đề xuất sửa:** Hoặc bỏ Hai khỏi bối cảnh, hoặc cho Hai 1-2 lượt ở Scenario 3 (hợp lý vì Hai là người Việt trẻ, có thể bổ sung cảnh báo thực tế).

- **[🔵 CHẤT LƯỢNG]** `dòng 55` | trích: `**バリ島の3分の1の値段**って評判です。` — VN: `*Nổi tiếng 'rẻ bằng 1/3 Bali'.*`
  - **Vấn đề:** Cùng motif "1/3 giá" đã dùng ở rule_40 dòng 63 (`東京の3分の1`) — và VN review (P2-15) đã nghi ngờ con số 1/3 ở rule_40 là phóng đại (thực tế ~1/2). Phú Quốc hiện có JW Marriott / InterContinental / Regent với giá **ngang hoặc cao hơn** resort tầm trung Bali. Nói "1/3 Bali" trong khi chính dòng 60 liệt kê 3 resort cao cấp là tự mâu thuẫn.
  - **Đề xuất sửa:** `**バリよりリーズナブルに5つ星に泊まれる**って評判です。` — giữ ý, bỏ con số không kiểm chứng được.

---

### PHẦN V — rule_42..51

#### rule_42_居酒屋オーダー

- **[🔴 TIẾNG NHẬT KHÔNG TỰ NHIÊN — FIX v1.1 CHƯA ĂN]** `dòng 42, 149` | trích: `あと**お通しに加えて、枝豆と冷奴をすぐに**お願いできますか?`
  - **Vấn đề:** JP review (P2) chỉ rõ: **お通し là món tự động mang ra, không thể "thêm vào" nó** — cách nói 「お通しに加えて」 nghe rất không tự nhiên với người Nhật. Chưa sửa, và lỗi này xuất hiện **cả trong Câu vàng copy-paste (dòng 149)** — tức là sách đang dạy học viên **học thuộc một câu sai**. Đây là rule dạy trình tự gọi món izakaya, nên câu mẫu sai làm hỏng đúng cái nó dạy.
  - **Đề xuất sửa:** dòng 42 → `「**生ビール5つ、お願いします**。あと、**枝豆と冷奴を先に**お願いできますか?」`; dòng 149 → `「とりあえず生ビール◯つ。あと枝豆と冷奴を先にお願いします。」`

- **[🟡 NHẤT QUÁN]** `dòng 96` | trích: `**銀ダラ西京焼、馬刺し、唐揚げ**お願いします。`
  - **Vấn đề:** Gọi **馬刺し (sashimi thịt ngựa)** ở izakaya Tokyo cho bàn có 3 khách Nhật — món này là **đặc sản Kumamoto**, không phải món izakaya phổ thông ở Tokyo, và là món **khá kén người ăn**. Chính rule này dòng 57 vừa dạy "phải hỏi 苦手 trước", rồi Dũng gọi ngay món kén nhất mà chỉ hỏi trừ hàu. Ngoài ra rule_31 dạy 馬刺し là đặc sản Kumamoto — dùng nó làm món izakaya Tokyo mặc định làm loãng bài học vùng miền.
  - **Đề xuất sửa:** Đổi thành món izakaya phổ thông: `**銀ダラ西京焼、だし巻き、鶏の唐揚げ**お願いします。`

- **[🔵 CHẤT LƯỢNG]** `dòng 3` | trích Luận điểm: `**Người Việt sai vì gọi tất cả 1 lần như quán ăn Việt.**`
  - **Vấn đề:** Câu này **khái quát hóa về "người Việt"** — đúng loại diễn đạt mà memory quy tắc dự án cấm (`feedback_khong_noi_nguoi_viet`: dùng "Lỗi hay gặp", đừng quy chụp nhóm người). Ngoài ra nó cũng không chính xác: gọi món một lượt là thói quen của nhiều nền văn hóa, không riêng Việt Nam.
  - **Đề xuất sửa:** `**Lỗi hay gặp:** gọi tất cả 1 lần rồi thôi — quen theo cách gọi món ở quán ăn thường, nhưng ở izakaya sẽ tạo cảm giác "không theo nhịp".`

#### rule_43_乾杯お酌

Fix v1.1 đã chạy đúng: dòng 93 nay tách rõ お酌 vs 乾杯 ✅ (`お酌 (rót cho nhau): cầm tokkuri hai tay... không liên quan đến chiều cao ly. 乾杯 (chạm cốc): junior giữ ly thấp hơn`).

- **[🟡 NHẤT QUÁN]** `dòng 84` | trích: `「**獺祭**ですね、フルーティで美味しいです。」` — trong bối cảnh có **大垣 (Kansai)** ở bàn
  - **Vấn đề:** VN review (P2) đã lưu ý 獺祭 là sake **Yamaguchi** và cần kiểm quê khách. Ở đây bàn có Ōgaki (Kansai) và Matsumoto (Tokyo) nên không xung đột trực tiếp ✅. **Nhưng** rule_42 dòng 94 cũng dùng 獺祭 và rule_51 dòng 48 lại nhắc lại — **獺祭 xuất hiện 3 lần trong phần V**, trở thành sake mặc định duy nhất của sách, trong khi sách có cả một hệ thống rule vùng miền dạy 出羽桜/十四代 (rule_22), 賀茂鶴 (rule_28), 司牡丹 (rule_29). **Bỏ lỡ cơ hội liên kết chéo.**
  - **Đề xuất sửa:** Ở rule_43 đổi sang sake khớp quê senior: nếu 大垣 là Kansai thì `**「白鶴」や「剣菱」**`; hoặc thêm 1 dòng dạy: `※ Chọn sake theo quê senior = ghi điểm kép (xem Phần III).`

- **[🔵 CHẤT LƯỢNG]** `dòng 12` | trích Tâm lý JP: `**Rượu Việt khác rượu Nhật**: ở VN nhậu 1-1 ("trăm phần trăm") không bắt buộc ở Nhật — đừng áp đặt.`
  - **Vấn đề:** Câu tiếng Việt lủng củng, khó hiểu ("nhậu 1-1" nghĩa là gì? "không bắt buộc ở Nhật" — chủ ngữ mơ hồ).
  - **Đề xuất sửa:** `**Văn hóa nhậu Việt khác Nhật:** kiểu "một hai ba dô — 100%" là chuẩn mực ở Việt Nam nhưng KHÔNG phải chuẩn ở Nhật — đừng đem sang áp cho khách.`

#### rule_44_二次会 — sạch

Không phát hiện lỗi sự thật hay tiếng Nhật. Mẫu câu 「先に失礼させていただいてもよろしいでしょうか?」 chuẩn xác. Logic 3 lớp 一次会/二次会/締め đúng thực tế. ✅

- **[🔵 CHẤT LƯỢNG]** `dòng 63-64` | trích: `「Phase 5の話、本当はもう動いてる。3週間後に正式提案するけど、**心構えしといて**。」`
  - **Vấn đề:** Đây là **thông tin nội bộ chưa công bố** được rò rỉ tại quán bar. Sách trình bày như một phần thưởng tích cực ("二次会 = senior hé lộ thật") mà **không có một dòng nào nhắc học viên về ranh giới**: nghe được thì xử lý thế nào, có được kể lại nội bộ không, có được dùng để chuẩn bị không, ghi vào CRM có rủi ro gì. Rule_33 dòng 84-85 xử lý ranh giới riêng tư rất tốt — chỗ này thiếu tương ứng cho thông tin kinh doanh.
  - **Đề xuất sửa:** Thêm ghi chú sau 【1】: `※ Thông tin senior hé lộ ở 二次会 thường là **chưa chính thức**. Nguyên tắc: (1) KHÔNG chuyển tiếp ra ngoài công ty, (2) trong nội bộ chỉ báo cấp trên trực tiếp và nói rõ "chưa chính thức", (3) KHÔNG dùng làm căn cứ cam kết với bên thứ ba, (4) lần gặp sau ĐỪNG nhắc lại trước mặt người khác.`

#### rule_45_カラオケ

- **[🔴 LỜI KHUYÊN RỦI RO — FIX v1.1 CHƯA ĂN]** `dòng 57-58, 128` | trích: `「大垣さん、**もし良ければ松田聖子の『青い珊瑚礁』**、Yamamotoさんと一緒にデュエットいかがですか?」`
  - **Vấn đề:** JP review (P2) đã cảnh báo rõ: ghép **nam senior 55 tuổi (Ōgaki) với nữ cấp dưới 38 tuổi (Yamamoto)** hát song ca một bài **tình ca idol thập niên 80** tại 二次会 có **rủi ro quấy rối nơi làm việc** trong bối cảnh hiện nay. **Chưa sửa.** Nghiêm trọng hơn: đây là sách **dạy nghiệp vụ**, học viên sẽ **làm theo** — và người đề xuất ghép đôi chính là học viên (Dũng). Nếu người nữ khó chịu, người chịu trách nhiệm là người đề xuất. Đối chiếu: rule_45 dòng 163 có NG `**Bài tình cảm 1-1** với khách khác giới → tín hiệu ngại ngùng` — **rule tự mâu thuẫn với NG của chính nó ngay trong cùng file**.
  - **Đề xuất sửa:** dòng 57 → `「大垣さん、**松田聖子の『青い珊瑚礁』**、いかがですか?皆で合いの手入れますよ!」` (senior hát solo, cả bàn phụ họa); dòng 128 Câu vàng → `「[khách lớn tuổi]さん、もし良ければ松田聖子の『青い珊瑚礁』、いかがですか?皆で盛り上げます!」`. Đồng thời thêm vào mục NG: `- **Tự ý ghép đôi song ca nam-nữ chênh lệch cấp bậc** → dù có thiện ý, dễ tạo áp lực cho người cấp dưới. Muốn tăng không khí thì mời cả bàn hát cùng.`

- **[🟡 NHẤT QUÁN]** `dòng 152` | trích bảng cheat: `| **60t+** (hiếm đi karaoke) | **1955-1965** | ... |` và `| **50-60t** (lõi Showa) | **1965-1975** | ... |`
  - **Vấn đề:** **Cột "Sinh năm" sai hoàn toàn so với cột "Thế hệ".** Nếu bối cảnh sách là 2026: người 60t+ sinh **trước 1966**; người 50-60t sinh **1966-1976**; người 30-40t sinh **1986-1996**. Bảng ghi 30-40t sinh "1985-1995" (gần đúng) nhưng 60t+ ghi "1955-1965" → tức 61-71 tuổi (tạm được) trong khi 50-60t ghi "1965-1975" → 51-61 tuổi (tạm được). Thực ra các mốc **chồng lấn nhau ở 1965** và toàn bảng lệch dần. Học viên dùng bảng để đoán tuổi khách sẽ chọn sai bài.
  - **Đề xuất sửa:** Bỏ hẳn cột "Sinh năm" (vì sẽ lỗi thời mỗi năm) và thay bằng cột **"Tuổi 20 vào thập niên"** — bất biến theo thời gian: `60t+ → tuổi 20 vào thập niên 1980`; `50-60t → thập niên 1990`; v.v. Đây mới là biến số thật quyết định gu nhạc.

- **[🟡 NHẤT QUÁN]** `dòng 89` | trích: `**Tránh:** SMAP (chia tay rồi nên dễ lúng túng) / J-rap (khó khớp gu).`
  - **Vấn đề:** SMAP giải tán **2016** — đã 10 năm. Bài SMAP (『世界に一つだけの花』) hiện là **bài karaoke quốc dân** hoàn toàn bình thường, không còn "lúng túng". Lời khuyên này lỗi thời và làm học viên bỏ lỡ một bài rất an toàn.
  - **Đề xuất sửa:** `**Tránh:** J-rap / ボカロ (khó khớp gu senior), bài quá mới (khách không biết để hát theo). ※『世界に一つだけの花』(SMAP) thì hoàn toàn OK, gần như ai cũng hát được.`

#### rule_46_飲み過ぎ防止 — sạch, chất lượng cao

Không phát hiện lỗi sự thật hay tiếng Nhật. Xử lý tình huống Scenario 3 (ngắt lời đồng nghiệp say sắp nói chuyện phụ nữ bằng cách quan tâm sức khỏe) là **kỹ thuật thực chiến hạng nhất**, và cách né không trách công khai rất chuẩn. ✅

- **[🔵 CHẤT LƯỢNG]** `dòng 9` | trích: `"**お酒に強い人 = 信用 + 仕事もできる**" định kiến cũ của người Nhật — đang yếu đi nhưng senior vẫn còn nghĩ vậy.`
  - **Vấn đề:** Rule không nêu **quyền từ chối vì lý do sức khỏe/tôn giáo/thể chất** (アルコール不耐症 — người thiếu men ALDH2, rất phổ biến ở Đông Á, uống là đỏ mặt và nguy hiểm). Toàn bộ 4 scenario đều là "uống nhưng biết dừng", không có scenario "không uống được rượu". Học viên không uống được sẽ không tìm thấy mình trong rule này.
  - **Đề xuất sửa:** Thêm vào Câu vàng: `■ KHI KHÔNG UỐNG ĐƯỢC RƯỢU (thể chất):`「実は**お酒が体質的に弱くて**、烏龍茶で失礼させていただいてもよろしいですか?」/「**下戸**なんですが、雰囲気は大好きなので最後までお付き合いさせてください!」 — và ghi chú: senior Nhật hiện đại chấp nhận hoàn toàn lý do 体質, nói rõ từ đầu buổi tốt hơn là né từng ly.

#### rule_47_GOLD話題

- **[🔴 LỜI KHUYÊN RỦI RO — FIX v1.1 CHƯA ĂN]** `dòng 30` | trích bảng: `| 6 | **スポーツ** | 「**[広島カープ/巨人/阪神/ホークス]、今シーズン調子どうですか?**」 |`
  - **Vấn đề:** JP review (P2) chỉ rõ: liệt kê 4 đội để học viên chọn bừa là **nguy hiểm** — hỏi người Hiroshima về 巨人, hay hỏi người Osaka về ホークス, sẽ nhận phản ứng lạnh; tệ hơn, hỏi fan Carp về Hanshin là chạm vào **kình địch truyền thống** (chính rule_28 dòng 206 ghi NG: `Hát "六甲おろし" trước khách Hiroshima → là Hanshin, kẻ thù truyền thống Carp`). Rule "chủ đề VÀNG an toàn 100%" lại chứa một câu **có thể phản tác dụng**. Chưa sửa.
  - **Đề xuất sửa:** `| 6 | **スポーツ** | 「**[đội của CHÍNH quê khách]、今シーズン調子どうですか?**」 ※Bắt buộc tra đội theo quê khách ở Phụ lục E trước — hỏi nhầm đội đối địch còn tệ hơn không hỏi. |`

- **[🟡 NHẤT QUÁN]** `dòng 54-55` | trích: `| **ズン** | 「衣笠さん、**鉄人**ですね。**今もカープで観戦?**」`
  - **Vấn đề:** Câu này mơ hồ nguy hiểm. **衣笠祥雄 qua đời tháng 4/2018.** Câu 「衣笠さん、鉄人ですね。今もカープで観戦?」 đọc liền mạch dễ hiểu thành "ông Kinugasa giờ vẫn đi xem Carp à?" — tức **hỏi thăm một người đã mất**. Ý định của sách là hỏi Hiroshi ("anh giờ vẫn đi xem chứ?") nhưng thiếu chủ ngữ nên đọc ra nghĩa kia trước. Với người Hiroshima, hỏi hớ về Kinugasa là chạm vào chỗ đau.
  - **Đề xuất sửa:** `「衣笠さん、**鉄人**ですよね。**広島さんは今もマツダスタジアムに?**」` — tách rõ chủ ngữ.

- **[🟡 TIẾNG VIỆT]** `dòng 25, 33, 34` | trích: `| 9 | **お子さん・お孫さん**(senior thân) |` , `| 10 | **健康** (senior thân) |`
  - **Vấn đề:** Cụm **"senior thân"** dùng 2 lần, tối nghĩa trong tiếng Việt (senior + thân?). Toàn sách dùng "khách lớn tuổi" / "khách thân thiết". Ngoài ra dòng 25 cột "Câu đào sâu" của mục 1 để nguyên tiếng Nhật không dịch — trong khi các rule khác luôn có dòng VN.
  - **Đề xuất sửa:** `(chỉ với khách lớn tuổi đã thân)`. Và bổ sung 1 dòng VN cho các câu mẫu như quy ước chung của sách.

#### rule_48_地雷話題 — chất lượng cao

Bảng 10 chủ đề mìn chính xác, câu né chuẩn xác. Scenario 2 (gỡ cho đồng nghiệp VN lỡ hỏi tuổi) là mẫu xử lý xuất sắc — **giải thích cho người Việt, không trách trước mặt khách, rồi biến sự cố thành chủ đề giao lưu văn hóa**. ✅

- **[🟡 NHẤT QUÁN]** `dòng 25-34` | trích: cột "Mức nguy" của cả 10 dòng **đều trống**
  - **Vấn đề:** Bảng có cột **"Mức nguy"** nhưng **cả 10 ô đều rỗng**. Có vẻ ban đầu định dùng ký hiệu (⚠️/🔴) nhưng bị strip trong quá trình xử lý. Kết quả: bảng có cột vô nghĩa, và học viên **không phân biệt được** mìn nào nổ to (chính trị, 同和) với mìn nào chỉ hơi khó xử (tuổi tác).
  - **Đề xuất sửa:** Điền mức bằng chữ để không phụ thuộc emoji: `CỰC CAO` (3,4,9,10 — chính trị/tôn giáo/lịch sử/xã hội), `CAO` (5,7 — bê bối, chuyện riêng tư gia đình), `TRUNG BÌNH` (1,2,6,8 — tuổi, lương, hôn nhân, so sánh).

- **[🟡 TIẾNG VIỆT]** `dòng 33` | trích: `| 9 | **Tết Mậu Thân / Thống nhất 30/4 / Pháp thuộc địa** |`
  - **Vấn đề:** **"Pháp thuộc địa"** sai trật tự từ tiếng Việt — phải là **"thời Pháp thuộc"** hoặc **"chế độ thuộc địa Pháp"**.
  - **Đề xuất sửa:** `| 9 | **Tết Mậu Thân / 30-4 / thời Pháp thuộc** |`

#### rule_49_雑談ネタ収集

- **[🔴 TIẾNG NHẬT SAI — PHƯƠNG NGỮ GÁN NHẦM VÙNG]** `dòng 59` | trích: `| **中村** | 「11月でこれは**異常やね**。雪まつりも雪は**問題なさそうやけど**、来月のフェーズ5のキックオフ、ハノイで助かるよ(笑)」`
  - **Vấn đề:** **中村CFO là người Sapporo chính gốc** (rule_21 dòng 19: "Anh Nakamura quê **Sapporo** chính gốc"). Nhưng câu này dùng **「〜やね」「〜やけど」 = Kansai-ben**. Người Hokkaido không nói vậy — họ dùng 「〜だね」「〜だけど」 (gần chuẩn) hoặc Hokkaido-ben 「〜しょ」「なまら」「したっけ」 (chính rule_21 dòng 144 đã dạy). Đây đúng loại lỗi mà đề bài cảnh báo: **phương ngữ gán sai vùng**. Nghiêm trọng vì rule_21 dành hẳn một scenario dạy "đừng gộp Hokkaido với vùng khác" — rồi rule_49 lại cho chính nhân vật Hokkaido nói giọng Kansai.
  - **Đề xuất sửa:** `「11月でこれは**異常だね**。雪まつりも雪は**問題なさそうだけど**、来月のフェーズ5のキックオフ、ハノイで助かるよ(笑)」` — hoặc thêm màu Hokkaido: `「11月でこれは異常だっしょ。」`

- **[🟡 NHẤT QUÁN]** `dòng 49, 57` | trích dòng 49 chỉ dẫn: `ghi chú: "Hokkaido 観測史上最も早い積雪 札幌で12cm"` ; dòng 57 Dũng: `「12センチ!ハノイだったら大ニュースです。**まだ11月なのに**大変ですね。」`
  - **Vấn đề:** Sapporo có tuyết đầu mùa **bình thường vào cuối tháng 10 - đầu tháng 11**, và tích tuyết trong tháng 11 là chuyện thường niên. Nói "12cm vào tháng 11 là 観測史上最も早い積雪" **không hợp lý** — nếu là 観測史上最も早い thì phải là tháng 9 hoặc đầu tháng 10. Rule này dạy học viên "trích đúng từ vựng NHK để tạo uy tín" nhưng lại lấy ví dụ **không đứng vững về sự thật** — phản tác dụng đúng cái nó dạy (dòng 128 NG: `Nói thông tin sai → mất uy tín hơn không biết`).
  - **Đề xuất sửa:** Đổi ví dụ sang thứ có thật và an toàn: `"札幌で**初雪**、**平年より◯日早く** 12cm"` hoặc dùng chủ đề khác hẳn: `"函館の**紅葉**が見頃"`.

#### rule_50_関係維持

- **[🔴 SAI — FIX v1.1 CHƯA ĂN + MÂU THUẪN NỘI BỘ]** `dòng 36, 38` | trích dòng 36: `「えっ、よく覚えてるなあ!**来月共通テスト**やけど、最近スランプ気味でな…」` ; dòng 38: `| **ズン** | 「**3か月前**で大変な時期ですよね。…」`
  - **Vấn đề:** Hai lỗi chồng nhau. (1) JP review (P1) nêu: 共通テスト tổ chức **giữa tháng 1 hằng năm**, nên "来月" chỉ đúng nếu cuộc gặp là **tháng 12** — nhưng rule không nêu thời điểm, còn scenario song song (rule_33) đặt bối cảnh tháng 3. **Chưa sửa.** (2) **Nghiêm trọng hơn và chưa ai nêu:** Ōgaki nói "**tháng sau** thi" thì Dũng đáp "**3 tháng trước** kỳ thi là giai đoạn căng" — **hai câu liền nhau nói hai mốc khác nhau**. Bản VN dòng 39 dịch "3 tháng trước thi là giai đoạn căng" càng làm rõ sự vô lý.
  - **Đề xuất sửa:** dòng 36 → `「えっ、よく覚えてるなあ!**来月共通テスト**やけど、最近スランプ気味でな…」` (giữ) + dòng 38 → `「**本番まであと1ヶ月**、一番大変な時期ですよね。ご家族でサポート、大変ですね。」`; đồng thời thêm mốc thời gian vào phần Bối cảnh: `Tháng 12/2026, ...`.

- **[🟡 NHẤT QUÁN]** `dòng 3` vs `rule_33 dòng 3`
  - **Vấn đề:** rule_50 nói `**30 phút ghi kho ghi nhớ**` sau mỗi cuộc gặp; rule_33 nói `**trong vòng 24h** ghi vào CRM` và dòng 88 nói `**24時間以内**が黄金`, dòng 46 lại nói `**Trong vòng 30 phút** sau dinner = vàng`. Ba con số (30 phút / 24 giờ / 30 phút) cho cùng một quy tắc, nằm rải ở 2 rule. Học viên không biết đâu là chuẩn.
  - **Đề xuất sửa:** Thống nhất một khuyến nghị 2 tầng và nêu giống nhau ở cả 2 rule: **"Lý tưởng: trong 30 phút (ngay trên taxi). Hạn chót: 24 giờ."**

#### rule_51_自己振り返り — sạch

Không phát hiện lỗi sự thật. Mẫu bản tự đánh giá cụ thể, dùng được ngay. ✅

- **[🔵 CHẤT LƯỢNG]** `dòng 48` | trích điều còn lỡ #3: `カラオケ Yamamoto đề nghị mình hát thêm 1 bài, mình từ chối "もう十分" → có thể phá nhịp vui. LẦN SAU: hát thêm 1 bài (90 giây, an toàn) cho không khí.`
  - **Vấn đề:** Câu 「もう十分」 ở rule_46 dòng 32/41 được dạy là **câu chuẩn từ chối RƯỢU**. Ở đây nó được dùng để từ chối **hát**, và bị đánh giá là "sai lầm". Nhưng 「もう十分」 dùng cho việc hát cũng không tự nhiên trong tiếng Nhật (từ chối hát thường là 「いやいや、もう十分歌わせていただきました」 hoặc 「次は〜さんの番で!」). Việc dùng lại cụm từ của rule khác trong ngữ cảnh sai làm nhiễu bài học.
  - **Đề xuất sửa:** `カラオケ Yamamoto đề nghị mình hát thêm 1 bài, mình từ chối cụt lủn → có thể phá nhịp vui. LẦN SAU: hoặc hát thêm 1 bài ngắn, hoặc chuyền mic khéo: 「じゃあ次は皆で歌える曲を入れますね!」`

---

## Bảng lỗi sự thật đã tra WebSearch

| Rule | Khẳng định trong sách | Thực tế | Kết luận | Nguồn |
|---|---|---|---|---|
| rule_21 L145 | 新庄剛志 nằm trong "Nhân vật nổi tiếng 北海道" | Sinh 長崎県対馬市, xuất thân 福岡県福岡市南区; chỉ là HLV đội Hokkaido | 🔴 SAI — cùng loại lỗi 黒田博樹 mà v1.1 đã gỡ | ja.wikipedia.org/wiki/新庄剛志; media.fighters.co.jp |
| rule_26 L129 | "KFCの像を投げ込んで18年勝てなかった...2009年に発見" | Ném 1985; 18 năm là 2005→2023 (リーグ); 38 năm là 1985→2023 (日本一); tượng vớt 2009 | 🔴 SAI — trộn 3 mốc, "18年" trong cùng scenario mang 2 nghĩa | npb.jp/news/detail/20230914_01.html; ja.wikipedia.org/wiki/カーネル・サンダースの呪い |
| rule_28 L45 | オタフク "1922年広島創業、お好み焼ソース全国シェア6割" | 1922 = mở 佐々木商店 (tạp hóa); **1950 mới sản xuất sốt**; 8割 là Kansai gia đình; toàn quốc ~25% | 🔴 SAI — sai năm bắt đầu làm sốt + sai phạm vi con số | otafuku.co.jp/100th/history/; nikkei.com; xtrend.nikkei.com |
| rule_28 L195 | 大野智 trong "Người nổi tiếng 広島" | Sinh 東京都三鷹市; không có liên hệ Hiroshima | 🔴 SAI — JP review đã yêu cầu gỡ, chưa gỡ | JP review P1 |
| rule_28 L35 | お好み村 "25店舗" | Thực tế ~20 quán, 3 tầng; **v1.1 đã sửa 3 chỗ khác nhưng sót dòng 35** | 🔴 FIX CHƯA ĂN — hội thoại tự mâu thuẫn với dòng 33 | STATUS.md v1.1 P1 |
| rule_29 L75 | "大谷石じゃなく、藁焼きで" | 大谷石 = đá tuff xây dựng ở Utsunomiya, không liên quan chế biến cá | 🔴 SAI — câu vô nghĩa với người Nhật | — (kiến thức nền, xác nhận qua tra cứu 大谷石) |
| rule_29 L85/163 | よさこい "毎年8月" (thoại) vs "8/9-12" (bảng) | 8/9 前夜祭, 8/10-11 本祭, 8/12 後夜祭 | 🟡 Bảng đúng, thoại thiếu ngày | welcome-kochi.jp/yosakoi |
| rule_31 L115 | 芋焼酎 "鹿児島が99%" | Kagoshima số 1 về số nhà máy + sản lượng, nhưng Miyazaki cũng là vùng lớn (黒霧島 = Miyazaki) | 🔴 SAI — con số 99% không có nguồn; sách còn xếp nhầm 黒霧島 vào Kagoshima | nikkei.com; tanoshiiosake.jp |
| rule_32 L116 | 首里城正殿 "2026年復元完成目指して復興中" (bối cảnh truyện: 2/2027) | Hoàn thành **22/11/2026**, mở cửa **23/11/2026** — tức đã xong trước bối cảnh truyện 3 tháng | 🔴 SAI — lỗi mốc thời gian trong thế giới truyện | oki-park.jp/shurijo/information/detail/10959 |
| rule_35 L91 | "Làng hoa Vạn Giã" là chợ hoa đào Hà Nội | Vạn Giã = thị trấn huyện Vạn Ninh, **Khánh Hòa**, cách HN ~1.300km; làng đào HN là **Nhật Tân**, chợ đầu mối **Quảng Bá** | 🔴 SAI SỰ THẬT VỀ VIỆT NAM — VN review đã nghi ngờ, chưa sửa | vov.vn; vinwonders.com; baochinhphu.vn |
| rule_37 L63 | "2017年のダムレイ台風でホイアン旧市街が浸水" | Damrey đổ bộ **Khánh Hòa/Nha Trang** 4/11/2017; thiệt hại nặng nhất Khánh Hòa (12/20 người chết) | 🔴 SAI — sai địa điểm đổ bộ | vi.wikipedia.org/wiki/Bão_Damrey_(2017); gfdrr.org |
| rule_37 L107 | "菊酒の冬" là truyền thống 4 mùa Bắc VN | 菊酒 = phong tục **Nhật Bản** (重陽の節句); mùa đông Bắc VN gắn với thủy tiên/mai trắng | 🔴 SAI SỰ THẬT VỀ VIỆT NAM — VN review đã nêu, chưa sửa | VN review P2 + kiến thức nền |
| rule_39 L42 | Bánh trung thu nhân "カラスミ卵黄" | カラスミ = trứng cá đối muối khô (botargo); nhân bánh là **lòng đỏ trứng vịt muối (塩漬け卵黄)** | 🔴 SAI — dùng sai từ ở 3 chỗ, vocab còn hướng dẫn dùng sai | — (kiến thức ẩm thực, xác nhận qua tra からすみ) |
| rule_39 L57 | Hùng Vương "4000年前の初代王様" | Thời kỳ Hùng Vương/Văn Lang được đặt vào ~thế kỷ 7 TCN-258 TCN (~2.700 năm); "4000 năm" là cách nói tuyên truyền | 🔴 Cần chuyển sang "cách người Việt vẫn nói" thay vì khẳng định lịch sử | — |
| rule_40 L40 | Omakase "4500万ドン(約23,000円)" | 4.500万ドン = 45 triệu VND ≈ 230.000 yên; đúng phải là **450万ドン** | 🟡 SAI đơn vị 10 lần (lỗi gõ, các dòng khác cùng rule đều đúng tỉ lệ) | — (đối chiếu nội bộ L88, L111) |
| rule_41 L42 | "サパはBac Ha Marketの日曜マーケット" | Bắc Hà cách Sapa ~110km, đi ô tô 2,5-3h; không ghép được vào lịch Sapa 1 đêm | 🔴 SAI — gợi ý lịch trình bất khả thi | — (địa lý Lào Cai) |
| rule_49 L49 | "札幌 観測史上最も早い積雪 12cm" (tháng 11) | Sapporo có tuyết đầu mùa cuối 10 - đầu 11 hằng năm; 12cm tháng 11 không thể là kỷ lục sớm nhất | 🟡 Ví dụ không đứng vững — phản tác dụng vì rule dạy "đừng nói tin sai" | — |
| rule_22 L54 (đối chứng) | 山形「東北屈指の酒どころ」(JP) vs "vùng sake số 1 Tohoku" (VN) | JP đã fix ✅, VN chưa fix | 🔴 FIX CHƯA ĂN — JP↔VN mâu thuẫn | STATUS.md v1.1 P1 |
| rule_25 L65 (đối chứng) | 飛騨高山 "7つの蔵元" | JP review đề nghị "6〜7蔵元"; chưa sửa | 🔴 FIX CHƯA ĂN | JP review P1 |
| rule_30 L114 (đối chứng) | 太宰府 "全国12,000の天満宮の総本宮" | 北野天満宮 (Kyoto) cũng tự nhận 総本社 — tranh chấp nổi tiếng | 🔴 FIX CHƯA ĂN (JP review P1), rủi ro chéo với rule_27 (khách Kyoto) | JP review P1 |
| rule_23 L101 (đối chứng) | みますや "121年目の店" | 創業 1905 đúng ✅, nhưng "121年目" là số cứng sẽ lỗi thời — v1.1 đã áp dụng nguyên tắc evergreen cho rule_28 nhưng không áp cho rule_23 | 🔴 Nguyên tắc evergreen áp dụng không nhất quán | allabout.co.jp; san-tatsu.jp |

**Đã tra và XÁC NHẬN ĐÚNG (không phải lỗi):**

| Rule | Khẳng định | Kết luận |
|---|---|---|
| rule_22 L79 | 竿燈 "提灯を46個" | ✅ ĐÚNG — 大若/中若 đều 46 đèn lồng (akita-fun.jp) |
| rule_25 L210 | 下呂温泉 "日本三名泉" | ✅ ĐÚNG — 有馬・草津・下呂, do 林羅山 định danh (gero-spa.com) |
| rule_28 L120 | 広島の牡蠣 "全国シェア60%" | ✅ ĐÚNG — 61,0% (令和3年), 62,7% (2018) (haff.city.hiroshima.jp) |
| rule_29 L54 | 道後温泉 "日本三古湯" + "3000年" | ✅ ĐÚNG — 有馬・道後・白浜; "3000 năm" là cách nói truyền thống chuẩn (mcvb.jp) |
| rule_29 L108 | すだち "徳島は全国シェア95%以上" | ✅ ĐÚNG (thực tế 98%) (maff.go.jp) |
| rule_31 L32 | 熊本城 "加藤清正1607年完成" + "日本三名城" | ✅ ĐÚNG — 慶長12年(1607) hoàn thành; 三名城 theo tiêu chí thiết kế gồm Kumamoto (castle.kumamoto-guide.jp) |
| rule_26 L123 | 阪神 "18年ぶり" (2023 リーグ優勝) | ✅ ĐÚNG (npb.jp) — lỗi nằm ở dòng 129, không phải dòng này |

---

## Lỗi hệ thống (lặp ở nhiều rule)

### H1. 🔴 Fix v1.1 chạy nửa vời — 7 điểm

Đây là **phát hiện quan trọng nhất** của đợt rà soát. STATUS.md v1.1 tuyên bố đã fix, nhưng thực tế:

| # | Fix v1.1 tuyên bố | Trạng thái thực tế | Rule |
|---|---|---|---|
| 1 | お好み村 "4階建て25店舗" → "3階建て約20店舗" | Sửa L33/L154/L183, **sót L35** → hội thoại tự mâu thuẫn | rule_28 |
| 2 | 山形 "東北一" → "東北屈指" | Sửa **bản JP**, **không sửa bản VN** → JP↔VN mâu thuẫn | rule_22 |
| 3 | 干支 "2つ" → "4つ、大きく違うのは2つ" | Sửa L57, **không sửa chú thích L71** (vẫn ghi "3 con") | rule_35 |
| 4 | コーヒー "ダラット" → "ブオンマトート" | Sửa thoại L36, **không sửa vocab L167** (vẫn còn "Đà Lạt") | rule_36 |
| 5 | 気候 làm mềm số liệu Hà Nội | Sửa rule_37, **không rà chéo rule_36 L116** ("朝5度" vẫn nguyên) | rule_36/37 |
| 6-7 | (JP review P1 chưa vào STATUS) 岐阜7蔵元 / 太宰府総本宮 / 大野智 / 首里城2026 / 乾杯duet / お通しに加えて | **Không có dấu vết sửa** ở cả 6 điểm | rule_25/30/28/32/45/42 |

**Nguyên nhân gốc:** fix được áp dụng theo **từng dòng thoại** mà không quét toàn file cho **các dẫn xuất của cùng dữ kiện**: dòng nhân vật lặp lại, bản dịch VN, bảng tra nhanh, bảng vocab, khối "Câu vàng copy-paste".

**Khuyến nghị cho giai đoạn SỬA:** với **mỗi** dữ kiện được sửa, bắt buộc grep **5 vị trí**: (a) dòng thoại JP, (b) dòng dịch VN ngay dưới, (c) dòng thoại nhân vật khác lặp lại con số, (d) bảng tra nhanh vùng miền / bảng vocab, (e) khối "Câu vàng copy-paste". Nên viết script kiểm: quét các con số/tên riêng đã sửa xem còn xuất hiện dạng cũ ở đâu không.

### H2. 🔴 Con số cứng sẽ lỗi thời — nguyên tắc "evergreen" áp dụng không nhất quán

v1.1 đã đặt ra nguyên tắc evergreen (sửa `創業60年` → `創業半世紀以上` ở rule_28) nhưng **không áp dụng cho các trường hợp cùng loại**:

- rule_23 L101: `121年目の店` (1905 + 121 = đúng cho riêng 2026)
- rule_30 L95/L176: `770年以上の歴史` (tính từ 1241 → 2026 là 785 năm)
- rule_45 L152: cột "Sinh năm" trong bảng thế hệ karaoke (sai ngay ở hiện tại, và sai thêm mỗi năm)
- rule_26 L121: `岡田監督ですよね、最近` (Okada rời chức cuối 2025, bối cảnh truyện là 8/2026)

**Khuyến nghị:** quy ước chung — **nêu năm gốc, không nêu số năm đã trôi qua**. `創業1905年` thay vì `121年目`; `1241年から続く` thay vì `770年以上`; `岡田監督時代の2023年` thay vì `最近`.

### H3. 🟡 Cast nhân vật không được quản lý tập trung

Trong 31 rule xuất hiện các nhân vật **không có trong `_front_matter.md`**: 吉田/遠藤 (rule_22, còn ghi "(placeholder)"), 近藤 (rule_29), 黒田社長 (rule_27), "partner Matsumoto"/"partner 鹿児島支店" (rule_31 — trùng tên với 松本PM). Cùng lúc, **nhãn hiển thị cho cùng một người thay đổi**: `ハーCTO` / `ハー` / `ha_cto` (rule_27/28); `広島` / `hiroshi_chugoku` (rule_28/40/47).

**Khuyến nghị:** lập một bảng cast duy nhất trong `_front_matter.md` gồm **key + tên hiển thị + vai + quê + phương ngữ**, đồng bộ với `voice_profiles.json`, rồi rà 31 rule cho khớp. Đặc biệt phải xử lý xung đột tên "Matsumoto" ở rule_31.

### H4. 🟡 Phương ngữ và mức lịch sự trôi giữa các rule

- rule_49 L59: 中村CFO (Sapporo) nói **Kansai-ben** (「異常やね」「〜やけど」)
- rule_40 L90: ヒロシ (Hiroshima) nói **Kansai-ben** (「〜んやけど」「あるんかな」) trong khi rule_28 ông nói Hiroshima-ben triệt để
- rule_22 L98: 吉田 (khách, gặp lần đầu) chuyển từ thể lịch sự sang thể thường trống

Rule_21 dành hẳn một scenario NG dạy "đừng gán nhầm vùng", nên lỗi này đặc biệt đáng chú ý.

**Khuyến nghị:** khi sửa, khóa phương ngữ vào bảng cast (H3) và rà toàn bộ lượt thoại của mỗi nhân vật xuyên 31 rule.

### H5. 🟡 Motif kịch lặp lại làm mòn hiệu quả sư phạm

- **"Mời sang chi nhánh làm việc"**: rule_26 L131, rule_30 L126, rule_31 L125 — 3 lần gần như y hệt
- **"○○検定1級/合格レベル"**: rule_22 L85 (東北検定), rule_30 L118 (太宰府検定), rule_31 L121 (鹿児島検定) — 3 lần
- **Khách kinh ngạc trước mọi chi tiết Dũng nhớ**: xuyên suốt 12 rule vùng miền, không có lần nào khách **sửa nhẹ** hoặc **bổ sung điều Dũng chưa biết**

JP review đã nêu (P2) và chưa xử lý. Hệ quả sư phạm thật: học viên hình thành kỳ vọng sai rằng cứ đọc thuộc là khách sẽ trầm trồ, trong khi thực tế người Nhật thường **bổ sung/hiệu chỉnh** — và biết đáp lại lúc bị hiệu chỉnh mới là kỹ năng khó.

**Khuyến nghị:** trong ít nhất **4/12 rule vùng miền**, đổi 1 nhịp phản ứng thành "khách sửa nhẹ Dũng" (`「惜しい!正確には〜」`) và thêm mẫu câu Dũng đáp lại khi bị sửa (`「ご指摘ありがとうございます、勉強になります」`) — đây là mẫu câu thực dụng đang **thiếu hoàn toàn** trong sách.

### H6. 🟡 rule_33 và rule_50 trùng lặp chủ đề

Cả hai đều là "kho ghi nhớ": cùng dạy ghi memo sau bữa tối, cùng ôn 3 phút trước họp, cùng dùng nhân vật Ōgaki, cùng cấu trúc. rule_33 nói "24h là vàng" và "30 phút sau dinner là lý tưởng"; rule_50 nói "30 phút ghi". Học viên đọc liên tiếp sẽ thấy lặp.

**Khuyến nghị:** phân vai rõ — **rule_33 = HỆ THỐNG** (5 yếu tố, template, công cụ, ranh giới riêng tư, đào tạo nhóm); **rule_50 = VẬN DỤNG DÀI HẠN** (nhắc lại lời hứa sau 6 tháng, chu kỳ theo dõi 3-6 tháng, bảo mật thông tin, xử lý khi nhớ nhầm). Bỏ phần trùng ở rule_50 (Scenario 3 dòng 66-75 gần trùng hoàn toàn rule_33 Scenario 1).

### H7. 🔵 Thiếu mẫu câu cho tình huống "mình sai / mình không biết"

Sách rất mạnh ở "biết nhiều → gây ấn tượng" nhưng gần như không có mẫu câu cho: bị khách sửa sai, được hỏi điều mình không biết, nhớ nhầm chi tiết về khách, lỡ nói con số sai. rule_33 dòng 138 có duy nhất một câu (`ど忘れしました`). Trong thực chiến đây là tình huống **xảy ra thường xuyên hơn** tình huống "khách trầm trồ".

**Khuyến nghị:** bổ sung một khối Câu vàng dùng chung (có thể đặt ở rule_47 hoặc Phụ lục A): `「ご指摘ありがとうございます、勉強になります」`/`「あ、私の記憶違いでした、失礼しました」`/`「そこまでは存じ上げなくて…よろしければ教えていただけますか?」`.

---

## 10 lỗi cần sửa gấp nhất

| # | Rule | Dòng | Lỗi | Vì sao gấp |
|---|---|---|---|---|
| 1 | rule_28 | L35 | `25店舗` — fix v1.1 sót, mâu thuẫn ngay với L33 (`約20店舗`) | Hai dòng liền nhau tự đá nhau, độc giả thấy ngay; fix đã tuyên bố hoàn thành nhưng chưa xong |
| 2 | rule_35 | L91 | `Làng hoa Vạn Giã` — thực ra ở Khánh Hòa, cách HN 1.300km | Sai sự thật về **Việt Nam** trong sách dạy người Việt giới thiệu quê hương — mất uy tín cốt lõi |
| 3 | rule_37 | L107 | `菊酒の冬` — phong tục **Nhật**, gán thành truyền thống Bắc VN | Sách để Dũng kể như ký ức mẹ dạy → dạy học viên bịa truyền thống, khách Nhật sẽ nhận ra ngay vì đó là phong tục của họ |
| 4 | rule_39 | L42/135/179 | `カラスミ` (trứng cá đối khô) dùng cho lòng đỏ trứng vịt muối | Sai từ ở 3 chỗ, vocab còn hướng dẫn dùng sai; khách Nhật hình dung sai hoàn toàn món ăn |
| 5 | rule_45 | L57/128 | Ghép senior nam 55t song ca tình ca với nữ cấp dưới 38t | Rủi ro quấy rối nơi làm việc; sách dạy nghiệp vụ nên học viên sẽ làm theo; **mâu thuẫn với NG của chính rule (L163)** |
| 6 | rule_21 | L145 | 新庄剛志 xếp vào "Nhân vật nổi tiếng 北海道" | Cùng loại lỗi 黒田博樹 mà v1.1 đã gỡ — sót lại làm mất tính nhất quán của cả đợt fix |
| 7 | rule_31 | L115/178 | `芋焼酎 鹿児島99%` + xếp 黒霧島 (Miyazaki) vào Kagoshima | Con số vô căn cứ + tự mâu thuẫn trong cùng file; người Kyushu bắt lỗi ngay |
| 8 | rule_32 | L116/187 | 首里城 "2026年復元目指して" nhưng bối cảnh truyện là 2/2027 | Đã hoàn thành 11/2026 → lỗi mốc thời gian **trong chính thế giới truyện**; sách vừa ra là lạc hậu |
| 9 | rule_26 | L129 | Trộn 3 mốc lời nguyền KFC; "18年" mang 2 nghĩa trong 1 scenario | Học viên chắc chắn hiểu sai và nói sai trước fan Hanshin — chủ đề nhạy cảm nhất với khách Osaka |
| 10 | rule_42 | L42/149 | `お通しに加えて` — cách nói không tồn tại; **có cả trong Câu vàng** | Rule dạy trình tự gọi món izakaya lại dạy một câu mẫu sai để học thuộc |

---

## Ghi chú cho giai đoạn SỬA

### Thứ tự đề xuất

1. **Đợt 1 — Sự thật (17 lỗi 🔴).** Ưu tiên 5 lỗi về Việt Nam (rule_35 Vạn Giã, rule_37 菊酒 + Damrey, rule_39 カラスミ + Hùng Vương, rule_34 Cồ Lễ, rule_40 Daejin通り) vì đây là **điểm bán hàng cốt lõi** của sách — người Việt giới thiệu Việt Nam mà sai thì mất hết. Kế đến 6 lỗi "fix v1.1 chưa ăn".
2. **Đợt 2 — Nhất quán (H1-H4).** Chạy quét theo checklist 5 vị trí; lập bảng cast; khóa phương ngữ.
3. **Đợt 3 — Tiếng Việt + chất lượng sư phạm (H5-H7).**

### Checklist bắt buộc khi sửa mỗi dữ kiện

Với mỗi con số / tên riêng / mốc thời gian được sửa, **grep toàn file** và kiểm 5 vị trí:
- [ ] Dòng thoại JP
- [ ] Dòng dịch VN ngay bên dưới
- [ ] Dòng thoại của nhân vật khác **lặp lại** con số đó (← đây là chỗ v1.1 sót ở rule_28)
- [ ] Bảng tra nhanh vùng miền / bảng Vocab
- [ ] Khối "Câu vàng copy-paste"

Ngoài ra grep **xuyên 31 file** cho các dữ kiện dùng chung (khí hậu Hà Nội, ngày Tết, tên nhân vật, tên sake) — lỗi rule_36/rule_37 là do thiếu bước này.

### Điểm cần quyết định trước khi sửa (cần chủ dự án chốt)

1. **Bối cảnh thời gian của sách.** Các rule trải từ 5/2026 đến 3/2027, nhưng nhiều dữ kiện (首里城, 岡田監督, 新庄) phụ thuộc mốc này. Đề nghị: **chốt "hiện tại của sách" là 2026** và rà lại mọi khẳng định "最近/今/来月".
2. **Cast nhân vật phụ.** 吉田/遠藤/近藤/黒田社長 — giữ và đăng ký chính thức, hay thay bằng cast có sẵn? Ảnh hưởng tới rule_22/27/29/31.
3. **Tên hiển thị "広島さん".** Nhân vật Hiroshima được gọi bằng đúng tên tỉnh quê — cố ý hay lỗi? Ảnh hưởng rule_28/40/47 + `voice_profiles.json`.
4. **Mức làm mềm cho các con số "nhất Nhật Bản".** Sách còn nhiều `日本一 / 世界三大 / 全国シェア○%`. Đề nghị nguyên tắc: **giữ khi có nguồn thống kê chính thức** (牡蠣60%, すだち98%), **làm mềm khi là cách nói truyền thống** (道後3000年 → giữ vì có ghi "と言われる"), **bỏ khi không có nguồn** (芋焼酎99%).

### Việc KHÔNG nên đụng

- **rule_25 (岐阜)** ngoài 2 điểm đã nêu — chiều sâu 飛騨牛/鵜飼/美濃焼 là điểm mạnh nhất sách, đừng cắt gọt.
- **rule_32 (沖縄)** phần xử lý 沖縄戦/ひめゆり/6-23 — cách tiếp cận hiện tại rất chuẩn mực, chỉ sửa mốc 首里城.
- **rule_28 (広島)** phần 平和記念公園 và triết lý「焼く技術 vs 混ぜる材料」— giữ nguyên.
- **rule_46, rule_48** — hai rule sạch nhất phần V, chỉ bổ sung, không sửa.
- **rule_44** — logic 3 lớp nhậu chuẩn xác, chỉ thêm ghi chú ranh giới thông tin nội bộ.

### Rule sạch (không cần sửa nội dung, chỉ rà nhất quán)

**rule_33, rule_44, rule_46, rule_48, rule_51** — không phát hiện lỗi sự thật hay tiếng Nhật; các ghi nhận đều ở mức 🔵 bổ sung.
