# [09-B2] Rà soát chương 05–08

> Agent: B2 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: 来訪 (ch05, 584 dòng), 温泉 (ch06, 496), 新製品発表 (ch07, 541), 結婚式 (ch08, 521)
> Đã đối chiếu: `voice_profiles.json`, `_front_matter.md`, `_thuat_ngu.md`, `_pipeline/english_audit.md`, `draft/chương_05..08_*_scenes.json`
> Đã tra WebSearch/WebFetch: 忌み言葉 (zexy + mynavi wedding), 温泉入浴マナー + 浴衣 左前/右前, 来客応対 上座下座, ケーキ入刀 vs ケーキを切る

---

## Tóm tắt số lỗi

| Mức | Số lượng |
|---|---|
| 🔴 Nghiêm trọng (kính ngữ / nhân vật sai giọng / sai sự thật văn hoá) | 31 |
| 🟡 Trung bình (tiếng Việt, xưng hô, nhất quán) | 44 |
| 🔵 Nhẹ (chất lượng, đề xuất bổ sung) | 14 |
| **Tổng** | **89** |

Phân bổ theo chương: ch05 = 24, ch06 = 17, ch07 = 19, ch08 = 29.

**Ba phát hiện lớn nhất:**
1. **🔴 Lỗi hệ thống #1 — Xưng hô tiếng Việt sụp đổ**: 30 lượt thoại có nhân vật **Nhật tự xưng "em"** với người vai dưới/ngang. Đây đúng là lỗi mà brief cảnh báo (sách 08 cùng bộ đã dính). Nặng nhất ở ch07 (12 chỗ) và ch08 (9 chỗ). Có chỗ phi lý tuyệt đối: **Nakamura CFO (50-55t) xưng "em"** khi chúc mừng cấp dưới trong đám cưới; **Matsumoto (45-50t) xưng "em"** khi nói với Hà CTO.
2. **🔴 Chương 08 thiếu HOÀN TOÀN nội dung 忌み言葉** — đây là trục văn hoá số 1 của đám cưới Nhật, sách dạy 5 điểm chuẩn bị kekkonshiki mà **không có một dòng nào** về từ kiêng kỵ. Tệ hơn: bài phát biểu của bạn (dòng 287) **chứa 忌み言葉 thật** (「悪い結果は来ない」) mà sách không hề chỉ ra.
3. **🔴 Chương 06 thiếu nghi thức onsen cốt lõi** — không có かけ湯, không có quy tắc **khăn không nhúng nước bồn**, không có 浴衣 vạt phải-trước (左前 = áo người chết). Chương onsen mà bỏ 3 quy tắc quan trọng nhất, chỉ có 1 dòng "Rửa người 7 phút" và đẩy trách nhiệm sang "quy tắc sách 07".

---

## Đối chiếu voice_profiles.json

| Nhân vật | Hồ sơ | Thể hiện trong ch05–08 | Kết luận |
|---|---|---|---|
| `zun` (Dũng, 25-30, polite, "slightly nervous") | polite, earnest | Giữ です・ます nhất quán, dùng 謙譲語 đúng chỗ (伺う, お送りします, 申します) | ✅ Khớp tốt |
| `matsumoto` (45-50, "formal Japanese client", patient) | formal cao | **Lệch**: nhiều lượt tụt xuống 常体 thẳng với Dũng ở ch06/07 (「切符は?」「乗ろう」「戻ろう」). Ch06 onsen thân mật thì hợp lý, nhưng ch05 (bối cảnh khách-chủ nghi thức) cũng dùng 「タクシー乗り場どっち?」 là hơi sớm | 🟡 Xem mục A |
| `oogaki_sales` (45-50, "sharp negotiator", direct) | đàm phán sắc | Trong 4 chương này gần như **mất hẳn nét "sharp negotiator"** — chỉ còn vai "đàn anh hiền dạy dỗ". Ch06 tâm sự chuyện bố = đẹp nhưng làm nhân vật mất trục | 🟡 Xem A-4 |
| `tanaka_pmo` (30-35, "Slack-heavy", polite-direct, "hay dùng tiếng Anh tech term") | tech term Anh | **Mâu thuẫn trực tiếp**: ch05 dòng 326 Tanaka nói 「技術英語、私 PM 寄りで弱い」 — hồ sơ nói ngược lại | 🔴 A-1 |
| `nakamura_cfo` (50-55, "senior executive", deliberate) | senior | Ch07 + ch08 giọng JA đúng tầm. Nhưng **bản dịch VN xưng "em"** phá vỡ hoàn toàn | 🔴 E-1 |
| `inoue_hakuo` (38-42, "booth runner năng lượng cao", "cảm ơn nhiều") | năng lượng cao | Ch07 khớp tốt (「ナイス recovery」「chocolate おごる」) | ✅ |
| `tuan_leader` (30-35, technical, concise, patient) | concise | Ch07 dòng 116 「Mày OK」 — xưng **mày/tao** với đàn em. Lệch "patient/concise", và lệch cả chính Tuấn ở ch06 (xưng "anh/em") | 🟡 F-3 |
| `linh` (22-25, young, eager, nervous) | eager | Ch05 khớp tốt (đèn pin, trà sen, chụp ảnh) | ✅ |
| `hai` (25-30, casual-polite, fast-talker, tech) | fast-talker | Ch05 tình huống 8 khớp rất tốt — nói tiếng Anh nhanh quá làm Tanaka lạc | ✅ Điểm sáng |
| `fuon` (35-40, authoritative, warm, decisive) | quyết đoán | Ch05 xuất sắc (xử lý Tanaka ăn chay, cứu vụ quà trùng) | ✅ Điểm sáng |
| `ha_cto` (30-35, thoughtful, executive) | executive | Ch05 khớp | ✅ |
| `zun_inner` | italic monologue, skip TTS | **Không dùng đúng convention**: các đoạn nội tâm ch05-08 viết trong `*[...]*` trộn chung với mô tả cảnh, không tách speaker `zun_inner`. TTS pipeline sẽ không phân biệt được | 🟡 F-5 |
| `sasaki_dev`, `hayashi_bd`, `yumi_wife`, `tanaka_father`, `mc_wedding`... | NPC generic | Dùng đúng, có gắn 「架空」 | ✅ |

**Nhân vật KHÔNG có trong voice_profiles nhưng xuất hiện có thoại:**
- `田所記者` (Tadokoro, phóng viên Nikkei XTECH) — ch07, 3 lượt thoại, có tên riêng → nên thêm profile
- `田中専務` (Tanaka senmu, ban giám đốc Hakuō) — ch07 dòng 436, được nhắc tên. **Trùng họ với 田中PMO** → xem F-1
- `山口` (Yamaguchi, bạn ĐH Tanaka) — ch08 dòng 189, có tên riêng
- `Lê Hoàng Anh` — ch05 dòng 399, nhân sự mới Tien Phat, chỉ được nhắc

---

## KIỂM 忌み言葉 chương 08 (bảng riêng — quan trọng)

