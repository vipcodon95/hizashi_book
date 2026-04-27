# Sách 08 — JP Review v1.0

Reviewer: Native JP business communication / regional dialect lens
Date: 2026-04-26
Files reviewed: rule_21/22/25/26/28/30/32, rule_01/03/08/10/12/15/42/43/47/50, phụ_lục_E, voice_profiles.json, _front_matter.md, phụ_lục_D_templates.md

---

## Score: 8.5/10

**Strengths:** depth on regional rules (especially 25/28/30/32) is genuinely native-tier — many Japanese business books don't go this deep on Hida/Hiroshima specifics. Dialect words used are correct in context. Damage-control patterns in rule_08 are excellent. Memory-bank framework (rule_50) is professional-grade.

**Main risks:** a handful of factual slips that a native Hida/Hiroshima/Fukuoka reader will catch instantly; minor self-reference 弊社 hygiene issue on letter template; a couple of 様/さん inconsistencies; one or two over-stuffed scenarios where Dũng's encyclopedic recall starts to feel implausible (calibration note, not a defect).

---

## P0 Critical (must fix)

- **rule_28 広島 Scenario 3, line L7 — FACTUAL ERROR on 弥山 霊火.** File `nội_dung/phần_III/rule_28_広島/rule.md:73`. Text: 「東京タワーの聖火もここから採火された」. The flame from 弥山 消えずの霊火 was used for 広島平和記念公園の**平和の灯**, NOT Tokyo Tower. Tokyo Tower never had an Olympic-style 聖火 lit from Misen. → Fix: 「広島平和記念公園の『平和の灯』もここから採火された」.

- **rule_30 福岡 Scenario 2 line L9 + Cheat Sheet — FACTUAL ERROR on 麦焼酎 ranking.** File `nội_dung/phần_III/rule_30_福岡/rule.md:53` and line 134 cheat-sheet. Text: 「福岡は麦焼酎の生産量日本一」. **Oita (大分)** is the dominant 麦焼酎 producer (いいちこ・二階堂 are both 大分); 福岡 is well known for 日本酒 (喜多屋, 三井の寿). Calling 福岡 #1 in 麦焼酎 will be flagged immediately by any Kyushu native. → Fix: 「九州は麦焼酎文化、特に大分が生産量日本一。福岡でも屋台で麦焼酎をよく頼む」 or simply remove the "日本一" claim.

- **rule_30 福岡 Cheat Sheet — Famous figures error.** File `rule_30_福岡/rule.md:139`. Listing "黒田博樹 (大阪生まれだが福岡で育つ説 — 実は大阪)". Kuroda was born and raised in **Osaka** and pitched for 広島カープ — he has **no Fukuoka connection** beyond the parenthetical "実は大阪". Listing him under Fukuoka 出身者 (even with self-correction) creates more confusion than value. → Just remove him from the 福岡 list (he belongs in Osaka/Hiroshima context only).

- **rule_26 大阪 Cheat Sheet — Famous figures error.** File `rule_26_大阪/rule.md:140`. "安倍晋三 (元首相, 鳥取出身だが大阪育ち trick — actually Tokyo)". Abe was born in Tokyo, family register Yamaguchi. **Yamaguchi or Tokyo** is the right framing — 鳥取 is wrong. → Replace with someone unambiguously Osaka (e.g., 桂文枝, 上沼恵美子, 浜田雅功, 松本人志).

- **Self-reference hygiene — letter template uses 「ティエンファット社」 as own-company signature.** File `phụ_lục_D_templates.md:104` (also `_combined.md:11440`). In a memory-bank reactivation email written by Dũng, the signature line is 「ティエンファット社」. JP business writing convention: use 「弊社 ティエンファット」 or just 「ティエンファット」 in body, and the signature block should be the company name without 社 OR with 株式会社 prefix. **Adding 社 as a suffix to one's own company in formal context reads non-native.** → Fix to either 「ティエンファット株式会社」(if registered as such) or 「ティエンファット」 (no 社).

---

## P1 Important

- **rule_28 広島 — お好み村 floor count.** File `rule_28_広島/rule.md:31`. "**4階建て25店舗**". Real お好み村 is a **3-story building with ~22-24 shops** (varies). Saying "4階25店舗" will be caught by Hiroshima locals. → Fix: 「3階建て約20店舗」 or use generic「お好み焼の聖地」 without exact counts.

- **rule_28 広島 Scenario 1 L3 — 麗ちゃん founding year.** File `rule_28_広島/rule.md:33`. 「**創業60年**」. 麗ちゃん was founded ~1957, i.e., ~67-68 years as of 2026. Numbers like "60年" age out. → Use 「創業半世紀以上」 or 「老舗中の老舗」 for evergreen accuracy.

