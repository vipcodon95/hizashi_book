# Sách 08 — VN Review v1.0

**Ngày review:** 2026-04-26
**Reviewer:** Editor VN/JP bilingual pass
**Scope:** 11 rules sample (1, 3, 9, 11, 13, 28, 32, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 45, 47, 51) + Phụ lục B + E + tất cả conversation.json sample. Tổng output 11,769 dòng.

---

## Score: 7.0/10

**Strengths.** rule.md text VN tự nhiên, nhiều idiom đúng ("bridge", "đổ topic", "rabbit hole"), depth knowledge regional rất tốt, cultural sensitivity vùng cấm (chiến tranh / chính trị) có warning rõ. Phụ lục E pocket reference 47 prefectures = artifact đặc sắc, thông tin đúng.

**Weaknesses.** Một bug **systemic và serious** ở `conversation.json` — 36/50 file có lỗi xưng hô: khách Nhật (Matsumoto, Nakamura, Ōgaki, Yamamoto, Hiroshi, v.v.) tự xưng "anh/em" trong lời dịch VN — đây là **chính lỗi cũ ở sách 06** mà user đã yêu cầu phòng tránh. Một số fact errors (mâm ngũ quả, năm Ngọ, robusta region). Mục lục có lỗi đánh số trùng. Một số "máy dịch" feel còn sót.

---

## P0 Critical (xưng hô khách Nhật + lỗi sự thật)

### P0-1. Khách Nhật tự xưng "anh"/"em" — SYSTEMIC, 36/50 file conversation.json

**Quan trọng nhất** — lỗi cũ sách 06 lặp lại. Cast khách Nhật (Matsumoto, Nakamura, Ōgaki, Tanaka, Hiroshi, Yamamoto, Sato, Kobayashi, Ito, Kato) tự xưng "anh" hoặc "em" trong VN translation thay vì "tôi".

Bằng chứng cụ thể:

- **rule_01_タイミング/conversation.json L27** — Ōgaki: "新大阪からの新幹線で爆睡してしまって" → VN: "*Trên Shinkansen từ Shin-Osaka **anh** ngủ say lắm*" → SAI, phải là "*tôi ngủ say lắm*".
- **rule_01_タイミング/conversation.json L29** — Ōgaki: "こちらこそ。じゃあ始めよっか。" → VN: "***Anh** cũng vậy. Bắt đầu nhé.*" → SAI, phải "*Tôi cũng vậy*" hoặc "*Bên tôi cũng vậy*".
- **rule_01_タイミング/conversation.json L39** — Nakamura CFO: "今度札幌に来るときは円山公園を案内するよ" → VN: "*Lần sau đến Sapporo **anh** dẫn đi công viên Maruyama*" → SAI, phải "*tôi dẫn đi*".
- **rule_01_タイミング/conversation.json L50** — Matsumoto: "次回時間あったらご案内しますよ" → VN: "*Lần sau có thời gian **anh** dẫn đi*" → SAI.
- **rule_34_フォー/conversation.json L25** — Matsumoto: "来月ハノイ出張なんだけど" → VN: "*Tháng sau **anh** đi Hà Nội công tác*" → SAI.
- **rule_34_フォー/conversation.json L41** — Nakamura: "札幌でも飲んだ後の味噌ラーメンが定番だから" → VN: "*Ở Sapporo cũng vậy, nhậu xong miso ramen là chuẩn*" — không có self-ref, OK; nhưng L43 "それ写真撮って妻に送るわ" → VN: "***Anh** sẽ chụp gửi vợ*" → SAI.
- **rule_34_フォー/conversation.json L29** — Yamamoto: "それ全然知らんかった" → VN: "***Em** chả biết luôn!*" → SAI nặng, Yamamoto là khách Nhật không thể tự xưng "em".
- **rule_35_テト/conversation.json L56** — Yamamoto: "写真見てみたい" → VN: "***Em** muốn xem ảnh*" → SAI.
- **rule_35_テト/conversation.json L75** — Matsumoto: "こういう話を聞けるのが本当に嬉しいよ" → VN: "***Anh** rất vui*" → SAI.

