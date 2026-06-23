# Sách sinh viên Đại học Osaka · T6. Claude API + prompt engineering + デモ nội bộ (Claude API)

> **Mục tiêu nhân vật:** Đại 23 tuổi, intern Cybozu tuần 5-9, 7-8/2028. Học các mẫu hội thoại tiếng Nhật của intern engineer giai đoạn middle: (1) trao đổi technical sâu về API/prompt với senior, (2) bảo vệ quyết định kỹ thuật ("vanilla SDK > LangChain"), (3) báo cáo bug + đề xuất giải pháp, (4) keigo trong làm mẫu trước cả CTO, (5) nhận phản hồi và phản hồi lịch sự, (6) thảo luận chi phí + ROI bằng tiếng Nhật business.

---

## Bối cảnh

Tháng 7-8 năm 2028. Đại đã quen với nhịp làm việc ở Cybozu, prototype RAG cơ bản đã xong. Giai đoạn này deep dive vào Claude API + prompt engineering + thử LangChain. Mai mang thai gần đủ tháng (Hana dự sinh 5/8), mẹ Đại sắp bay sang chăm. Cuối kỳ là làm mẫu nội bộ trước CTO 25/8 — ngay sau khi Hana sinh ra. Chương này tập trung các mẫu câu trao đổi technical sâu, bảo vệ quyết định kỹ thuật, và keigo dùng trong presentation cấp cao.

---

## Tình huống 1 — Cybozu desk · 7/7 sáng, Sato giới thiệu Anthropic SDK lần đầu

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>今日<rt>きょう</rt></ruby>からClaude APIに<ruby>入<rt>はい</rt></ruby>ります。AnthropicのPython SDKを<ruby>使<rt>つか</rt></ruby>います。<br>*(Đại, hôm nay mình bắt đầu vào Claude API. Dùng SDK Python của Anthropic.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。OpenAI SDKとは<ruby>違<rt>ちが</rt></ruby>うところはありますか?<br>*(Vâng, em mong anh chỉ. Có gì khác so với SDK của OpenAI ạ?)* |
| Sato | <ruby>大<rt>おお</rt></ruby>きな<ruby>違<rt>ちが</rt></ruby>いは2つ。1つは「messages」<ruby>形式<rt>けいしき</rt></ruby>でrole=user/assistantを<ruby>明示<rt>めいじ</rt></ruby>。もう1つはsystem<ruby>指示<rt>しじ</rt></ruby>が<ruby>独立<rt>どくりつ</rt></ruby>パラメータです。<br>*(Khác biệt lớn có 2. Một là format "messages" chỉ rõ role=user/assistant. Hai là system prompt là parameter riêng.)* |
| Đại | なるほど、systemが<ruby>独立<rt>どくりつ</rt></ruby>しているのは<ruby>明確<rt>めいかく</rt></ruby>でいいですね。<ruby>料金<rt>りょうきん</rt></ruby>はどうでしょうか?<br>*(Hiểu rồi, system tách riêng cũng rõ ràng, tốt nhỉ. Còn pricing thế nào ạ?)* |
| Sato | Claude 3.5 Sonnetはinputが$3/M tokens、outputが$15/M tokens。プロンプトキャッシュを<ruby>使<rt>つか</rt></ruby>えばcached inputは$0.30まで<ruby>下<rt>さ</rt></ruby>がります。<br>*(Claude 3.5 Sonnet thì input $3/M token, output $15/M token. Dùng prompt caching thì cached input còn $0.30.)* |
| Đại | プロンプトキャッシュは<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。どういう<ruby>仕組<rt>しく</rt></ruby>みですか?<br>*(Prompt caching em mới nghe lần đầu. Cơ chế thế nào ạ?)* |
| Sato | <ruby>同<rt>おな</rt></ruby>じシステムプロンプトや<ruby>長<rt>なが</rt></ruby>いコンテキストを<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>す<ruby>場合<rt>ばあい</rt></ruby>、5<ruby>分間<rt>ふんかん</rt></ruby>キャッシュされて<ruby>料金<rt>りょうきん</rt></ruby>が10<ruby>分<rt>ぶん</rt></ruby>の1になる<ruby>仕組<rt>しく</rt></ruby>みです。RAGでは<ruby>必須<rt>ひっす</rt></ruby>ですね。<br>*(Khi lặp lại cùng system prompt hay context dài, sẽ được cache trong 5 phút và chi phí giảm còn 1/10. Với RAG thì gần như bắt buộc.)* |
| Đại | それは<ruby>大<rt>おお</rt></ruby>きいですね。<ruby>後<rt>あと</rt></ruby>でドキュメントを<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みます。<br>*(Cái đó lớn đấy. Lát em sẽ đọc kỹ doc ạ.)* |

---

## Tình huống 2 — Cybozu desk · 9/7, Đại trình bày 5 nguyên tắc prompt engineering thu thập được

*Đại đã đọc Anthropic docs cuối tuần, mở screen sharing với Sato để xác nhận.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>週末<rt>しゅうまつ</rt></ruby>にprompt engineeringのドキュメントを<ruby>読<rt>よ</rt></ruby>みまして、5つの<ruby>原則<rt>げんそく</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>しました。ご<ruby>確認<rt>かくにん</rt></ruby>いただけますか?<br>*(Anh Sato, cuối tuần em đọc docs prompt engineering và đã tổng hợp 5 nguyên tắc. Anh xem giúp em được không ạ?)* |
| Sato | お、いいですね。<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Ồ, hay đấy. Em nói thử xem.)* |
| Đại | 1つ<ruby>目<rt>め</rt></ruby>、<ruby>具体的<rt>ぐたいてき</rt></ruby>かつ<ruby>詳細<rt>しょうさい</rt></ruby>に<ruby>書<rt>か</rt></ruby>く。2つ<ruby>目<rt>め</rt></ruby>、XMLタグで<ruby>構造化<rt>こうぞうか</rt></ruby>する。Claudeは<document>や<example>を<ruby>好<rt>この</rt></ruby>みます。<br>*(Một, viết cụ thể và chi tiết. Hai, cấu trúc hoá bằng XML tag. Claude thích <document> và <example>.)* |
| Đại | 3つ<ruby>目<rt>め</rt></ruby>、few-shotの<ruby>例<rt>れい</rt></ruby>を3〜5<ruby>個<rt>こ</rt></ruby><ruby>入<rt>い</rt></ruby>れる。4つ<ruby>目<rt>め</rt></ruby>、chain-of-thoughtで「step by stepで<ruby>考<rt>かんが</rt></ruby>えて」と<ruby>指示<rt>しじ</rt></ruby>。5つ<ruby>目<rt>め</rt></ruby>、<ruby>出力<rt>しゅつりょく</rt></ruby><ruby>形式<rt>けいしき</rt></ruby>を<ruby>明示<rt>めいじ</rt></ruby>する(JSON schemaなど)。<br>*(Ba, đưa 3-5 ví dụ few-shot. Bốn, dùng chain-of-thought "hãy suy nghĩ từng bước". Năm, chỉ định rõ format output, ví dụ JSON schema.)* |
| Sato | <ruby>完璧<rt>かんぺき</rt></ruby>です! その5つを<ruby>押<rt>お</rt></ruby>さえれば<ruby>大体<rt>だいたい</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>はカバーできます。<ruby>特<rt>とく</rt></ruby>にXMLタグは<ruby>強力<rt>きょうりょく</rt></ruby>です。<br>*(Hoàn hảo! Nắm được 5 cái đó thì gần như cover hết nghiệp vụ. Đặc biệt XML tag rất mạnh.)* |
| Đại | <ruby>追加<rt>ついか</rt></ruby>で<ruby>質問<rt>しつもん</rt></ruby>させてください。「<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>く」というのは、どの<ruby>程度<rt>ていど</rt></ruby>まで<ruby>細<rt>こま</rt></ruby>かく<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Cho em hỏi thêm. "Viết cụ thể" thì cụ thể đến mức nào ạ?)* |
| Sato | <ruby>判断<rt>はんだん</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は「<ruby>他<rt>た</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>するつもりで<ruby>書<rt>か</rt></ruby>く」。<ruby>人間<rt>にんげん</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>するときに<ruby>足<rt>た</rt></ruby>りない<ruby>情報<rt>じょうほう</rt></ruby>は、Claudeにも<ruby>足<rt>た</rt></ruby>りません。<br>*(Tiêu chí phán đoán là "viết như đang giải thích cho người khác". Thiếu thông tin với người thì cũng thiếu thông tin với Claude.)* |

