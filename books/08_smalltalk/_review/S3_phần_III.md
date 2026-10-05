# S3 — Sách 08 Smalltalk — Phần III (rule_21 → rule_33) — ĐỢT RÀ SOÁT 2

> Phạm vi: 13 file `nội_dung/phần_III/rule_*/rule.md`. **CHỈ BÁO CÁO — không sửa file nội dung.**
> Phương pháp: strip ruby bằng python trước mọi kết luận · WebSearch kiểm chứng **từng** dữ kiện định lượng/danh xưng · đối chiếu 4 tầng (thoại JA · dịch VN · câu vàng · bảng tra nhanh + vocab).
> Ngày: 2026-08-15.

---

## 0. BẢNG TỔNG KẾT

| Rule | Dòng | 🔴 | 🟡 | 🔵 | Nhận xét ngắn |
|---|---|---|---|---|---|
| 21 北海道 | 187 | 0 | 1 | 1 | Sạch về dữ kiện lớn. `創業60年` của だるま đã lỗi thời (thực 70年). |
| 22 東北 | 191 | 0 | 1 | 0 | Fix đợt trước ĂN ĐỦ. 1 ca xưng hô `私は` → "Anh". |
| 23 関東東京 | 197 | 0 | 3 | 0 | 3 ca xưng hô `私は` → "Anh" (nhiều nhất phần III). |
| 24 愛知 | 206 | **1** | 0 | 1 | **立浪監督 đã từ chức từ 2024** — bối cảnh truyện là 6/2026. |
| 25 岐阜 | 226 | **1** | 0 | 1 | **飛騨牛 sai 2 tiêu chí** (4等級 → thực 3等級; "3歳未満未経産牛" KHÔNG có trong định nghĩa). Lỗi rải 3 chỗ. |
| 26 大阪 | 229 | **1** | 0 | 0 | **岡田監督 đã rời từ sau 2024** — bối cảnh 8/2026 là 藤川球児. |
| 27 京都 | 223 | 0 | 1 | 1 | `京懐石をユネスコ` — thứ được ghi danh là **「和食」**, không phải "kaiseki Kyoto". |
| 28 広島 | 249 | 0 | 1 | 0 | Fix đợt trước ĂN ĐỦ + đồng bộ 4 tầng. Còn dòng 大野智 (JP review đã đề nghị bỏ). |
| 29 四国 | 219 | 0 | 0 | 2 | **Sạch nhất phần III.** Mọi số liệu đúng. |
| 30 福岡 | 228 | **1** | 1 | 1 | **王貞治 "3度の日本一 (99,03,11)"** — 2011 là 秋山幸二. Fix 麦焼酎 ĐÃ ĂN ĐỦ 3 tầng. |
| 31 熊本鹿児島 | 234 | **2** | 0 | 0 | **芋焼酎 "鹿児島が99%"** sai nặng · **くまモン "2010年ゆるキャラGP優勝"** thực là **2011**. Cả hai rải 3 tầng. |
| 32 沖縄 | 246 | 0 | 0 | 2 | Fix 首里城 ĐÃ ĂN ĐỦ và cập nhật ĐÚNG mốc 2026/11. |
| 33 メモバンク | 191 | 0 | 0 | 0 | **Hoàn toàn sạch.** Rule meta, không có dữ kiện vùng miền. |
| **Tổng** | **2 826** | **6** | **8** | **9** | |

**Kết luận nhanh:** phần III **không có lỗi trục A (dạy sai việc thật)** và **không có lỗi trục C (tiếng Nhật sai)** — quét 16 pattern 二重敬語/過剰敬語 ra **0**, khớp thước đo main Claude. Cũng **không có lỗi trục B (tự mâu thuẫn)**: quét toàn bộ token số + đơn vị trong 13 file, **0 cặp mâu thuẫn nội bộ** (kiểu `約20店舗` d33 vs `25店舗` d35 của rule_28 đã được vá triệt để).
**Rủi ro thật nằm gọn ở trục D (dữ kiện) + trục E (xưng hô).**

---

## 1. 🔴 BẢNG KIỂM TOÁN DỮ KIỆN (nhiệm vụ số một)

### 1.1 Dữ kiện SAI — cần sửa