**Fix:** Bulk find/replace trong 36 file `conversation.json` cho speakers `matsumoto`, `nakamura_cfo`, `oogaki_sales`, `tanaka`, `hiroshi_chugoku`, `yamamoto_kansai`, `sato_fukuoka`, `kobayashi_okinawa`, `ito_nagoya`, `kato_gifu` — đổi self-reference "anh"/"em" → "tôi". Hoặc tốt hơn: review từng câu khi VN dịch ngôi 1 của JP speaker (vì có khi không phải self-ref mà là address Dũng = "em" thì OK).

### P0-2. Mâm ngũ quả — sai mapping JP-VN trong rule.md

`rule_35_テト/rule.md` L69 (Scenario 3):
> 「マンゴー(Cầu)・グァバ(Sung)・パパイヤ(Đủ)・ココナッツ(Dừa)・ジャックフルーツ(Xoài)で読むと『十分に欲しいだけ』」

→ **SAI:** "Cầu" = Mãng cầu (custard apple/soursop), KHÔNG phải mango. "Sung" = quả sung (fig), KHÔNG phải guava. "Xoài" = mango, KHÔNG phải jackfruit. Đúng phải là:
- Cầu = 釈迦頭 / カスタードアップル (Mãng cầu)
- Sung = イチジク (Sung)
- Vừa Đủ = パパイヤ (Đu đủ)
- Dừa = ココナッツ
- Xài = マンゴー (Xoài)

(Câu chuẩn "Cầu Sung Vừa Đủ Xài" — chú ý "Vừa Đủ" cũng có 2 từ.)

`conversation.json` L59 ngược lại đúng: "*mãng cầu, sung, đu đủ, dừa, xoài*" → VN side OK; chỉ rule.md JP mapping sai.

**Fix:** Sửa rule.md L69 — thay マンゴー(Cầu) → カスタードアップル/釈迦頭(Cầu), グァバ(Sung) → イチジク(Sung), ジャックフルーツ(Xoài) → マンゴー(Xoài).

### P0-3. Mục lục — đánh số trùng Phần III và IV

`meta/mục_lục.md`:
- L98: rule 33 = Memory bank (Phần III)
- L108: rule 33 = Phở (Phần IV)

→ Phở phải là rule **34**, các rule sau dồn lên 1: Tết = 35, Cà phê = 36, Khí hậu = 37, Thành phố = 38, Lễ hội = 39, Nhà hàng Nhật = 40, Cảnh đẹp = 41. Phần V: Izakaya = 42, ..., Self-review = 51.

File system structure đúng (rule_34_フォー đến rule_41_観光), nhưng mục_lục.md L108-115 bị off by 1 (33 → 40 thay vì 34 → 41).

**Fix:** Sửa số trong Phần IV + Phần V của mục_lục.md.

### P0-4. Cà phê 中部高原 — chỉ mention Đà Lạt, miss Buôn Ma Thuột

`rule_36_コーヒー/rule.md` L31: "**標高1000m以上の中部高原(ダラット周辺)で育てたロブスタ**".

→ Đắk Lắk / Buôn Ma Thuột là vùng cà phê robusta lớn nhất VN (~50% sản lượng), không phải Đà Lạt. Đà Lạt thuộc Lâm Đồng nổi tiếng arabica hơn robusta. Vocab table L134 đúng ("Buôn Ma Thuột, Đà Lạt") nhưng body text sai trọng tâm.

**Fix:** Đổi ダラット周辺 → ブオンマトート・ダラット周辺 hoặc 中部高原のブオンマトート・ダクラク省周辺.

### P0-5. Hà Nội mùa đông phóng đại

`rule_37_気候/rule.md` L29: "ハノイは1月だと10度切ること多いです" — "10度切ること多い" hơi phóng đại. Trung bình HN tháng 1 = 16-18°C; có đợt rét xuống <10°C nhưng không "thường" liên tục.

L35: "**6-8月は40度近く**" — HN summer thường 35-38°C; chạm 40°C là extreme rare event.

**Fix:** "1月の寒波で10度切ることもあります" (cảnh báo chứ không "thường"). "夏は35度を超える日が多く、稀に40度近くまで上がります".

### P0-6. Năm Ngọ tự xưng giáp 1995 — minor inconsistency