---

## Tình huống 3 — Cybozu desk · 15/7, Đại hỏi lại về citation format trong RAG response

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、RAGの<ruby>回答<rt>かいとう</rt></ruby>に<ruby>引用元<rt>いんようもと</rt></ruby>(citation)を<ruby>必<rt>かなら</rt></ruby>ず<ruby>含<rt>ふく</rt></ruby>めるようにしたいのですが、<ruby>良<rt>よ</rt></ruby>い<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>はありますか?<br>*(Anh Sato, em muốn câu trả lời RAG luôn kèm citation. Có cách viết tốt nào không ạ?)* |
| Sato | citationは<ruby>大事<rt>だいじ</rt></ruby>ですね。<ruby>業務<rt>ぎょうむ</rt></ruby>システムでは「ハルシネーション」<ruby>対策<rt>たいさく</rt></ruby>に<ruby>必須<rt>ひっす</rt></ruby>です。<ruby>方法<rt>ほうほう</rt></ruby>は<ruby>2<rt>ふた</rt></ruby>つ。<br>*(Citation quan trọng đấy. Trong system business thì bắt buộc để chống "hallucination". Có 2 cách.)* |
| Sato | 1つ<ruby>目<rt>め</rt></ruby>、プロンプト<ruby>内<rt>ない</rt></ruby>で<document id="..."><ruby>形式<rt>けいしき</rt></ruby>のXMLタグを<ruby>使<rt>つか</rt></ruby>って、「<ruby>回答<rt>かいとう</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ずdocument idを<ruby>引用<rt>いんよう</rt></ruby>すること」と<ruby>明示<rt>めいじ</rt></ruby>する。<br>*(Một: trong prompt dùng XML tag dạng <document id="...">, ghi rõ "câu trả lời phải kèm trích dẫn document id".)* |
| Sato | 2つ<ruby>目<rt>め</rt></ruby>、Anthropicの「citations」<ruby>機能<rt>きのう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>う。これだと<ruby>構造化<rt>こうぞうか</rt></ruby>された<ruby>形<rt>かたち</rt></ruby>でresponseに<ruby>含<rt>ふく</rt></ruby>まれます。<br>*(Hai: dùng feature "citations" của Anthropic. Cái này trả về citation đã được cấu trúc hoá trong response.)* |
| Đại | <ruby>後者<rt>こうしゃ</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>が<ruby>後処理<rt>あとしょり</rt></ruby>が<ruby>楽<rt>らく</rt></ruby>そうですね。<ruby>両方<rt>りょうほう</rt></ruby><ruby>試<rt>ため</rt></ruby>してみてもよろしいですか?<br>*(Cái sau xử lý hậu kỳ có vẻ nhẹ hơn. Em thử cả 2 được không ạ?)* |
| Sato | はい、ぜひ。ベンチマーク<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら<ruby>共有<rt>きょうゆう</rt></ruby>してください。<br>*(Vâng, em cứ thử. Có kết quả benchmark thì share nhé.)* |

---

## Tình huống 4 — Cybozu phòng họp Sakura · 22/7, Đại propose dùng vanilla SDK thay LangChain