| # | Rule · dòng | Sách nói | Nguồn kiểm chứng | Phán định |
|---|---|---|---|---|
| **D1** | **rule_25 岐阜 d84, d86, d141** | 「**3歳未満の未経産牛**または去勢牛、肉質**4等級以上**」 | [飛騨牛銘柄推進協議会 (công bố chính thức)](http://hidagyu-gifu.com/hidagyu.php) — 4 điều kiện: ①飼養期間最長が岐阜県 ②登録農家肥育 ③**14ヶ月以上肥育**の黒毛和種 ④肉質等級**5・4・3等級**。**Không có** điều kiện tuổi, **không có** điều kiện 未経産** | **SAI** |
| **D2** | **rule_31 鹿児島 d115, d116, d128** | 「**芋焼酎、鹿児島が99%**」 | [日経 (国税庁統計)](https://www.nikkei.com/article/DGXMZO62911390R20C20A8LX0000/) — **宮崎が6年連続 焼酎出荷量日本一、鹿児島2位**. Bản thân Kagoshima chỉ ~95.089kL/401.204kL toàn quốc. Kagoshima **nhất về SỐ NHÀ MÁY (121 蔵)** và tiêu thụ đầu người, **không phải 99% sản lượng** | **SAI** |
| **D3** | **rule_31 熊本 d40, d47, d138, d166** | 「くまモンは**2010年**ゆるキャラグランプリ優勝」 | [ゆるキャラGP chính thức](https://www.yurugp.jp/yvs/news/1119) + [文春](https://bunshun.jp/articles/-/5067) — **くまモン thắng ゆるキャラグランプリ 2011** (2010 chỉ là năm ra đời) | **SAI** |
| **D4** | **rule_30 福岡 d89, d104, d175** | 「**王さん**!1995年からダイエー時代に監督就任、**3度の日本一(99,03,11)**達成」 | [Wikinews](https://ja.wikinews.org/wiki/プロ野球・福岡ソフトバンク王監督、2008年限りで退任) + [ソフトバンク公式](https://www.softbank.jp/sbnews/entry/20111216_01) — 王 làm HLV **1995–2008**, vô địch **1999 + 2003**. Chức vô địch **2011 là 秋山幸二** | **SAI (1/3 mốc)** |
| **D5** | **rule_24 愛知 d108** | 「**立浪監督**頑張ってほしい」 (bối cảnh **6/2026**) | [NPB 2026 監督一覧 中日](https://npb.jp/announcement/2026/managers_d.html) — 立浪 từ chức **sau mùa 2024**; 2026 là năm thứ 2 của **井上一樹** | **SAI (lỗi thời)** |
| **D6** | **rule_26 大阪 d121, d134, d158** | 「**岡田監督**ですよね、**最近**」 (bối cảnh **8/2026**) | [阪神公式 2026 監督](https://hanshintigers.jp/data/staff/2026/22.html) + [Wikipedia 2026年の阪神](https://ja.wikipedia.org/wiki/2026年の阪神タイガース) — 2026 là năm thứ 2 của **藤川球児**; 2025 阪神 đã vô địch Central League | **SAI (lỗi thời)** |
| **D7** | **rule_21 北海道 d39** | 「『だるま』…**創業60年**の名店」 | [札幌ジンギスカン だるま công thức](https://sapporo-jingisukan.info/history) — **昭和29年 (1954) 創業**, đã 70 năm | **SAI (lỗi thời)** — cùng kiểu lỗi mà JP review đã bắt ở rule_28 麗ちゃん và đã vá thành 「半世紀以上」; **rule_21 bị bỏ sót** |
| **D8** | **rule_27 京都 d59** | 「**京懐石をユネスコ無形文化遺産**にする運動の中心人物」 | [農水省](https://www.maff.go.jp/j/keikaku/syokubunka/wasyoku_unesco5/unesco5.html) — thứ được ghi danh 2013 là **「和食;日本人の伝統的な食文化」**, không phải 京懐石. 村田吉弘 đúng là nhân vật trung tâm, nhưng **cho 和食** | **SAI (đối tượng ghi danh)** |

### 1.2 Dữ kiện ĐÚNG NHƯNG YẾU / gây tranh cãi

| # | Rule · dòng | Sách nói | Nguồn | Phán định |
|---|---|---|---|---|
| D9 | rule_30 d114, d129, d155, d177 | 「全国**12,000**の天満宮の**総本宮**」 | [北野天満宮 tự nhận **総本社**](https://note.com/liga/n/n3cf6247becc5); 太宰府 tự nhận **総本宮** — hai danh xưng khác nhau nhưng **cùng tuyên bố vị trí trung tâm** | **ĐÚNG-CÓ-ĐIỀU-KIỆN.** JP review P1 đã đề nghị làm mềm → **CHƯA FIX**. Con số 12.000 đúng |
| D10 | rule_30 d56 | 「中洲那珂川河畔には**屋台が約20軒**」 | [福岡市よかなび](https://yokanavi.com/yatai) — toàn thành phố **~100軒 (106 軒, 2023)**; riêng Nakasu **hơn 30 軒** | **ƯỚC LƯỢNG THẤP** — không sai kiểu "bịa", nhưng nên là 「約30軒」 |
| D11 | rule_29 d102 | 「鳴門の**渦潮**、**渦巻き世界三大**」 | [渦の道](https://www.uzunomichi.jp/guide-uzu-1/) — danh xưng chính xác là **世界三大潮流** (Messina · Seymour · Naruto), còn "kích thước xoáy" thì Naruto **世界一** | **LỆCH TỪ** — nói "xoáy nước top 3 thế giới" là chưa chuẩn; đúng phải là "dòng triều top 3 / xoáy lớn nhất thế giới" |
| D12 | rule_31 d63 | 「阿蘇神社は**2300年**以上前に創建」 | Truyền thuyết 孝霊天皇9年 (BC 282) — là **truyền thuyết thần xã**, không phải mốc khảo cổ | **TRUYỀN THUYẾT** — nên thêm 「社伝では」. Kích thước caldera 18×25km **ĐÚNG** ([阿蘇ジオパーク](https://www.aso-geopark.jp/mainsites/mainsite01.html)) |
| D13 | rule_29 d56 | 道後温泉「**千と千尋**の油屋のモデル**とも言われとる**」 | Miyazaki: "nhiều onsen, không có 1 model duy nhất, nhưng Dōgo có trong đó" | **ĐÚNG** — sách đã dùng đúng 「とも言われとる」 (mềm). **CẤM sửa thành khẳng định** |
| D14 | rule_25 d109 | 合掌造り「茅葺き屋根を**60度**の急角度」 | [白川村役場](https://www.vill.shirakawa.lg.jp/1231.htm) — 勾配 **45〜60度** | **ĐÚNG (đầu dải)** — chấp nhận được |
| D15 | rule_32 d124 | 「ジンベエザメ**8.7m**」 | [美ら海公式](https://churaumi.okinawa/sp/area/the-kuroshio/kuroshio/) — ジンタ **8.8m (2025)**; cá voi lớn dần theo năm | **GẦN ĐÚNG** — 🔵 sẽ tiếp tục lệch theo thời gian |
| D16 | rule_31 d40 | くまモン「経済効果**1500億**超え」 | 日銀熊本 2 năm đầu **1.244億**; doanh thu hàng liên quan **~1.600億/năm**, lũy kế **>1兆円** | **ĐÚNG THEO CÁCH ĐỌC** nhưng mơ hồ (kinh tế hiệu ứng ≠ doanh thu). 🔵 |

### 1.3 Dữ kiện ĐÃ KIỂM — ĐÚNG (không sửa)

| Rule | Dữ kiện | Nguồn | KQ |
|---|---|---|---|
| 21 | 新庄剛志 **quê Fukuoka** (ghi chú ⚠️ ở d145) | JP review trục D | ✅ ĐÃ VÁ ĐÚNG |
| 21 | エスコンフィールド北広島市 2023年〜 · 函館夜景 top 3 · 3大ラーメン (旭川醤油/函館塩/札幌味噌) | [函館山 Michelin 3★](https://www.jre-travel.com/article/00336/) | ✅ |
| 22 | 竿燈 大若 **提灯46個** | [アキタファン](https://akita-fun.jp/spots/31) | ✅ |
| 22 | 福島の桃 **全国2位**, 山梨 1位; giống あかつき/ゆうぞら/川中島白桃 | [minorasu](https://minorasu.basf.co.jp/80159) | ✅ ĐÃ VÁ ĐÚNG |
| 22 | 三大祭り ねぶた(青森)/七夕(仙台)/竿燈(秋田) · なまはげ UNESCO · 山形「東北屈指の酒どころ」 | — | ✅ ĐÃ VÁ ĐÚNG |
| 23 | みますや **創業1905** (神田, 東京最古の大衆酒場) | [さんたつ](https://san-tatsu.jp/articles/4381/) | ✅ (sách nói "121年目" — 2026-1905=121 ✅) |
| 23 | 月島もんじゃストリート **80軒以上** | [くふうトリップ](https://rtrp.jp/articles/73930/) (50–80 tùy nguồn) | ✅ |
| 23 | DeNA ở Yokohama/Kanagawa · ON砲 = 王+長嶋 · 神保町 khu sách cũ lớn nhất | — | ✅ |
| 24 | 八丁味噌 **カクキュー 1645 + まるや 1337**, chỉ 2 hãng ở Okazaki, ủ ≥2 năm | [おかざき観光](https://okazaki-kanko.jp/feature/miso/top) | ✅ |
| 24 | ひつまぶし 3+1 cách ăn · 関東背開き蒸し / 関西腹開き直焼き · 鈴鹿 thuộc 三重 (NG note) | — | ✅ |
| 25 | 鵜飼 **5/11–10/15**, **1300年**, **宮内庁式部職鵜匠 (6人) 世襲** | [岐阜の旅ガイド](https://www.kankou-gifu.jp/blog/detail_129.html) + [宮内庁](https://www.kunaicho.go.jp/learn/culture/ukai/) | ✅ **chính xác đến từng ngày** |
| 25 | 飛騨高山 **7蔵元** (老田/舩坂/川尻/二木/平瀬/平田/原田) | [飛騨のたばる箱](https://www.takayama-gh.com/tabaru/special/jizake/) | ✅ **JP review P1 báo "nên là 6" là BÁO ĐỘNG SAI — 7 蔵 đúng** |
| 25 | 関 = 世界三大刃物産地 (Solingen/Sheffield), **700年**, 孫六兼元 | [天研工業](https://tenken-hamono.com/blog/glossary/three-great-blade-regions/) | ✅ |
| 25 | 美濃焼 東濃 (多治見/土岐/瑞浪) **全国50%以上** | [美濃焼スクエア](http://www.chuokai-gifu.or.jp/tajimi/minoyakisquare/minoyaki.html) | ✅ |
| 25 | 白川郷 **UNESCO 1995** · すや/川上屋 栗きんとん 中津川 | — | ✅ |
| 26 | 阪神 **2023 = 18年ぶりリーグ優勝 (2005) + 38年ぶり日本一 (1985)** · 2009年カーネル像発見 | [Wikipedia 2023年の阪神](https://ja.wikipedia.org/wiki/2023年の阪神タイガース) | ✅ **P2 của JP review lo "nhầm 18年/38年" — sách viết ĐÚNG "18年ぶり優勝"** |
| 26 | 大阪混ぜ焼き ↔ 広島重ね焼き · ビリケン (điêu khắc gia nữ Mỹ ~100 năm) · 天神祭 7/24-25 | — | ✅ |
| 26 | Cheat sheet 有名人: ダウンタウン/さんま/桂文枝/上沼恵美子/アンミカ | STATUS v1.1 | ✅ **安倍晋三 ĐÃ BỎ ĐÚNG** |
| 27 | 西陣織 応仁の乱 **1467**, **12種** (伝統的工芸品指定) | [京都府](https://www.pref.kyoto.jp/senshoku/nisijin.html) | ✅ |
| 27 | 舞妓 15–20歳/地毛, 芸妓 20+/かつら, だらりの帯 **5m** | [おおきに財団](https://www.ookinizaidan.com/kagai/maiko/dressed/) | ✅ |
| 27 | 五花街 (祇園甲部/祇園東/先斗町/宮川町/上七軒) · 三千家 · 世界遺産 **17箇所** | [京都市](https://www.city.kyoto.lg.jp/bunshi/page/0000005538.html) | ✅ |
| 28 | 弥山 霊火 → **広島平和記念公園「平和の灯」** (KHÔNG phải 東京タワー) | JP review P0-1 | ✅ **ĐÃ VÁ ĐÚNG 3 tầng** |
| 28 | 牡蠣 全国シェア **60%以上** | [広島県](https://www.pref.hiroshima.lg.jp/lab/topics/20211108/01/) — 61–63% | ✅ |
| 28 | オタフク **1922年広島創業**, お好みソース ~6割 | [オタフク沿革](https://www.otafuku.co.jp/corporate/history/) | ✅ |
| 28 | 厳島神社 **593年創建**, 平清盛 **1168年**現在規模, UNESCO **1996**, 弥山 535m | [Wikipedia 厳島神社](https://ja.wikipedia.org/wiki/厳島神社) | ✅ |
| 28 | カープ 1949創設 · 樽募金 1951 · **2016年25年ぶり優勝 (前回1991)** · 新井貴浩監督 (2026 vẫn tại vị, năm thứ 4) | [NPB 2026 広島](https://npb.jp/announcement/2026/managers_c.html) | ✅ |
| 28 | もみじ饅頭 藤い屋(1925)/やまだ屋(1932) · 穴子飯うえの 1901 · サンフレッチェ = 毛利元就三本の矢 | — | ✅ |
| 29 | 金刀比羅宮 **本宮785段 / 奥社1368段** | [ANA](https://www.ana.co.jp/ja/jp/japan-travel-planner/kagawa/0000003.html) | ✅ **sách nói đúng "1368段のうち奥社まで"** |
| 29 | 香川 うどん 消費/使用量 **全国1位** · 「うどん県」 | [香川県公式](https://www.pref.kagawa.lg.jp/tokei/sogo/udonken/kfvn.html) | ✅ |
| 29 | すだち 徳島 **全国95%以上** (thực 98%) | [maff GI 徳島すだち](https://www.maff.go.jp/j/shokusan/gi_act/register/0129/index.html) | ✅ (sách nói "95%以上" — an toàn) |
| 29 | 阿波踊り **8/12–15**, **130万人** · よさこい **1954年**, ~200 đội, 札幌 1992 派生 | [徳島市](https://www.city.tokushima.tokushima.jp/kankou/awaodori/index.html) + [よさこい Wikipedia](https://ja.wikipedia.org/wiki/よさこい祭り) | ✅ |
| 29 | お遍路 88ヶ所, 1200km, 40–50日, 1番霊山寺(徳島)→88番大窪寺(香川) · 龍馬 1836–1867, 31歳 | — | ✅ |
| 29 | しまなみ海道 70km 尾道→今治 · 道後温泉 3000年/坊っちゃん | — | ✅ |
| 30 | 山笠 **7/1–15**, 追い山 **7/15 4:59**, 舁き山 **1トン**, 男のみ, 櫛田神社 | [博多祇園山笠公式](https://www.hakatayamakasa.com/61840.html) — "起源782年" nên "770年以上" là an toàn | ✅ |
| 30 | 久留米 = 豚骨発祥 **1937年 南京千両** | [Wikipedia 久留米ラーメン](https://ja.wikipedia.org/wiki/久留米ラーメン) | ✅ |
| 30 | 明太子 ふくや **1949年** (店 khai trương 1948/10, mentaiko lên kệ 1949/1/10) | [ふくや沿革](https://www.fukuya.com/company/history/) | ✅ |
| 30 | 麦焼酎 **「特に大分が生産量日本一 (いいちこ・二階堂)」** | JP review P0-2 | ✅ **ĐÃ VÁ ĐÚNG 3 tầng** |
| 30 | 菅原道真 **901年左遷 / 903年没** · 孫正義 SoftBank **2005年買収** | — | ✅ |
| 31 | 熊本城 加藤清正 **1607年完成**, 日本三名城, 2016熊本地震, 武者返し | [熊本城公式](https://castle.kumamoto-guide.jp/history/) | ✅ |
| 31 | 阿蘇カルデラ **東西18km 南北25km** 世界有数 | [阿蘇ジオパーク](https://www.aso-geopark.jp/mainsites/mainsite01.html) | ✅ |
| 31 | 鹿児島黒豚 **六白 (顔・尻尾・四肢先端)**, バークシャー種純血 | [六白亭](https://www.roppakutei.jp/blog/2026/03/19/) | ✅ |
| 31 | 西郷隆盛 **1828–1877**, 城山自決 **49歳**, 西南戦争 · 知覧特攻 **1036名** | [知覧特攻平和会館](https://www.chiran-tokkou.jp/heiwakaikan.html) | ✅ |
| 31 | 桜島 **1914大正噴火** nối 大隅半島 · 克灰袋 · 3M (森伊蔵/魔王/村尾) · 前割り | — | ✅ |
| 31 | ⚠️ **黒霧島 = 霧島酒造 tỉnh Miyazaki, không phải Kagoshima** (d178) | JP review trục D | ✅ **ĐÃ VÁ ĐÚNG (ghi chú cảnh báo trong cheat sheet)** |
| 31 | 球磨焼酎 = 米焼酎発祥地 500年, 鳥飼/武者返し | [熊本県](https://www.pref.kumamoto.jp/site/kennan/88446.html) | ✅ |
| 32 | 琉球王国 **1429–1879** · 米軍統治 **1945–1972** · 沖縄戦 **県民4人に1人** · **6/23 慰霊の日** | [おきなわ物語](https://www.okinawastory.jp/news/tourism/4198) | ✅ |
| 32 | 泡盛 **タイ米+黒麹菌+全麹仕込み, 600年** · 古酒(クース) **3年以上** | [オリオン](https://www.orionbeer.co.jp/story/awamori/) | ✅ |
| 32 | 首里城正殿 **2019/10 火災 → 2026年11月 復元完成** (bối cảnh truyện 2/2027 → đúng thì quá khứ) | [沖縄美ら島財団](https://oki-park.jp/shurijo/information/detail/10959) — 完成式 **2026/11/22**, 供用開始 **11/23** | ✅ **ĐÃ VÁ ĐÚNG VÀ CHÍNH XÁC ĐẾN THÁNG** |
| 32 | 黒潮の海 水槽 **8.2m×22.5m×60cm** · グスク UNESCO **2000年** · 三線 蛇皮3弦 14世紀中国由来 | [美ら海公式](https://churaumi.okinawa/sp/area/the-kuroshio/kuroshio/) | ✅ |
| 32 | シーサー オス口開=福呼 / メス口閉=災防 · カチャーシー · 安室奈美恵 那覇出身 | — | ✅ |
| 33 | — (rule meta, không có dữ kiện vùng miền) | — | ✅ |

**Tổng số dữ kiện đã kiểm chứng bằng WebSearch: 61 · SAI: 8 · yếu/tranh cãi: 8 · đúng: 45.**

---

## 2. 🔴 BẢNG KIỂM CHỨNG FIX ĐỢT TRƯỚC (rule mục 5)

Đối chiếu từng mục `REVIEW_FINDINGS_JP.md` / `REVIEW_FINDINGS_VN.md` / `STATUS.md v1.1` thuộc rule_21→33, kiểm **CẢ thoại · CẢ dịch VN · CẢ câu vàng · CẢ bảng tra nhanh · CẢ vocab**.

| Mục findings | Nội dung | Trạng thái | Bằng chứng (đã strip ruby) |
|---|---|---|---|
| JP P0-1 | rule_28 弥山霊火: 東京タワー聖火 → 平和の灯 | ✅ **ĐÃ FIX ĐỦ** | d103 thoại + d110 tóm tắt VN + d164 câu vàng — cả 3 đều 「平和の灯」. Grep `東京タワー` trong phần III: chỉ còn 1 hit **hợp lệ** ở rule_23 d154 (danh sách địa điểm Tokyo) |
| JP P0-2 | rule_30 麦焼酎: 福岡日本一 → 大分日本一 | ✅ **ĐÃ FIX ĐỦ** | d72 thoại 「特に大分が生産量日本一(いいちこ・二階堂)」 + d73 VN + d75 tóm tắt + d174 cheat sheet 「麦焼酎 (大分が生産量日本一)」 — **4 tầng đồng bộ** |
| JP P0-3 | rule_30 cheat sheet: bỏ 黒田博樹 | ✅ **ĐÃ FIX ĐỦ** | d179 有名人 = 王貞治/孫正義/タモリ/椎名林檎/浜崎あゆみ/**武田鉄矢**. 黒田博樹 chỉ còn ở rule_28 (đúng chỗ — Carp) |
| JP P0-4 | rule_26 cheat sheet: bỏ 安倍晋三 | ✅ **ĐÃ FIX ĐỦ** | d182 = ダウンタウン/明石家さんま/桂文枝/上沼恵美子/アンミカ. Grep `安倍` phần III = **0** |
| JP P1 | rule_28 お好み村 「4階建て25店舗」 → 「3階建て約20店舗」 | ✅ **ĐÃ FIX ĐỦ — kể cả chỗ dễ sót** | d33 thoại `3階建て約20店舗` · d35 lời Dũng `20店舗もあるんですか` · d52 tóm tắt `3階約20店舗` · d154 câu vàng `3階建て約20店` · d183 cheat sheet `3階約20店`. **5 tầng.** Grep `25店舗` / `4階` = **0** → lỗi trục B của rule_28 đã DỨT ĐIỂM |
| JP P1 | rule_28 麗ちゃん 「創業60年」 → evergreen | ✅ **ĐÃ FIX ĐỦ** | d37 `創業半世紀以上` + d183 cheat sheet `半世紀以上の老舗` |
| JP P1 | rule_25 「飛騨高山には7つの蔵元」 | ⚪ **KHÔNG CẦN FIX — findings BÁO ĐỘNG SAI** | Trang du lịch chính thức Takayama liệt kê đủ **7 蔵**; 6 蔵 chỉ là số tham gia lễ hội のん兵衛まつり. **Xem mục CẤM SỬA** |
| JP P1 | rule_30 「全国12,000の天満宮の総本宮」 làm mềm | 🟡 **CHƯA FIX** | Còn nguyên ở **4 chỗ**: d114 thoại · d129 tóm tắt · d155 câu vàng · d177 cheat sheet |
| JP P1 | rule_32 首里城 timeline | ✅ **ĐÃ FIX + CẬP NHẬT** | d116 「2026年11月に正殿の復元が完成したばかり」 (khớp mốc thật 2026/11/22) + d135 tóm tắt + d162 câu vàng + d187 cheat sheet. **4 tầng.** Thì quá khứ khớp bối cảnh 2/2027 |
| JP P1 | rule_22 山形 「東北一の酒どころ」 → 「屈指」 | ✅ **ĐÃ FIX ĐỦ** | d54 thoại `東北屈指の酒どころ` + d186 BJT `「東北屈指の酒どころ」` |
| JP P1 | rule_22 福島の桃 「天下一品」 → 「全国2位」 | ✅ **ĐÃ FIX ĐỦ** | d106 `全国2位の生産量。あかつき、ゆうぞら、川中島白桃` (bổ sung cả giống 川中島白桃 theo đề nghị) + d107 VN. Grep `天下一品` = **0** |
| JP P2 | rule_28 大野智 (nhắc chỉ để bác tin đồn) | 🟡 **CHƯA FIX** | d195 vẫn `大野智 (嵐, 三原市生まれの都市伝説あり実は東京)` |
| JP P2 | rule_32 「ポーク玉子おにぎり」 → thêm 「ポーたま」 | 🔵 **CHƯA FIX** (P2, không blocker) | d62 vẫn `ポーク玉子おにぎり` |
| JP P2 | rule_32 沖縄SV là JFL không phải J | 🔵 **CHƯA FIX** | d190 vẫn `**沖縄SV**` liệt cùng FC琉球(J)/キングス(B) không phân loại |
| JP P2 | rule_28 サンフレッチェ etymology (bổ sung tùy chọn) | ⚪ **KHÔNG BẮT BUỘC** | d136+d189 đã có 「毛利元就 三本の矢」 — đủ |
| JP P2 | rule_21 Scenario 4 NG chỉ 3 dòng (mỏng) | 🔵 **CHƯA FIX** | d96–d101 vẫn 3 lượt + 1 dòng 「Đúng:」. Là **quyết định biên tập**, không phải lỗi |
| JP P2 | Reaction beat 「絶対 speechless」 lặp (rule 25/26/28/30/32) | 🔵 **CHƯA FIX** | Vẫn đều "目を輝かせる / 感動 / 誇らしげ" ở cả 5 rule. Là ghi chú hiệu chỉnh giọng văn |
| VN P0-1 | Xưng hô khách Nhật tự xưng "anh"/"em" | 🔴 **FIX NỬA VỜI — sót 5 dòng trong `.md`** | STATUS khai script `apply_review_fixes.py` sửa **49 dòng trong 25 `conversation.json`** — **KHÔNG đụng `rule.md`**. Đây **chính xác là "kiểu hụt số 1"** ghi trong rule mục 5. Xem §3 |
| VN P0-3 | mục_lục.md đánh số Phần IV/V | ✅ **ĐÃ FIX** | Phần IV = 34–41, Phần V = 42–51; Phần III kết thúc đúng ở **33 (Kho ghi nhớ)** |
| VN P2-8 | rule_21 Hokkaido — "không phát hiện lỗi" | ⚪ Xác nhận lại: sushi/seafood/lavender đều đúng | Nhưng findings **bỏ sót** `創業60年` (D7) |
| VN P2-14 | rule_32 米軍統治1945-72 an toàn | ✅ Xác nhận | d62 + d179 đều `1945-1972` |

**Tóm tắt:** trong **13 mục findings** thuộc phạm vi phần III: **9 ĐÃ FIX ĐỦ** (và fix rất kỹ — đồng bộ 4–5 tầng, đúng chuẩn "vá thoại + vocab + cheat sheet") · **1 FIX NỬA VỜI** (xưng hô: chỉ `.json`, không `.md`) · **3 CHƯA FIX** (12.000総本宮 · 大野智 · vài P2).
Nói cách khác: **đợt v1.1 làm tốt hơn mức trung bình**, đúng chỗ nào đã đụng thì đụng đủ tầng. Lỗ hổng lớn nhất **không phải ở các mục đã liệt kê**, mà ở **những dữ kiện chưa ai kiểm** (§1.1 — 6/8 lỗi là lỗi MỚI, chưa nằm trong findings nào).

---

## 3. 🟡 TRỤC E — Xưng hô (đã lọc kỹ theo cảnh báo mục 3)

**Phương pháp lọc:** chỉ báo khi bản Nhật cho thấy người nói **TỰ nói về mình** — có `私は` / `思う` mang chủ ngữ ngôi 1. **Loại bỏ** toàn bộ ca "Em" là **ngôi 2** (khách Nhật gọi Dũng).

Máy quét thô ra **11 ca**; sau khi đọc bản Nhật, **6 ca là ngôi 2 hợp lệ** (rule_21 d35 `よく知ってるね!` = "Em biết rõ ghê" — khen Dũng; rule_22 d41; rule_23 d76; rule_25 d92; rule_27 d36/d88/d117; rule_28 d41/d66; rule_31 d88 — tất cả đều khen Dũng). **Còn lại 5 ca thật.**

| # | Rule · dòng | Người nói | JA (đã strip ruby) | VN hiện tại | Đề xuất |
|---|---|---|---|---|---|
| E1 | rule_22 d37–38 | 吉田 (khách Nhật) | 「**私は**喜助。塩加減が絶妙で。あとずんだ餅もぜひ食べてほしいなあ。」 | *「**Anh** phe Kisuke. Vị muối tuyệt vời…」* | **Tôi** phe Kisuke |
| E2 | rule_23 d38–39 | matsumoto | 「そう、祖父の代から。だからか、**私は**江戸前寿司派でね。」 | *「…Có lẽ vì vậy **anh** phe sushi Edo-mae.」* | **tôi** phe sushi Edo-mae |
| E3 | rule_23 d80–81 | 田中PMO | 「そう、DeNAは横浜、つまり神奈川。**私は**DeNAファンなんですよ。」 | *「…**Anh** fan DeNA.」* | **Tôi** fan DeNA |
| E4 | rule_23 d82–83 | matsumoto | 「**私は**古い人間だから巨人。長嶋茂雄世代だね。」 | *「**Anh** người cổ rồi nên Giants.」* | **Tôi** người cổ rồi… |
| E5 | rule_30 d68–69 | sato_kyushu | 「博多通やね!…カタ派が一番多いと**思う**。」 | *「Em rành Hakata ghê! …**Anh nghĩ** phe Kata là đông nhất.」* | vế 1 "Em rành" = **ngôi 2 ĐÚNG**; vế 2 → **tôi nghĩ** |

⚠️ **Lưu ý cho main Claude:** con số thật là **5**, không phải "43" như báo cáo đợt cũ. Đây đúng là ca phóng đại đã ghi ở rule mục 3. Và E5 cho thấy **một dòng có thể vừa đúng vừa sai** — vế "Em rành" phải GIỮ, chỉ sửa vế "Anh nghĩ".

**Trục E khác — đã quét, 0 lỗi:**
- Tiếng Anh thừa trong ô tiếng Nhật: chỉ có danh từ riêng hợp lệ (`Trip Advisor`, `MAZDA Zoom-Zoom`, `LINE`, `Notion`, `Salesforce`, `PayPay`, `BEGIN/HY/Kiroro/MAX/SPEED`, `A&W`) — **không phải lỗi**.
- Ký tự lạ (giản thể/Hangul): **0** — khớp báo động sai #1 của main Claude (`那覇`/`那珂川` là kanji Nhật).
- Emoji strip / bảng mất cột phán định: **0** — khớp báo động sai #2.
- Ruby vỡ (`</ruBy`, `ruby**`): **0**.

---

## 4. 🔵 TRỤC F — Nhất quán & meta (trong phạm vi)

| # | Rule | Vấn đề | Mức |
|---|---|---|---|
| F1 | rule_21 · 22 · 26 · 27 · 33 | Header bảng viết **「Bảng tra nhanh vùng miền」**, rule_23/28 viết **「Bảng tra cứu (nhanh) vùng miền」**, rule_32 viết **「Sổ tay vùng miền」**, rule_28 viết **「Bảng từ vựng」** thay vì **「Vocab」** như 12 rule kia | 🔵 |
| F2 | rule_22 · 24 · 25 · 26 · 27 · 29 · 30 · 31 · 32 · 33 | Khối "Câu vàng copy-paste" nằm trong **code fence ```**; rule_21 và rule_23(một phần) dùng **bullet list** không fence | 🔵 |
| F3 | rule_22 | Nhân vật **吉田 / 遠藤** không có trong `voice_profiles.json` (JP review chỉ spot-check các speaker khác). Tương tự rule_29 **近藤**, rule_27 **黒田社長**, rule_31 **partner** | 🔵 — **ngoài phạm vi** (voice_profiles.json), chỉ ghi nhận |
| F4 | rule_31 | Nhãn người nói không nhất quán: d32 `**partner Matsumoto**`, d36 `**partner**`, d80 `**partner 鹿児島支店**`. Tên "Matsumoto" **trùng với 松本PM** của rule_23/33 nhưng là nhân vật khác | 🟡 — dễ gây hiểu nhầm cho học viên |
| F5 | rule_25 vocab d199–200 | Hán Việt của **鵜飼/鵜匠** ghi **「ĐỀ TỰ」/「ĐỀ TƯỢNG」** — chữ 鵜 âm Hán Việt là **"ĐỀ"**? Chuẩn hơn là **「ĐỀ TỰ」→ "ĐỀ TỪ"**? Cần người rành Hán Việt xác nhận. Tương tự d201 `関の刃物` = 「QUAN — NHẬN VẬT」 (刃 = "NHẬN", 物 = "VẬT" ✅ nhưng ghép rời khó đọc) | 🔵 |
| F6 | rule_28 vocab d228 | `土手鍋` Hán Việt ghi **「THỔ THỦ QUÃ」** — 鍋 = **"QUÁ"** (không dấu ngã). Cùng lỗi ở d198 rule_30 `もつ鍋` = 「— QUÃ」 | 🔵 chính tả Hán Việt |
| F7 | rule_31 vocab d214 · d219 | `さつま揚げ` = 「TIẾT MA DƯƠNG」 và `薩摩藩` = 「TIẾT MA PHIÊN」 — **薩 âm Hán Việt là "TÁT"**, không phải "TIẾT" | 🟡 sai Hán Việt |
| F8 | rule_29 | Bảng cheat sheet dùng **cấu trúc 5 cột** (県/県庁/名物/観光/祭り/Thể thao); 12 rule kia dùng cấu trúc **2 cột (Hạng mục / Nội dung)**. rule_22 cũng dùng 6 cột. **Chủ ý** vì là rule đa tỉnh — không phải lỗi | ⚪ |
| F9 | rule_29 d163 vs d200 | よさこい: cheat sheet ghi **「8/9-12」**, vocab ghi **「Aug 9-12」**, thoại d85 ghi **「毎年8月」** — **nhất quán ✅** | ⚪ |

---

## 5. TRỤC A / B / C — kết quả quét

- **Trục A (dạy sai việc thật): 0 lỗi.** Các chủ đề nhạy cảm được xử lý rất đúng mực:
  - rule_28 平和記念公園 / 原爆ドーム / 8/6 — Dũng **không hỏi thẳng**, dùng 「次回、ご一緒できたら…」 và để anh Hiroshi tự mở. ✅
  - rule_31 知覧特攻 — cùng khuôn, thêm 「朝早く静かな時間に」. ✅
  - rule_32 沖縄戦 / ひめゆり / 6/23 — cùng khuôn; **KHÔNG lẫn 8/6 (Hiroshima) với 6/23 (Okinawa)**. ✅
  - rule_21 アイヌ đưa vào NG 「chỉ nói khi khách mở lời」. ✅
  - rule_29 お遍路 có NG 「hỏi quá chi tiết với khách chưa đi → khoe kiến thức」. ✅
  - **Không có lời khuyên ép rượu** trong phần III (rule_31 前割り, rule_30 麦焼酎 chỉ mô tả cách uống).
- **Trục B (tự mâu thuẫn): 0 lỗi.** Script quét mọi cặp (số, đơn vị) trong từng file: chỉ 1 hit ở rule_24 (「3段階の食べ方」 d54 vs 「2段目」 d58) — đọc ra thì **không mâu thuẫn** (3 bước ăn, "bát thứ 2" là 1 trong 3 bước). Cặp `約20店舗`/`25店舗` của rule_28 **đã tuyệt chủng**.
- **Trục C (tiếng Nhật sai): 0 lỗi.** Quét 16 pattern 二重敬語 (`部長様`, `おっしゃっておられ`, `ご質問になられ`, `お伺いさせていただ`, `申させていただ`…) + 過剰敬語 (`ご請求書`) + ら抜き (`見れる`/`食べれる`/`来れる`) → **0 hit**, khớp thước đo main Claude. Keigo của 黒田社長 (rule_27: 「嬉しゅうございます」「ようご存知で」「ございましてね」) là **京言葉 trang trọng chuẩn**, không phải lỗi.

---

## 6. ⛔ NGOÀI PHẠM VI — ghi nhận, KHÔNG tự sửa

1. **`conversation.json` của 13 rule phần III** — chưa kiểm (ngoài phạm vi). Nhưng vì fix xưng hô đợt trước **chỉ chạy trên `.json`**, cần main Claude đối chiếu ngược: 5 dòng ở §3 có thể **đã đúng trong `.json`** mà **sai trong `.md`** → tình huống lệch md↔json.
2. **`voice_profiles.json`** — các speaker `吉田`, `遠藤`, `近藤`, `黒田社長`, `partner` (rule_22/29/27/31) dùng nhãn tiếng Nhật/tiếng Việt thay vì snake_case như `nakamura_cfo`/`kato_gifu`. Nếu TTS đọc từ bảng `rule.md` thì cần map.
3. **Phụ lục B (vocab tổng)** — nếu sinh tự động từ bảng Vocab của rule.md thì các lỗi Hán Việt F6/F7 (`QUÃ`, `TIẾT MA`) sẽ **lan sang phụ lục**. Sửa ở rule.md xong phải build lại.
4. **`meta/REVIEW_FINDINGS_JP.md` mục P1 về 岐阜 7蔵** là một **báo động sai** — nên ghi chú lại trong file findings để đợt sau không "sửa đúng thành sai".

---

## 7. THỨ TỰ SỬA ĐỀ XUẤT

| Vòng | Việc | Rule · dòng |
|---|---|---|
| 1 | **D1** 飛騨牛: `4等級以上` → `3等級以上`; bỏ `3歳未満の未経産牛` | 25 d84, d86, **d141 (câu vàng)** — 3 chỗ |
| 1 | **D2** 芋焼酎 99% → đổi khung ("蔵元数日本一" / "芋焼酎の代表産地") | 31 d115, d116, **d128** — 3 chỗ |
| 1 | **D3** くまモン `2010年` → `2011年` (giữ 2010 = năm ra đời nếu muốn) | 31 d40, **d47, d138, d166** — 4 chỗ |
| 1 | **D4** 王貞治 `3度の日本一(99,03,11)` → `2度(99,03)`; 2011 ghi riêng cho 秋山幸二 | 30 d89, **d104, d175** — 3 chỗ |
| 2 | **D7** だるま `創業60年` → `創業70年` hoặc `半世紀以上` (đồng bộ với cách đã vá rule_28) | 21 d39 |
| 2 | **D8** `京懐石をユネスコ` → `「和食」をユネスコ` | 27 d59 |
| 3 | **D5/D6** HLV lỗi thời: 立浪 → 井上一樹 · 岡田 → 藤川球児 (hoặc viết lại thành hồi tưởng "岡田監督の2023年") | 24 d108 · 26 d121, **d134, d158** |
| 3 | **E1–E5** xưng hô — sửa **CẢ vế đúng lẫn vế sai của E5** | 22 d38 · 23 d39, d81, d83 · 30 d69 |
| 4 | **D9** 総本宮 làm mềm · **D10** 屋台 約20軒 → 約30軒 · **D11** 世界三大潮流 | 30 d114/d129/d155/d177 · 30 d56 · 29 d102 |
| 4 | **F6/F7** Hán Việt: `QUÃ`→`QUÁ`, `TIẾT MA`→`TÁT MA` | 28 d228 · 30 d198 · 31 d214, d219 |
| 5 | P2 tồn (大野智, ポーたま, 沖縄SV JFL, F1/F2/F4 nhất quán) | — |

**Nguyên tắc:** mọi fix ở vòng 1–3 phải đi **ĐỦ 3–5 TẦNG** (thoại JA → dịch VN → tóm tắt `> **VN:**` → câu vàng → cheat sheet/vocab). Cách vá rule_28 và rule_30 ở v1.1 là **mẫu chuẩn** — hãy lặp lại đúng cách đó.

---

## 8. ⛔⛔ DANH SÁCH **CẤM SỬA** — chỗ ĐÚNG rất dễ bị sửa nhầm

| # | Vị trí | Nội dung | VÌ SAO CẤM |
|---|---|---|---|
| **C1** | rule_25 d65, d168 | 「**飛騨高山には7つの蔵元**」 + cheat sheet liệt kê đủ 7 (老田/舩坂/川尻/二木/平瀬/平田/原田) | `REVIEW_FINDINGS_JP.md` P1 **đề nghị đổi thành 6** — **ĐÓ LÀ BÁO ĐỘNG SAI.** Trang chính thức Takayama xác nhận **7 蔵**. Con số 6 chỉ là số lò tham gia lễ hội 「のん兵衛まつり」. **Sửa 7→6 là biến ĐÚNG thành SAI.** |
| **C2** | rule_26 d123, d156 | 「**18年ぶり**やった!」 và 「**2023年の18年ぶり優勝**」 | JP review P2 gợi ý "conflate 18年/38年". Sách viết ĐÚNG: **18年ぶり リーグ優勝** (2005→2023) và câu chuyện lời nguyền 1985→2003 nói riêng ở d127-130. **Đừng đổi 18 thành 38** — 38年 là 日本一, không phải リーグ優勝. |
| **C3** | rule_28 d195 · rule_31 d178 · rule_21 d145 | Các ghi chú "cải chính": `大野智…実は東京` · `⚠️ 黒霧島 là 霧島酒造 tỉnh Miyazaki, không phải Kagoshima` · `⚠️ 新庄剛志…quê Fukuoka, không phải người Hokkaido` | Đây là **KẾT QUẢ của các fix trục D trước đó** — cố tình để cảnh báo. **Đừng "dọn cho gọn" mà xóa mất.** (Riêng 大野智 thì JP review muốn **thay bằng người khác**, không phải bỏ ghi chú — nếu thay thì thay cả dòng.) |
| **C4** | rule_29 d56 | 「**千と千尋**の油屋のモデル**とも言われとる**ね」 | Miyazaki nói "không có model duy nhất, nhưng Dōgo có trong đó". Sách đã dùng đúng lối nói mềm 「とも言われとる」. **Đừng nâng lên thành khẳng định** (nhiều blog nói "công nhận chính thức" — sai). |
| **C5** | rule_29 d39, d41 | 「**1368段**」 (金刀比羅宮) | 785段 là tới **本宮**; **1368段** là tới **奥社** — và sách nói rõ 「1368段のうち**奥社**まで行く強者は少ない」. **Đừng đổi 1368→785.** |
| **C6** | rule_29 d108 | 「徳島は全国シェア**95%以上**」 (すだち) | Số thật là 98%. Sách viết "95%以上" là **an toàn hơn**, vẫn đúng. Không cần sửa; nếu sửa thì chỉ được nâng lên 98%, **đừng hạ xuống**. |
| **C7** | rule_32 d116, d135, d162, d187 | 首里城正殿 「**2026年11月に正殿の復元が完成した**ばかり」 (thì **quá khứ**) | Bối cảnh scenario là **tháng 2/2027** → dùng quá khứ là **ĐÚNG**. Mốc thật: 完成式 2026/11/22. **Đừng đổi về thì tương lai 「2026年秋完成予定」** như findings cũ gợi ý — findings viết từ 4/2026, nay đã lỗi thời. |
| **C8** | rule_28 d103, d110, d164 | 「弥山…**広島平和記念公園の『平和の灯』**もここから採火された」 | Đã vá đúng từ 東京タワー. **Đừng khôi phục.** |
| **C9** | rule_30 d72, d73, d75, d174 | 「九州は麦焼酎文化、**特に大分が生産量日本一**(いいちこ・二階堂)。**福岡でも**屋台で麦焼酎をよく頼む」 | Đã vá đúng từ "福岡は麦焼酎の生産量日本一". Câu hiện tại **vừa đúng sự thật vừa giữ được mạch hội thoại Fukuoka**. **Đừng rút gọn lại thành "福岡の麦焼酎".** |
| **C10** | rule_28 d33/d35/d52/d154/d183 | 「**3階建て約20店舗**」 (お好み村) — cả 5 chỗ | Đã vá từ "4階建て25店舗". Đây là **ca trục B duy nhất của sách 08** và đã dứt điểm. **Đừng đụng lại.** |
| **C11** | rule_21 d35 · rule_22 d41 · rule_23 d76 · rule_25 d92 · rule_27 d36/d88/d117 · rule_28 d41/d66 · rule_31 d88 | Các dòng dịch VN bắt đầu bằng 「**Em** biết…/Em rành…」 | Đây là **NGÔI 2** — khách Nhật khen Dũng (JA gốc là 「よく知ってるね」「ようご存知で」「知っとるかい」). **KHÔNG phải lỗi xưng hô.** Script sửa "Em"→"Tôi" chạy mù sẽ **phá 10 dòng đúng** để lấy 5 dòng sai. Chỉ dùng Edit thủ công theo §3. |
| **C12** | rule_28 d132 / rule_31 d96 / rule_32 d128 | Cả 3 đoạn nhạy cảm đều theo khuôn 「次回、ご一緒できたら…」 + 「朝早く静かな時間に」 | Là **thiết kế sư phạm cố ý** (dạy cách chạm chủ đề chiến tranh mà không xâm phạm). **Đừng "làm cho tự nhiên hơn" bằng cách để Dũng hỏi thẳng.** |
| **C13** | Toàn bộ phương ngữ | 博多弁 (`〜と?`/`ばい`/`やけん`/`しゃい`/`とっとー?`) · 広島弁 (`じゃけぇ`/`とる`/`ぶち`) · 関西弁 (`ほんま`/`ちゃう`/`ねん`/`やん`) · 鹿児島弁 (`ぼっけ`/`じゃっど`) · 沖縄 (`さ〜`/`だからよ`/`なんくるないさ〜`) · 東北 (`いがった`) · 京言葉 (`どす`/`はんなり`/`いけず`) | Trông "sai ngữ pháp chuẩn" nhưng là **CHỦ Ý**, và đã được JP native review khen là dùng đúng liều. **Tuyệt đối không "chuẩn hóa".** |
| **C14** | rule_21 d96–d101 (Scenario 4) | Khối hội thoại **NG** (Dũng gộp nhầm Hokkaido vào Tohoku) | Là ví dụ SAI **cố ý** để dạy. **Đừng báo/sửa như lỗi của sách.** |
| **C15** | rule_24 d12, d171 | 「ケチ」 / 「名古屋人ケチ」 trong mục NG | Là **cảnh báo dạy học** ("người ngoài nói ra là bất lịch sự"), không phải sách đang miệt thị. **Đừng xóa.** |

---

*S3 — phần_III (rule_21→33) — 13 file, 2.826 dòng — 61 dữ kiện kiểm chứng bằng WebSearch — hoàn tất 2026-08-15.*