`rule_35_テト/rule.md` L50: "私は1995年生まれの**亥年(いのしし)**ですが、ベトナムでは『豚年』なんですよ" → 1995 = năm Ất Hợi/Hợi/Pig — đúng, fine.

Nhưng "**3 con giáp VN khác JP**" annotation 【2】 L54: "Sửu = trâu (vs ushi/bò), Mão = mèo (vs u/thỏ), Hợi = lợn (vs i/lợn rừng), **Mùi = dê (vs cừu)** — JP có 4 điểm khác nhỏ" — note nói **4 điểm khác**. Nhưng dialogue L46 của Dũng nói "**2つだけ違います**". Inconsistency: dialogue L46 nói 2, annotation nói 4.

→ Thật ra VN-JP khác **4 con**: Sửu (trâu vs bò), Mão (mèo vs thỏ), Mùi (dê vs cừu), Hợi (lợn vs lợn rừng). Dũng nói "2つだけ" là sai fact.

**Fix:** Đổi dialogue L46 thành "**4つ違いがあります、特に大きく違うのは2つで、牛の代わりに水牛、兎の代わりに猫**" hoặc kể đủ 4.

---

## P1 Important (dịch máy, không tự nhiên, từ vựng sai)

### P1-1. カラスミ ≠ trứng cá muối làm nhân bánh trung thu

`rule_39_祭り/rule.md` L35: "**蓮の実、カラスミ卵黄、緑豆あん、カスタード**". Vocab table L144: "カラスミ ... = trứng muối VN bridge".

→ Nhân bánh trung thu thập cẩm dùng **trứng muối lòng đỏ** = 塩漬け卵黄 / 塩卵黄. **カラスミ** = bottarga/karasumi = trứng cá đối khô lên men, hoàn toàn khác — đắt và mặn vị umami, không đặt vào bánh trung thu.

**Fix:** Đổi "カラスミ卵黄" → "塩漬け卵黄" hoặc "塩卵黄". Vocab table xóa entry "カラスミ" hoặc giữ với nghĩa đúng (trứng cá đối, đặc sản Nagasaki/Italy).

### P1-2. バインチュンチュー → katakana approximation sai

`rule_39_祭り/rule.md` L35: "**バインチュンチュー(Bánh Trung Thu)**" — "Bánh Trung Thu" tiếng Việt phiên ra katakana sai âm. Nên: **バインチュントゥー** (Trung = チュン, Thu = トゥー). "チュー" là đọc thẳng "chú" — không có trong từ Bánh Trung Thu.

**Fix:** バインチュントゥー hoặc バインチュンタウ.

### P1-3. ジャンクフルーツ — tên loại quả

`rule_35_テト/rule.md` L69: "ジャックフルーツ(Xoài)" → bug double: ジャック (jackfruit) ≠ Xoài (mango). Đã ghi P0-2; còn ghi lại đây vì chính từ "ジャックフルーツ" cũng gây nhầm với mít.

### P1-4. "Anh có khỏe không?" trong NG list

`rule_04_開かれた質問/rule.md` (combined L532): "Người Việt hay sai: dịch trực tiếp '**Anh có khỏe không?**' (お元気ですか — đóng) thay vì '最近どうですか?' (mở)."

→ Đây là lời commentary tốt, đúng. Nhưng note "tôi" should not be used — cần thêm: nếu đối tượng là khách Nhật trong situation senior-junior thì có thể dùng "Anh dạo này thế nào?" thay vì "Anh có khỏe không?". Đoạn này OK, chỉ flag để consistency.

### P1-5. "東京の3分の1" — số sai context

`rule_40_和食/rule.md` L48-49: yakitori 1 que 30,000 VND ≈ 150 JPY, beer 50,000 VND ≈ 250 JPY. Tổng trải nghiệm "東京の3分の1". Tokyo yakitori 1 que ~ 200-300 JPY, beer ~ 500-700 JPY. Tỉ số 1/3 là OK roughly nhưng "3分の1" phóng đại — thực tế là khoảng 1/2. Minor.

**Fix:** Đổi "**東京の3分の1**" → "**東京の半分**" hoặc giữ nhưng note context.

### P1-6. Phở Hà Nội list — Phở Thìn không phải gold standard cho lần đầu