*Sato gọi Đại vào phòng họp nhỏ thảo luận lựa chọn framework.*

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、LangChainを<ruby>導入<rt>どうにゅう</rt></ruby>するかどうか<ruby>議論<rt>ぎろん</rt></ruby>したいんですが、どう<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Đại, anh muốn thảo luận xem có dùng LangChain không, em nghĩ sao?)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、<ruby>今<rt>いま</rt></ruby>の<ruby>規模<rt>きぼ</rt></ruby>のRAGにLangChainは<ruby>過剰<rt>かじょう</rt></ruby>だと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Em xin nói thẳng, với quy mô RAG hiện tại thì LangChain hơi thừa ạ.)* |
| Sato | ほう、その<ruby>根拠<rt>こんきょ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Ồ, em nói rõ căn cứ xem.)* |
| Đại | 3<ruby>点<rt>てん</rt></ruby>ございます。1<ruby>点目<rt>てんめ</rt></ruby>、<ruby>我々<rt>われわれ</rt></ruby>のパイプラインは「embed → search → generate」の<ruby>3<rt>さん</rt></ruby>ステップのみ。LangChainの<ruby>抽象化<rt>ちゅうしょうか</rt></ruby>レイヤーは<ruby>過剰<rt>かじょう</rt></ruby>です。<br>*(Có 3 điểm ạ. Điểm 1: pipeline của ta chỉ có 3 bước "embed → search → generate". Layer trừu tượng của LangChain là dư.)* |
| Đại | 2<ruby>点目<rt>てんめ</rt></ruby>、デバッグが<ruby>困難<rt>こんなん</rt></ruby>になります。<ruby>実際<rt>じっさい</rt></ruby>のプロンプトが<ruby>何<rt>なに</rt></ruby>になっているか、ラッパー<ruby>越<rt>ご</rt></ruby>しでは<ruby>見<rt>み</rt></ruby>えにくい。<br>*(Điểm 2: debug khó hơn. Prompt thực tế gửi đi là gì, qua wrapper rất khó nhìn.)* |
| Đại | 3<ruby>点目<rt>てんめ</rt></ruby>、Anthropic SDKは<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>洗練<rt>せんれん</rt></ruby>されており、バニラで<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>読<rt>よ</rt></ruby>みやすいコードが<ruby>書<rt>か</rt></ruby>けます。<br>*(Điểm 3: Anthropic SDK rất tinh gọn, dùng vanilla viết code đã đủ dễ đọc.)* |
| Sato | <ruby>説得力<rt>せっとくりょく</rt></ruby>ありますね。<ruby>俺<rt>おれ</rt></ruby>もLangChainの<ruby>抽象化<rt>ちゅうしょうか</rt></ruby>は<ruby>過<rt>す</rt></ruby>ぎると<ruby>感<rt>かん</rt></ruby>じていたので<ruby>同意<rt>どうい</rt></ruby>します。バニラで<ruby>進<rt>すす</rt></ruby>めましょう。<br>*(Có sức thuyết phục đấy. Anh cũng cảm thấy LangChain trừu tượng quá, đồng tình. Đi vanilla.)* |
| Đại | ありがとうございます。<ruby>判断<rt>はんだん</rt></ruby>を<ruby>尊重<rt>そんちょう</rt></ruby>していただき、<ruby>感謝<rt>かんしゃ</rt></ruby>します。<br>*(Em cảm ơn anh. Em biết ơn anh đã tôn trọng phán đoán của em ạ.)* |

---