- **rule_03 親密度 Scenario 1 + 4 — 「加藤様」 inconsistency.** File `rule_03_親密度レベル/rule.md:35,82`. Verbal address with 「様」 in spoken business 雑談 (face-to-face) sounds **stiff/uncommon** in modern JP — even at first meeting after 名刺交換, native speakers say 「加藤さん」. 「様」 belongs to written email/letter and broadcast/over-the-counter contexts. The book elsewhere correctly uses さん (e.g., 大垣さん, 松本さん). → Replace 「加藤様」 with 「加藤さん」 to match modern verbal norm.

- **rule_25 岐阜 — 7 sake breweries claim.** File `rule_25_岐阜/rule.md:50,129`. "飛騨高山には7つの蔵元". Currently active Hida-Takayama breweries are usually counted as **6** (二木, 平瀬, 平田, 川尻, 老田, 舩坂; 原田 is from 飛騨古川 not Takayama proper depending on counting). The list of 7 is debatable. → Either say 「6〜7蔵元」 or specify "高山+飛騨地域で7蔵".

- **rule_30 福岡 Scenario 4 L1 — 「全国12,000の天満宮の総本宮」.** File `rule_30_福岡/rule.md:81`. 北野天満宮 (Kyoto) **also claims 総本宮** status. The dual-claim is well known; saying 太宰府 unique 総本宮 is partly disputed. → Soften to 「全国天満宮の総本宮の一つ」 or 「全国天満宮の総本社的存在」.

- **rule_32 沖縄 Scenario 4 L1 — 首里城正殿 復元 timeline.** File `rule_32_沖縄/rule.md:83`. "2026年復元完成目指して". Latest Okinawa Pref. plan targets **2026年秋 完成** for 正殿 — but with the publishing date 2026-04, by the time the reader reads this, they may already see news of completion. → Consider 「2026年秋に正殿復元完成予定」 to be specific, or update during proof.

- **rule_28 広島 — 大野智 line in Famous figures.** File `rule_28_広島/rule.md:151`. "大野智 (嵐, 三原市生まれの都市伝説あり実は東京)". Mentioning a celebrity primarily to debunk a rumor is awkward filler in a regional pride section — a Hiroshima senior reading this will say "なぜ嵐の話?". → Replace with confirmed Hiroshima natives: **西城秀樹**(already listed)、**ペコパ松陰寺**、**有吉弘行 (広島市)**、**山本浩二 (Carp legend)** for senior, **Perfume (3 of 3 are Hiroshima)** for younger crowd.

- **rule_22 東北 — 福島の桃 「天下一品」.** File `rule_22_東北/rule.md:79`. 山梨 is widely considered Japan's #1 peach prefecture (production volume + 桃源郷 brand); 福島 is #2. 「天下一品」 with no qualifier risks pushback from Yamanashi natives. → Soften to 「全国2位の生産量で、あかつき・ゆうぞらが品種」. Also: 「**あかつき** is correct, but 「ゆうぞら」 is one of several — could add 「川中島白桃」 which is a major variety.

- **Phụ lục E 茨城 lễ hội cell empty.** File `phụ_lục_E_47_prefectures.md:32`. 茨城 row has Sport (鹿島アントラーズ) but no festival listed. Easy add: **水戸の梅まつり** (2-3月) or **石岡のお祭り** (9月). Same gaps in: 福井, 山梨, 千葉, 福井, 岡山, 宮崎. Several entries have "—" where a flagship festival exists. → Fill: 福井=三国祭/越前まつり, 山梨=信玄公祭り, 千葉=佐原の大祭, 岡山=西大寺会陽 (はだか祭), 宮崎=高千穂夜神楽.

- **rule_43 乾杯 — Sake serving direction.** File `rule_43_乾杯お酌/rule.md:69`. "ochoko Matsumoto cao hơn vành tokkuri Dũng vì mình junior". Native phrasing: when **junior pours for senior**, junior holds bottle/tokkuri **with 2 hands** — the senior holds the cup; the **cup-vs-bottle height rule applies at 乾杯, not at 注ぎ**. The current explanation conflates 乾杯 height etiquette with お酌 etiquette. → Rewrite: 「お酌時は徳利を両手で持ち、相手のお猪口に注ぐ。乾杯時はジュニアのコップが先輩のコップより低い」 (separate the two rules).

---

## P2 Polish