`rule_34_フォー/rule.md` L60: "**②フォー・ティン(Phở Thìn)** — 牛肉炒めスタイル、味濃いめ。" — Phở Thìn là một option đặc trưng (phở tái lăn) nhưng không phải "the" Phở Thìn nguyên bản. Có hai Phở Thìn nổi tiếng: Phở Thìn Bờ Hồ (Lò Đúc) khác Phở Thìn 13 Lò Đúc. Note này không sai per se nhưng có thể gây nhầm.

**Fix:** Specify "**Phở Thìn 13 Lò Đúc** — phở tái lăn, vị đậm" để rõ ràng.

### P1-7. "Anh sẽ chụp gửi vợ" → cần đổi "Tôi"

Như P0-1, cụ thể `rule_34_フォー/conversation.json` L43 — Nakamura dùng "Anh" tự xưng. Cùng pattern: rule_38_都市, rule_36_コーヒー, rule_37_気候 — JP self-ref bằng "anh" / "em".

### P1-8. "菊酒の冬" — fact lạ

`rule_37_気候/rule.md` L79: "**桃の花の春、ロータスの夏、菊の秋、菊酒の冬**". "菊酒" thực ra là rượu hoa cúc (chrysanthemum sake) trong văn hóa Nhật cổ — không phải truyền thống Bắc VN cho mùa đông. Bắc VN mùa đông phổ biến hoa thủy tiên / mai trắng / hoa đào sớm — không có "rượu cúc" như định danh phổ biến.

**Fix:** Đổi "**菊酒の冬**" → "**水仙の冬**" hoặc "**梅の冬**".

### P1-9. 統一会堂 — diễn dịch chưa chuẩn

`rule_38_都市/rule.md` L81: "**朝統一会堂**(旧大統領官邸、歴史)". Dinh Thống Nhất tiếng Nhật chuẩn = 統一会堂 / 統一宮殿. Diễn dịch "旧大統領官邸" hơi rút gọn — chính xác là "旧南ベトナム大統領府(独立宮殿)" — phân biệt với phía Bắc.

**Fix:** "旧南ベトナム大統領官邸(独立宮殿)" — explain bối cảnh đầy đủ hơn.

### P1-10. お休みになれましたか — hồi đáp thực sự thì khách phải nói "tôi"

`rule_01_タイミング/rule.md` L27 dialogue OK; nhưng trong VN summary L120: "Anh Ōgaki, chào anh. Sáng nay lạnh nhỉ. **Tối qua khách sạn có dễ ngủ không ạ?**" — VN summary này là Dũng hỏi, dùng "anh" với khách JP là OK. Nhưng nếu mở rộng dialogue sang JSON conversation.json L27, response của Ōgaki phải là "tôi" tự xưng. Hiện tại JSON sai.

### P1-11. Vạn Giã (Bánh Trung Thu rule) — bị nhầm với Vạn Giã Khánh Hòa

`rule_35_テト/rule.md` L68: "**バンザン花卉村(Làng hoa Vạn Giã)**". Làng hoa đào nổi tiếng HN là **Nhật Tân** (Tây Hồ) hoặc **Phú Thượng / Quảng Bá**. "Vạn Giã" trong VN có thể trùng với địa danh Khánh Hòa. Cần verify — có làng hoa "Vạn Giã" Hà Nội không? Có thể là **Quảng Bá** hoặc **Nhật Tân**.

**Fix:** Đổi sang **ニャッタン花卉村(Nhật Tân)** hoặc **クァンバー(Quảng Bá)** cho chính xác.

### P1-12. "獺祭" repeated specificity OK nhưng cần caveat

`rule_43_乾杯お酌/rule.md` L66: ズン nói "**獺祭ですね、フルーティで美味しいです**". Đây là natural good detail. Tuy nhiên 獺祭 là Yamaguchi sake — nên check khách Nhật vùng nào. Nếu khách là Niigata native (蔵元 culture) có thể slight awkwardness. Minor.

### P1-13. Tét Đoan Ngọ "diệt sâu bọ" — fact OK nhưng hơi simplification

`rule_39_祭り/rule.md` L82: "朝5時に酒漬けのもち米とフルーツを食べて、体内の寄生虫を殺す" — đúng concept "giết sâu bọ". Nhưng "**5時**" cụ thể không hẳn truyền thống — thường là "buổi sáng sớm khi vừa thức". Minor stylistic.