## Tình huống 5 — Cybozu desk · 25/7, Đại phát hiện bug latency — báo Sato

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか? <ruby>問題<rt>もんだい</rt></ruby>を<ruby>1<rt>ひと</rt></ruby>つ<ruby>共有<rt>きょうゆう</rt></ruby>させてください。<br>*(Anh Sato, anh có chút thời gian không ạ? Cho em chia sẻ 1 vấn đề ạ.)* |
| Sato | はい、どうぞ。<br>*(Vâng, nói đi.)* |
| Đại | エンドツーエンドのレイテンシが<ruby>想定<rt>そうてい</rt></ruby>より<ruby>遅<rt>おそ</rt></ruby>くて、<ruby>平均<rt>へいきん</rt></ruby>3.2<ruby>秒<rt>びょう</rt></ruby>かかっています。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>調査<rt>ちょうさ</rt></ruby>したところ、Claude APIの<ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>しが2.8<ruby>秒<rt>びょう</rt></ruby>を<ruby>占<rt>し</rt></ruby>めていました。<br>*(Latency end-to-end chậm hơn dự kiến, trung bình 3.2 giây. Em điều tra thì gọi Claude API chiếm 2.8 giây.)* |
| Sato | 2.8<ruby>秒<rt>びょう</rt></ruby>は<ruby>長<rt>なが</rt></ruby>いですね。max_tokensはいくつですか?<br>*(2.8 giây dài đấy. max_tokens là bao nhiêu?)* |
| Đại | 1,024に<ruby>設定<rt>せってい</rt></ruby>しています。ただ<ruby>実際<rt>じっさい</rt></ruby>の<ruby>出力<rt>しゅつりょく</rt></ruby>は<ruby>平均<rt>へいきん</rt></ruby>250 tokens<ruby>程度<rt>ていど</rt></ruby>でした。<br>*(Em set 1024. Nhưng output thực tế trung bình chỉ khoảng 250 tokens ạ.)* |
| Sato | streamingを<ruby>試<rt>ため</rt></ruby>してみては? <ruby>体感<rt>たいかん</rt></ruby>レイテンシが<ruby>大<rt>おお</rt></ruby>きく<ruby>改善<rt>かいぜん</rt></ruby>されるはずです。<ruby>最初<rt>さいしょ</rt></ruby>のtokenが<ruby>返<rt>かえ</rt></ruby>るのは300〜500ミリ<ruby>秒<rt>びょう</rt></ruby><ruby>程度<rt>ていど</rt></ruby>のはずです。<br>*(Thử streaming xem? Latency cảm nhận sẽ cải thiện đáng kể. Token đầu tiên trả về tầm 300-500ms thôi.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。`stream=True`に<ruby>変更<rt>へんこう</rt></ruby>して、<ruby>明日<rt>あした</rt></ruby>のstandupで<ruby>結果<rt>けっか</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>いたします。<br>*(Em đã rõ. Em đổi thành `stream=True`, standup ngày mai em chia sẻ kết quả ạ.)* |
| Sato | お<ruby>願<rt>ねが</rt></ruby>いします。ちなみに、<ruby>事前<rt>じぜん</rt></ruby>に<ruby>原因<rt>げんいん</rt></ruby>を<ruby>切<rt>き</rt></ruby>り<ruby>分<rt>わ</rt></ruby>けて<ruby>報告<rt>ほうこく</rt></ruby>してくれてありがたい。<br>*(Nhờ em. Tiện đây, em đã phân tích nguyên nhân trước rồi mới báo cáo, anh cảm ơn.)* |

---

## Tình huống 6 — Cybozu desk · 8/8, Sato giới thiệu prompt caching cụ thể cho RAG

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、コスト<ruby>削減<rt>さくげん</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>です。プロンプトキャッシュを<ruby>導入<rt>どうにゅう</rt></ruby>すれば<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>下<rt>さ</rt></ruby>がります。<br>*(Đại, chuyện cắt giảm chi phí. Áp dụng prompt caching sẽ giảm đáng kể.)* |
| Đại | はい、ぜひ。<ruby>具体的<rt>ぐたいてき</rt></ruby>には、どの<ruby>部分<rt>ぶぶん</rt></ruby>をキャッシュすべきでしょうか?<br>*(Vâng, em rất muốn ạ. Cụ thể nên cache phần nào ạ?)* |
| Sato | 2か<ruby>所<rt>しょ</rt></ruby>。1つは<ruby>長<rt>なが</rt></ruby>めのsystemプロンプト(<ruby>例<rt>たと</rt></ruby>えば「あなたはCybozu Kintoneの<ruby>専門家<rt>せんもんか</rt></ruby>です」+ <ruby>指示<rt>しじ</rt></ruby>)。もう1つはfew-shotの<ruby>例<rt>れい</rt></ruby>。これらは<ruby>変<rt>か</rt></ruby>わらないので、cache_control = ephemeralを<ruby>付<rt>つ</rt></ruby>けます。<br>*(Hai chỗ. Một là system prompt dài (ví dụ "Bạn là chuyên gia về Cybozu Kintone" + chỉ thị). Hai là few-shot examples. Vì không đổi nên gắn cache_control = ephemeral.)* |
| Đại | <ruby>逆<rt>ぎゃく</rt></ruby>に、<ruby>検索<rt>けんさく</rt></ruby>で<ruby>取<rt>と</rt></ruby>ってきたドキュメントは<ruby>毎回<rt>まいかい</rt></ruby><ruby>変<rt>か</rt></ruby>わるのでキャッシュしない、ということですね。<br>*(Ngược lại, document lấy ra từ search thì mỗi lần khác nhau nên không cache, phải vậy không ạ.)* |
| Sato | その<ruby>通<rt>とお</rt></ruby>り。キャッシュの<ruby>順序<rt>じゅんじょ</rt></ruby>は<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>重要<rt>じゅうよう</rt></ruby>です。<ruby>固定<rt>こてい</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>、<ruby>可変<rt>かへん</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>後<rt>あと</rt></ruby>に<ruby>置<rt>お</rt></ruby>くのが<ruby>鉄則<rt>てっそく</rt></ruby>です。<br>*(Đúng. Thứ tự cache cực kỳ quan trọng. Phần cố định để trước, phần thay đổi để sau — quy tắc vàng.)* |
| Đại | なるほど、コスト<ruby>計算<rt>けいさん</rt></ruby>もしてみます。50,000<ruby>件<rt>けん</rt></ruby>のクエリで、<ruby>月<rt>つき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>程度<rt>ていど</rt></ruby><ruby>削減<rt>さくげん</rt></ruby>できそうな<ruby>気<rt>き</rt></ruby>がします。<br>*(Hiểu rồi. Em sẽ tính cost. Với 50.000 query/tháng, em cảm thấy có thể giảm khoảng ¥30 nghìn ạ.)* |
| Sato | <ruby>試算<rt>しさん</rt></ruby>もぜひ。<ruby>本番<rt>ほんばん</rt></ruby><ruby>導入<rt>どうにゅう</rt></ruby>の<ruby>説得<rt>せっとく</rt></ruby><ruby>材料<rt>ざいりょう</rt></ruby>になります。<br>*(Tính thử luôn nhé. Sẽ là chất liệu thuyết phục cho production rollout.)* |

---

## Tình huống 7 — Cybozu desk · 14/8, Tanaka (intern khác) hỏi xin lời khuyên về prompt

*Tanaka từ team Kintone API ghé qua, ngồi bên Đại.*

| Vai | Lời thoại |
|---|---|
| Tanaka | グエンくん、ちょっと<ruby>相談<rt>そうだん</rt></ruby>していい? <ruby>俺<rt>おれ</rt></ruby>のtaskでClaudeにJSON<ruby>出<rt>だ</rt></ruby>させたいんだけど、<ruby>形式<rt>けいしき</rt></ruby>がたまに<ruby>崩<rt>くず</rt></ruby>れるんだ。<br>*(Đại, anh hỏi nhờ chút được không? Task của anh muốn Claude xuất JSON, mà format thỉnh thoảng bị vỡ.)* |
| Đại | あ、その<ruby>問題<rt>もんだい</rt></ruby>はよく<ruby>聞<rt>き</rt></ruby>きます。<ruby>3<rt>みっ</rt></ruby>つ<ruby>方法<rt>ほうほう</rt></ruby>があります。<br>*(À, vấn đề đó hay gặp lắm. Có 3 cách ạ.)* |
| Đại | 1つ<ruby>目<rt>め</rt></ruby>、プロンプトに「<output_format>」XMLタグでJSON schemaを<ruby>明示<rt>めいじ</rt></ruby>する。2つ<ruby>目<rt>め</rt></ruby>、assistant<ruby>側<rt>がわ</rt></ruby>のprefillに「{」を<ruby>置<rt>お</rt></ruby>く。3つ<ruby>目<rt>め</rt></ruby>、tool useを<ruby>使<rt>つか</rt></ruby>う。<br>*(Một: trong prompt dùng XML tag "<output_format>" để chỉ định rõ JSON schema. Hai: prefill phía assistant bằng "{". Ba: dùng tool use.)* |
| Tanaka | prefill?<ruby>聞<rt>き</rt></ruby>いたことないな。<br>*(Prefill? Anh chưa nghe.)* |
| Đại | messagesの<ruby>最後<rt>さいご</rt></ruby>にrole=assistantで「{」を<ruby>入<rt>い</rt></ruby>れておく<ruby>方法<rt>ほうほう</rt></ruby>です。そうするとClaudeは<ruby>必<rt>かなら</rt></ruby>ずJSONの<ruby>続<rt>つづ</rt></ruby>きを<ruby>出力<rt>しゅつりょく</rt></ruby>します。<br>*(Cách này: trong messages cuối cùng thêm role=assistant với nội dung "{". Như vậy Claude bắt buộc tiếp tục xuất JSON.)* |
| Tanaka | お、<ruby>賢<rt>かしこ</rt></ruby>い! <ruby>後<rt>あと</rt></ruby>で<ruby>試<rt>ため</rt></ruby>してみる。ありがとう、グエンくん。<br>*(Ồ, khôn đấy! Lát anh thử. Cảm ơn Đại.)* |
| Đại | お<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em vui vì giúp được anh.)* |

---

## Tình huống 8 — Cybozu phòng họp Tsubaki · 18/8, rehearsal demo với Sato + Inomata

| Vai | Lời thoại |
|---|---|
| Inomata | では、25<ruby>日<rt>にち</rt></ruby>のデモのリハーサルをしましょう。グエンさん、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy ta rehearsal cho demo 25 nhé. Đại, mời em.)* |
| Đại | はい。「Cybozu Document RAG <ruby>中間<rt>ちゅうかん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>」、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>インターン、グエン・ダイです。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng. "Cybozu Document RAG — báo cáo giữa kỳ", em là Nguyễn Đại, sinh viên năm 3 Đại học Osaka thực tập. Hôm nay xin được trình bày ạ.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>構成<rt>こうせい</rt></ruby>は、(1)<ruby>背景<rt>はいけい</rt></ruby>、(2)アーキテクチャ、(3)<ruby>成果<rt>せいか</rt></ruby>と<ruby>数値<rt>すうち</rt></ruby>、(4)<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby><ruby>案<rt>あん</rt></ruby>の4<ruby>部<rt>ぶ</rt></ruby><ruby>構成<rt>こうせい</rt></ruby>、10<ruby>分間<rt>ぷんかん</rt></ruby>を<ruby>予定<rt>よてい</rt></ruby>しております。<br>*(Bố cục hôm nay gồm 4 phần: (1) bối cảnh, (2) kiến trúc, (3) thành quả và số liệu, (4) đề xuất triển khai chính thức — dự kiến 10 phút ạ.)* |
| Sato | グエンさん、<ruby>1<rt>ひと</rt></ruby>つだけアドバイス。「<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby>」のスライドで、コスト<ruby>削減<rt>さくげん</rt></ruby><ruby>効果<rt>こうか</rt></ruby>を<ruby>金額<rt>きんがく</rt></ruby>ベースで<ruby>示<rt>しめ</rt></ruby>すと<ruby>説得力<rt>せっとくりょく</rt></ruby>が<ruby>増<rt>ま</rt></ruby>します。<br>*(Đại, anh có 1 advice. Slide "triển khai chính thức", thể hiện hiệu quả cắt giảm chi phí bằng số tiền cụ thể thì thuyết phục hơn.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。プロンプトキャッシュ<ruby>導入後<rt>どうにゅうご</rt></ruby>の<ruby>月<rt>つき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>削減<rt>さくげん</rt></ruby><ruby>見込<rt>みこ</rt></ruby>みを<ruby>明記<rt>めいき</rt></ruby>します。<br>*(Em đã rõ. Em sẽ ghi rõ con số dự kiến giảm ¥30 nghìn/tháng sau khi áp dụng prompt caching.)* |
| Inomata | <ruby>質疑応答<rt>しつぎおうとう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>もしておきましょう。「LangChainを<ruby>使<rt>つか</rt></ruby>わなかった<ruby>理由<rt>りゆう</rt></ruby>は?」と<ruby>聞<rt>き</rt></ruby>かれたらどう<ruby>答<rt>こた</rt></ruby>えますか?<br>*(Chuẩn bị cả Q&A. Nếu được hỏi "Tại sao không dùng LangChain?" thì em trả lời sao?)* |
| Đại | はい、<ruby>抽象化<rt>ちゅうしょうか</rt></ruby>レイヤーの<ruby>過剰<rt>かじょう</rt></ruby>とデバッグ<ruby>容易<rt>ようい</rt></ruby><ruby>性<rt>せい</rt></ruby>の<ruby>観点<rt>かんてん</rt></ruby>から、バニラSDKを<ruby>選<rt>えら</rt></ruby>びました、と<ruby>答<rt>こた</rt></ruby>えるつもりです。<br>*(Vâng, em định trả lời: dựa trên góc nhìn lớp trừu tượng dư thừa và tính dễ debug, em chọn vanilla SDK ạ.)* |
| Sato | <ruby>完璧<rt>かんぺき</rt></ruby>です。<br>*(Hoàn hảo.)* |

---

## Tình huống 9 — Cybozu phòng họp lớn · 25/8 14:00, làm mẫu nội bộ trước CTO

*Phòng họp lớn, ~20 người gồm CTO, Sato, Inomata, các engineer khác. Đại đứng trước projector.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆様<rt>みなさま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>お<ruby>集<rt>あつ</rt></ruby>まりいただき、ありがとうございます。インターンのグエン・ダイです。<br>*(Kính thưa quý vị, cảm ơn quý vị bận rộn vẫn đến tham dự. Em là intern Nguyễn Đại ạ.)* |
| Đại | <ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。50,000<ruby>件<rt>けん</rt></ruby>のドキュメントを<ruby>対象<rt>たいしょう</rt></ruby>に、semantic<ruby>検索<rt>けんさく</rt></ruby>80ミリ<ruby>秒<rt>びょう</rt></ruby> + Claude<ruby>生成<rt>せいせい</rt></ruby>1.5<ruby>秒<rt>びょう</rt></ruby>、<ruby>引用<rt>いんよう</rt></ruby><ruby>精度<rt>せいど</rt></ruby>95%、<ruby>1<rt>いち</rt></ruby>クエリあたり$0.02を<ruby>達成<rt>たっせい</rt></ruby>しました。<br>*(Em xin nói kết luận trước. Với 50.000 tài liệu: semantic search 80ms + Claude generation 1.5s, độ chính xác trích dẫn 95%, $0.02/query.)* |
| CTO (40t) | おお、<ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby>の<ruby>見込<rt>みこ</rt></ruby>みは?<br>*(Ồ, tuyệt vời. Khả năng triển khai production thì sao?)* |
| Đại | <ruby>来年<rt>らいねん</rt></ruby><ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby>四<ruby>半<rt>はん</rt></ruby><ruby>期<rt>き</rt></ruby>に、エンジニア4〜6<ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>工数<rt>こうすう</rt></ruby>で<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>しております。<br>*(Em đánh giá có thể triển khai production trong Q1 năm sau, với 4-6 tuần công sức kỹ thuật.)* |
| CTO | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>本番<rt>ほんばん</rt></ruby><ruby>導入<rt>どうにゅう</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>として<ruby>正式<rt>せいしき</rt></ruby>に<ruby>検討<rt>けんとう</rt></ruby>します。<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>でここまでよく<ruby>形<rt>かたち</rt></ruby>にしてくれました。<br>*(Tuyệt vời! Sẽ chính thức cân nhắc làm ứng viên production. 3 tháng mà em đã đưa được đến mức này, giỏi lắm.)* |
| Đại | ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>猪股<rt>いのまた</rt></ruby>さんはじめチームの<ruby>皆様<rt>みなさま</rt></ruby>のおかげです。<br>*(Em cảm ơn. Là nhờ anh Sato, anh Inomata và cả team ạ.)* |

---

## Tình huống 10 — Cybozu phòng họp · 25/8 14:30, Q&A — engineer khác chất vấn về LangChain

| Vai | Lời thoại |
|---|---|
| Engineer C | <ruby>質問<rt>しつもん</rt></ruby>です。LangChainを<ruby>使<rt>つか</rt></ruby>えば<ruby>開発<rt>かいはつ</rt></ruby><ruby>速度<rt>そくど</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がるのでは? <ruby>使<rt>つか</rt></ruby>わなかった<ruby>理由<rt>りゆう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Cho hỏi. Dùng LangChain thì tốc độ phát triển sẽ tăng chứ? Lý do không dùng là gì?)* |
| Đại | ご<ruby>質問<rt>しつもん</rt></ruby>ありがとうございます。<ruby>3<rt>みっ</rt></ruby>つの<ruby>観点<rt>かんてん</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>いたしました。<br>*(Cảm ơn câu hỏi ạ. Em đã phán đoán dựa trên 3 góc nhìn.)* |
| Đại | 1つ<ruby>目<rt>め</rt></ruby>、パイプラインが3ステップと<ruby>単純<rt>たんじゅん</rt></ruby>で、LangChainの<ruby>抽象化<rt>ちゅうしょうか</rt></ruby>は<ruby>過剰<rt>かじょう</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>。2つ<ruby>目<rt>め</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby><ruby>運用<rt>うんよう</rt></ruby>でのデバッグ<ruby>容易<rt>ようい</rt></ruby><ruby>性<rt>せい</rt></ruby>を<ruby>重視<rt>じゅうし</rt></ruby>。3つ<ruby>目<rt>め</rt></ruby>、Anthropic SDKが<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>洗練<rt>せんれん</rt></ruby>されていてバニラで<ruby>可読性<rt>かどくせい</rt></ruby>が<ruby>確保<rt>かくほ</rt></ruby>できる。<br>*(Một: pipeline chỉ 3 bước đơn giản, lớp trừu tượng của LangChain là dư. Hai: trọng dụng tính dễ debug khi vận hành production. Ba: Anthropic SDK đủ tinh gọn, vanilla vẫn đảm bảo dễ đọc.)* |
| Đại | ただ、ご<ruby>指摘<rt>してき</rt></ruby>の<ruby>通<rt>とお</rt></ruby>り、<ruby>複雑<rt>ふくざつ</rt></ruby>なagentic workflowを<ruby>構築<rt>こうちく</rt></ruby>する<ruby>場合<rt>ばあい</rt></ruby>はLangChainやLangGraphの<ruby>検討<rt>けんとう</rt></ruby><ruby>価値<rt>かち</rt></ruby>はあると<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Tuy nhiên, đúng như anh chỉ ra, nếu xây agentic workflow phức tạp thì LangChain hoặc LangGraph có giá trị cân nhắc ạ.)* |
| Engineer C | <ruby>納得<rt>なっとく</rt></ruby>です。<ruby>判断<rt>はんだん</rt></ruby><ruby>根拠<rt>こんきょ</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>で<ruby>良<rt>よ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>います。<br>*(Tôi đồng tình. Căn cứ phán đoán rõ ràng, tốt đấy.)* |
| Đại | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 11 — Cybozu pantry · 25/8 16:00, Inomata + Sato chúc mừng demo thành công

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした! デモ、<ruby>素晴<rt>すば</rt></ruby>らしかったです。<br>*(Đại, em vất vả rồi! Demo tuyệt vời.)* |
| Đại | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しましたが、なんとか<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>終<rt>お</rt></ruby>えられて<ruby>良<rt>よ</rt></ruby>かったです。<br>*(Em cảm ơn. Em hồi hộp lắm nhưng cuối cùng cũng kết thúc trôi chảy, em mừng quá ạ.)* |
| Sato | <ruby>特<rt>とく</rt></ruby>にQ&Aの<ruby>受<rt>う</rt></ruby>け<ruby>答<rt>こた</rt></ruby>えがプロフェッショナルでした。<ruby>3<rt>みっ</rt></ruby>つの<ruby>観点<rt>かんてん</rt></ruby>で<ruby>整理<rt>せいり</rt></ruby>して<ruby>答<rt>こた</rt></ruby>えるところ、<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Đặc biệt phần trả lời Q&A rất chuyên nghiệp. Cách em sắp xếp theo 3 góc nhìn để trả lời, anh học hỏi được luôn.)* |
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さんに<ruby>事前<rt>じぜん</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>させていただいたおかげです。<br>*(Là nhờ anh Sato cho em luyện tập trước ạ.)* |
| Inomata | <ruby>残<rt>のこ</rt></ruby>り<ruby>1<rt>いっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>最後<rt>さいご</rt></ruby>の<ruby>発表<rt>はっぴょう</rt></ruby>がCTOを<ruby>含<rt>ふく</rt></ruby>む<ruby>幹部<rt>かんぶ</rt></ruby><ruby>陣<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けですから、さらに<ruby>大事<rt>だいじ</rt></ruby>ですよ。<br>*(Một tháng còn lại nhờ em nhé. Lần thuyết trình cuối sẽ trước cả ban lãnh đạo gồm CTO, càng quan trọng hơn đấy.)* |
| Đại | はい、<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>精<rt>せい</rt></ruby><ruby>進<rt>しん</rt></ruby>いたします。<br>*(Vâng, em xin tiếp tục nỗ lực ạ.)* |