**Nguồn tra cứu**: [zexy.net](https://zexy.net/article/app002004019/), [wedding.mynavi.jp](https://wedding.mynavi.jp/contents/press/detail/post-165/)

**Danh sách chuẩn (rút gọn):**
- *Nhóm chia ly*: 別れる・離れる・切る・帰る・去る・出る・終わる・冷める・短い・裂ける・破れる・返す
- *Nhóm bất hạnh*: 亡くなる・死・絶える・滅びる・忘れる・**忙しい**・苦しい・悲しい・負ける・무くす・**悪い**
- *重ね言葉 (gợi tái hôn)*: 重ね重ね・くれぐれも・しばしば・たびたび・ますます・again「再び」「二度」
- *Số*: 四(し)・九(く)
- *Quy ước viết*: thiệp/lời chúc **không dùng dấu chấm phẩy 。、** (nghĩa "đặt dấu ngắt")
- *Ngoại lệ nghi thức*: 「ケーキを切る」 KHÔNG nói → phải nói **「ケーキ入刀」** (đây là lý do tồn tại của từ 入刀)

| # | Dòng | Trích JA | Trích VN | Vấn đề | Mức | Đề xuất |
|---|---|---|---|---|---|---|
| W-1 | **287** | 「人生は計画通りいかへんけど、**悪い結果は来ない**、ということを学んだわ」 | *"đời không theo kế hoạch, nhưng **kết cục không tệ**"* | 「悪い」 nằm trong danh sách 忌み言葉 nhóm bất hạnh. Đây là **câu kết** của bài phát biểu — vị trí nghe rõ nhất. Người Nhật soạn speech đám cưới đều tránh | 🔴 | Đổi thành 「人生は計画通りいかへんけど、**ええ方向に転がる**、ということを学んだわ」 hoặc 「**幸せは必ずやってくる**」. **Đồng thời** thêm 1 dòng Bí quyết giải thích tại sao |
| W-2 | **281** | 「なんとなく**気まずく**なくて、**結局**付き合うことになった」 | *"nên đỡ khó xử, **cuối cùng** quen nhau"* | 「結局」 hàm ý "rốt cuộc/miễn cưỡng", không phải 忌み言葉 chính thức nhưng trong 祝辞 bị coi là 縁起が悪い. 「気まずい」 cũng thuộc nhóm negative | 🟡 | 「**ご縁があって**お付き合いすることになった」 |
| W-3 | **275** | 「『俺タイプじゃないわ』って言うてたやんけ!**アホか**おまえは!」 | *"mày bảo 'không phải gu tao' đó! **Ngu thế**!"* | Không phải 忌み言葉 nhưng nội dung "chú rể từng chê cô dâu" là **NG hạng nặng trong 友人スピーチ** — đụng vào 新婦 trước mặt 両家親族. Speech bạn được phép đùa nhưng tuyệt đối không hạ thấp cô dâu | 🔴 | Đảo chiều: để chú rể là người bị chê, hoặc chuyển sang "cả hai đều ngại lúc đầu" |
| W-4 | **226** | 「新郎新婦の**入刀**でございます!」 | *"Lễ **cắt bánh** của cô dâu chú rể!"* | JA **ĐÚNG** (入刀 chính là từ né 切る). Nhưng **bản VN dịch thẳng "cắt bánh"** và **Bí quyết không hề giải thích** tại sao MC phải nói 入刀. Đây là ví dụ 忌み言葉 sống động nhất trong cả chương mà sách bỏ qua | 🔴 | Giữ nguyên JA. Thêm ghi chú: *"MC không bao giờ nói 「ケーキを切る」 — 切る là từ kiêng. Luôn dùng 「入刀」."* |
| W-5 | **389** | 「ズンさん、明日の便でベトナム**帰る**?」 | *"Dũng mai về Việt Nam?"* | 「帰る」 là 忌み言葉 nhóm chia ly. Do **cô dâu (由美)** nói, **ngay tại cửa tiễn khách trong ngày cưới** — vị trí nhạy cảm nhất. Người Nhật thật sẽ nói 「お発ちになる」「ご出発」 | 🔴 | 「ズンさん、明日の便で**ご出発**ですか?」 |
| W-6 | **392** | 「新婦置いて二次会いっぱい**いかないで**ね」 | *"đừng bỏ tôi đi tăng 2 lâu nhé"* | 「置いて」 (bỏ lại) + hàm ý chia tách, cô dâu nói trong ngày cưới. Đùa được nhưng đây đúng vùng 忌み言葉 mà sách nên chỉ ra | 🟡 | Giữ để tự nhiên, nhưng thêm ghi chú: *cô dâu chú rể đùa được, KHÁCH thì không* |
| W-7 | 34, 46 | RSVP: 「gạch chữ 欠席, khoanh 出席」 | — | **Đúng nhưng thiếu**: quy tắc reply card còn phải gạch 「御」「ご」 ở 「御芳名」「御住所」, và **không dùng dấu chấm phẩy** trong lời chúc viết thêm | 🟡 | Bổ sung 2 điểm này vào Bí quyết tình huống 1 |
| W-8 | Bí quyết ch08 (toàn chương) | — | — | **KHÔNG có một mục 忌み言葉 nào** trong 11 Bí quyết + Bí quyết tổng. Trong khi đây là kiến thức bắt buộc số 1 cho người nước ngoài dự đám cưới Nhật (khách được mời phát biểu, viết lời chúc, chúc mừng tại bàn đều đụng) | 🔴 | **Bắt buộc thêm 1 khối Bí quyết riêng** — xem mục "Ghi chú cho giai đoạn SỬA" |
| W-9 | 12, 43 | Goshugi 30,000円 số tờ lẻ, tránh 4 và 9 | — | **Đúng**. Nhưng thiếu **袱紗 (fukusa)** — khăn bọc shugi-bukuro. Không dùng fukusa = thất lễ rõ ở quầy 受付. Brief cũng nêu. Chương có cảnh 受付 chi tiết (dòng 60-83) mà không hề nhắc | 🔴 | Thêm vào tình huống 2 hoặc Bí quyết: fukusa màu **đỏ/hồng/tím** (đám cưới), KHÔNG xanh/xám (tang lễ) |
| W-10 | 82 | 「**申し訳ありません**。これでお願いします」 | *"Em xin lỗi. Cái này nhờ chị"* | 「申し訳ありません」 tại quầy đám cưới hơi nặng nề. Trong không gian 慶事 nên nhẹ hơn | 🔵 | 「**恐れ入ります**。これでお願いいたします」 |

**Kết luận mục này**: chương 08 có **4 lỗi 🔴** liên quan trực tiếp 忌み言葉/nghi thức cưới. Đây là rủi ro văn hoá cao nhất trong toàn bộ 4 chương được giao.

---

## KIỂM nghi thức onsen chương 06 (bảng riêng)

**Nguồn tra cứu**: [ikyu.com concierge](https://www.ikyu.com/concierge/19359), [rakuten 温泉マナー](https://corp.rakuten.co.jp/event/japan-living/articles/009/), [samurai-sauna 浴衣](https://samurai-sauna-magazine.com/ja/guides/why-wear-yukata-in-ryokan)

| # | Quy tắc chuẩn | Chương 06 có? | Dòng | Mức | Ghi chú |
|---|---|---|---|---|---|
| O-1 | **かけ湯** — dội nước trước khi vào bồn | ❌ **KHÔNG** | — | 🔴 | Quy tắc số 1, ai cũng phải biết. Dòng 203 chỉ có *"Rửa người 7 phút"* — mô tả tắm gội, không phải かけ湯 |
| O-2 | **Khăn nhỏ KHÔNG nhúng xuống bồn** | ⚠️ Ám chỉ mờ | 203 | 🔴 | Chỉ ghi *"Khăn nhỏ trên đầu"* — đúng hành vi nhưng **không nêu quy tắc và không nêu LÝ DO** (vi khuẩn từ sợi khăn). Người đọc VN sẽ không hiểu tại sao phải làm vậy |
| O-3 | **浴衣 vạt phải trước (右前)** — 左前 = áo liệm người chết | ❌ **KHÔNG** | 381 chỉ ghi "thay đồ yukata" | 🔴 | Brief nêu đích danh. Đây là lỗi người nước ngoài mắc **nhiều nhất** và mang nghĩa cực xui. Chương có cảnh mặc yukata mà bỏ qua hoàn toàn |
| O-4 | **Hình xăm** — chính sách ryokan | ✅ **Có, tốt** | 199, 224-230 | ✅ | Xử lý xuất sắc: hỏi trước, band-aid, gợi ý 家族風呂. Là điểm sáng của chương |
| O-5 | **Tóc dài phải búi, không thả xuống nước** | ❌ Không | — | 🔵 | Ít liên quan (cast nam) nhưng nên có trong Bí quyết tổng quát |
| O-6 | **Không bơi / không gây ồn / không mang điện thoại** | ❌ Không | — | 🟡 | Điện thoại đặc biệt quan trọng — khách nước ngoài hay chụp ảnh onsen = cấm tuyệt đối |
| O-7 | **Không ngâm quá lâu / uống nước trước-sau** | ⚠️ Gián tiếp | 353 (Ōgaki: 「長く入りすぎた」) | 🔵 | Có nhắc qua thoại nhưng không thành quy tắc |
| O-8 | **混浴** | — | — | — | Không xuất hiện. Không sai (ryokan này tách nam nữ), không cần thêm |
| O-9 | 上がり框 / cởi giày quay mũi ra ngoài | ✅ **Có, rất tốt** | 118-153 | ✅ | Tình huống 4 dạy đúng và sinh động. Điểm sáng |
| O-10 | Kaiseki thứ tự món | ✅ Có | 189 | ⚠️ | Xem D-6 — thứ tự liệt kê có vấn đề |

**Kết luận mục này**: chương 06 **đạt** ở 上がり框 và hình xăm, nhưng **trượt 3 quy tắc onsen cốt lõi** (かけ湯 / khăn / yukata 右前). Bí quyết tình huống 6 tên là "Hình xăm + onsen" — tức là cả chương onsen chỉ có 1 khối Bí quyết về onsen, và khối đó lại chỉ nói về hình xăm.

---

## Danh sách lỗi theo chương

### chương_05_来訪

**A. Nhân vật nói sai giọng**

- [🔴 GIỌNG] `dòng 326` | JA: 「(微笑む)**助かる**。技術英語、私 **PM 寄りで弱い**んだよね。」 VN: *"(cười) Cứu em rồi. Tiếng Anh kỹ thuật em hơi yếu vì thiên về PM."* | **Mâu thuẫn voice_profiles**: hồ sơ `tanaka_pmo` ghi rõ *"hay dùng tiếng Anh tech term"*. Ở đây Tanaka lại là người **không theo kịp tiếng Anh kỹ thuật** — đảo ngược hoàn toàn tính cách. Thêm nữa 「助かる」 dạng 常体 với người công ty đối tác hơi suồng sã | Đề xuất: hoặc sửa hồ sơ, hoặc đổi nhân vật bị lạc thành 林 (営業, nhân viên mới) — hợp lý hơn nhiều
- [🔴 GIỌNG] `dòng 39` | JA: 「ズンさん、リンさん!**お疲れ様**、出迎えありがとう!」 | Matsumoto (khách, 45-50t, PM cấp cao) vừa **xuống máy bay ở nước ngoài** nói 「お疲れ様」 với người ra đón. Sai chiều: người **đón** mới nói お疲れ様 với người **vừa bay**. Matsumoto phải nói 「ありがとう、わざわざ」 | Đề xuất: 「ズンさん、リンさん!**わざわざありがとう**、助かります!」
- [🟡 GIỌNG] `dòng 43` | JA: 「タクシー**乗り場どっち**?」 | Matsumoto hồ sơ "formal Japanese client". Ngay lượt thoại thứ 2 khi vừa gặp ở sân bay đã dùng 常体 cụt. Ch06 (onsen thân mật, 3 tháng sau) dùng thế hợp lý; ch05 hơi sớm | Đề xuất: 「タクシー乗り場は**どちらですか**?」
- [🟡 GIỌNG] `dòng 46, 77, 285` | Ōgaki 「半袖に着替えたいな(笑)」「実演楽しみ(笑)」「わあ、ベトナム scuba(笑)」 | Hồ sơ `oogaki_sales`: *"sharp negotiator, direct, occasionally probing"*. Trong cả ch05 Ōgaki **không có một lượt nào** thể hiện nét đàm phán — chỉ là "ông chú vui tính". Nhân vật mất trục | Đề xuất: thêm ít nhất 1 câu 探り (vd hỏi xoáy về nhân sự Phase 5 hoặc chi phí) ở tình huống 10 hoặc 12

**B. Kính ngữ**

- [🔴 KÍNH NGỮ] `dòng 40` | JA: 「松本さん、皆様、**おかえりなさい**!HCMC へようこそ。」 VN: *"Anh Matsumoto, quý vị, mừng các vị!"* | **Sai nghiêm trọng**: 「おかえりなさい」 chỉ dùng khi người **về nhà mình / về nơi của họ**. Khách Nhật **đến** Việt Nam thì tuyệt đối không nói 「おかえりなさい」 — nghe rất kỳ. Đây là lỗi người nước ngoài điển hình | Đề xuất: bỏ hẳn 「おかえりなさい」, chỉ dùng 「**ようこそ**HCMCへ。長旅お疲れ様でした」
- [🔴 KÍNH NGỮ] `dòng 105` | JA: 「白鷗の皆様、HCMC へようこそ!」 | Hà CTO (chủ nhà) gọi khách là 「白鷗**の**皆様」. Với khách công ty phải là 「**白鷗株式会社様**」 hoặc 「白鷗の皆**様**」 → OK nhưng ở lễ chính thức nên nâng lên 「白鷗株式会社の皆様」. So sánh dòng 464 Hương dùng đúng 「白鷗株式会社様」 → **không nhất quán trong cùng chương** | 🟡 thực chất
- [🟡 KÍNH NGỮ] `dòng 120` | JA/VN: 「OK chị handle. Em hỏi nhân viên có món chay không, chị xin lỗi anh Tanaka.」 | Đây là câu tiếng Việt nhưng đánh dấu speaker JA. Trộn "handle" (Anh) vào — english_audit chưa bắt chỗ này | 🟡
- [🟡 KÍNH NGỮ] `dòng 371` | JA: 「今日は皆様のお口に合うお店探すの大変だった、**まあ何とか**。」 | Hương (副部長) nói với khách bằng **常体** 「大変だった」 giữa bữa ăn với đoàn khách cấp cao. Hương ở mọi chỗ khác đều dùng 敬語 chuẩn | Đề xuất: 「今日は皆様のお口に合うお店を探すのが大変**でしたが**、何とか**なりました**」
- [🟡 KÍNH NGỮ] `dòng 136` | JA: 「明日と明後日、ベジ料理優先で **organize し直します**ね。」 | 「organize」 tiếng Anh chen vào câu 敬語 với khách. Người Nhật business dùng 「**手配し直します**」 | Đề xuất: 「ベジ料理優先で手配し直しますね」
- [🔵 KÍNH NGỮ] `dòng 170` | JA: 「**弊社**オフィスは発電機ありますので」 | ✅ **Đúng** — 弊社 khiêm nhường khi nói với khách. Ghi nhận điểm tốt. Nhưng dòng 172 lại dùng 「**自社**サーバー」 trong cùng đoạn → nên thống nhất 「弊社の」

**C. Sai sự thật / phong tục**

- [🔴 SỰ THẬT] Toàn chương | **Thiếu hoàn toàn 上座/下座** | Brief nêu đích danh. Chương có 4 cảnh ngồi bàn (tình huống 3 nhà hàng, 5 phòng họp, 10 phòng CTO, 12 lễ ký MoU) + 1 cảnh xe van 8 chỗ (tình huống 2). **Không một chỗ nào** đề cập thứ tự chỗ ngồi. Với khách Nhật cấp 部長/PM, xếp sai 上座 là thất lễ thấy rõ. Xe ô tô cũng có 席次 riêng (ghế sau bên trái tài xế = 上座) | Đề xuất: thêm 1 khối Bí quyết "席次 — xe, phòng họp, nhà hàng" và cài 1-2 dòng thoại Hương/Tuấn nhắc Dũng
- [🔴 SỰ THẬT] Toàn chương | **Thiếu 応接室 + お茶出し + tiễn đến thang máy** | Brief nêu đích danh. Tình huống 4 có "tham quan văn phòng", tình huống 5 có phòng họp, nhưng **không có nghi thức tiếp khách** nào: dẫn khách (đi trước lệch 斜め前), mở cửa, mời chỗ, thứ tự phục vụ trà (từ 上座 xuống, đặt bên phải khách), tiễn khách. Dòng 179 Linh bưng trà nhưng chỉ mô tả "đặt 5 ly trà lên bàn" — không có nghi thức | Đề xuất: bổ sung ít nhất **thứ tự お茶出し** vào Bí quyết tình huống 4 và **tiễn khách ra thang máy + cúi đến khi cửa đóng** vào tình huống cuối
- [🟡 SỰ THẬT] `dòng 73` | JA: 「HCMC は約700万台のバイクが登録されてます...事故率は**東京より低い**んですよ」 | Con số 7 triệu xe máy TP.HCM: hợp lý (thống kê ~7,4-8,5 triệu). Nhưng **"tỷ lệ tai nạn thấp hơn Tokyo"** là tuyên bố sai sự thật — VN có tỷ lệ tử vong giao thông/100k dân cao hơn Nhật nhiều lần. Sách business không nên dạy người đọc nói câu này với khách (sẽ bị bắt bẻ ngay) | Đề xuất: đổi thành 「一見カオスですが、実は暗黙のリズムがあって、**流れに乗れば意外と動けるんです**」 — giữ ý "nhịp ngầm", bỏ so sánh số liệu sai
- [🟡 SỰ THẬT] `dòng 169` | JA: 「HCMC では月に1-2回、地区ごとに30分くらい止まります」 | Cúp điện luân phiên TP.HCM: có thật nhưng theo đợt (2023 nặng), không phải "đều đặn 1-2 lần/tháng" như thường lệ. Câu này biến sự cố bất thường thành thông lệ | 🟡 giữ được nếu sửa: 「時期によっては月1-2回」
- [🔵 SỰ THẬT] `dòng 21, 58-60` | Bảng đón sai 白鵬 vs 白鷗 | ✅ **Rất tốt** — tình huống hay, kanji đúng (鵬 = Hakuhō yokozuna, 鷗 = Hakuō). Bổ sung 富士通/三井-三菱 chuẩn. Điểm sáng nhất chương
- [🔵 SỰ THẬT] `dòng 34` | *"cạo nét '朋' của 鵬 bằng móng tay (in laser nên mực bám lỏng)"* | Mực in laser bám **rất chắc** (nung chảy vào giấy), cạo bằng móng tay trong 25 giây là không thực tế. Chi tiết nhỏ nhưng phá độ tin cậy | Đề xuất: đơn giản hoá — lật mặt sau bảng viết tay lại bằng bút lông

**D. Tiếng Nhật không tự nhiên**

- [🟡 TỰ NHIÊN] `dòng 78, 172, 314, 465` | Các lượt của Dũng dài 3-5 câu hoàn chỉnh, không có 相槌, không 言い淀み, không ngắt. Ví dụ dòng 465 (Hương đọc 5 điểm MoU) = **1 lượt thoại ~200 ký tự JA** liền mạch | Với sách "Real Dialogues" tiêu chí "nghe như thật", các lượt này giống đọc slide hơn nói. Đề xuất: chèn 「えーと」「そうですね」「あ、すみません、もう1点」 và cắt lượt dài thành 2-3 lượt có người khác chen vào
- [🟡 TỰ NhIÊN] Toàn chương | **Thiếu 相槌 của phía nghe**. Đoàn Nhật 5 người mà gần như không có 「なるほど」「へえ」「そうなんですね」「ええ」 xen giữa. Hội thoại Nhật thật, người nghe đệm 相槌 mỗi 5-10 giây | Đề xuất: thêm ít nhất 1 lượt 相槌 ngắn mỗi tình huống
- [🔵 TỰ NHIÊN] `dòng 316-318` | 3 lượt tiếng Anh liền của Hải + Sasaki | Tự nhiên và hợp lý (2 kỹ sư nói shop-talk). Điểm sáng

**E. Tiếng Việt**

- [🔴 XƯNG HÔ] `dòng 393, 400, 407` | Matsumoto (45-50t, PM khách hàng) nói với **Hà CTO** (30-35t, giám đốc công nghệ nhà cung cấp): VN dịch *"Hôm nay **em** muốn nói thẳng 2 điểm"*, *"lý lịch em Lê Hoàng Anh **em** quan tâm"*, *"về phía Hakuō **chúng em** cũng muốn..."* | Matsumoto **hơn tuổi** Hà, lại là **phía khách hàng**. Xưng "em" là sai kép: sai tuổi + sai vị thế thương mại. Đọc rất lệch | Đề xuất: **"tôi"** / "phía chúng tôi". Toàn bộ lượt Matsumoto trong tình huống 10
- [🔴 XƯNG HÔ] `dòng 510, 445` | Matsumoto: *"ngày đầu **em** đã nhận từ chị Hương rồi"*, *"**em** nhớ về Tokyo dùng"* | Matsumoto nói với Dũng (đàn em) mà xưng "em" | Đề xuất: **"tôi"**
- [🟡 XƯNG HÔ] `dòng 326, 370` | Tanaka PMO (30-35): *"Cứu **em** rồi"*, *"Của **em** cũng ngon lắm"* | Tanaka ngang/hơn tuổi Dũng, phía khách. Nên là "tôi" | Đề xuất: "tôi"
- [🟡 XƯNG HÔ] `dòng 256` | Sasaki (lập trình viên cấp cao Hakuō): *"hợp khẩu vị hơn **em** nghĩ"* | Xưng "em" với người Việt vai dưới | Đề xuất: "tôi"
- [🟡 XƯNG HÔ] `dòng 437` | Ōgaki: *"3 ngày làm phiền **các em**"* | Ōgaki gọi Hà CTO (ngang hàng, chủ nhà) là "em" trong danh sách. Câu 「お世話になります」 nên là *"3 ngày nhờ mọi người giúp đỡ"* | Đề xuất: bỏ "các em"
- [🟡 TIẾNG VIỆT] `dòng 371` | *"Hôm nay tìm quán hợp khẩu vị các vị vất vả, **may mắn thôi**"* | Dịch 「まあ何とか」 thành "may mắn thôi" — sai nghĩa. 「何とか」 = "cũng tạm xong / xoay xở được" | Đề xuất: *"cũng may là xoay xở được"*
- [🟡 TIẾNG VIỆT] `dòng 410` | *"không thay đổi vẻ mặt mà ghi chú cuộc thảo luận **nặng nề** vậy"* | 「重い議論」 = "cuộc thảo luận **hệ trọng / nặng ký**", không phải "nặng nề" (nghĩa tiêu cực) | Đề xuất: *"cuộc thảo luận hệ trọng như vậy"*
- [🟡 TIẾNG VIỆT] `dòng 441` | *"Dũng nhanh chóng gọi thêm món cho nhân viên"* | Sai chủ-tân: Dũng gọi món **với** nhân viên (đặt thêm món), không phải "cho nhân viên" | Đề xuất: *"Dũng gọi nhân viên đặt thêm món ngay"*
- [🟡 TIẾNG VIỆT] `dòng 254` | *"Nước **sâu** hơn"* | 「スープ深い」 dịch word-for-word. Tiếng Việt: *"nước dùng đậm đà hơn"* | Đề xuất: sửa
- [🟡 TIẾNG VIỆT] `dòng 285` | *"Wow, Việt Nam **scuba** (cười)"* | 「ベトナム scuba」 — đùa của Ōgaki về mưa như lặn biển. Dịch thẳng "scuba" người Việt không hiểu | Đề xuất: *"Wow, mưa Việt Nam như đi lặn (cười)"*
- [🟡 TIẾNG ANH THỪA] `dòng 136, 316-318, 392, 406, 441` | "organize", "handle", "frank", "co-ownership", "board", "outsourcing" trộn vào lời VN của người Việt nói chuyện với nhau | Bổ sung cho english_audit.md (audit hiện chỉ bắt 3 từ ở ch05: shock/pivot/narrative). Ít nhất thêm: **organize, handle, frank, board** | 🟡

**F. Nhất quán**

- [🟡 NHẤT QUÁN] `_front_matter.md dòng 37` ghi ch05 = **13 tình huống** | `chương.md` = 13 ✅, `draft/chương_05_来訪_scenes.json` = 13 ✅ | Khớp
- [🟡 NHẤT QUÁN] `_front_matter.md dòng 25` | *"anh **Itoki** (Nagoya)"* nhưng `voice_profiles.json` = **`ito_nagoya` / 伊藤さん / Ito Hideki** | Sai tên nhân vật trong front matter | Đề xuất: sửa thành "anh Ito"
- [🟡 NHẤT QUÁN] `_front_matter.md dòng 23` liệt kê khách Hakuō **không có Ōgaki** dù Ōgaki xuất hiện dày đặc ở cả 4 chương 05-08 | Đề xuất: thêm "anh Ōgaki (Osaka)" — thực tế dòng 23 có, nhưng thiếu 佐々木/林 (xuất hiện xuyên suốt ch05) | 🔵

---

### chương_06_温泉

**A. Nhân vật nói sai giọng**

- [🟡 GIỌNG] `dòng 63` | JA: 「いやいや、これは**僕**のお誘いだから**僕**の負担で当然。」 | Ōgaki (45-50, 営業部長) dùng 「僕」. Với 部長 tuổi này trong bối cảnh có mặt đối tác, 「私」 chuẩn hơn; 「僕」 dùng khi cực thân. Ch06 là chuyến chơi thân mật nên **chấp nhận được**, nhưng dòng 100 cùng cảnh Ōgaki lại chuyển 「ズンさん...必須だよ」 (常体 + よ) — dao động | 🔵 Nếu chủ ý thì cần nhất quán trong cả chương
- [🔴 GIỌNG] `dòng 345-346` | Ōgaki tâm sự chuyện bố mất | Về mặt viết thì rất hay. Nhưng **hồ sơ `oogaki_sales` = "sharp negotiator, direct, occasionally probing"** — đây là khoảnh khắc mềm nhất cả sách và nó thuộc về Ōgaki, không phải Matsumoto (hồ sơ "patient"). Kết quả: Ōgaki mất hoàn toàn trục "sắc bén" trong ch05-08, còn Matsumoto bị đẩy sang vai "hướng dẫn viên ẩm thực" | Đề xuất: hoặc **hoán đổi** cảnh này sang Matsumoto, hoặc **cập nhật voice_profiles** thêm trait "mềm khi riêng tư" cho Ōgaki. Không được để hồ sơ mâu thuẫn nội dung
- [🟡 GIỌNG] `dòng 124, 131, 133, 137` | 女将 dùng 「いらっしゃいませ」「お待ちしておりました」「お脱ぎになって」「お出しします」 | ✅ **Đúng chuẩn** 女将 ryokan (尊敬語 + 謙譲語 phân biệt rõ). Điểm sáng
- [🟡 GIỌNG] `dòng 164` | 仲居 giới thiệu kaiseki 「〜でございます」 | ✅ Đúng

**B. Kính ngữ**

- [🔴 KÍNH NGỮ] `dòng 344` | JA: 「大垣さん、**お父様のこと、お辛かったでしょうね**。」 | Dũng nói với Ōgaki về **bố của Ōgaki đã mất**. 「お父様」 ✅ đúng (tôn kính, người của đối phương). Nhưng 「お辛かったでしょうね」 — 辛い là tính từ chỉ **cảm xúc của người khác**, thêm お+でしょうね là **suy đoán cảm xúc người trên** — hơi vượt phận với người vai trên trong văn hoá Nhật | Đề xuất: 「**そうでしたか**…**お力落としでしたね**」 hoặc đơn giản 「**それは…**」 + im lặng (người Nhật thường không nói hết)
- [🟡 KÍNH NGỮ] `dòng 62` | JA: 「大垣さん、お気遣いありがとうございます。お礼はホテルのコーヒーで…」 | ✅ Tự nhiên, đúng mực. Điểm sáng
- [🟡 KÍNH NGỮ] `dòng 174` | JA: 「松本さん、こんなに丁寧に説明してくださって、贅沢なランチになりました。」 | ✅ 「〜してくださって」 đúng 尊敬語

**C. Sai sự thật / phong tục** (xem thêm bảng riêng ở trên)

- [🔴 SỰ THẬT] `dòng 182` | JA: 「**蛤**の出汁、繊細。」 VN: *"Dashi từ **con hàu**, tinh tế."* | **Sai dịch nghiêm trọng**: 蛤 (hamaguri) = **ngao/nghêu vỏ cứng**, không phải hàu (牡蠣 kaki). Trong bối cảnh kaiseki, 蛤のお吸い物 là món kinh điển. Dịch sai = dạy sai từ vựng | Đề xuất: *"Nước dùng từ ngao hamaguri, tinh tế"*
- [🔴 SỰ THẬT] `dòng 164, 171` | 「前菜は**香箱蟹**」 + Ōgaki: 「香箱蟹。**北陸の特産**」 | Sai mùa vụ nghiêm trọng: **香箱蟹 (cua cái ズワイガニ) chỉ được đánh bắt 6/11 – 31/12** (mùa cực ngắn, luật Ishikawa/Fukui). Chương này diễn ra **tháng 1/2027** (dòng 3) → mùa đã đóng, không thể có 香箱蟹 tươi ở ryokan Atami. Ngoài ra Atami (Izu) dùng 香箱蟹 Hokuriku cũng không tự nhiên | Đề xuất: đổi sang đặc sản Izu/Sagami mùa đông thật: **金目鯛** (đã có ở dòng 173), **伊勢海老**, hoặc **アワビ**. Nếu muốn giữ cua: 「**タラバガニ**」 hoặc bỏ hẳn
- [🔴 SỰ THẬT] `dòng 164` | 「煮物は**冬瓜**」 | **Sai mùa**: 冬瓜 (bí đao) tên có chữ 冬 nhưng là **rau mùa hè** (thu hoạch 6-9월), kaiseki dùng vào **hè**. Tháng 1 dùng 冬瓜 trong kaiseki là sai nguyên tắc 旬 — mà kaiseki thì 旬 là linh hồn. Đây là lỗi mà bất kỳ người Nhật am hiểu ẩm thực nào cũng thấy ngay | Đề xuất: đổi sang **大根**, **かぶ**, hoặc **里芋** (đúng mùa đông)
- [🔴 SỰ THẬT] `dòng 189` | Bí quyết liệt kê thứ tự kaiseki: 「先付 → お造り → 焚合 → 揚げ物 → 蒸し物 → 御飯 → お椀 → デザート」 | **Sai thứ tự**: trong 会席料理 chuẩn, **お椀 (椀物/吸い物) đứng thứ 2, ngay sau 先付**, TRƯỚC お造り. Thứ tự chuẩn: 先付 → **椀物** → 向付(お造り) → 焼物 → 煮物(焚合) → 揚物 → 蒸物 → 御飯・止椀・香の物 → 水菓子. Sách đặt お椀 gần cuối là nhầm với 止椀 (súp miso cuối). Đồng thời dòng 181-182 Dũng hỏi *"bát cuối là osuimono?"* → củng cố cái sai | Đề xuất: sửa lại thứ tự chuẩn và làm rõ **椀物 (đầu) ≠ 止椀 (cuối, thường là 味噌汁)**
- [🔴 SỰ THẬT] `dòng 203, 381` | Thiếu かけ湯, thiếu quy tắc khăn, thiếu 浴衣 右前 | Xem bảng O-1, O-2, O-3 ở trên | 🔴
- [🟡 SỰ THẬT] `dòng 42-44` | Bí quyết Shinkansen: "SmartEX (JR Tokai) đặt trước qua app, tích hợp Suica", "Chỗ ngồi có đặt = phụ thu ¥530" | Phụ thu 指定席 Tokyo→Atami thực tế **khoảng ¥530 mùa thường** (đúng), nhưng con số thay đổi theo mùa (繁忙期 +¥200). Nhỏ | 🔵 Thêm "tuỳ mùa"
- [🟡 SỰ THẬT] `dòng 100` | Ōgaki: 「ベトナム南部の人が真冬の関東来るときは『ヒートテック』必須だよ」 | ✅ Chuẩn và thực tế
- [🟡 SỰ THẬT] `dòng 226-229` | Bí quyết hình xăm | ✅ Chính xác. 「シール対応」 đúng thuật ngữ ryokan dùng
- [🔵 SỰ THẬT] `dòng 211` | Matsumoto: 「週末温泉、現代の reset ボタン。**江戸時代から続いてる**」 | Văn hoá 湯治 có từ trước Edo (Nara/Heian đã có ghi chép). "Từ thời Edo" đúng cho **onsen giải trí đại chúng** — chấp nhận được nhưng có thể chính xác hơn | 🔵

**D. Tiếng Nhật không tự nhiên**

- [🟡 TỰ NHIÊN] Toàn chương | **Brief cảnh báo đúng: ch06 là ngữ cảnh THÂN MẬT nhưng nhiều chỗ vẫn trang trọng**. Ví dụ dòng 217 Dũng nói trong **bồn onsen** (trần truồng, thân mật nhất): 「ベトナムで自然温泉は北部の Sapa にあります、でも日本のような『裸の付き合い』文化はないですね。水着で入る spa の感覚。」 — câu này dài, đủ chủ vị, giống thuyết trình | Đề xuất: cắt ngắn, thêm 言い淀み: 「ベトナムにも...サパってとこに温泉あるんですけど、でも...**なんていうか**、こういう『裸の付き合い』はないですね。水着で入る感じで」
- [🟡 TỰ NHIÊN] `dòng 218` | Ōgaki: 「服を脱ぐ = 立場を脱ぐ、と日本では言う。」 | Dùng dấu **「=」** trong lời thoại nói. Không ai nói ra dấu bằng | Đề xuất: 「服を脱ぐってのは、**立場も脱ぐ**ってことなんだよ、日本では」
- [🟡 TỰ NHIÊN] `dòng 390` | Dũng (tiếng Việt): *"chuyến nghỉ onsen ban đầu em nghĩ là để thư giãn, giờ thấy ra đó là **không gian chứa đựng những cuộc trò chuyện không thể xảy ra ở môi trường khác**"* | Câu văn viết, không phải câu nói lúc 22:30 nằm futon. Lặp lại y nguyên ở dòng 391 và recap dòng 460 | Đề xuất: nói tự nhiên hơn — *"onsen không phải để nghỉ đâu anh. Là chỗ để nói những chuyện mà chỗ khác không nói được."*
- [🔵 TỰ NHIÊN] `dòng 289-290` | 「(注ぐ)はい。」/「ありがとうございます。」 | ✅ Ngắn, đúng nhịp thật. Điểm sáng

**E. Tiếng Việt**

- [🟡 XƯNG HÔ] `dòng 124` | 女将 (≈65 tuổi, bà chủ ryokan): *"Mời quý vị, **em** đã đợi."* | Bà chủ 65 tuổi xưng "em" với khách nam trẻ hơn — **sai nặng về tuổi tác**. Tiếng Việt nên là "tôi" hoặc bỏ chủ ngữ | Đề xuất: *"Kính chào quý khách, chúng tôi đã chờ ạ."*
- [🟡 XƯNG HÔ] `dòng 137` | 女将: *"**Nakai** (lễ tân riêng) sẽ đem đồ lên"* | 仲居 **không phải "lễ tân riêng"** — là **người phục vụ phòng** (bưng cơm, trải futon, hướng dẫn). Lễ tân = 受付/フロント. Dịch sai chức danh | Đề xuất: *"nhân viên phục vụ phòng (nakai) sẽ mang hành lý lên"*
- [🟡 TIẾNG VIỆT] `dòng 135` | *"(tiếng Việt) Vâng anh, em ghi rồi. **Nhục.**"* vs bản JA gốc ghi 「Nhục.」 nhưng dịch nghiêng lại là *"Quê quá."* | **Hai bản không khớp nhau trong cùng dòng** — dòng JA và dòng dịch VN khác từ | Đề xuất: thống nhất một từ ("Quê quá" tự nhiên hơn)
- [🟡 TIẾNG VIỆT] `dòng 33, 101, 134, 385-393` | Các lượt "tiếng Việt" được ghi **hai lần y hệt** (một trong 「」 và một in nghiêng) | Đây là format nhất quán trong sách cho lời tiếng Việt — chấp nhận được nhưng **tốn chỗ và trông lỗi**. Ch05 dòng 25/31/119 cũng vậy | 🔵 Cân nhắc: với lượt tiếng Việt, bỏ dòng nghiêng lặp
- [🟡 TIẾNG VIỆT] `dòng 258` | *"Một mình thì chưa trọn vẹn, **phải có nhau mới đủ đầy**"* | Dịch 「組み合わせで完成する」 khá thoát. Đẹp nhưng hơi thơ so với câu gốc mộc | 🔵 Chấp nhận
- [🟡 TIẾNG VIỆT] `dòng 306` | *"Cảm ơn anh, **nửa thôi ạ, để sáng mai tỉnh**"* | 「明日朝のため」 = "để dành cho sáng mai" — dịch "để sáng mai tỉnh" hơi thô | Đề xuất: *"nửa ly thôi ạ, mai còn dậy sớm"*
- [🟡 TIẾNG ANH THỪA] `dòng 209, 211, 391` | "reset", "tool", "perk" | english_audit.md **đã bắt đúng 3 từ này** ✅ — xác nhận cần sửa | 🟡

**F. Nhất quán**

- [🟡 NHẤT QUÁN] `_front_matter.md dòng 38` ghi ch06 = **11 tình huống**; `chương.md` = 11 ✅; `draft` = 11 ✅ | Khớp
- [🟡 NHẤT QUÁN] `dòng 12` Bí quyết tổng: *"Phép tắc ryokan nhiều quy tắc... **Sách 07 đã dạy**"* | Nhưng dòng 203, 245, 285 lại ghi *"quy tắc sách 07"*, *"sách 07 + sách 08"* — **tham chiếu chéo sang sách khác 5 lần trong 1 chương**. Nếu người đọc chỉ mua sách 09 thì mất nội dung. Đây cũng là lý do 3 quy tắc onsen cốt lõi bị bỏ | Đề xuất: **tự chứa hoá** — ít nhất tóm tắt lại かけ湯/khăn/yukata trong 1 khối Bí quyết của chính ch06
- [🟡 NHẤT QUÁN] `dòng 381` | *"Matsumoto + Ōgaki phòng khác (tổng cộng 2 phòng). Dũng + Tuấn 1 phòng"* nhưng dòng 118-137 chỉ đặt **1 phòng 'Matsu no ma'** cho 4 người, dòng 158 ghi *"Phòng tatami **chung** 'Matsu no ma'"*, dòng 160 *"4 chỗ ngồi zabuton"* | Mâu thuẫn số phòng trong cùng chương | Đề xuất: làm rõ — Matsu no ma là phòng ăn chung, phòng ngủ tách 2

---

### chương_07_新製品発表

**A. Nhân vật nói sai giọng**

- [🔴 GIỌNG] `dòng 116` | Tuấn (tiếng Việt): *"**Mày** OK. 5 phút đó **mày** sẽ nhớ cả đời... Cứ là **chính mày**."* | Tuấn ở **mọi chỗ khác** trong ch05/06/07 đều xưng **"anh/em"** với Dũng (ch06 dòng 385-393, ch07 dòng 104-115 ngay trước đó). Đột ngột chuyển "mày/tao" trong 1 lượt = **đổi giọng giữa chừng vô lý**. Hồ sơ `tuan_leader` = "patient when explaining" | Đề xuất: *"Em ổn mà. 5 phút đó em sẽ nhớ cả đời, dù tốt hay không. Cứ là chính em."*
- [🟡 GIỌNG] `dòng 431, 433` | Ōgaki: 「**analyst の technical question**、僕も Tuan さんに任せようとしたんだけど、目で **signal** 出してたら」/「次回 panel で、もう **signal** なしでも自分で **take** ね」 | Ōgaki (45-50, 営業部長 Nhật) dùng dày đặc tiếng Anh: analyst, technical question, signal (×2), take, panel. Hồ sơ Ōgaki **không có** trait "hay dùng tiếng Anh" — trait đó thuộc `tanaka_pmo`. Người Nhật 部長 tuổi này thường nói 「アナリストの技術的な質問」「合図」「自分で受けて」 | Đề xuất: giảm còn 1-2 từ Anh (panel, analyst là katakana business phổ biến), bỏ signal/take
- [🟡 GIỌNG] `dòng 279` | Matsumoto: 「英語で笑いを取ったの**神対応**。**audience** も和んだ。」 | 「神対応」 là **tiếng lóng giới trẻ/net** (2010s). Matsumoto 45-50t, formal client — dùng 神対応 hơi lệch tuổi. Cộng thêm "audience" tiếng Anh | Đề xuất: 「英語で笑いを取ったのは**うまい対応**だったね。**会場**も和んだ」
- [🔵 GIỌNG] `dòng 406` | Inoue: 「ズンさん、ナイス recovery。デモ crash、こっちのミス。後で chocolate おごる。」 | Hồ sơ `inoue_hakuo`: "booth runner năng lượng cao, polite-warm". Câu này **khớp tốt** — cụt, nhanh, ấm. ✅ Điểm sáng

**B. Kính ngữ** (chương nghi thức cao — 発表会 chính thức)

- [🔴 KÍNH NGỮ] `dòng 218` | Nakamura CFO trên sân khấu 200 khách: 「**特に同社BD担当のTran Van Dungさん**…ズンさん、**立っていただけますか?**」 | Vấn đề uchi/soto **ngược**: Nakamura là 白鷗, Dũng là **công ty khác (soto)** → dùng 尊敬語 với Dũng là **đúng** ✅. Nhưng 「立っていただけますか」 là 謙譲語 của "tôi nhận việc bạn đứng" — đúng ngữ pháp. **Vấn đề thật**: trong 挨拶 chính thức trước báo chí, nên là 「**ご起立いただけますでしょうか**」 hoặc 「**ご紹介させていただきます**」. Mức hiện tại hơi thân mật cho sân khấu 200 người + 50 báo chí | 🟡 thực chất
- [🔴 KÍNH NGỮ] `dòng 224` | Nakamura: 「...同じ stage に立つまでに**成長してくださいました**。」 | **Sai 敬語 rõ**: 「成長してくださる」 = "anh ấy đã trưởng thành **cho tôi/vì tôi**" — 「〜てくださる」 hàm nghĩa hành động **có lợi cho người nói**. Trưởng thành là việc của bản thân Dũng, không phải làm cho Nakamura. Người Nhật sẽ nói 「**ご成長されました**」 hoặc 「**成長なさいました**」 | Đề xuất: 「同じステージに立つまでに**ご成長されました**」
- [🔴 KÍNH NGỮ] `dòng 306` | Matsumoto trả lời phóng viên tại Q&A công khai: 「構築側は2年で総額約3.5億円、ベトナム側エンジニア15名の人件費含めて。...詳細は資料配布します。」 | **Thiếu 敬語 hoàn toàn** ở phiên Q&A chính thức có báo chí. Toàn câu là 常体/普通体 danh từ kết. Trong 発表会, người trả lời panel dùng **です・ます + 謙譲語**: 「〜でございます」「配布**いたします**」. Đây là chương "nghi thức cao" mà lượt quan trọng nhất lại thiếu kính ngữ | Đề xuất: 「構築側は2年で総額約3.5億円**でございます**。...詳細は資料を**配布いたします**」
- [🔴 KÍNH NGỮ] `dòng 314` | Dũng trả lời analyst: 「...compliance audit **pass しております**。」 | 「pass する」 → 「pass しております」 là 謙譲語 ✅ đúng hướng. Nhưng **trộn động từ tiếng Anh vào 謙譲語** trong phát biểu chính thức nghe rất lạ. Người Nhật: 「**通過しております**」「**合格しております**」 | Đề xuất: 「コンプライアンス監査も**通過しております**」
- [🟡 KÍNH NGỮ] `dòng 390` | Dũng xin lỗi khách tại booth: 「申し訳ございません、デモ環境のシステムが不安定で。1分以内に再起動しますので、少々お待ちくださいませ。」 | ✅ **Rất tốt** — 申し訳ございません (đúng mức) + くださいませ (dịu). Điểm sáng của chương
- [🟡 KÍNH NGỮ] `dòng 398` | Dũng: 「正直に申し上げますと、デモ環境はミニマムスペックで...社内で議題に上げます。」 | 「申し上げます」 ✅ đúng. Nhưng kết 「議題に上げます」 nên nâng 「**議題に上げさせていただきます**」 cho đồng cấp với mở đầu | 🔵
- [🟡 KÍNH NGỮ] `dòng 273` | Dũng kết bài: 「ご清聴ありがとうございました。」 | ✅ **Chuẩn xác** cho kết thúc thuyết trình chính thức. Điểm sáng
- [🟡 KÍNH NGỮ] `dòng 31, 254` | 「本日はお越しいただきありがとうございます」 | ✅ Đúng. Nên là 「お越し**くださり**」 hoặc 「**ご来場いただき**」 cho 発表会 quy mô này | 🔵

**C. Sai sự thật / phong tục**

- [🔴 SỰ THẬT] Toàn chương | **名刺交換 sai nghi thức**. Brief nêu đích danh. `dòng 346`: 「(両手で名刺受け取り)佐藤さん、ありがとうございます。Tien Phat の Tran Van Dung、ズンとお呼びください。(自分の名刺渡す)」 → **Nhận trước rồi mới đưa** = sai. Quy tắc: người **vai dưới / bên bán đưa trước**; nếu **đồng thời** thì trao đổi 同時交換 (tay phải đưa, tay trái nhận). Đưa sau khi đã nhận là 失礼. Thêm nữa `dòng 400` Dũng **chủ động xin danh thiếp khách** 「お名刺いただけますか?」 — chấp nhận được nhưng nên đưa của mình trước | Đề xuất: sửa thành 同時交換 và thêm Bí quyết 名刺交換 (đưa bằng 2 tay, mặt chữ hướng về đối phương, thấp hơn nếu vai dưới, nhận xong đặt lên bàn theo thứ tự chỗ ngồi, **không cất ngay vào túi**, **không viết lên danh thiếp trước mặt người đưa**)
- [🔴 SỰ THẬT] `dòng 350, 357, 369-370` | Bí quyết: *"Sau MỖI cuộc, ghi 1 dòng"*, *"Kẹp danh thiếp vào sổ"* + mô tả Dũng **rút sổ ghi ngay sau khi Sato đi** | **Xung đột nghi thức**: viết lên/ghi chú liên quan danh thiếp **ngay tại chỗ, trong tầm nhìn** của khách là điều người Nhật kiêng. Sách đang **dạy sai** một thói quen | Đề xuất: giữ ý tưởng (rất hữu ích) nhưng thêm điều kiện: *"ghi ở chỗ khuất — hành lang, nhà vệ sinh, sau khi khách đã đi hẳn. Tuyệt đối không ghi lên mặt danh thiếp trước mặt người đưa."*
- [🟡 SỰ THẬT] `dòng 306` | 「地方銀行クラスで初期5,000万円、月額300万円から」 | Con số hợp lý cho hệ thống AI ngân hàng địa phương Nhật. Nhưng **CFO/PM công bố chi phí xây dựng nội bộ (3.5億円) trước báo chí** là điều hiếm — thường là 「非公開」「概算はお答えできかねます」. Tình huống 5 xây dựng cả câu chuyện "không tuỳ tiện đưa số liệu" rồi tình huống 8 lại đưa hết | Mâu thuẫn nội tại | Đề xuất: Matsumoto trả lời phần triển khai (có thể công bố), **từ chối khéo** phần chi phí nội bộ: 「構築コストの内訳は非公開とさせていただいておりますが、導入コストは…」 → vừa thật hơn vừa dạy được kỹ năng
- [🟡 SỰ THẬT] `dòng 314` | 「金融庁の要件 5 年を超えています」 | Yêu cầu lưu trữ của 金融庁: thực tế theo 金融商品取引法/銀行法 phần lớn là **5 năm hoặc 7 năm** tuỳ loại tài liệu, không có một con số "5 năm" thống nhất cho log hệ thống | 🔵 Nên nói mềm: 「一般的な保存要件を上回る7年」
- [🟡 SỰ THẬT] `dòng 3, 5` | *"Pacifico Yokohama"* + `dòng 21` *"Hội trường khách sạn Pacifico Yokohama"* + `dòng 67` *"Phòng khách sạn Dũng (Pacifico Hotel)"* | Pacifico Yokohama là **trung tâm hội nghị**; khách sạn liền kề tên **InterContinental Yokohama Grand**, không có "Pacifico Hotel" | 🟡 Đề xuất: đổi thành "khách sạn cạnh Pacifico" hoặc dùng tên thật
- [🔵 SỰ THẬT] `dòng 267` | 「『推論スピード』ですね」 | Thuật ngữ chuẩn tiếng Nhật cho inference latency là **「推論レイテンシ」** hoặc 「推論速度」. 「推論スピード」 dùng được nhưng katakana スピード + 推論 hơi lộn xộn | 🔵

**D. Tiếng Nhật không tự nhiên**

- [🔴 TỰ NHIÊN] `dòng 314` | Lượt trả lời của Dũng = **~330 ký tự JA liền một hơi**, 3 lớp + 5 con số + 4 thuật ngữ Anh, không ngắt, không 相槌 của người hỏi | Với sách "Real Dialogues", đây là điểm **kém tự nhiên nhất trong 4 chương**. Q&A thật luôn có ngắt, moderator xen, người hỏi gật 「なるほど」 | Đề xuất: cắt thành 2-3 lượt, chèn 1 lượt 「(うなずきながら)なるほど」 của analyst ở giữa
- [🟡 TỰ NHIÊN] `dòng 261` | 「…sorry, the technical term in Japanese just escaped me — 'inference latency', the time AI takes to respond. 日本語でなんて言うか、忘れちゃいました(笑)」 | Ý tưởng rất hay ✅. Nhưng nói **cả câu tiếng Anh hoàn chỉnh có mệnh đề quan hệ** rồi mới quay lại tiếng Nhật là hơi trơn tru cho người đang **quên từ vì căng thẳng**. Người thật sẽ lắp bắp hơn | Đề xuất: 「あ…すみません、日本語が出てこない…**inference latency**、えっと、AIが返事するまでの時間です(笑)」
- [🟡 TỰ NHIÊN] `dòng 263` | *"1 ai đó hô 'スピード!' giúp"* | Khán giả 200 người + 50 báo chí tại 発表会 chính thức Nhật **rất hiếm khi hô đáp từ dưới lên** — không khí 発表会 im lặng, lịch sự. Chi tiết này hợp với workshop nhỏ hơn là launch event | 🟡 Đề xuất: đổi thành Matsumoto/Inoue ở hàng đầu nói khẽ nhắc, hoặc Dũng tự nhớ ra
- [🔵 TỰ NHIÊN] `dòng 185` | 田所記者: 「(笑って)了解、Q&A 行きます。プロな対応ですね。」 | 「プロな対応」 — đúng ngữ pháp phải là 「**プロ の** 対応」 hoặc 「プロ**らしい**対応」. 「プロな」 là cách nói khẩu ngữ trẻ | 🔵 Chấp nhận nếu chủ ý, nhưng phóng viên Nikkei thường chuẩn hơn

**E. Tiếng Việt**

- [🔴 XƯNG HÔ] `dòng 218` | Nakamura CFO (50-55t) trên sân khấu: *"đặc biệt **em** Tran Van Dung BD của công ty… Dũng, **anh** đứng lên giúp ạ?"* | **Sai nghiêm trọng và tự mâu thuẫn trong một câu**: CFO 50-55 tuổi vừa gọi Dũng (25-30) là **"em"** rồi ngay sau gọi **"anh"**. Thêm chữ **"ạ"** cuối — CFO nói "ạ" với nhân viên trẻ công ty đối tác là lệch hoàn toàn | Đề xuất: *"…đặc biệt là anh Trần Văn Dũng, phụ trách BD của công ty. Anh Dũng, mời anh đứng lên."*
- [🔴 XƯNG HÔ] `dòng 306` | Matsumoto trả lời phóng viên: *"Cảm ơn anh hỏi… **em** phát tài liệu"* | Matsumoto (PM 45-50) trả lời **phóng viên** trước 200 khách mà xưng "em" | Đề xuất: *"Cảm ơn câu hỏi của anh… Chi tiết chúng tôi sẽ phát tài liệu."*
- [🔴 XƯNG HÔ] `dòng 436, 443` | Matsumoto với Dũng: *"vụ mời **em** sang văn phòng Tokyo"* (OK — gọi Dũng là em ✅) nhưng dòng 443: *"Anh Hà CTO bên **em** sẽ nói"* | "bên em" = Matsumoto tự xưng em. Trong cùng 2 lượt vừa gọi Dũng là "em" vừa tự xưng "em" | Đề xuất: *"Anh Hà CTO thì **tôi** sẽ nói."*
- [🟡 XƯNG HÔ] `dòng 308, 315, 347, 354, 384, 399` | Các nhân vật Nhật (アナリスト, 来場者A/B/C) đều xưng **"em"** với Dũng | Đây là khách hàng tiềm năng / chuyên gia phân tích, phần lớn ngang hoặc hơn tuổi Dũng, trong bối cảnh business formal | Đề xuất: đổi hết sang "tôi"
- [🟡 XƯNG HÔ] `dòng 185, 431` | 田所記者: *"**em** qua Q&A"*; Ōgaki: *"**anh** tính nhường cho Tuấn nhưng thấy ra hiệu mắt thì **em** tự trả lời nhỉ"* | Ōgaki dòng 431 dùng "anh" cho mình ✅ + "em" cho Dũng ✅ = **đúng**. Nhưng 田所 (phóng viên) xưng "em" thì sai | Đề xuất: 田所 → "tôi"
- [🟡 TIẾNG VIỆT] `dòng 194` | *"Em báo trước anh."* dịch từ 「事前にヒアップだけ」 | 「ヒアップ」 là **lỗi chính tả trong bản JA** — đúng phải là 「**ヘッズアップ**」 (heads-up) hoặc bỏ hẳn dùng 「事前にお知らせだけ」. Từ 「ヒアップ」 không tồn tại trong tiếng Nhật | 🔴 thực chất — lỗi chính tả JA
- [🟡 TIẾNG VIỆT] `dòng 116` | *"Cứ là **chính mày**"* | Ngoài vấn đề mày/tao (A-1), "cứ là chính mày" dịch từ ý "be yourself" nghe cứng | Đề xuất: *"Cứ là chính em thôi."*
- [🟡 TIẾNG VIỆT] `dòng 399` | *"Spec **production environment**, sau gửi mail giúp được không?"* | Trộn 2 cụm tiếng Anh vào lời khách Nhật nói. Bản JA gốc dùng 「本番環境のスペック資料」 — hoàn toàn tiếng Nhật | Đề xuất: *"Tài liệu thông số môi trường vận hành thật, sau gửi mail giúp tôi được không?"*
- [🟡 TIẾNG ANH THỪA] `dòng 75-76, 77, 195, 406, 431, 433, 468` | "backstage", "pre-flight checklist", "dry run", "heads up", "follow-up", "anchor", "career-defining", + mới phát hiện: **"recovery", "signal", "take", "audience", "panel discussion", "crash"** | english_audit.md bắt 7 từ ở ch07 ✅. **Bổ sung 6 từ trên** | 🟡

**F. Nhất quán**

- [🔴 NHẤT QUÁN] `dòng 436` | Matsumoto: 「さっき経営陣の**田中専務**とちょっと話したんだけど」 | **Trùng họ 田中 với 田中PMO (Tanaka)** — nhân vật chính xuyên suốt sách, người mà ch08 tổ chức đám cưới. Người đọc sẽ nhầm "Tanaka senmu" = "Tanaka PMO thăng chức". Recap dòng 523 lại nhắc 「Tanaka senmu」 lần nữa | Đề xuất: **đổi họ** thành 佐伯専務 / 川上専務 / 上原専務
- [🟡 NHẤT QUÁN] `_front_matter.md dòng 39` ghi ch07 = **12 tình huống**; `chương.md` = 12 ✅; `draft` = 12 ✅ | Khớp
- [🟡 NHẤT QUÁN] `dòng 3` bối cảnh ghi *"Sự kiện 200 khách (50 báo chí + chuyên gia phân tích, 150 khách hàng tiềm năng)"* nhưng `dòng 21` ghi *"Hội trường lớn **500 chỗ**"* và `dòng 214` *"Hội trường đầy ≈200 chỗ"* | 500 chỗ mà 200 khách thì **không "đầy"**. Mâu thuẫn | Đề xuất: thống nhất 250 chỗ
- [🟡 NHẤT QUÁN] `dòng 425, 445` | *"Tiệc tối bế mạc **2 tiếng**"* (18:00) rồi *"Tiệc tiếp tân tiếp tục đến **20:00**"* ✅ khớp. Nhưng dòng 431 Ōgaki nói chuyện + dòng 434 Inoue + dòng 436 Matsumoto + *"gặp thêm 12 khách"* trong cùng 2 tiếng — dày nhưng khả thi | ✅
- [🔵 NHẤT QUÁN] `dòng 498` (ch08 recap) tham chiếu *"đã thống nhất với Matsumoto **chương 7**"* | ✅ Cross-reference đúng, tốt

---

### chương_08_結婚式

**A. Nhân vật nói sai giọng**

- [🔴 GIỌNG] `dòng 275, 281, 287` | 友人スピーチ nói **Kansai-ben** trong bài phát biểu đám cưới tại **Imperial Hotel Tokyo**, gọi chú rể 「お前」「アホか」 | Về mặt kỹ thuật: 友人スピーチ **được phép** thân mật hơn 主賓挨拶. Nhưng nội dung "chú rể từng chê cô dâu không phải gu" trước 両家親族 là **NG thực sự** (xem W-3). Ngoài ra Kansai-ben xuất hiện đột ngột — không có nhân vật Kansai nào trong cast được thiết lập ở ch08 | Đề xuất: giữ Kansai-ben (hay, dạy được), **đổi nội dung** sang câu chuyện an toàn
- [🟡 GIỌNG] `dòng 163` | 田中父 (70t): 「宏志、いつまでも厳しい父親で**悪かった**ね。」 | 「悪かった」 = **忌み言葉 nhóm 悪い** (xem W-1). Bố chú rể phát biểu tại đám cưới nói 「悪かった」 là điều 司会/プランナー sẽ nhắc trước. Cảm xúc rất hay nhưng từ chọn sai | Đề xuất: 「宏志、**厳しい父親だったな**。**すまなかった**という気持ちもある。」 — vẫn giữ cảm xúc, tránh 悪い
- [🟡 GIỌNG] `dòng 149, 156` | Nakamura CFO 主賓祝辞 | 「田中宏志くん、ご結婚おめでとうございます」 ✅ đúng (主賓 gọi 部下 là 「くん」 chuẩn). 「心からお祝い申し上げます」 ✅ đúng 謙譲語. **Điểm sáng**. Nhưng 「一番の **transformation**」 — chen tiếng Anh vào 祝辞 chính thức là lệch. Người Nhật: 「**一番の変化**」「**成長**」 | 🟡
- [🟡 GIỌNG] `dòng 440` | Tanaka (chú rể, 30-35): 「皆さーん!1時間だけ**参戦**!」 | 「参戦」 (tham chiến) là tiếng lóng net/game. Tanaka hồ sơ "polite-direct" — dùng được ở 二次会 thoải mái, chấp nhận | ✅ Không lỗi
- [🟡 GIỌNG] `dòng 243` | 由美: 「(架空、English練習)Hi Dung-san, nice to meet you. Hiroshi told me a lot about you.」 | Ghi chú 「English練習」 nhưng câu tiếng Anh **hoàn hảo, không lỗi, cấu trúc tự nhiên** — mâu thuẫn với "đang luyện". Người Nhật ở trình độ luyện tập sẽ ngập ngừng | Đề xuất: 「Hi... Dung-san. Nice to... meet you. Hiroshi tell me... a lot about you.」 hoặc bỏ ghi chú 「練習」

**B. Kính ngữ + 忌み言葉** (xem bảng riêng ở trên cho 忌み言葉)

- [🔴 KÍNH NGỮ] `dòng 61` | Dũng tại quầy 受付: 「Tien Phat 社の Tran Van Dung、**田中様の招待で来ております**。」 | Hai vấn đề: (1) 「**来ております**」 là 謙譲語 của 来る ✅ đúng — nhưng chuẩn hơn ở 受付 đám cưới là 「**参りました**」; (2) Dũng gọi Tanaka là 「**田中様**」 — với **đồng nghiệp/bạn thân đã thân đến mức được mời**, dùng 様 hơi xa cách. Nhưng ở quầy 受付 nói với staff thì 様 hợp lý ✅ | Đề xuất: 「田中様のご招待で**参りました**」
- [🔴 KÍNH NGỮ] `dòng 68` | 「(shugi-bukuro 出す)**御祝儀**です、よろしくお願いします。」 | Người **đưa** goshugi không tự gọi tiền của mình là 「御祝儀」 với 御 tôn kính — hơi lạ. Thường chỉ đưa 2 tay + 「**本日はおめでとうございます**。こちら、お納めください」. Nói 「よろしくお願いします」 khi đưa tiền mừng cũng không phải câu chuẩn | Đề xuất: 「**本日はおめでとうございます**。(2 tay đưa)」 — thực tế người Nhật nói câu chúc, không thuyết minh mình đưa gì
- [🔴 KÍNH NGỮ] `dòng 388` | Dũng: 「田中さん、由美さん、本日は本当におめでとうございます。お招きいただき、**一生の宝物の一日になりました**。」 | Câu đẹp ✅. Nhưng gọi cô dâu là 「**由美さん**」 — Dũng **mới gặp Yumi lần đầu hôm nay** (dòng 238). Gọi tên riêng người vợ của đồng nghiệp ngay lần đầu là quá thân. Chuẩn: 「**奥様**」 hoặc 「田中さん、**奥様**」 | Đề xuất: 「田中さん、**奥様**、本日は誠におめでとうございます」
- [🟡 KÍNH NGỮ] `dòng 195` | Dũng tự giới thiệu tại bàn: 「初めまして、ベトナム HCMC から来ました、Tien Phat 社の Tran Van Dung、ズンと申します。」 | 「来ました」 → nên 「**参りました**」 cho đồng bộ với 「申します」 (đã dùng 謙譲語 nửa câu) | 🟡
- [🟡 KÍNH NGỮ] `dòng 244` | Dũng: 「Yumi-san, congratulations! ... **田中さんは本当にラッキーな男性です**。」 | Khen "Tanaka may mắn" ✅ ý hay. Nhưng 「ラッキーな男性」 nghe như dịch từ tiếng Anh. Người Nhật: 「田中さんは**幸せ者ですね**」 | Đề xuất: 「田中さんは**本当に幸せ者ですね**」
- [🔵 KÍNH NGỮ] `dòng 60, 62, 69, 83, 394` | Các lượt 結婚式スタッフ | 「頂戴できますでしょうか」「ご記帳お願いします」「お気をつけください」 ✅ đúng chuẩn nhân viên khách sạn cao cấp. Điểm sáng. Duy dòng 394 「お気をつけ**ください**」 → 「お気をつけ**くださいませ**」 mượt hơn cho Imperial

**C. Sai sự thật / phong tục**

- [🔴 SỰ THẬT] Toàn chương | **Thiếu 袱紗 (fukusa)** — xem W-9 | 🔴
- [🔴 SỰ THẬT] Toàn chương | **Thiếu 忌み言葉** — xem W-8 | 🔴
- [🟡 SỰ THẬT] `dòng 91-92` | Bí quyết goshugi: *"Số tờ LẺ (1, 3, 5) — không 2, 4"*, *"Tránh số 4 (死) và 9 (苦) — 40K, 90K cấm"* | ✅ **Chính xác**. Bổ sung được: **2万円 gần đây được chấp nhận** cho cặp đôi trẻ (2 = "cặp đôi"), và **8万円 OK** (8 = 末広がり). Nhưng cho sách nhập môn, giữ quy tắc chặt là đúng | ✅
- [🟡 SỰ THẬT] `dòng 90` | *"mặt 'omote' (mặt có Fukuzawa Yukichi cho ¥10,000) hướng LÊN, đầu hướng VÀO TRONG"* | ✅ Đúng quy tắc 祝儀. Lưu ý: từ 2024 tờ ¥10,000 mới in **渋沢栄一** thay Fukuzawa. Chương diễn ra **2027** → nên cập nhật | 🟡 Đề xuất: *"mặt có chân dung (từ 2024 là Shibusawa Eiichi) hướng lên"*
- [🟡 SỰ THẬT] `dòng 94` | *"Viết tên đầy đủ mặt ngoài + bên trong số tiền chữ Hán: '金参萬円' (¥30,000)"* | ✅ Đúng (旧字体 chống sửa). Chuẩn hơn nữa: 「**金参萬円也**」 (có 也 kết) | 🔵
- [🟡 SỰ THẬT] `dòng 13, 31, 44` | Dress code: *"cravat trắng / xám bạc. Cấm đen toàn"* | ✅ Đúng. Thiếu 2 điểm quan trọng cho khách nam: **không đeo đồng hồ quá phô trương / không dùng cà vạt hoa văn động vật (da/lông = sát sinh)**, và **tất phải màu tối, không tất trắng** | 🔵
- [🟡 SỰ THẬT] `dòng 125` | *"Đám cưới Nhật hiện đại **70%** theo phong cách Thiên Chúa giáo"* | Con số hợp lý (khảo sát ゼクシィ ~50-60% キリスト教式, xu hướng giảm, 人前式 tăng). 70% hơi cao cho 2027 | 🔵 Đề xuất: *"phần lớn (khoảng 6 trên 10)"*
- [🟡 SỰ THẬT] `dòng 131` | *"**Không chụp ảnh** trong lễ (đã thuê nhiếp ảnh gia chuyên nghiệp)"* | ✅ Đúng và quan trọng
- [🟡 SỰ THẬT] `dòng 144` | *"Yumi đổi sang đầm dài **đỏ-trắng** (お色直し)"* | お色直し ✅ đúng khái niệm. Nhưng màu **đỏ-trắng** cho 新婦 hơi lạ — お色直し thường là **màu tươi** (hồng, xanh, vàng) hoặc **色打掛** truyền thống. Đỏ-trắng là phối màu 紅白 mang tính nghi lễ, ít dùng cho đầm dạ hội | 🔵
- [🟡 SỰ THẬT] `dòng 230` | *"Yumi đút lại Tanaka miếng to (truyền thống — 'to' = ngầm hiểu 'tao sẽ nuôi mày no cả đời')"* | **Ngược chiều**: trong ファーストバイト, **chú rể đút cô dâu miếng lớn** = "anh sẽ nuôi em no cả đời"; **cô dâu đút chú rể miếng nhỏ/vừa** = "em sẽ nấu ăn ngon cho anh". Sách đảo vai | Đề xuất: đổi lại đúng chiều, và ghi rõ 2 ý nghĩa khác nhau cho 2 chiều
- [🟡 SỰ THẬT] `dòng 348, 352` | *"tung hoa cưới + **thả chim hót** ngoài khu vườn"* | 「**バルーンリリース**」 (thả bóng) phổ biến; **thả chim (放鳥)** rất hiếm ở Nhật hiện đại và bị hạn chế vì lý do môi trường/động vật | 🔵 Đề xuất: đổi thành thả bóng bay hoặc バブルシャワー
- [🟡 SỰ THẬT] `dòng 407, 411-412` | Hikidemono: *"phiếu quà catalog + hộp bánh kẹo + 1 món mang ý nghĩa (đũa, khăn)"* | ✅ Chuẩn — đúng cấu trúc 引出物 + 引菓子 + 縁起物. *"Một số catalog giao hàng miễn phí về VN"* — **không chính xác**, catalog gift Nhật hầu như **chỉ giao trong nước Nhật** | 🟡 Đề xuất: *"catalog thường chỉ giao trong Nhật — nhờ đồng nghiệp Nhật nhận hộ hoặc chọn món giao về địa chỉ ở Nhật"*
- [🔵 SỰ THẬT] `dòng 436` | *"Tanaka đến 19:30. **Yukata** thoải mái thay lễ phục đám cưới"* | Chú rể đến 二次会 tại **pub Ginza** mặc **yukata** — rất không tự nhiên. Yukata là đồ ryokan/lễ hội mùa hè, không mặc đi pub Ginza tháng 5. 二次会 chú rể thường mặc suit nhẹ / smart casual | 🟡 thực chất | Đề xuất: đổi thành "áo sơ mi + blazer thoải mái"

**D. Tiếng Nhật không tự nhiên**

- [🟡 TỰ NHIÊN] `dòng 200, 202` | Dũng giải thích đám cưới VN: 「ベトナムの結婚式は、招待客が300-500人、最大1000人とか普通です。料金は新郎新婦が負担。皆さん来てくれた人に goshugi 概念ない、逆に料理を奢る。」 | Câu **thiếu ngữ pháp** (「皆さん来てくれた人に」 lủng củng), trộn romaji 「goshugi」 giữa câu Nhật (phải là 「ご祝儀」), và văn phong danh từ kết (負担/ない) không hợp 敬体 đang dùng | Đề xuất: 「ベトナムの結婚式は招待客が300〜500人、多いと1000人くらい**が普通なんです**。**費用は新郎新婦持ちで**、**ご祝儀という習慣はなくて**、逆に**こちらがごちそうする形ですね**」
- [🟡 TỰ NHIÊN] `dòng 196` | 同席ゲストB: 「ベトナムから?Tanaka が外国の人を**呼の珍しい**!」 | **Lỗi ngữ pháp/typo rõ trong bản JA**: 「呼の珍しい」 không thành câu. Phải là 「**呼ぶのは珍しい**」 | 🔴 thực chất — lỗi typo JA
- [🟡 TỰ NHIÊN] `dòng 428` | Dũng: 「妹はまだ大学生で**結婚先**。」 | 「結婚先」 **không phải từ tiếng Nhật** theo nghĩa "còn xa mới cưới". Có lẽ định viết 「結婚は**まだ先**」 | 🔴 thực chất — lỗi từ vựng JA | Đề xuất: 「妹はまだ大学生なので、結婚は**まだ先ですね**」
- [🟡 TỰ NHIÊN] `dòng 433` | Dũng: 「卒業したら、ティエンファットに来てもらえないか **chairs CTO** に頼んでみたいですが…」 | 「**chairs CTO**」 vô nghĩa — có lẽ là lỗi từ "ハーCTO" hoặc "chairman". Đây là **lỗi bản thảo còn sót** | 🔴 thực chất | Đề xuất: 「**ハーCTO**に頼んでみたいんですが…」
- [🟡 TỰ NHIÊN] `dòng 426` | Dũng: 「…正直、**文化衝撃**でした。」 | 「文化衝撃」 là dịch trực tiếp "culture shock" — tiếng Nhật dùng **「カルチャーショック」** (katakana). 「文化衝撃」 không tự nhiên | Đề xuất: 「正直、**カルチャーショック**でした」

**E. Tiếng Việt**

- [🔴 XƯNG HÔ] `dòng 156` | Nakamura CFO (50-55): *"Hiroshi, Yumi, lời chúc mừng từ tim cho hành trình mới của **2 em**. Kanpai!"* | Gọi "2 em" thì ✅ hợp lý (CFO gọi cấp dưới). Nhưng câu *"lời chúc mừng từ tim"* dịch 「心からお祝い申し上げます」 quá thô | Đề xuất: *"Hiroshi, Yumi, tôi xin chân thành chúc mừng chặng đường mới của hai em. Cạn ly!"*
- [🔴 XƯNG HÔ] `dòng 321, 323` | Matsumoto: *"Việc Dũng được mời, với Tanaka có ý nghĩa thế nào **em** biết không?"* + *"Mời mỗi mình **em** từ Việt Nam"* | Ở đây "em" = **Dũng** ✅ đúng. Không lỗi. Nhưng dòng 323 câu *"Tanaka **đó**, danh sách 80 khách..."* — "đó" thừa, khẩu ngữ | 🔵
- [🔴 XƯNG HÔ] `dòng 442, 444` | Tanaka PMO với Dũng: *"Dũng thực sự cảm ơn **em** hôm nay đến"* (em = Dũng ✅) nhưng *"Speech bố **em**"* → "bố em" = bố của Dũng?? Ý là **bố của Tanaka**. Và dòng 444 *"năm sau qua HCMC **em** muốn gặp bố mẹ Dũng"* → "em" = Tanaka tự xưng | **Trong 2 lượt, chữ "em" mang 3 nghĩa khác nhau** (Dũng / của Tanaka / Tanaka) — người đọc VN không thể theo | Đề xuất: *"Dũng, cảm ơn em đã đến. Bài phát biểu của **ba anh**, gương mặt Yumi — em đã chứng kiến hết. Như người nhà vậy."* / *"Vậy năm sau sang HCMC, **anh** muốn gặp bố mẹ em. Được không?"*
- [🔴 XƯNG HÔ] `dòng 427` | Ōgaki: *"Dũng à, đám cưới Việt Nam của **em gái em** chẳng hạn, gần đây có không?"* | "em gái em" = em gái của Dũng ✅ đúng nghĩa nhưng đọc rối. | Đề xuất: *"Dũng à, ví dụ đám cưới của em gái em, gần đây có không?"* → hoặc *"gần đây bên em có đám cưới nào không, em gái chẳng hạn?"*
- [🟡 XƯNG HÔ] `dòng 62, 69` | 結婚式スタッフ (nhân viên khách sạn): *"**em** xác nhận"*, *"**em** xin lỗi"* | Nhân viên khách sạn Imperial xưng "em" với khách — trong tiếng Việt dịch vụ cao cấp nên là **"chúng tôi"** hoặc **"dạ"** không chủ ngữ | Đề xuất: *"dạ, chúng tôi đã xác nhận"*, *"dạ xin lỗi quý khách"*
- [🟡 XƯNG HÔ] `dòng 252` | 由美 (cô dâu, mới gặp Dũng lần đầu): *"Dũng à, lần sau **em** muốn qua Việt Nam"* | Yumi tự xưng "em" với Dũng — người mới gặp, nam, cùng lứa tuổi. Không phù hợp | Đề xuất: *"Anh Dũng, lần tới **tôi** muốn qua Việt Nam, kéo Hiroshi đi."*
- [🟡 TIẾNG VIỆT] `dòng 200` | *"Khách không có **concept** goshugi"* | Trộn tiếng Anh "concept" vào lời VN | Đề xuất: *"Khách không có khái niệm mừng tiền như goshugi"*
- [🟡 TIẾNG VIỆT] `dòng 442` | *"Như **family**."* | Từ Anh thừa (english_audit đã bắt pattern này) | Đề xuất: *"Như người nhà."*
- [🟡 TIẾNG VIỆT] `dòng 440` | *"**Mọi ngươi**! Em chỉ tham 1 tiếng!"* | **Lỗi chính tả**: "ngươi" → "**người**". Và "tham 1 tiếng" cụt | Đề xuất: *"Mọi người ơi! Tôi ghé 1 tiếng thôi!"*
- [🟡 TIẾNG VIỆT] `dòng 281` | *"Hai mày, **số phận lỏng lẻo** nhỉ!"* | 「運命のいい加減さやな」 = "cái duyên số nó tùy tiện thật" — "số phận lỏng lẻo" không phải tiếng Việt tự nhiên | Đề xuất: *"Hai đứa mày, duyên số nó cũng tùy hứng ghê!"*
- [🟡 TIẾNG VIỆT] `dòng 287` | *"tao học được rằng đời không theo kế hoạch, nhưng **kết cục không tệ**"* | (Xem W-1 cho vấn đề 忌み言葉). Về tiếng Việt: "kết cục không tệ" cho lời chúc đám cưới nghe **hờ hững** | Đề xuất: *"đời chẳng theo kế hoạch, nhưng rồi vẫn dẫn tới điều tốt lành"*
- [🟡 TIẾNG VIỆT] `dòng 163` | *"Hiroshi, **suốt thời ba luôn nghiêm khắc, ba xin lỗi nhé**"* | Câu lủng củng, thiếu chữ ("suốt thời gian qua") | Đề xuất: *"Hiroshi, bao năm nay ba lúc nào cũng nghiêm khắc với con. Ba xin lỗi."*
- [🟡 TIẾNG VIỆT] `dòng 515` | *"**Ấy là** phở mẹ nấu. Nhà."* | Câu kết cả cuốn sách. "Ấy là" cổ và cụt, không rõ nghĩa | Đề xuất: *"Rồi sẽ là tô phở mẹ nấu. Là nhà."*
- [🟡 TIẾNG VIỆT] `dòng 30` | *"Cho ít hơn là thất lễ, cho nhiều hơn là **lấn át cô dâu chú rể**"* | Dòng 30 bản dịch nghiêng khác bản 「」 ở cùng dòng (bản trên ghi "lấn át", bản dưới ghi "lấn át cô dâu chú rể") | Hai bản không khớp — xem F bên dưới | 🟡

**F. Nhất quán**

- [🔴 NHẤT QUÁN] `dòng 25-37` | Toàn bộ tình huống 1 là **hội thoại tiếng Việt** giữa Dũng và Hương, nhưng được trình bày trong cột 「Câu」 với format 「...」 rồi lặp lại y hệt ở dòng nghiêng | **9 lượt thoại liên tiếp không có một chữ tiếng Nhật nào**. Với sách song ngữ dạy tiếng Nhật, một tình huống trọn vẹn không có tiếng Nhật là **lãng phí** — và về mặt học tập, đây chính là chỗ nên dạy từ vựng 御祝儀/袱紗/披露宴/二次会 bằng tiếng Nhật | Đề xuất: giữ khung Việt-Việt (hợp lý về mặt câu chuyện) nhưng **chèn thuật ngữ JA có furigana** vào lời Hương
- [🟡 NHẤT QUÁN] `dòng 26 vs 27, 30, 34, 35` | Bản trong 「」 và bản in nghiêng **khác nhau về từ** ở 5 chỗ: dòng 26 "Đó là cấp mời cao" vs "Đây là cấp mời cao"; dòng 30 "Đừng cho ít hơn — thất lễ" vs "Cho ít hơn là thất lễ"; dòng 35 "goshugi là đủ" vs "goshugi đủ"; dòng 37 "coi em là người nhà" vs "coi em như người nhà rồi" | Format sách yêu cầu 2 bản khớp nhau. **Đây là lỗi biên tập lặp lại** | Đề xuất: đồng bộ toàn bộ
- [🟡 NHẤT QUÁN] `_front_matter.md dòng 40` ghi ch08 = **11 tình huống**; `chương.md` = 11 ✅; `draft` = 11 ✅ | Khớp
- [🟡 NHẤT QUÁN] `_front_matter.md dòng 42` | *"Tổng: **94 tình huống**"* | Thực tế: ch01-04 (theo front matter: 10+12+11+14 = 47) + ch05-08 (13+11+12+11 = **47**) = **94** ✅ Khớp
- [🟡 NHẤT QUÁN] `dòng 3` | *"vợ là **nhà thiết kế**, gặp nhau qua bạn chung"* nhưng `dòng 112` linh mục đọc tên cô dâu là **「Sato Yumi」/ 佐藤由美** | Ch08 dòng 243 Yumi nói tiếng Anh "đang luyện" — nghề designer thì mức tiếng Anh này hợp lý. ✅ Không lỗi. Nhưng **họ 佐藤 trùng với `sato_kyushu` (佐藤先生, Fukuoka) trong voice_profiles** và trùng 「関東銀行の佐藤」 ở ch07 dòng 345 | 🟡 3 nhân vật họ Satō | Đề xuất: đổi họ cô dâu
- [🟡 NHẤT QUÁN] `dòng 3` bối cảnh: Tanaka *"vợ là nhà thiết kế, **gặp nhau qua bạn chung**"* ✅ khớp `dòng 275` (bạn giới thiệu) ✅ Tốt
- [🟡 NHẤT QUÁN] `dòng 494` | Recap: *"Ghi chú **chế độ ăn của Tanaka (chay)** — áp dụng cho bữa tối gặp gia đình"* | ✅ **Cross-reference xuất sắc** với ch05 tình huống 3. Điểm sáng nhất về tính liên tục
- [🟡 NHẤT QUÁN] `dòng 503-509` | Recap: *"Sách 09 chương 8 — chương cuối hành trình... Khoảng **3 năm** câu chuyện trong sách"* | Nhưng `_front_matter.md dòng 42` ghi *"mạch truyện kéo dài khoảng **12 tháng** (5/2026 → 5/2027)"* | **Mâu thuẫn trực tiếp 3 năm vs 12 tháng**. Ngoài ra dòng 532 (ch07) ghi *"**3 năm trước** Phase 1 hồi hộp khi gửi mail cho Matsumoto"* nhưng ch08 dòng 197 Dũng nói 「**2年前**、Phase 4 プロジェクトで」 | 🔴 thực chất — 3 mốc thời gian mâu thuẫn | Đề xuất: **chốt một mốc** (khuyến nghị: sách 09 = 12 tháng, còn "2-3 năm" là tính cả sách 01-08)
- [🟡 NHẤT QUÁN] `dòng 498` | Recap: *"6 tháng làm việc tại Tokyo từ **Q1 2027**"* nhưng ch07 dòng 507 ghi *"Tokyo onsite 6 tháng **đầu 2027**"* và ch07 diễn ra **tháng 3/2027**, ch08 **tháng 5/2027** | Nếu onsite bắt đầu Q1 2027 (tháng 1-3) thì đến tháng 5/2027 (ch08) Dũng **đã đang ở Tokyo**, không thể "bay từ HCMC sang 1 đêm" như dòng 3 mô tả | 🔴 thực chất — mâu thuẫn dòng thời gian | Đề xuất: đổi onsite sang **Q3 2027** (sau đám cưới)

---

## Lỗi hệ thống (lặp nhiều chương)

### HT-1 🔴 Xưng hô tiếng Việt — nhân vật Nhật tự xưng "em" (30 lượt)

Đây là **lỗi nghiêm trọng nhất và phổ biến nhất**. Brief đã cảnh báo (sách 08 cùng bộ dính hàng loạt) và ch05-08 dính y hệt.

| Chương | Số lượt | Dòng | Nhân vật lệch nặng nhất |
|---|---|---|---|
| ch05 | 9 | 256, 326, 370, 393, 400, 407, 437, 445, 510 | Matsumoto (3 lượt) — xưng "em" với Hà CTO |
| ch06 | 1 | 124 | 女将 65 tuổi xưng "em" với khách |
| ch07 | 12 | 185, 218, 306, 308, 315, 347, 354, 384, 399, 431, 436, 443 | Nakamura CFO — "em"/"anh" lẫn lộn trong 1 câu |
| ch08 | 8 | 62, 69, 156, 252, 321, 427, 442, 444 | Tanaka — chữ "em" mang 3 nghĩa trong 2 lượt |

**Nguyên tắc sửa đề xuất (dùng chung cho cả 4 chương):**

| Người nói | Người nghe | Tự xưng | Gọi đối phương |
|---|---|---|---|
| Matsumoto / Ōgaki / Nakamura (45-55) | Dũng, Linh, Hải (25-30) | **tôi** | em / cậu |
| Matsumoto / Ōgaki | Hà CTO, Hương (ngang) | **tôi / chúng tôi** | anh / chị |
| Tanaka, Inoue, Sasaki (30-42) | Dũng (ngang-trên) | **tôi** | anh Dũng / Dũng |
| Nhân viên dịch vụ (女将, staff, lễ tân) | khách | **chúng tôi / (bỏ chủ ngữ) + dạ** | quý khách / anh |
| Khách hàng tiềm năng, phóng viên | Dũng | **tôi** | anh Dũng |
| Dũng | tất cả người Nhật vai trên | **em** ✅ giữ nguyên | anh |

### HT-2 🔴 Thiếu nghi thức cốt lõi ở 3/4 chương

| Chương | Nghi thức thiếu | Mức độ |
|---|---|---|
| ch05 来訪 | 上座/下座 (phòng họp, nhà hàng, **xe ô tô**), 応接室, thứ tự お茶出し, tiễn khách ra thang máy | 🔴 — brief nêu đích danh cả 5 |
| ch06 温泉 | かけ湯, khăn không nhúng bồn (+lý do), 浴衣 右前 | 🔴 — brief nêu đích danh |
| ch07 発表会 | 名刺交換 đúng thứ tự + cấm ghi lên danh thiếp trước mặt | 🔴 — brief nêu đích danh |
| ch08 結婚式 | 忌み言葉 (toàn bộ), 袱紗 | 🔴 — brief nêu đích danh |

**Đặc điểm chung**: các chương **có cảnh** đúng bối cảnh (có phòng họp, có yukata, có trao danh thiếp, có quầy 受付) nhưng **Bí quyết đi kèm lại nói chuyện khác** (bảng đón, hình xăm, ghi chú danh thiếp, chiều tiền). Tức là cấu trúc scene đúng nhưng **nội dung dạy chệch trọng tâm**.

### HT-3 🟡 Lượt thoại quá dài / thiếu 相槌 (cả 4 chương)

Đo được: ch05 dòng 465 (~200 ký tự JA), ch07 dòng 314 (~330 ký tự JA), ch05 dòng 78, ch06 dòng 217, ch08 dòng 200. Không có 相槌 (「なるほど」「ええ」「そうですね」) xen giữa ở bất kỳ chương nào một cách hệ thống. Với sách tên "Real Dialogues" và lời nói đầu hứa *"đúng như lúc bạn thật sự đi cùng khách hàng"* (front matter dòng 15), đây là lệch định vị sản phẩm.

### HT-4 🟡 Tiếng Anh thừa — bổ sung ngoài english_audit.md

`english_audit.md` bắt được 29 từ (ch05: 3, ch06: 3, ch07: 7, ch08: 5 = 18 từ trong phạm vi B2). **Phát hiện thêm 16 từ chưa được bắt:**

| Chương | Dòng | Từ bổ sung |
|---|---|---|
| ch05 | 120, 136, 392, 406, 407 | handle, organize, frank, co-ownership, board, outsourcing |
| ch07 | 406, 431, 433, 279, 273, 399 | recovery, signal, take, audience, panel discussion, crash, production environment |
| ch08 | 149, 200, 442 | transformation, concept, family |

### HT-5 🟡 Lỗi typo / từ vựng sai trong bản tiếng Nhật (5 chỗ — cần ưu tiên)

| Chương | Dòng | Sai | Đúng |
|---|---|---|---|
| ch07 | 194 | 「ヒアップ」 | 「ヘッズアップ」 hoặc 「事前のお知らせ」 |
| ch08 | 196 | 「呼**の**珍しい」 | 「呼**ぶのは**珍しい」 |
| ch08 | 428 | 「結婚**先**」 | 「結婚は**まだ先**」 |
| ch08 | 433 | 「**chairs CTO**」 | 「**ハーCTO**」 |
| ch08 | 426 | 「文化衝撃」 | 「カルチャーショック」 |

Đây là **lỗi bản thảo còn sót**, không phải lựa chọn phong cách. Nên sửa đầu tiên vì rẻ và rõ.

### HT-6 🟡 Bản 「」 và bản dịch nghiêng không khớp

Phát hiện ở ch06 dòng 135, ch08 dòng 26/30/34/35/37. Format sách quy định 2 bản là cùng một câu. Cần rà toàn bộ, đặc biệt các lượt **tiếng Việt** (nơi nội dung bị viết 2 lần thủ công).

### HT-7 🟡 zun_inner không được dùng đúng convention

`voice_profiles.json` định nghĩa speaker `zun_inner` cho nội tâm Dũng (field `ja` rỗng, `vi` chứa monologue, render italic, **skip-tts**). Nhưng ch05-08 viết **toàn bộ** nội tâm trong khối `*[...]*` chung với mô tả cảnh — không tách speaker. Ví dụ ch05 dòng 210 (*"Dũng nuốt nước miếng..."*), ch07 dòng 71-81 (cả tình huống 2 là nội tâm), ch08 dòng 152. Hệ quả: **pipeline TTS không phân biệt được** cái nào là narration cảnh (cần đọc) và cái nào là nội tâm Dũng (skip-tts).

---

## Bảng lỗi sự thật đã tra WebSearch

| # | Chương/dòng | Nội dung sách | Kết quả tra cứu | Kết luận |
|---|---|---|---|---|
| 1 | ch08/287 | 「悪い結果は来ない」 trong 祝辞 | 「悪い」 nằm trong 忌み言葉 nhóm 不幸 ([zexy](https://zexy.net/article/app002004019/), [mynavi](https://wedding.mynavi.jp/contents/press/detail/post-165/)) | 🔴 **SAI** |
| 2 | ch08/389 | 「ベトナム帰る?」 tại cửa tiễn khách ngày cưới | 「帰る」 là 忌み言葉 nhóm 別れ, thay bằng 「ご出発」 | 🔴 **SAI** |
| 3 | ch08/226 | 「入刀」 (JA) | ✅ Đúng — 入刀 tồn tại chính vì 「切る」 là 忌み言葉. Nhưng sách không dạy điều này | 🔴 **THIẾU GIẢI THÍCH** |
| 4 | ch08 toàn chương | Không có 袱紗 | 袱紗 là bắt buộc khi mang 御祝儀 đến quầy 受付 | 🔴 **THIẾU** |
| 5 | ch08/90 | "Fukuzawa Yukichi trên tờ ¥10,000" | Từ 7/2024 tờ ¥10,000 in **渋沢栄一**. Chương diễn ra 2027 | 🟡 **LỖI THỜI** |
| 6 | ch08/230 | Cô dâu đút chú rể miếng to = "nuôi no cả đời" | Ngược: **chú rể đút cô dâu** miếng to = "anh nuôi em no cả đời"; cô dâu đút chú rể = "em nấu ngon cho anh" | 🟡 **ĐẢO CHIỀU** |
| 7 | ch06 toàn chương | Không có かけ湯 / khăn không nhúng bồn | Cả hai là quy tắc onsen cơ bản nhất ([rakuten](https://corp.rakuten.co.jp/event/japan-living/articles/009/), [ikyu](https://www.ikyu.com/concierge/19359)) | 🔴 **THIẾU** |
| 8 | ch06/381 | "thay đồ yukata" không nói chiều vạt | 浴衣 phải **右前** (vạt phải áp trước); **左前 = 死装束** ([samurai-sauna](https://samurai-sauna-magazine.com/ja/guides/why-wear-yukata-in-ryokan)) | 🔴 **THIẾU** |
| 9 | ch06/164,171 | 香箱蟹 trong kaiseki tháng 1 | Mùa 香箱蟹 chỉ 6/11–31/12 (luật Ishikawa/Fukui) → tháng 1 đã đóng mùa | 🔴 **SAI MÙA** |
| 10 | ch06/164 | 冬瓜 trong kaiseki tháng 1 | 冬瓜 là rau **mùa hè** (thu hoạch 6-9月), kaiseki dùng vào hè | 🔴 **SAI MÙA** |
| 11 | ch06/189 | Thứ tự kaiseki đặt お椀 gần cuối | 会席 chuẩn: 先付 → **椀物** → 向付 → 焼物 → 煮物 → 揚物 → 蒸物 → 御飯・止椀 → 水菓子. 椀物 đứng **thứ 2** | 🔴 **SAI THỨ TỰ** |
| 12 | ch06/182 | 蛤 dịch "con hàu" | 蛤 = hamaguri = **ngao/nghêu vỏ cứng**; hàu = 牡蠣 | 🔴 **SAI DỊCH** |
| 13 | ch05 toàn chương | Không có 上座/下座, 応接室, お茶出し, tiễn thang máy | 席次 (xa cửa nhất = 上座), お茶出し (từ 上座 xuống), tiễn đến thang máy + cúi đến khi cửa đóng — đều là chuẩn 来客応対 ([nikkei](https://www.nikkei.com/article/DGXNASFK30035_Q0A430C1000000/), [v-spirits](https://v-spirits.com/)) | 🔴 **THIẾU** |
| 14 | ch05/73 | "tỷ lệ tai nạn HCMC thấp hơn Tokyo" | Không đúng — tỷ lệ tử vong giao thông VN cao hơn Nhật nhiều lần | 🟡 **SAI SỰ THẬT** |
| 15 | ch07/346 | Dũng nhận danh thiếp trước rồi mới đưa của mình | Quy tắc 名刺交換: bên vai dưới/bên bán **đưa trước**, hoặc 同時交換 | 🔴 **SAI NGHI THỨC** |
| 16 | ch07/350,369 | Dạy "ghi chú + kẹp danh thiếp ngay sau mỗi cuộc" | Ghi/viết liên quan danh thiếp trong tầm nhìn người đưa là 失礼 | 🔴 **DẠY SAI** |
| 17 | ch08/125 | "70% đám cưới Nhật theo phong cách Thiên Chúa giáo" | Khảo sát ゼクシィ: キリスト教式 ~50-60% và đang giảm (人前式 tăng) | 🔵 **HƠI CAO** |
| 18 | ch08/412 | "catalog giao hàng miễn phí về VN" | Catalog gift Nhật hầu như chỉ giao nội địa Nhật | 🟡 **SAI** |
| 19 | ch08/348 | "thả chim hót" tại đám cưới | 放鳥 rất hiếm ở Nhật hiện đại (lý do môi trường); phổ biến là バルーンリリース / バブルシャワー | 🔵 |
| 20 | ch07/67 | "Pacifico Hotel" | Pacifico Yokohama là trung tâm hội nghị; khách sạn liền kề là InterContinental Yokohama Grand | 🟡 |

---

## 10 lỗi cần sửa gấp nhất

| # | Mức | Vị trí | Lỗi | Vì sao gấp |
|---|---|---|---|---|
| 1 | 🔴 | ch08 — toàn chương (Bí quyết) | **Thiếu hoàn toàn 忌み言葉** | Trục văn hoá số 1 của đám cưới Nhật. Người đọc áp dụng sách này đi dự cưới thật sẽ mắc lỗi nghiêm trọng. Đồng thời sách **chứa** 忌み言葉 ở dòng 287 và 389 mà không nhận ra |
| 2 | 🔴 | 30 lượt, cả 4 chương | **Nhân vật Nhật xưng "em"** | Lỗi hệ thống HT-1. Phá vỡ toàn bộ cảm giác vai vế — thứ mà chính cuốn sách này đang dạy. Nặng nhất: Nakamura CFO (ch07/218) xưng "em" rồi "anh" trong một câu |
| 3 | 🔴 | ch06/164, 171, 189 | **Kaiseki sai mùa + sai thứ tự** (香箱蟹 + 冬瓜 tháng 1; 椀物 đặt cuối) | Kaiseki lấy 旬 làm linh hồn. Sai mùa = người Nhật thấy ngay. Sách lại đang **dạy** thứ tự kaiseki trong Bí quyết → dạy sai |
| 4 | 🔴 | ch06/203, 381 | **Thiếu かけ湯 + khăn không nhúng bồn + 浴衣 右前** | 3 quy tắc onsen cơ bản nhất, brief nêu đích danh. 左前 = áo liệm là lỗi mang nghĩa cực xui |
| 5 | 🔴 | ch05 — toàn chương | **Thiếu 上座/下座 + 応接室 + お茶出し + tiễn thang máy** | Chương tên là 来訪 (tiếp khách) mà thiếu chính bộ nghi thức 来客応対. Có sẵn 4 cảnh ngồi bàn để cài vào |
| 6 | 🔴 | ch07/346, 350, 369 | **名刺交換 sai thứ tự + dạy ghi chú danh thiếp tại chỗ** | Không chỉ thiếu mà đang **dạy ngược**. Người đọc làm theo sẽ mất điểm ngay lần trao danh thiếp đầu |
| 7 | 🔴 | ch08 — tình huống 2 + Bí quyết | **Thiếu 袱紗** | Chương có nguyên một cảnh quầy 受付 chi tiết (dòng 60-83) — đúng chỗ để dạy 袱紗 mà bỏ qua. Không dùng fukusa là thất lễ nhìn thấy được |
| 8 | 🔴 | ch07/194, ch08/196, 428, 433, 426 | **5 lỗi typo/từ vựng trong bản JA** (ヒアップ, 呼の珍しい, 結婚先, chairs CTO, 文化衝撃) | Lỗi bản thảo còn sót — rẻ nhất để sửa, nhưng làm hỏng uy tín sách nhanh nhất vì người học sẽ chép nguyên |
| 9 | 🔴 | ch08/275, 281, 287 | **Nội dung 友人スピーチ vi phạm** (chú rể chê cô dâu + 「悪い」) | Speech đám cưới hạ thấp cô dâu trước 両家親族 là NG hạng nặng. Sách trình bày như ví dụ tốt ("Speech hay" — dòng 291) |
| 10 | 🔴 | ch07/507 vs ch08/3, 498, 503 + front matter/42 | **Mâu thuẫn dòng thời gian** (Tokyo onsite Q1 2027 vs ch08 tháng 5/2027 Dũng bay từ HCMC; "3 năm" vs "12 tháng" vs "2 năm") | Chương 08 là chương kết cả sách — mâu thuẫn ở đây phá vỡ mạch truyện 8 chương. Cần chốt trước khi sửa các chương khác |

---

## Ghi chú cho giai đoạn SỬA

### Thứ tự đề xuất

**Bước 1 — Sửa rẻ, rủi ro thấp (làm trước):**
1. 5 lỗi typo JA (HT-5) — sửa thẳng, không cần quyết định
2. 16 từ tiếng Anh thừa bổ sung (HT-4) — cập nhật `_pipeline/english_audit.md` trước rồi sửa theo
3. Đồng bộ bản 「」 ↔ bản dịch nghiêng (HT-6)
4. `_front_matter.md` dòng 25: "Itoki" → "Ito"

**Bước 2 — Chốt quyết định trước khi sửa (cần người quyết):**
- **Q1. Dòng thời gian**: sách 09 là 12 tháng hay 3 năm? Tokyo onsite bắt đầu khi nào? → ảnh hưởng ch07 recap + ch08 bối cảnh + front matter
- **Q2. voice_profiles vs nội dung**: sửa nội dung theo hồ sơ, hay cập nhật hồ sơ theo nội dung? Cụ thể: `tanaka_pmo` ("hay dùng tiếng Anh tech term") vs ch05/326 (Tanaka yếu tiếng Anh kỹ thuật); `oogaki_sales` ("sharp negotiator") vs ch06 (Ōgaki hoàn toàn mềm)
- **Q3. Mức tự chứa**: ch06 tham chiếu "sách 07" 5 lần. Có chấp nhận sách 09 phụ thuộc sách 07 không? Nếu không → phải bổ sung khá nhiều nội dung onsen

**Bước 3 — Sửa xưng hô hàng loạt (HT-1)**: dùng bảng nguyên tắc ở mục HT-1. Đây là 30 điểm sửa, nên làm một lượt bằng script + rà tay, không sửa lẻ tẻ.

**Bước 4 — Bổ sung nghi thức thiếu (HT-2)**: 4 khối Bí quyết mới. Đề xuất nội dung khung:

- **ch05, sau tình huống 4 hoặc 5** — *"Bí quyết — 席次: xe, phòng họp, nhà hàng"*: nguyên tắc xa cửa nhất = 上座; ô tô có tài xế (ghế sau bên trái tài xế = 上座, ghế phụ = 下座); ô tô do chủ nhà lái (ghế phụ = 上座); thang máy (trong cùng bên trái bảng điều khiển = 上座, người bấm nút = 下座). Thêm お茶出し: rót ở pantry không rót tại bàn, đặt bên phải khách, từ 上座 xuống, coaster gỗ vân dọc hướng khách.
- **ch05, tình huống 13** — bổ sung: tiễn khách ra thang máy, **cúi đầu cho đến khi cửa đóng hẳn**; nếu tiễn ra xe thì cúi cho đến khi xe khuất.
- **ch06, sau tình huống 6** — *"Bí quyết — 3 quy tắc onsen không được sai"*: (1) かけ湯 từ chân lên, 10-20 gáo, trước khi vào bồn; (2) khăn nhỏ **không bao giờ chạm nước bồn** — để lên đầu hoặc mép bồn, lý do là sợi vải mang vi khuẩn; (3) tóc dài phải búi. Thêm khối *"浴衣 — vạt phải áp trước"*: nhìn từ người mặc, **thân bên phải áp vào người trước**, thân trái đè lên trên; ngược lại (左前) là cách mặc cho **người đã mất**; obi nam buộc dưới rốn, nữ buộc ngang eo.
- **ch07, tình huống 9** — *"Bí quyết — 名刺交換"*: bên vai dưới / bên bán đưa trước; đưa 2 tay, mặt chữ hướng người nhận, giữ thấp hơn nếu vai dưới; 同時交換 = tay phải đưa tay trái nhận; nhận xong đọc tên thành tiếng một lần; đặt lên bàn theo sơ đồ chỗ ngồi trong suốt buổi họp, **không cất ngay vào túi**; **tuyệt đối không viết lên danh thiếp trước mặt người đưa** — sửa lại lời khuyên hiện tại thành "ghi ở chỗ khuất".
- **ch08, sau tình huống 1 hoặc 4** — *"Bí quyết — 忌み言葉: những từ tuyệt đối tránh"*: 3 nhóm (別れ / 不幸 / 重ね言葉) + bảng thay thế + quy ước không dùng dấu chấm phẩy trong lời chúc viết + giải thích 「ケーキ入刀」 tại sao không nói 「切る」 + lưu ý số 4 và 9. Đây là khối **quan trọng nhất** cần thêm trong toàn bộ 4 chương.
- **ch08, tình huống 2** — bổ sung 袱紗: bọc shugi-bukuro trong fukusa, tại quầy mở fukusa ra, đặt shugi-bukuro lên fukusa đã gấp rồi đưa 2 tay; màu **đỏ/hồng/tím** cho 慶事, **xanh/xám/lục** là 弔事 — dùng nhầm màu là lỗi rõ.

**Bước 5 — Sửa nội dung sai sự thật**: 20 mục trong bảng WebSearch. Nhóm ch06 kaiseki (mục 9-12) nên sửa cùng lúc vì liên quan nhau.

**Bước 6 — Tự nhiên hoá hội thoại (HT-3)**: đây là việc tốn công nhất và ảnh hưởng thẩm mỹ nhất. Đề xuất làm **sau cùng**, và làm chọn lọc: ưu tiên 5 lượt dài nhất (ch07/314, ch05/465, ch05/78, ch06/217, ch08/200) + thêm 相槌 vào mỗi tình huống ít nhất 1 lượt.

### Điều KHÔNG nên đụng

- **Cấu trúc scene** — 13/11/12/11 khớp hoàn toàn với `draft/*_scenes.json` và front matter. Đừng thêm/bớt tình huống.
- **Các điểm sáng đã ghi nhận**: ch05 tình huống 1 (bảng đón sai kanji), ch05 tình huống 3 (Hương xử lý Tanaka ăn chay), ch05 tình huống 8 (Hải đổi ngôn ngữ), ch06 tình huống 4 (上がり框), ch06 tình huống 6 (chính sách hình xăm), ch06 tình huống 9 (Ōgaki tâm sự — nội dung hay dù lệch hồ sơ), ch07 tình huống 5 (chuyển hướng phóng viên), ch07 tình huống 10 (demo treo), ch08 tình huống 8 (Matsumoto giải thích ý nghĩa lời mời), ch08 recap cross-reference chế độ ăn Tanaka.
- **Format 「」 + dịch nghiêng + furigana** — nhất quán tốt trên cả 4 chương.
- **`zun_inner`**: đề xuất HT-7 là **thay đổi convention**, có ảnh hưởng pipeline TTS → cần xác nhận với người phụ trách pipeline trước, đừng sửa tiện tay.

### Rủi ro cần lưu ý khi sửa

- Sửa xưng hô (HT-1) có thể **phá vỡ ý đồ giọng điệu** ở vài chỗ Matsumoto/Ōgaki cố tình thân mật (ch06). Cần phân biệt: **tự xưng** phải sửa (Nhật không xưng "em"), **cách gọi Dũng** thì tuỳ độ thân (gọi "em"/"cậu" đều hợp lý).
- Thêm 4-6 khối Bí quyết mới sẽ làm 4 chương dài thêm ~200-300 dòng. Nếu có ràng buộc độ dài, ưu tiên: 忌み言葉 (ch08) > onsen 3 quy tắc (ch06) > 席次+お茶出し (ch05) > 名刺交換 (ch07).
- Sửa kaiseki ch06 (mùa + thứ tự) sẽ đụng 4 lượt thoại liên tiếp (164, 171, 173, 182) + 1 khối Bí quyết (189) + 1 đoạn narration (166). Làm trọn gói, đừng sửa lẻ.

---

*Hết báo cáo B2. Tổng 89 lỗi (🔴31 / 🟡44 / 🔵14) trên 2.142 dòng của 4 chương.*
