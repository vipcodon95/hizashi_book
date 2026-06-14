# Rule 69 — <ruby>機種<rt>きしゅ</rt></ruby><ruby>依存<rt>いぞん</rt></ruby><ruby>文字<rt>もじ</rt></ruby>と<ruby>文字<rt>もじ</rt></ruby>コードに<ruby>注意<rt>ちゅうい</rt></ruby>

> **<ruby>要点<rt>ようてん</rt></ruby>.** 日本語メールで**<ruby>機種<rt>きしゅ</rt></ruby><ruby>依存<rt>いぞん</rt></ruby><ruby>文字<rt>もじ</rt></ruby>**（①②③、㈱、Ⅰ Ⅱ Ⅲ、㎡、♡、など）を使うと、<ruby>受信者<rt>じゅしんしゃ</rt></ruby>の<ruby>環境<rt>かんきょう</rt></ruby>で**<ruby>文字化<rt>もじば</rt></ruby>け**や<ruby>違<rt>ちが</rt></ruby>う<ruby>文字<rt>もじ</rt></ruby>に<ruby>変<rt>か</rt></ruby>わる<ruby>可能性<rt>かのうせい</rt></ruby>がある。<ruby>特<rt>とく</rt></ruby>に<ruby>海外<rt>かいがい</rt></ruby><ruby>送信<rt>そうしん</rt></ruby>やシステム<ruby>間<rt>かん</rt></ruby><ruby>連携<rt>れんけい</rt></ruby>では<ruby>危険<rt>きけん</rt></ruby>。UTF-8を<ruby>標準<rt>ひょうじゅん</rt></ruby>とし、<ruby>機種<rt>きしゅ</rt></ruby><ruby>依存<rt>いぞん</rt></ruby><ruby>文字<rt>もじ</rt></ruby>を<ruby>避<rt>さ</rt></ruby>ける。
>
> キーワード：**「<ruby>機種<rt>きしゅ</rt></ruby><ruby>依存<rt>いぞん</rt></ruby><ruby>文字<rt>もじ</rt></ruby>を<ruby>避<rt>さ</rt></ruby>ける」**。

## よく<ruby>問題<rt>もんだい</rt></ruby>になる<ruby>機種<rt>きしゅ</rt></ruby><ruby>依存<rt>いぞん</rt></ruby><ruby>文字<rt>もじ</rt></ruby>

| <ruby>機種<rt>きしゅ</rt></ruby><ruby>依存<rt>いぞん</rt></ruby>（<ruby>避<rt>さ</rt></ruby>ける） | <ruby>代替<rt>だいたい</rt></ruby>（使う） |
|-----------------|------------|
| ①②③... | 1.、2.、3. |
| Ⅰ Ⅱ Ⅲ | I、II、III（半角） |
| ㈱ | （株）または「<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>」 |
| ㎡ | m²（<ruby>全角<rt>ぜんかく</rt></ruby>）またはm2 |
| ♡、♫、☆ | （使わない） |
| <ruby>半角<rt>はんかく</rt></ruby>カナ | <ruby>全角<rt>ぜんかく</rt></ruby>カナ |

## UTF-8の<ruby>確認<rt>かくにん</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>

### Gmail
デフォルトでUTF-8 — <ruby>通常<rt>つうじょう</rt></ruby><ruby>心配<rt>しんぱい</rt></ruby><ruby>不要<rt>ふよう</rt></ruby>。

### Outlook
ファイル → オプション → <ruby>詳細<rt>しょうさい</rt></ruby><ruby>設定<rt>せってい</rt></ruby> → <ruby>送信<rt>そうしん</rt></ruby>メッセージ → **UTF-8を<ruby>使用<rt>しよう</rt></ruby>**<ruby>設定<rt>せってい</rt></ruby>。

### <ruby>独自<rt>どくじ</rt></ruby>ドメイン
IT<ruby>部門<rt>ぶもん</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>：ヘッダー `Content-Type: text/plain; charset=UTF-8` が<ruby>設定<rt>せってい</rt></ruby>されているか。

## <ruby>事前<rt>じぜん</rt></ruby>テスト

<ruby>重要<rt>じゅうよう</rt></ruby>な<ruby>国際<rt>こくさい</rt></ruby>メール<ruby>送信<rt>そうしん</rt></ruby><ruby>前<rt>まえ</rt></ruby>：
1. <ruby>自分<rt>じぶん</rt></ruby><ruby>宛<rt>あ</rt></ruby>に<ruby>下書<rt>したが</rt></ruby>きを<ruby>送信<rt>そうしん</rt></ruby>。
2. **<ruby>別<rt>べつ</rt></ruby>の<ruby>端末<rt>たんまつ</rt></ruby>／<ruby>別<rt>べつ</rt></ruby>のメールクライアント**で<ruby>確認<rt>かくにん</rt></ruby>。
3. <ruby>文字<rt>もじ</rt></ruby>が<ruby>正<rt>ただ</rt></ruby>しく<ruby>表示<rt>ひょうじ</rt></ruby>されるか<ruby>確認<rt>かくにん</rt></ruby>。

## <ruby>海外<rt>かいがい</rt></ruby><ruby>送信時<rt>そうしんじ</rt></ruby>の<ruby>推奨<rt>すいしょう</rt></ruby> — <ruby>英語版<rt>えいごばん</rt></ruby>バックアップ

<ruby>重要<rt>じゅうよう</rt></ruby>な<ruby>国際<rt>こくさい</rt></ruby>メールは、**バイリンガル<ruby>版<rt>ばん</rt></ruby>**を<ruby>検討<rt>けんとう</rt></ruby>：

> "Dear Mr. Smith,
>
> <ruby>以下<rt>いか</rt></ruby>に日本語<ruby>版<rt>ばん</rt></ruby>、<ruby>続<rt>つづ</rt></ruby>いて<ruby>英語<rt>えいご</rt></ruby>サマリーを<ruby>記載<rt>きさい</rt></ruby>しております。
>
> [日本語<ruby>本文<rt>ほんぶん</rt></ruby>、<ruby>機種<rt>きしゅ</rt></ruby><ruby>依存<rt>いぞん</rt></ruby><ruby>文字<rt>もじ</rt></ruby>なし]
>
> --- English Summary ---
> [Key points in English]"

## 使えるフレーズ

> **「<ruby>機種<rt>きしゅ</rt></ruby><ruby>依存<rt>いぞん</rt></ruby><ruby>文字<rt>もじ</rt></ruby>は<ruby>避<rt>さ</rt></ruby>ける。UTF-8<ruby>必須<rt>ひっす</rt></ruby>。<ruby>国際<rt>こくさい</rt></ruby><ruby>送信<rt>そうしん</rt></ruby>は<ruby>事前<rt>じぜん</rt></ruby>テスト＋<ruby>英語<rt>えいご</rt></ruby>バックアップ。」**
