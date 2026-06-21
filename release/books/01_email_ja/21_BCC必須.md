---
id: 820000021
curriculum_id: 800000002
order_index: 21
node_type: rule
title: "Rule 21 — 関係のない多人数への<ruby>一斉<rt>いっせい</rt></ruby><ruby>送信<rt>そうしん</rt></ruby>は必ずBCC"
rule_no_original: "21"
slug: "BCC必須"
part_original: "第1章"
language: ja
---
# Rule 21 — 関係のない多人数への<ruby>一斉<rt>いっせい</rt></ruby><ruby>送信<rt>そうしん</rt></ruby>は必ずBCC
> **<ruby>要点<rt>ようてん</rt></ruby>.** **お互いに<ruby>面識<rt>めんしき</rt></ruby>のない<ruby>複数<rt>ふくすう</rt></ruby>の<ruby>相手<rt>あいて</rt></ruby>に同じメールを送る**場面 — <ruby>顧客<rt>こきゃく</rt></ruby>リスト、<ruby>取引先<rt>とりひきさき</rt></ruby>リスト、複数<ruby>部署<rt>ぶしょ</rt></ruby>への<ruby>通知<rt>つうち</rt></ruby> — では**BCCが必須**。`To:` または `Cc:` に並べると、**各人のメールアドレスが他の全員に<ruby>公開<rt>こうかい</rt></ruby>**されてしまう。プライバシー<ruby>侵害<rt>しんがい</rt></ruby>であり、場合によっては<ruby>個人情報保護法<rt>こじんじょうほうほごほう</rt></ruby>（<ruby>改正<rt>かいせい</rt></ruby>個人情報保護法<ruby>令和<rt>れいわ</rt></ruby>4年<ruby>施行<rt>しこう</rt></ruby>）<ruby>違反<rt>いはん</rt></ruby>になる。
>
> キーワード：**「一斉送信＝BCC」**。

## <ruby>背景<rt>はいけい</rt></ruby>
<ruby>年末<rt>ねんまつ</rt></ruby>、ズンは<ruby>弊社<rt>へいしゃ</rt></ruby>の50社の顧客に年末の<ruby>挨拶<rt>あいさつ</rt></ruby>メールを送る必要がある。これらの顧客<ruby>同士<rt>どうし</rt></ruby>は<ruby>競合<rt>きょうごう</rt></ruby>または取引先の関係 — 誰もがティエンファットの顧客だと**<ruby>互<rt>たが</rt></ruby>いに知るべきではない**。

## 悪い例 — 全員を `To:` に入れる
> **To:** matsumoto.akira@hakuo.co.jp, hoa.tanaka@vpc.co.jp, sato.tetsuo@phuongnam-j.co.jp, ... (<ruby>残<rt>のこ</rt></ruby>り47件)
>
> <ruby>各位<rt>かくい</rt></ruby>、
>
> 年末にあたり、弊社より...

**<ruby>結果<rt>けっか</rt></ruby>.**
- <ruby>松本<rt>まつもと</rt></ruby>は自分のメールを開いた<ruby>瞬間<rt>しゅんかん</rt></ruby>、49社の他顧客リストを<ruby>目<rt>め</rt></ruby>にする → ティエンファットの顧客リスト<ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>把握<rt>はあく</rt></ruby>。
- 誰か1人が **「<ruby>全員返信<rt>ぜんいんへんしん</rt></ruby>」** を<ruby>誤<rt>あやま</rt></ruby>って<ruby>押<rt>お</rt></ruby>すと、49人に対してスパム<ruby>的<rt>てき</rt></ruby>に<ruby>届<rt>とど</rt></ruby>く。
- <ruby>白鷗<rt>はくおう</rt></ruby>の競合が50社リスト<ruby>内<rt>ない</rt></ruby>にいると、白鷗がティエンファットを<ruby>利用<rt>りよう</rt></ruby>していることが競合にバレる。
- 誰かのメールがハッキングされれば、スパマーが50件分の送信先リストを<ruby>手<rt>て</rt></ruby>に入れる。

**<ruby>法的<rt>ほうてき</rt></ruby><ruby>観点<rt>かんてん</rt></ruby>.** 日本の改正個人情報保護法（令和4年4月施行）および令和5年のプライバシー<ruby>強化<rt>きょうか</rt></ruby><ruby>指針<rt>ししん</rt></ruby>において、メールアドレスは個人情報。<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>必要性<rt>ひつようせい</rt></ruby>のない<ruby>第三者<rt>だいさんしゃ</rt></ruby>への<ruby>開示<rt>かいじ</rt></ruby>は、場合によっては<ruby>行政処分<rt>ぎょうせいしょぶん</rt></ruby><ruby>対象<rt>たいしょう</rt></ruby>。

## 良い例 — `Bcc:` に入れる
> **To:** info@tienphat.com.vn *（自社の代表アドレス）*
> **Bcc:** matsumoto.akira@hakuo.co.jp, hoa.tanaka@vpc.co.jp, sato.tetsuo@phuongnam-j.co.jp, ... (残り47件)
>
> 各位、
>
> 年末にあたり、弊社より...

**<ruby>起<rt>お</rt></ruby>こること：**
- <ruby>各顧客<rt>かくこきゃく</rt></ruby>は自分だけにメールが届いた<ruby>形<rt>かたち</rt></ruby>で<ruby>受信<rt>じゅしん</rt></ruby>（`To:` には `info@tienphat.com.vn` のみ）。
- 他のBCC先の<ruby>存在<rt>そんざい</rt></ruby>を知ることはない。
- 誰かが「全員返信」を押しても、ティエンファットにしか<ruby>返<rt>かえ</rt></ruby>らない — 他48人に<ruby>影響<rt>えいきょう</rt></ruby>なし。