### P1-14. "Hy vọng anh/chị" pattern — không tìm thấy nhiều

Search trong combined.md không thấy pattern "Hy vọng anh/chị..." ngữ máy. Đây là điểm tốt — sách 08 đã tránh được lỗi máy dịch này. ✓

### P1-15. Tránh dùng Café Giảng có 2 chỗ ở HN

`rule_36_コーヒー/rule.md` L82: "**ハノイ旧市街のCafé Giảng**". Café Giảng có 2 chi nhánh ở phố cổ HN (39 Nguyễn Hữu Huân và Nguyễn Văn Tố). Cần specify hoặc note.

**Fix:** "Café Giảng (39 Nguyễn Hữu Huân) — 創業者の家系の本店".

### P1-16. "オバマと同じ席" Bún Chả Hương Liên — fact verify

`rule_38_都市/rule.md` L34: "Bún Chả Hương Liên" + "オバマと同じ席のフン・チャー". Bún Chả Hương Liên là chỗ Obama ăn 2016 — đúng. "**当時のテーブル保存して観光名所化**" — đúng, có set "Combo Obama" được duy trì. ✓

---

## P2 Polish

### P2-1. "máy dịch" feel hiếm nhưng có

`rule_38_都市/rule.md` L52 conversation: "**ホーチミンはミシュランガイド出てます**" — câu này OK nhưng có thể tự nhiên hơn "**ホーチミンもミシュランガイド出ましたよ**(2023年から)".

### P2-2. JP terms không có chú thích VN

Sample check phụ lục B — `エネルギッシュ` được dịch "Năng động (khen thay tuổi)". Tốt. Nhưng nhiều entry chỉ có katakana JP mà không kanji ("ジンギスカン", "ライラック"). Format consistency: với katakana-only word, để "—" trong cột よみ là đúng. ✓

### P2-3. Quá nhiều katakana không transliterate VN

`rule_36_コーヒー/rule.md` L42 dialogue: "**フィン(Phin)**って小さなアルミの**金属ドリッパー**" — đã có (Phin) trong ngoặc, OK. Nhưng L67 "**Trung Nguyên Legend**" trong dialogue JP không có katakana — khách JP không đọc romanji rõ. Suggestion: thêm katakana → "**Trung Nguyên Legend(チュングエン・レジェンド)**".

### P2-4. Phụ lục B vocab mix abbreviations

`phụ_lục_B_vocab.md` L11: "タイミング | — | Timing | 08" — cột nghĩa VN dùng "Timing" (English-loanword) thay vì dịch "Thời điểm". Có thể mix. Consistency: dùng VN nature nếu có, English loanword nếu phổ biến.

**Fix:** "Timing / Thời điểm" hoặc giữ.

### P2-5. Front matter cast description "em Dũng (ズン)"

`_front_matter.md` L45: "em Dũng" — narrator perspective gọi Dũng "em". Mâu thuẫn với một số rule mà Dũng tự xưng "em" (đúng) khi nói với senior. Consistency: front matter mô tả nhân vật, nên gọi neutral "Dũng" hoặc dùng vai "junior BD".

**Fix:** Tùy chọn — chấp nhận current design vì narrator perspective có thể gọi vai theo position.

### P2-6. "Cảm ơn anh đã giúp đỡ ạ" pattern

User yêu cầu kiểm tra `お世話になっております` → "Em chào anh ạ" / "Cảm ơn anh đã giúp đỡ ạ". Trong sách 08 phrase này chủ yếu xuất hiện trong **email template** (combined L5678, L5695, L11423) — đó là JP-only, không cần dịch VN inline. ✓ Không thấy lỗi "Luôn được anh giúp đỡ".

### P2-7. 失礼します (rời / cúp máy) — natural

Combined L7719: "了解です。お先に失礼します。" + L7759 "了解です、お任せください。お先に失礼します。" — JP only, không có VN translate. Trong rule.md có VN summary nhưng đa số dùng "Em xin phép trước" — natural. ✓

### P2-8. Phần III rule 21 (Hokkaido) snowboarding context

Rule 21 conversation kể về sushi/seafood Sapporo + lavender Furano. Match scenario tốt. Không phát hiện lỗi.