- **rule_25 岐阜 Scenario 4 L5 — 「ハットリハンゾー」 movie reference.** File `rule_25_岐阜/rule.md:83`. The Kill Bill Hattori Hanzo sword is a famous association but using it in a 雑談 with a 50-55t Gifu local feels off-target — Kato-san is more likely to flex 武生 / 関の刃物 export to Michelin chefs (Bocuse, Ducasse) than a Tarantino reference. → Replace with 「**世界中の三ツ星レストランで関の包丁が使われている**」 — more impressive to senior craftsman type.

- **rule_26 大阪 Scenario 4 L8 — Saunders/呪い detail.** File `rule_26_大阪/rule.md:89`. "**KFCの像を道頓堀に投げ込んで18年勝てなかった**" — actually 21 years from 1985 to 2003 (and the curse was declared lifted in 2003 not when statue was found). Found 2009 is correct, but the gap "18年勝てなかった" is the gap from 1985 → 2003. The conversation conflates 18年 (until 2003 league) with 38年 (until 2023 日本一). → Clarify: 「1985年優勝→2003年リーグ優勝まで18年、日本一は2023年まで38年」.

- **rule_30 福岡 Scenario 3 L7 — 「絶対 speechless」 reaction beat.** Across rules 25/26/28/30/32, the host (Kato/Yamamoto/Hiroshi/Sato/Kobayashi) reacts with absolute astonishment to **every** detail Dũng recalls. After the 4th "speechless"/"目を輝かせる"/"誇らしげ" beat in one rule, it stops feeling natural and starts feeling like a fan-fic. → Vary reactions: occasionally have the host **slightly correct** Dũng ("惜しい!正確には〜") or **add nuance Dũng didn't know**, so the conversation feels like exchange not pure-recall flex.

- **rule_32 沖縄 Scenario 2 L7 — 「ポーク玉子おにぎり」 description.** File `rule_32_沖縄/rule.md:49`. "ポーク玉子おにぎり、生活食さ". Native phrasing: 「ポーたま」 is the common shorthand local would use. Adding 「地元では『ポーたま』って呼ぶよ」 = +depth.

- **rule_32 沖縄 Cheat Sheet — Sport teams.** File `rule_32_沖縄/rule.md:148`. Lists "**FC琉球 (J)**, **琉球ゴールデンキングス (B)**, **沖縄SV**". 沖縄SV is JFL not J — could clarify. Also missing **琉球コラソン (handball)** which is a niche but real Okinawa pride point.

- **rule_45 カラオケ Scenario 2 — duet pairing concern.** File `rule_45_カラオケ/rule.md:46-50`. Suggesting 大垣 (55t male senior) + 山本 (38t female Osaka manager) duet of 松田聖子『青い珊瑚礁』 — even with the "Yamamotoさんと一緒に" softening, putting a senior male and a junior female on a 1980s idol love-song duet at a 二次会 has #MeToo-era discomfort risk. → Safer: suggest the **whole table** sing along, or pair 大垣 with the song solo, with everyone clapping.

- **rule_28 広島 Cheat Sheet line on サンフレッチェ命名.** File `rule_28_広島/rule.md:145`. 「名前由来: 毛利元就 三本の矢」. Good. But adding 「サン(三)+フレッチェ(伊語で矢)」 etymology in 1 phrase = senior compliments Dũng for trivia. Optional add.

- **rule_42 居酒屋 Scenario 1 L7 — 「お通しに加えて」 phrasing.** File `rule_42_居酒屋オーダー/rule.md:34`. 「お通しに加えて、枝豆と冷奴をすぐに」. お通し is auto-served, you don't "add to" it — you just order extras. Native: 「お通しは自動で出ると思いますが、すぐに食べたいので**枝豆と冷奴を先に**お願いします」. Minor.