---

## Tình huống 12 — Toyonaka apartment · 25/8 22:00, Đại về nhà báo Mai demo thành công — cảnh tiếng Việt cuối chương

> Đại về nhà muộn vì đi 飲み会 nhỏ sau demo. Mai đang dỗ Hana 20 ngày tuổi vừa khóc xong (Hana sinh 5/8/2028).

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi, anh về rồi. Hana ngủ chưa? |
| Mai | (tiếng Việt) Vừa ngủ lại. Tối nay anh làm mẫu thế nào? |
| Đại | (tiếng Việt) Tốt lắm em! CTO của Cybozu khen, anh ấy nói chính thức xem xét triển khai sang năm. |
| Mai | (tiếng Việt) Trời ơi! Mừng quá anh ơi! Vậy là 3 tháng intern ra cái này coi như đỉnh rồi nhỉ. |
| Đại | (tiếng Việt) Ừ. Mà cái hay nhất là có một anh engineer chất vấn anh — "Sao không dùng LangChain?". Anh trả lời 3 lý do, anh ấy gật đầu. |
| Mai | (tiếng Việt) LangChain là cái gì hả anh? |
| Đại | (tiếng Việt) Nó là một framework gói gọn các bước gọi LLM lại. Mọi người hay dùng cho tiện. Nhưng anh phân tích pipeline mình chỉ 3 bước thôi, không cần. Dùng SDK gốc của Anthropic luôn cho dễ debug. |
| Mai | (tiếng Việt) Vậy là anh dám không theo trend phải không? |
| Đại | (tiếng Việt) Đúng. Mai à, hôm nay anh học được cái này quan trọng — không phải cứ framework xịn là dùng. Phải nhìn pipeline của mình rồi quyết. |
| Mai | (tiếng Việt) Em hiểu. Cái đó với Hizashi cũng vậy đúng không? |
| Đại | (tiếng Việt) Ừ. Anh sẽ làm Hizashi bằng vanilla Anthropic SDK luôn. Cộng thêm prompt caching — kỹ thuật anh mới học hôm nay, giảm 90% chi phí input. |
| Mai | (tiếng Việt) 90% á? Vậy app Hizashi tương lai chi phí AI rẻ lắm hả anh? |
| Đại | (tiếng Việt) Ừ, $0.02 mỗi câu hỏi thôi. Mai à, em hiểu không, anh đang được Cybozu trả lương ¥250 nghìn/tháng để học chính xác công nghệ làm Hizashi. |
| Mai | (tiếng Việt) Em hiểu rồi. Anh là ăn 2 đầu á! |
| Đại | (tiếng Việt) Cười... Còn nữa, anh làm mẫu cho team xong, anh Sato dạy thêm một mẹo — khi gọi LLM xuất JSON, prefill phía assistant bằng dấu ngoặc nhọn mở. Anh sẽ áp dụng cho Hizashi luôn. |
| Mai | (tiếng Việt) Em không hiểu kỹ thuật nhưng nghe anh vui em vui. Mai về với mẹ con em sớm nhé. |
| Đại | (tiếng Việt) Ừ. Mà anh xin lỗi đêm nay về muộn — có 飲み会 sau demo, anh không từ chối được. |
| Mai | (tiếng Việt) Không sao. Đó là văn hoá Nhật mà. Anh cứ nuôi quan hệ với senior đi, sau này có ích. |