### P2-9. Fact checking — quân giáp năm 2026

2026 = 丙午 (Bính Ngọ / năm Ngọ Hoả) — cả VN và JP đều là năm Ngọ. ✓ Tết 2026 = 17/2/2026. ✓ Tết 2027 = 6/2/2027. ✓ Verify chính xác.

### P2-10. Múa Lân vs Múa Sư tử + Múa Rồng

`rule_39_祭り/rule.md` L33: "**獅子舞・龍舞**(Múa Lân)" — "Múa Lân" thực ra dịch ra JP gần với "**獅子舞**" (lion dance) chứ không phải "**龍舞**" (dragon dance). VN có cả múa lân (lion) và múa rồng (dragon), nhưng đêm Trung thu đa phần múa lân. Note này OK vì có cả 2 từ JP, chỉ Vietnamese (Múa Lân) không hoàn toàn cover 龍舞.

**Fix:** "獅子舞(Múa Lân)・龍舞(Múa Rồng)".

### P2-11. Phụ lục E đầy đủ 47 tỉnh

Phụ lục E — verify có đủ 47 tỉnh không? Đếm: 北海道(1) + 東北(6) + 関東(7) + 中部(9) + 関西(7) + 中国(5) + 四国(4) + 九州(7) + 沖縄(1) = 47. ✓

### P2-12. Phụ lục E Thiếu Tokushima udon vs Kagawa udon

Phụ lục E L80-81: 徳島 = 徳島ラーメン; 香川 = 讃岐うどん. ✓ Đúng — Tokushima nổi ramen tonkotsu shoyu, Kagawa udon sanuki.

### P2-13. Một số keyphrase dịch VN có thể tự nhiên hơn

`rule_47_GOLD話題/rule.md` L26 follow-up: "**[地名]はもう[花/紅葉]の季節ですか?**" → VN không dịch. OK vì là JP phrase template. Nếu cần VN version: "Quê anh sắp đến mùa [hoa/lá đỏ] chưa ạ?" — natural.

### P2-14. Rule 32 (Okinawa) — 米軍基地 mention

Rule 32 dialogue chạm vào "米軍統治1945-72" — fact đúng và an toàn. Đây là history fact, không politicize. ✓

### P2-15. Rule 35 (Tết) — "Bắc-Nam 100 con" — đúng cảnh báo

`rule_35_テト/rule.md` L90: "Vùng cấm: Tết Mậu Thân, dòng người về quê (gợi nhớ chiến tranh & nội chiến), so sánh 'Bắc-Nam ăn Tết khác'." → P2 OK, đã handled.

### P2-16. Phở "鶏 vs 牛" — đúng

`rule_34_フォー/rule.md` L44: "**フォーガー(鶏)**もすごく人気" — đúng. Phở gà và phở bò song song.

### P2-17. Coffee egg history

`rule_36_コーヒー/rule.md` L79: "**1940年代、戦後ハノイで牛乳が手に入らなくて**". Cà phê trứng do Nguyễn Văn Giảng (Café Giảng founder) sáng tạo 1946 — đúng era, đúng story. ✓ Nhưng "**戦後**" Sai — 1946 là **戦中・戦後初期** (war/post-war Pháp). Should be "**戦後初期、フランス植民地末期**" hoặc đơn giản "**1946年頃、牛乳が高価で**".

**Fix:** Đổi "戦後ハノイで" → "**1940年代後半のハノイで**".

### P2-18. Phở Pasteur HCM — store moved

`rule_34_フォー/rule.md` L64: "**フォー・パスツール(Phở Pasteur)**". Tên thông dụng HCM phải là "**Phở Lệ**" (62 Trương Định / 413-415 Nguyễn Trãi) hoặc "**Phở Hòa Pasteur**" (260C Pasteur) — không có "Phở Pasteur" thuần. Có thể tác giả ý chỉ "Phở Hòa Pasteur".

**Fix:** "**フォー・ホア・パスツール(Phở Hòa Pasteur, 260C Pasteur)**".

### P2-19. Phụ lục B trùng entry

Combined L8058 + L9387: cùng "お控えします | おひかえします | ..." — entry xuất hiện 2 lần trong vocab list. Có thể do parse từ 2 rules. Acceptable nhưng có thể consolidate.