- **rule_22 Tohoku — 山形「東北一の酒どころ」.** File `rule_22_東北/rule.md:45`. 「東北一の酒どころ」. By kura count and brand prestige (Niigata aside which isn't Tohoku), 山形 is indeed top, but 秋田 (新政, 雪の茅舎) and 福島 (飛露喜, 写楽) are close competitors and a Yamagata local saying "東北一" risks looking parochial. → Soften: 「東北屈指の酒どころ」.

- **rule_21 北海道 Scenario 4 — Dialogue with NG explicitly labeled.** File `rule_21_北海道/rule.md:74-76`. The "NG" scenario shows ズン apologizing — good — but only **3 lines**. Other rules' NG scenarios have 5-7 lines with longer recovery / GOOD version. Slightly thin. Consider expanding with a "GOOD pivot" follow-up showing how Dũng successfully recovers.

- **Phụ lục E 鹿島 sport team in 茨城 row.** File `phụ_lục_E_47_prefectures.md:32`. Just 「鹿島アントラーズ」 listed. Could add 「水戸ホーリーホック」 (J2) and 「茨城ロボッツ」 (B). Minor.

- **rule_47 GOLD topic #6 — example query 「広島カープ/巨人/阪神/ホークス、今シーズン調子どうですか?」** Files show both 巨人 and カープ; works but a senior who supports neither will deflect. → Add note: "ask about TEAM matching THEIR home prefecture, not random teams" — the rule implies but doesn't say.

- **rule_50 メモバンク Scenario 1 L4 — 「来月共通テストやけど」 timing.** Common Test is held mid-January every year. If meeting is in May (current case), saying "来月" doesn't fit the school year. → Either set the meeting in December, or change daughter's status to 私立大入試/内申 (which can be year-round).

- **Speaker key check — voice_profiles.json vs rule files.** Spot check: all speakers used in sampled rules (zun, fuon, tuan_leader, hai, ha_cto, matsumoto, nakamura_cfo, oogaki_sales, tanaka_pmo, hiroshi_chugoku, yamamoto_kansai, sato_kyushu, kobayashi_okinawa, ito_nagoya, kato_gifu) are present in voice_profiles.json. **Speaker key consistency: PASS.** Note: rule files sometimes write `**ズン**`/`**ハー**`/`**トゥアン**` in tables instead of the snake_case keys used in conversation.json. Both styles co-exist throughout — fine, but if TTS reads from rule.md tables it needs a map.

- **Format consistency check.** All sampled rules follow Luận điểm → Tâm lý → Bối cảnh → Scenarios → Câu vàng → NG → Vocab → BJT order. **PASS.** Each has 4 scenarios except rule_47 (2 scenarios — but rule_47 is a "rescue list" type, justified) and rule_50 (2 scenarios — also justified as it's a meta-rule). All 6 regional rules have 4 scenarios as required.

---

## What's working well

- **rule_25 岐阜 depth is exceptional.** 14 months/3 years/grade 4 飛騨牛 criteria, 鵜飼 5/11-10/15 dates, 関 vs 堺 disambiguation, 美濃焼 50%生産シェア with 志野/織部/黄瀬戸 lineup — this is genuinely native-tier and rare in Japanese-language business books, let alone JP-VN bilingual ones. Anh Kato's reactions are the most credible across the 6 regional rules.

- **rule_28 広島 「焼く技術 vs 混ぜる材料」哲学 framing** — the Hiroshi-san line distinguishing the two okonomiyaki philosophies is original framing that captures real local sentiment without dunking on Osaka. Excellent.

- **rule_32 沖縄 文化 sensitivity handling.** ハイサイ/めんそ〜れ greeted properly, the **8/6 = Hiroshima, 6/23 = Okinawa 慰霊の日** distinction is preserved (rule_28 and rule_32 don't conflate), and the 「次回ご一緒できれば」 framing for 平和記念 / ひめゆり is exactly the right register for a JP-VN business book. Tier S.

- **rule_30 福岡 Hakata-ben use** is appropriately light — Sato uses 「〜と?」「〜ばい」「〜やけん」「〜けん」 sparingly without burlesque. Senior 60t register matches Hakata-ben rhythm correctly.

- **rule_08 NG話題 damage control patterns** are top-tier and would help a real Vietnamese BD person on day 1. The 4-scenario structure showing "Vietnamese teammate slip → Dũng rescues" is a much better teaching pattern than abstract rules.

- **rule_43 乾杯・お酌 etiquette accuracy.** 80% bia + 20% bọt, ラベル方向, 2-handed pour, 一気飲み warning — all correct. The 100% VN dô/dô rescue scenario is a genuinely useful intercultural insight.

- **rule_50 memory bank framework** with 30-min-after-dinner discipline and 3-min-pre-meeting review is solid CRM thinking grounded in JP relationship culture. The Ōgaki daughter 受験 example is exactly the kind of moment that wins relationships.

- **rule_47 GOLD topic table with #9/#10 senior-only flag.** Distinguishing "topic safe with stranger" from "topic safe only with senior already-met" is correctly handled.

- **47 prefectures cheat sheet (Phụ lục E) coverage.** All 47 covered, formatting consistent, sport-team mappings mostly correct, regional groupings (8 regions) standard.

- **Cross-references to other Sách (e.g., 自酌 → Sách 07 rule 26).** Good ecosystem hygiene.

---

## Summary

The book is publication-ready after fixing the 5 P0 items (1 factual on 弥山/Tokyo Tower, 1 factual on 福岡 麦焼酎, 2 famous-figures errors, 1 self-company signature hygiene). P1 items will tighten native-feel from "very good for non-native" to "indistinguishable from native business writing". The regional depth on Gifu/Hiroshima/Fukuoka/Okinawa is the book's standout strength and should be marketed as such.