---

## Đọng lại chương 6

Đại có 5 tuần giữa kỳ intern Cybozu — giai đoạn deep dive Claude API. Học **trao đổi technical sâu với senior** (「〜について少しお聞きしたいことがあります」), **bảo vệ quyết định kỹ thuật bằng 3 điểm** (「3点ございます。1点目〜」), **báo cáo bug có phân tích nguyên nhân** (「原因を調査したところ〜」), **keigo trong demo cấp CTO** (「結論から申し上げます」, 「ご質問ありがとうございます」), và **trả lời Q&A chất vấn** với cấu trúc 3 góc nhìn. Hiểu sâu **5 nguyên tắc prompt engineering** (specific + XML tag + few-shot + chain-of-thought + output format), **prompt caching** (cố định trước, biến đổi sau — giảm 90% input cost), **streaming** (cải thiện cảm nhận latency), và **prefill** (ép Claude xuất JSON đúng format). Quyết định vanilla SDK > LangChain với 3 căn cứ rõ ràng. Demo trước CTO thành công — được duyệt làm ứng viên triển khai production Q1/2029.

> Từ vựng & mẫu câu chương này: Anthropic SDK・Claude 3.5 Sonnet・プロンプトキャッシュ・cache_control・ephemeral・few-shot・chain-of-thought・XMLタグ・prefill・streaming・citations・ハルシネーション・LangChain・抽象化レイヤー・バニラSDK・本番展開・四半期・工数・結論から申し上げます・3点ございます・ご質問ありがとうございます・〜と判断しております・ご指摘の通り・納得です・お役に立てて嬉しいです