### P2-20. Tết 2027 năm Ngọ → năm Mùi

`rule_35_テト/rule.md` L29: "**今年は2月17日、来年は2月6日です**" — Tết 2027 = 6/2/2027 — đúng. 2027 là năm 丁未 (Đinh Mùi / năm Mùi/Sheep) — nếu dialogue có nói "năm gì" cần consistency. Hiện tại không nói nên OK.

---

## Working well

- **Regional depth** Phần III (rules 21-32) cực tốt: Hokkaido seafood + sumô Sapporo + Sapporo beer / Hiroshima Carp + Mazda Stadium + 平和記念公園 caveat / Okinawa 琉球 culture với 沖縄時間 + ハイサイ + ゆいまーる + シーサー — tất cả đều có authentic detail và cultural sensitivity.
- **Cast diversity** 19 nhân vật với 5 newly added khách Nhật theo vùng — match đúng với scenario regional.
- **Cultural sensitivity caveats** rất tốt:
  - Rule 35 (Tết): tránh Tết Mậu Thân, chính trị Bắc-Nam.
  - Rule 39 (Lễ hội): tránh "戦勝記念日" cho 2/9.
  - Rule 32 (Okinawa): handle 米軍基地 + 慰霊の日 + ひめゆりの塔 với đúng tone trầm.
  - Rule 34 (Phở): tránh debate Pháp/TQ origin + né "phở Bắc vs Nam" academic.
  - Rule 36 (Cà phê): Robusta vs Arabica với caveat "industrial vs Fine Robusta".
- **Phụ lục E** 47 prefectures cheat sheet — pocket reference ready-to-print, verified đầy đủ 47 tỉnh, đúng team-prefecture mapping, đúng 名物 + 祭り.
- **Phụ lục B vocab** rất phong phú (~643 từ), nhiều entry regional (じゃけぇ, ほんま, ばい, めんそ〜れ) chứng tỏ research nghiêm túc.
- **Pattern host professional**:
  - Rule 40 dinner pre-book + dress code advise + chef background.
  - Rule 42 izakaya order flow theo wave.
  - Rule 43 お酌 etiquette với 2-tay + ly thấp.
  - Rule 47 10 GOLD topic rescue framework.
- **Rule.md text VN** đa phần tự nhiên, idiom đúng ("rabbit hole", "đẳng cấp", "đẳng cấp host", "moat AI không thay thế").
- **Bridge phrases** giữa JP-VN cultures rất sáng:
  - Phở đêm = 締めラーメン.
  - Tết = お盆+正月.
  - Phin = 急須でお茶 ritual.
  - Cà phê sữa đá = ベトナム式昭和コーヒー.
  - Hà Nội ↔ HCM = Tokyo ↔ Naha.
- **Rule 51 self-review** template 3 win / 3 miss / 3 follow-up — actionable framework.
- **Email template** rule 50 dùng お世話になっております đúng JP business standard.
- **失礼します** dùng đúng (cúp máy / rời) — không có lỗi cũ "Luôn được anh giúp đỡ" pattern.

---

## Recommended fix priority (action plan)

1. **(P0-1, NGAY)** Bulk audit 36 file `conversation.json` — fix self-reference khách Nhật từ "anh"/"em" → "tôi". Estimate: 200+ dòng cần sửa. Tốt nhất script: filter các dòng có speaker = JP cast và `vi` chứa pattern self-ref. **Đây là blocker cho release.**
2. **(P0-2)** Fix mâm ngũ quả mapping JP trong `rule_35_テト/rule.md` L69.
3. **(P0-3)** Fix mục lục Phần IV-V đánh số.
4. **(P0-4, P0-5)** Fix cà phê region + Hà Nội weather phóng đại.
5. **(P0-6)** Fix con giáp 2 vs 4 inconsistency.
6. **(P1-1, P1-2, P1-8, P1-11, P2-17, P2-18)** Fix specific facts (カラスミ, バインチュンチュー katakana, 菊酒, Vạn Giã → Nhật Tân, Phở Hòa Pasteur, cà phê trứng era).
7. **(P2 batch)** Polish — có thể defer sang v1.1.

---

*Hizashi Sách 08 — VN Review v1.0 — 2026-04-26.*