## To / Cc / Bcc <ruby>使<rt>つか</rt></ruby>い分けの指針
| メールの<ruby>種類<rt>しゅるい</rt></ruby> | 使うもの |
|-------------|---------|
| 1名への<ruby>直接<rt>ちょくせつ</rt></ruby>送信 | その人を `To:` |
| 1名<ruby>宛<rt>あて</rt></ruby>、<ruby>関係者<rt>かんけいしゃ</rt></ruby>1〜3名が知るべき | <ruby>主受信者<rt>しゅじゅしんしゃ</rt></ruby>を `To:`、関係者を `Cc:`（<ruby>紹介付<rt>しょうかいつ</rt></ruby>き — Rule 20） |
| <ruby>小人数<rt>しょうにんずう</rt></ruby>グループ（3〜7名）、お互い<ruby>顔見知<rt>かおみし</rt></ruby>り | 全員を `To:` — <ruby>既<rt>すで</rt></ruby>に<ruby>相互<rt>そうご</rt></ruby><ruby>認識<rt>にんしき</rt></ruby>あり |
| 10名以上、**相互認識あり**（例：部署全員） | 全員を `To:` または部署エイリアス（`sales@tienphat.com.vn`） |
| 10名以上、**相互認識なし** | **`Bcc:` 必須** |
| 顧客への一斉通知 | **`Bcc:` 必須** |

## BCCが<ruby>不適切<rt>ふてきせつ</rt></ruby>な場合
### ケース1 — <ruby>上司<rt>じょうし</rt></ruby>を「<ruby>仕掛<rt>しか</rt></ruby>けとして」BCC
取引先にメールを送る<ruby>際<rt>さい</rt></ruby>、取引先に**<ruby>告<rt>つ</rt></ruby>げずに**上司をBCCで追えさせる。上司が誤って「全員返信」を押すと → 取引先が<ruby>気<rt>き</rt></ruby>づく → <ruby>信頼<rt>しんらい</rt></ruby><ruby>失墜<rt>しっつい</rt></ruby>。<ruby>組織<rt>そしき</rt></ruby><ruby>文化<rt>ぶんか</rt></ruby>の<ruby>透明性<rt>とうめいせい</rt></ruby>の<ruby>欠如<rt>けつじょ</rt></ruby>も<ruby>表<rt>あらわ</rt></ruby>す。

**正しい<ruby>方法<rt>ほうほう</rt></ruby>：**
- 送信後に上司へ<ruby>転送<rt>てんそう</rt></ruby>。
- あるいはCCして紹介する（「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>をご<ruby>参考<rt>さんこう</rt></ruby>までにCCしております」） — <ruby>公式化<rt>こうしきか</rt></ruby>する。

### ケース2 — スレッドで新しい受信者を<ruby>追加<rt>ついか</rt></ruby>
スレッドが<ruby>話題<rt>わだい</rt></ruby>を変え、<ruby>新<rt>あら</rt></ruby>たに誰かを<ruby>参加<rt>さんか</rt></ruby>させる必要がある時、BCCで「こっそり」入れない。新しいメール<ruby>本文<rt>ほんぶん</rt></ruby>で<ruby>明示<rt>めいじ</rt></ruby>する：「トゥアンリーダーをここから参加させます、<ruby>継続<rt>けいぞく</rt></ruby>してご<ruby>確認<rt>かくにん</rt></ruby>いただきます。」

### ケース3 — 「<ruby>説明<rt>せつめい</rt></ruby>したくないから」BCC
*この人をなぜ<ruby>加<rt>くわ</rt></ruby>えるか説明したくない*からBCC、なら<ruby>自問<rt>じもん</rt></ruby>：「説明すると何か<ruby>問題<rt>もんだい</rt></ruby>があるか？」 問題があるなら、CCもBCCもしない。問題なければ、CCして紹介する。

## 一斉送信時のBCC<ruby>設定<rt>せってい</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>
1. **メール本文を<ruby>先<rt>さき</rt></ruby>に書く。** まだ<ruby>宛先<rt>あてさき</rt></ruby>を入れない。
2. **`To:` に自分、または<ruby>会社<rt>かいしゃ</rt></ruby><ruby>代表<rt>だいひょう</rt></ruby>アドレス**（`info@tienphat.com.vn`）を入れる。
3. 顧客メールリストをコピー、**`Bcc:` に<ruby>貼<rt>は</rt></ruby>り付け**、`To:` や `Cc:` に<ruby>混入<rt>こんにゅう</rt></ruby>していないか2回確認。
4. **<ruby>再度<rt>さいど</rt></ruby>確認する。** 一度<ruby>誤送信<rt>ごそうしん</rt></ruby>すると<ruby>取<rt>と</rt></ruby>り消せない。
5. リストが100件を<ruby>超<rt>こ</rt></ruby>える場合、BCCはスパムフィルタで<ruby>弾<rt>はじ</rt></ruby>かれやすくなる — <ruby>専用<rt>せんよう</rt></ruby>のメールマーケティングツール（Mailchimp、SendGrid、<ruby>配配<rt>はいはい</rt></ruby>メール）を<ruby>使用<rt>しよう</rt></ruby>すべき。

## 使えるフレーズ
> **「相互面識のない<ruby>複数人<rt>ふくすうにん</rt></ruby>＝BCC、Cc ではない。<ruby>送信前<rt>そうしんまえ</rt></ruby>に2回確認。」**

*使うとき：* メールに5以上の宛先があり、互いに面識があるか<ruby>確信<rt>かくしん</rt></ruby>できない時。<ruby>迷<rt>まよ</rt></ruby>ったら**デフォルトはBCC**。