## Bí quyết chương

- **Bảo vệ quyết định kỹ thuật bằng 3 điểm**: Người Nhật rất thích cấu trúc 「3点ございます。1点目〜、2点目〜、3点目〜」. Senior + management đánh giá cao logic rõ ràng hơn ý kiến mạnh.
- **「結論から申し上げます」mở demo**: Style business Nhật bắt đầu bằng kết luận trước, sau đó mới detail. Ngược với academic Việt Nam (nền tảng → kết luận cuối).
- **Trong Q&A đừng phòng thủ**: Khi bị chất vấn, công nhận trước cái hợp lý của challenger (「ご指摘の通り〜の場合は検討価値があると考えております」), rồi mới giữ vững quyết định.
- **Prompt caching là kỹ thuật must-have**: Bất kỳ RAG production nào cũng phải dùng. Fixed prompt + few-shot lên đầu, retrieved docs sau.
- **Prefill ép Claude xuất JSON**: Thêm role=assistant với content="{" — Claude bắt buộc tiếp tục JSON. Kỹ thuật ít người biết.
- **Streaming = trải nghiệm tốt hơn**: Latency tổng không giảm, nhưng time-to-first-token giảm từ 2.8s xuống 300ms. User cảm thấy nhanh hơn nhiều.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 明示 | めいじ | MINH THỊ | Chỉ rõ |
| 指示 | しじ | CHỈ THỊ | Hướng dẫn, prompt |
| 明確 | めいかく | MINH XÁC | Rõ ràng |
| 料金 | りょうきん | LIỆU KIM | Giá, phí |
| 仕組み | しくみ | SĨ TỔ | Cơ chế |
| 繰り返す | くりかえす | PHIÊN PHẢN | Lặp lại |
| 詳細 | しょうさい | TƯỜNG TẾ | Chi tiết |
| 構造化 | こうぞうか | CẤU TẠO HOÁ | Cấu trúc hoá |
| 好む | このむ | HẢO | Thích, ưa |
| 出力形式 | しゅつりょくけいしき | XUẤT LỰC HÌNH THỨC | Format output |
| 押さえる | おさえる | ÁP | Nắm bắt, ấn |
| 業務 | ぎょうむ | NGHIỆP VỤ | Nghiệp vụ |
| 強力 | きょうりょく | CƯỜNG LỰC | Mạnh mẽ |
| 程度 | ていど | TRÌNH ĐỘ | Mức độ |
| 細かい | こまかい | TẾ | Chi tiết, tỉ mỉ |
| 基準 | きじゅん | CƠ CHUẨN | Tiêu chuẩn |
| 情報 | じょうほう | TÌNH BÁO | Thông tin |
| 引用元 | いんようもと | DẪN DỤNG NGUYÊN | Nguồn trích dẫn |
| 引用 | いんよう | DẪN DỤNG | Trích dẫn |
| ハルシネーション | — | — | Ảo giác (LLM) |
| 対策 | たいさく | ĐỐI SÁCH | Đối sách |
| 後処理 | あとしょり | HẬU XỬ LÝ | Hậu xử lý |
| 楽 | らく | LẠC | Nhẹ, dễ chịu |
| 議論 | ぎろん | NGHỊ LUẬN | Thảo luận |
| 規模 | きぼ | QUY MÔ | Quy mô |
| 過剰 | かじょう | QUÁ THẶNG | Dư thừa |
| 抽象化 | ちゅうしょうか | TRỪU TƯỢNG HOÁ | Trừu tượng hoá |
| 層 | レイヤー | TẦNG | Tầng, lớp |
| 困難 | こんなん | KHỐN NẠN | Khó khăn |
| 越し | ごし | VIỆT | Qua, xuyên qua |
| 非常 | ひじょう | PHI THƯỜNG | Cực kỳ |
| 洗練 | せんれん | TẨY LUYỆN | Tinh gọn |
| 説得力 | せっとくりょく | THUYẾT ĐẮC LỰC | Sức thuyết phục |
| 同意 | どうい | ĐỒNG Ý | Đồng ý |
| 尊重 | そんちょう | TÔN TRỌNG | Tôn trọng |
| 問題 | もんだい | VẤN ĐỀ | Vấn đề |
| 想定 | そうてい | TƯỞNG ĐỊNH | Giả định |
| 平均 | へいきん | BÌNH QUÂN | Trung bình |
| 占める | しめる | CHIẾM | Chiếm |
| 体感 | たいかん | THỂ CẢM | Cảm nhận |
| 削減 | さくげん | TIẾT GIẢM | Cắt giảm |
| 大幅 | おおはば | ĐẠI BÚC | Đáng kể |
| 場所 | ばしょ | TRƯỜNG SỞ | Nơi, chỗ |
| 専門家 | せんもんか | CHUYÊN MÔN GIA | Chuyên gia |
| 逆 | ぎゃく | NGHỊCH | Ngược |
| 鉄則 | てっそく | THIẾT TẮC | Quy tắc vàng |
| 試算 | しさん | THÍ TOÁN | Ước tính |
| 説得材料 | せっとくざいりょう | THUYẾT ĐẮC TÀI LIỆU | Chất liệu thuyết phục |
| 賢い | かしこい | HIỀN | Khôn, thông minh |
| 役に立つ | やくにたつ | DỊCH | Có ích |
| 工数 | こうすう | CÔNG SỐ | Công sức (man-hour) |
| 四半期 | しはんき | TỨ BÁN KỲ | Quý |
| 質疑応答 | しつぎおうとう | CHẤT NGHI ỨNG ĐÁP | Hỏi đáp |
| 容易性 | よういせい | DUNG DỊ TÍNH | Tính dễ dàng |
| 結論 | けつろん | KẾT LUẬN | Kết luận |
| 候補 | こうほ | HẬU BỔ | Ứng cử viên |
| 承認 | しょうにん | THỪA NHẬN | Phê duyệt |
| 形 | かたち | HÌNH | Hình thức |
| 関係部署 | かんけいぶしょ | QUAN HỆ BỘ THỰ | Bộ phận liên quan |
| 身に余る | みにあまる | THÂN DƯ | Quá vinh dự |
| 光栄 | こうえい | QUANG VINH | Vinh dự |
| 納得 | なっとく | NẠP ĐẮC | Đồng tình |
| 複雑 | ふくざつ | PHỨC TẠP | Phức tạp |
| 価値 | かち | GIÁ TRỊ | Giá trị |
| 受け答え | うけこたえ | THỤ ĐÁP | Trả lời (Q&A) |
| 引き続き | ひきつづき | DẪN TỤC | Tiếp tục |
| 精進 | せいしん | TINH TIẾN | Nỗ lực |
| 幹部陣 | かんぶじん | CÁN BỘ TRẬN | Ban lãnh đạo |
