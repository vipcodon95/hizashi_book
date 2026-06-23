# Sách sinh viên Đại học Osaka · T5. Cybozu intern khởi động — RAG project (Cybozu長期インターン)

> **Mục tiêu nhân vật:** Đại 23 tuổi, năm 3 CS, 5/2028, intern dài hạn 3 tháng tại Cybozu R&D Osaka. Học các mẫu hội thoại tiếng Nhật của intern engineer: (1) chào hỏi onboarding ngày đầu, (2) hỏi lại khi chưa hiểu thuật ngữ tech, (3) báo cáo tiến độ với mentor, (4) keigo xin remote work vì lý do gia đình, (5) tự giới thiệu trước team trong morning standup, (6) đặt câu hỏi technical về kiến trúc hệ thống.

---

## Bối cảnh

Tháng 5 năm 2028. Đại 23 tuổi, sinh viên năm 3 CS Đại học Osaka, vừa kết thúc kỳ thi giữa kỳ. Mai đang mang thai Hana (dự sinh 5/8/2028, hiện 6 tháng). Hôm nay là Day 1 của kỳ thực tập dài hạn 3 tháng (5-7/2028) tại Cybozu Osaka R&D, dự án RAG document search cho Kintone. Mentor là anh Inomata-san (intern coordinator). Stipend ¥250k/tháng. Chương này tập trung các mẫu câu keigo công ty Nhật + technical Japanese trong môi trường intern engineer Nhật.

---

## Tình huống 1 — Cybozu Osaka lobby · 8:45, ngày đầu tiên trình diện reception

| Vai | Lời thoại |
|---|---|
| Đại | (đến quầy lễ tân, cúi chào) おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>長期<rt>ちょうき</rt></ruby>インターンでお<ruby>世話<rt>せわ</rt></ruby>になります、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>の<ruby>応<rt>おう</rt></ruby>グエンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Chào buổi sáng. Em là Nguyễn Đại, sinh viên Đại học Osaka, hôm nay bắt đầu kỳ thực tập dài hạn tại quý công ty.)* |
| Lễ tân | グエンさんですね。お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>猪股<rt>いのまた</rt></ruby>がすぐ<ruby>参<rt>まい</rt></ruby>りますので、こちらでお<ruby>掛<rt>か</rt></ruby>けになってお<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Anh Nguyễn nhỉ. Chúng tôi đã chờ. Anh Inomata sẽ tới ngay, mời em ngồi đây chờ một lát.)* |
| Đại | はい、ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>いたします。(ngồi xuống, hít sâu) <br>*(Vâng, em cảm ơn. Em xin phép ạ.)* |
| Inomata | (bước ra) グエンさん、お<ruby>久<rt>ひさ</rt></ruby>しぶり！<ruby>本日<rt>ほんじつ</rt></ruby>からよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đại, lâu rồi mới gặp! Từ hôm nay nhờ em nhé.)* |
| Đại | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em mới phải nhờ anh ạ. Trong 3 tháng tới em sẽ cố gắng hết mình.)* |

---

## Tình huống 2 — Cybozu R&D floor · 9:30, onboarding tour + nhận laptop/badge

*Inomata dẫn Đại đi qua dãy ghế làm việc rộng, dừng tại chỗ ngồi gắn biển「インターン: 応・グエン」.*

| Vai | Lời thoại |
|---|---|
| Inomata | こちらがグエンさんの<ruby>席<rt>せき</rt></ruby>です。MacBook ProとモニターとSlackアカウント、すでに<ruby>準備<rt>じゅんび</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Đây là chỗ ngồi của em. MacBook Pro, màn hình, tài khoản Slack — đã chuẩn bị sẵn.)* |
| Đại | ありがとうございます。<ruby>入館<rt>にゅうかん</rt></ruby>カードはどちらでいただけますか?<br>*(Em cảm ơn ạ. Thẻ ra vào em nhận ở đâu ạ?)* |
| Inomata | あ、そうそう。<ruby>総務<rt>そうむ</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ってください。<ruby>後<rt>あと</rt></ruby>で<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。それから、<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は10時から19時、<ruby>休憩<rt>きゅうけい</rt></ruby>1<ruby>時間<rt>じかん</rt></ruby>です。<br>*(À, đúng rồi. Em nhận ở phòng tổng vụ. Lát nữa anh dẫn em đi. Giờ làm việc là 10h-19h, nghỉ giải lao 1 tiếng.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。コアタイムはございますか?<br>*(Em đã rõ ạ. Có giờ core time không ạ?)* |
| Inomata | 11時から16時がコアタイムです。<ruby>朝<rt>あさ</rt></ruby><ruby>夕<rt>ゆう</rt></ruby>はフレックスで<ruby>調整<rt>ちょうせい</rt></ruby>OKです。<ruby>奥<rt>おく</rt></ruby>さまが<ruby>妊娠中<rt>にんしんちゅう</rt></ruby>と<ruby>伺<rt>うかが</rt></ruby>っていますから、<ruby>柔軟<rt>じゅうなん</rt></ruby>に<ruby>使<rt>つか</rt></ruby>ってくださいね。<br>*(Core time là 11h-16h. Sáng và chiều có thể linh hoạt. Anh nghe nói vợ em đang mang thai, em cứ dùng linh hoạt nhé.)* |
| Đại | ご<ruby>配慮<rt>はいりょ</rt></ruby>ありがとうございます。<br>*(Em cảm ơn anh đã quan tâm ạ.)* |

---

## Tình huống 3 — Phòng họp Mizuho · 10:30, kickoff project RAG với senior engineer Sato-san

| Vai | Lời thoại |
|---|---|
| Sato (senior 35t) | はじめまして、シニアエンジニアの<ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>にRAGシステムを<ruby>作<rt>つく</rt></ruby>っていきましょう。<br>*(Lần đầu gặp em, tôi là Sato, senior engineer. 3 tháng tới ta cùng xây hệ thống RAG nhé.)* |
| Đại | はじめまして、グエンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Lần đầu gặp anh, em là Nguyễn ạ. Mong anh chỉ bảo.)* |
| Sato | プロジェクトの<ruby>概要<rt>がいよう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。Kintoneの<ruby>顧客<rt>こきゃく</rt></ruby>ドキュメントが<ruby>累計<rt>るいけい</rt></ruby>5<ruby>万件<rt>まんけん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>あって、<ruby>自然<rt>しぜん</rt></ruby><ruby>言語<rt>げんご</rt></ruby>で<ruby>検索<rt>けんさく</rt></ruby>できるようにしたいんです。<br>*(Tôi giải thích sơ về dự án. Có hơn 50.000 tài liệu khách hàng Kintone, tụi tôi muốn tìm kiếm được bằng ngôn ngữ tự nhiên.)* |
| Đại | RAGというのは、Retrieval-Augmented Generationの<ruby>略<rt>りゃく</rt></ruby>ですよね?<br>*(RAG là viết tắt của Retrieval-Augmented Generation phải không ạ?)* |
| Sato | その<ruby>通<rt>とお</rt></ruby>りです。よくご<ruby>存知<rt>ぞんじ</rt></ruby>ですね。<ruby>大<rt>おお</rt></ruby>まかな<ruby>流<rt>なが</rt></ruby>れは<ruby>三<rt>みっ</rt></ruby>つ。ドキュメントをembeddingしてvector DBに<ruby>入<rt>い</rt></ruby>れる、<ruby>質問<rt>しつもん</rt></ruby>をembeddingしてsemantic searchで<ruby>関連<rt>かんれん</rt></ruby>ドキュメントを<ruby>取<rt>と</rt></ruby>ってくる、LLMに<ruby>渡<rt>わた</rt></ruby>して<ruby>回答<rt>かいとう</rt></ruby>を<ruby>生成<rt>せいせい</rt></ruby>する。<br>*(Đúng vậy. Em biết rõ nhỉ. Quy trình tổng quát có 3 bước: embed tài liệu rồi đưa vào vector DB; embed câu hỏi rồi semantic search lấy doc liên quan; đưa cho LLM để sinh câu trả lời.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>一<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。LLMはClaude APIを<ruby>使<rt>つか</rt></ruby>う<ruby>予定<rt>よてい</rt></ruby>でしょうか?<br>*(Em đã rõ. Cho em xác nhận một điều. LLM dự kiến dùng Claude API ạ?)* |
| Sato | はい、Claude 3.5 Sonnetを<ruby>予定<rt>よてい</rt></ruby>しています。<ruby>日本語<rt>にほんご</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>いので。<br>*(Đúng, dự kiến dùng Claude 3.5 Sonnet. Vì nó mạnh tiếng Nhật.)* |

---

## Tình huống 4 — Cybozu R&D · 11:00, hỏi lại khi chưa hiểu thuật ngữ pgvector

| Vai | Lời thoại |
|---|---|
| Sato | Vector DBはpgvectorを<ruby>使<rt>つか</rt></ruby>います。Cybozuは<ruby>全社的<rt>ぜんしゃてき</rt></ruby>にPostgreSQLを<ruby>採用<rt>さいよう</rt></ruby>しているので、extensionとしてpgvectorを<ruby>入<rt>い</rt></ruby>れるのが<ruby>自然<rt>しぜん</rt></ruby>なんです。<br>*(Vector DB tụi mình dùng pgvector. Cybozu toàn công ty dùng PostgreSQL nên cài pgvector dạng extension là tự nhiên nhất.)* |
| Đại | すみません、pgvectorというのは、PostgreSQLの<ruby>拡張<rt>かくちょう</rt></ruby>ということでしょうか? もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Em xin lỗi, pgvector nghĩa là extension của PostgreSQL ạ? Anh có thể giải thích lại giúp em được không?)* |
| Sato | はい、その<ruby>理解<rt>りかい</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。PostgreSQLに`CREATE EXTENSION vector;`を<ruby>叩<rt>たた</rt></ruby>くと、vector<ruby>型<rt>がた</rt></ruby>とcosine<ruby>類似度<rt>るいじど</rt></ruby><ruby>検索<rt>けんさく</rt></ruby>が<ruby>使<rt>つか</rt></ruby>えるようになります。<br>*(Đúng, hiểu vậy là ổn. Chạy `CREATE EXTENSION vector;` trên PostgreSQL là dùng được kiểu vector và tìm kiếm cosine similarity.)* |
| Đại | なるほど、よく<ruby>分<rt>わ</rt></ruby>かりました。Pineconeのようなマネージドサービスではなく、<ruby>自前<rt>じまえ</rt></ruby>のPostgreSQLで<ruby>運用<rt>うんよう</rt></ruby>するということですね。<br>*(Em hiểu rồi. Tức là không dùng managed service như Pinecone, mà tự vận hành trên PostgreSQL nội bộ phải không ạ?)* |
| Sato | その<ruby>通<rt>とお</rt></ruby>り！データの<ruby>主権<rt>しゅけん</rt></ruby>を<ruby>社内<rt>しゃない</rt></ruby>に<ruby>保<rt>たも</rt></ruby>ちたいという<ruby>方針<rt>ほうしん</rt></ruby>です。<br>*(Đúng vậy! Chủ trương giữ chủ quyền dữ liệu trong nội bộ.)* |

---

## Tình huống 5 — Cybozu cafeteria · 12:15, ăn trưa với các intern khác — tự giới thiệu nhanh

| Vai | Lời thoại |
|---|---|
| Intern A (Kyoto Univ) | あ、<ruby>新<rt>あたら</rt></ruby>しいインターンの<ruby>方<rt>かた</rt></ruby>ですか? どうぞこちらへ。<br>*(A, em là intern mới à? Mời ngồi đây.)* |
| Đại | ありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>長期<rt>ちょうき</rt></ruby>インターンになりました、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>のグエンです。<ruby>専攻<rt>せんこう</rt></ruby>はCSで、RAGプロジェクトを<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Em cảm ơn. Em là Nguyễn, sinh viên năm 3 Đại học Osaka, bắt đầu intern dài hạn từ hôm nay. Chuyên ngành CS, em phụ trách dự án RAG.)* |
| Intern A | おお、<ruby>佐藤<rt>さとう</rt></ruby>さんのチームですね! <ruby>俺<rt>おれ</rt></ruby>は<ruby>京都大学<rt>きょうとだいがく</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>、<ruby>修士<rt>しゅうし</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>。Kintone APIチームです。<br>*(Ồ, team anh Sato à! Tớ là Tanaka từ Đại học Kyoto, master năm 1. Team Kintone API.)* |
| Đại | よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>長期<rt>ちょうき</rt></ruby>インターンは<ruby>何<rt>なん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>ですか?<br>*(Mong anh giúp đỡ. Anh đã đi intern dài hạn lần thứ mấy rồi ạ?)* |
| Tanaka | これで<ruby>三回目<rt>さんかいめ</rt></ruby>。Cybozuはご<ruby>飯<rt>はん</rt></ruby>が<ruby>無料<rt>むりょう</rt></ruby>で<ruby>嬉<rt>うれ</rt></ruby>しいよ。<ruby>困<rt>こま</rt></ruby>ったらSlackでDMして。<br>*(Lần thứ 3 rồi. Ở Cybozu cơm miễn phí nên sướng lắm. Có gì khó cứ DM Slack cho tớ.)* |
| Đại | ありがとうございます、<ruby>心強<rt>こころづよ</rt></ruby>いです。<br>*(Em cảm ơn, có anh em an tâm hẳn ạ.)* |

---

## Tình huống 6 — Cybozu desk · 14:00, Sato giao task đầu tiên + làm rõ scope

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>最初<rt>さいしょ</rt></ruby>のタスクは、embedding modelのベンチマークです。3つのモデル — OpenAIのtext-embedding-3-large、sentence-transformersのmultilingual-e5-large、それからintfloatのe5-mistral — を<ruby>比較<rt>ひかく</rt></ruby>してください。<br>*(Task đầu tiên là benchmark các embedding model. So sánh 3 model: text-embedding-3-large của OpenAI, multilingual-e5-large của sentence-transformers, và e5-mistral của intfloat.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>評価<rt>ひょうか</rt></ruby><ruby>指標<rt>しひょう</rt></ruby>はrecall@5とlatencyの<ruby>両方<rt>りょうほう</rt></ruby>でよろしいでしょうか?<br>*(Em đã rõ. Tiêu chí đánh giá dùng cả recall@5 và latency được không ạ?)* |
| Sato | いい<ruby>質問<rt>しつもん</rt></ruby>です。それに<ruby>加<rt>くわ</rt></ruby>えてコストも<ruby>入<rt>い</rt></ruby>れてください。OpenAIはAPIコストがかかりますが、e5系はself-hostでGPU<ruby>代<rt>だい</rt></ruby>のみ。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜<rt>きんよう</rt></ruby>までにレポートにまとめてもらえますか?<br>*(Câu hỏi tốt. Thêm cả cost vào nữa. OpenAI tốn API cost, các model e5 self-host chỉ tốn GPU. Tuần sau thứ 6 em tổng hợp thành report được không?)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby>までに、recall@5、latency、コストの<ruby>三<rt>みっ</rt></ruby>つの<ruby>観点<rt>かんてん</rt></ruby>でベンチマーク・レポートをご<ruby>提出<rt>ていしゅつ</rt></ruby>いたします。<br>*(Đến thứ 6 tuần sau, em sẽ nộp report benchmark trên 3 tiêu chí: recall@5, latency và cost.)* |
| Sato | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>分<rt>わ</rt></ruby>からないことがあれば、いつでもSlackで<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Vâng, nhờ em. Có gì không hiểu cứ hỏi Slack bất cứ lúc nào nhé.)* |

---

## Tình huống 7 — Cybozu desk · 16:30, quan sát senior code review trên Pull Request

*Sato gọi Đại lại xem màn hình, đang review một PR của intern khác.*

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、ちょっとこの<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。これはCybozuの<ruby>典型的<rt>てんけいてき</rt></ruby>なcode review styleです。<br>*(Đại, xem cái màn hình này một chút. Đây là style code review điển hình của Cybozu.)* |
| Đại | はい、<ruby>拝見<rt>はいけん</rt></ruby>します。<br>*(Vâng, em xem ạ.)* |
| Sato | コメントを<ruby>書<rt>か</rt></ruby>くときは、まず<ruby>良<rt>よ</rt></ruby>かった<ruby>点<rt>てん</rt></ruby>を<ruby>褒<rt>ほ</rt></ruby>める。<ruby>次<rt>つぎ</rt></ruby>に<ruby>改善<rt>かいぜん</rt></ruby><ruby>案<rt>あん</rt></ruby>を「〜してはどうでしょうか」という<ruby>提案<rt>ていあん</rt></ruby><ruby>形<rt>けい</rt></ruby>で<ruby>書<rt>か</rt></ruby>く。<ruby>命令<rt>めいれい</rt></ruby><ruby>形<rt>けい</rt></ruby>は<ruby>避<rt>さ</rt></ruby>けます。<br>*(Khi viết comment, đầu tiên khen điểm tốt. Tiếp theo viết đề xuất cải thiện ở thể "〜してはどうでしょうか". Tránh dạng mệnh lệnh.)* |
| Đại | なるほど、「<ruby>命令<rt>めいれい</rt></ruby><ruby>形<rt>けい</rt></ruby>を<ruby>避<rt>さ</rt></ruby>ける」というのは<ruby>勉強<rt>べんきょう</rt></ruby>になります。<ruby>大学<rt>だいがく</rt></ruby>のGitHubではタメ<ruby>口<rt>ぐち</rt></ruby>で<ruby>書<rt>か</rt></ruby>いていたので……。<br>*(Em ngộ ra rồi. "Tránh dạng mệnh lệnh" là bài học hay đấy ạ. Trên GitHub đại học bọn em hay viết suồng sã…)* |
| Sato | <ruby>会社<rt>かいしゃ</rt></ruby>ではテキストでも<ruby>敬語<rt>けいご</rt></ruby>が<ruby>基本<rt>きほん</rt></ruby>です。「LGTM!」とか「nits:」とか<ruby>英語<rt>えいご</rt></ruby>のショートカットはOKだけど、<ruby>本文<rt>ほんぶん</rt></ruby>は<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(Trong công ty thì text cũng dùng kính ngữ là chính. "LGTM!" hay "nits:" — kiểu shortcut tiếng Anh thì OK, nhưng nội dung phải lịch sự.)* |

---

## Tình huống 8 — Slack #intern-rag · tuần 2, báo cáo tiến độ daily standup format

| Vai | Lời thoại |
|---|---|
| Đại | (post Slack 10:00) おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<br>**<ruby>昨日<rt>きのう</rt></ruby>：** multilingual-e5-largeの<ruby>環境<rt>かんきょう</rt></ruby><ruby>構築<rt>こうちく</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、1,000<ruby>件<rt>けん</rt></ruby>のサンプルで<ruby>試行<rt>しこう</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<br>**<ruby>本日<rt>ほんじつ</rt></ruby>：** OpenAI text-embedding-3-largeでも<ruby>同<rt>おな</rt></ruby>じく<ruby>計測<rt>けいそく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>**ブロッカー：**<ruby>特<rt>とく</rt></ruby>になし。 |
| Sato | (reply) ありがとうございます。<ruby>順調<rt>じゅんちょう</rt></ruby>ですね。<ruby>何<rt>なに</rt></ruby>かあれば<ruby>遠慮<rt>えんりょ</rt></ruby>なく。<br>*(Cảm ơn em. Đang đúng tiến độ đấy. Có gì cứ nói thẳng nhé.)* |
| Đại | (reply) ありがとうございます! 1つだけご<ruby>相談<rt>そうだん</rt></ruby>させてください。OpenAI APIキーはどちらでお<ruby>借<rt>か</rt></ruby>りできますか?<br>*(Em cảm ơn! Cho em hỏi 1 việc. API key của OpenAI em mượn ở đâu ạ?)* |
| Sato | (reply) 1Passwordのvault「intern-shared」に<ruby>共有<rt>きょうゆう</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<ruby>使用量<rt>しようりょう</rt></ruby>は<ruby>都度<rt>つど</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đã share trong vault "intern-shared" của 1Password. Lượng sử dụng nhớ báo cáo từng lần nhé.)* |

---

## Tình huống 9 — Cybozu phòng họp Aoi · tuần 3, weekly 1on1 với Inomata

*Phòng họp nhỏ 4 người, chỉ có Đại và Inomata. Inomata mở MacBook ghi note.*

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、<ruby>3<rt>さん</rt></ruby><ruby>週目<rt>しゅうめ</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>調子<rt>ちょうし</rt></ruby>はどうですか?<br>*(Đại à, đã 3 tuần rồi, cảm ơn em vất vả. Tình hình ổn không?)* |
| Đại | はい、おかげさまで<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>指導<rt>しどう</rt></ruby>してくださっていますので。<br>*(Vâng, nhờ trời em làm khá thuận lợi ạ. Anh Sato chỉ bảo em rất tận tình.)* |
| Inomata | それは<ruby>何<rt>なに</rt></ruby>よりです。<ruby>困<rt>こま</rt></ruby>っていることはありませんか? <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくださいね。<br>*(Vậy thì tốt nhất rồi. Có gì khó khăn không? Em cứ nói thẳng nhé.)* |
| Đại | <ruby>実<rt>じつ</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>つ。<ruby>妻<rt>つま</rt></ruby>がもうすぐ<ruby>臨月<rt>りんげつ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りまして、<ruby>体調<rt>たいちょう</rt></ruby>が<ruby>不安定<rt>ふあんてい</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby>はフルリモートにさせていただけないでしょうか?<br>*(Thật ra có 1 việc. Vợ em sắp đến tháng sinh, sức khoẻ không ổn định. Tuần sau em xin được làm full remote có được không ạ?)* |
| Inomata | もちろんです! <ruby>家庭<rt>かてい</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>事前<rt>じぜん</rt></ruby>にSlackで<ruby>共有<rt>きょうゆう</rt></ruby>していただければ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Tất nhiên! Cứ ưu tiên gia đình. Em báo trước trên Slack là được rồi.)* |
| Đại | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn anh. Em được giúp đỡ nhiều quá.)* |
| Inomata | こちらこそ、<ruby>事情<rt>じじょう</rt></ruby>を<ruby>早<rt>はや</rt></ruby>めに<ruby>共有<rt>きょうゆう</rt></ruby>してくれてありがとう。<ruby>家族<rt>かぞく</rt></ruby>の<ruby>体調<rt>たいちょう</rt></ruby>あっての<ruby>仕事<rt>しごと</rt></ruby>ですからね。<br>*(Anh mới phải cảm ơn em đã chia sẻ sớm. Có sức khoẻ gia đình mới có công việc mà.)* |

---

## Tình huống 10 — Cybozu desk · tuần 4, semantic search prototype hoạt động — gọi Sato confirm

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか? semantic searchのプロトタイプが<ruby>動<rt>うご</rt></ruby>くようになりまして、<ruby>結果<rt>けっか</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていただきたいんです。<br>*(Anh Sato, anh có chút thời gian không ạ? Em đã chạy được prototype semantic search, em muốn anh xem kết quả ạ.)* |
| Sato | おお、もう<ruby>動<rt>うご</rt></ruby>いたんですか! <ruby>早<rt>はや</rt></ruby>いですね。<ruby>見<rt>み</rt></ruby>せてください。<br>*(Ồ, chạy được rồi à! Nhanh đấy. Cho anh xem.)* |
| Đại | (gõ terminal) クエリは「リモートワーク <ruby>申請<rt>しんせい</rt></ruby> <ruby>方法<rt>ほうほう</rt></ruby>」です。top-5の<ruby>結果<rt>けっか</rt></ruby>が80ミリ<ruby>秒<rt>びょう</rt></ruby>で<ruby>返<rt>かえ</rt></ruby>ってきます。<br>*(Câu query là "リモートワーク 申請 方法". Top-5 kết quả trả về trong 80 mili giây.)* |
| Sato | おっ、レイテンシも<ruby>悪<rt>わる</rt></ruby>くない。<ruby>関連<rt>かんれん</rt></ruby><ruby>性<rt>せい</rt></ruby>もしっかり<ruby>出<rt>で</rt></ruby>てるね。<ruby>次<rt>つぎ</rt></ruby>はre-rankingを<ruby>入<rt>い</rt></ruby>れたら、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>精度<rt>せいど</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がるかもしれません。<br>*(Ồ, latency cũng không tệ. Liên quan cũng rất chắc. Bước tiếp theo nếu thêm re-ranking thì có thể độ chính xác tăng thêm nữa.)* |
| Đại | re-ranking、cross-encoderを<ruby>使<rt>つか</rt></ruby>うやつですよね。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>にさせてください。<br>*(Re-ranking, là cái dùng cross-encoder phải không ạ. Cho em làm task tuần sau nhé.)* |
| Sato | はい、<ruby>任<rt>まか</rt></ruby>せます。<ruby>論文<rt>ろんぶん</rt></ruby>だとms-marco-MiniLMが<ruby>軽<rt>かる</rt></ruby>くて<ruby>強<rt>つよ</rt></ruby>いですよ。<br>*(Yên tâm giao em. Theo paper thì ms-marco-MiniLM nhẹ mà mạnh đó.)* |

---

## Tình huống 11 — Slack DM Inomata · tuần 5, xin remote vì Hana quấy đêm

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>猪股<rt>いのまた</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>明日<rt>あした</rt></ruby><ruby>急<rt>きゅう</rt></ruby>で<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>明日<rt>あした</rt></ruby>と<ruby>明後日<rt>あさって</rt></ruby>、リモートに<ruby>変更<rt>へんこう</rt></ruby>させていただけますでしょうか。<ruby>妻<rt>つま</rt></ruby>が<ruby>切迫<rt>せっぱく</rt></ruby><ruby>気味<rt>ぎみ</rt></ruby>で<ruby>安静<rt>あんせい</rt></ruby><ruby>指示<rt>しじ</rt></ruby>を<ruby>受<rt>う</rt></ruby>けまして……。<br>*(Anh Inomata, em xin lỗi đột xuất quá nhưng ngày mai và ngày kia em xin chuyển sang remote được không ạ. Vợ em có dấu hiệu doạ sinh, bác sĩ yêu cầu nghỉ ngơi tuyệt đối…)* |
| Inomata | <ruby>了解<rt>りょうかい</rt></ruby>です! まずは<ruby>奥<rt>おく</rt></ruby>さまを<ruby>優先<rt>ゆうせん</rt></ruby>してください。<ruby>仕事<rt>しごと</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>のない<ruby>範囲<rt>はんい</rt></ruby>で。<br>*(Đã rõ! Trước hết hãy ưu tiên vợ em. Công việc thì cứ trong khả năng thôi.)* |
| Đại | ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さんにもお<ruby>伝<rt>つた</rt></ruby>えしておきます。<br>*(Em cảm ơn anh. Em sẽ báo cho anh Sato luôn ạ.)* |
| Inomata | こちらからも<ruby>共有<rt>きょうゆう</rt></ruby>しておきます。<ruby>奥<rt>おく</rt></ruby>さまによろしくお<ruby>伝<rt>つた</rt></ruby>えください。<br>*(Anh cũng sẽ chia sẻ phía mình. Cho anh gửi lời tới vợ em nhé.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しております。<br>*(Em thật sự rất biết ơn anh ạ.)* |

---

## Tình huống 12 — Cybozu morning standup phòng họp · tuần 6, lần đầu phát biểu trước cả team 8 người

| Vai | Lời thoại |
|---|---|
| Sato | では、<ruby>本日<rt>ほんじつ</rt></ruby>のstandup。グエンさんから<ruby>順番<rt>じゅんばん</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy thì standup hôm nay. Bắt đầu lần lượt từ Đại nhé.)* |
| Đại | おはようございます、インターンのグエンです。<ruby>昨日<rt>きのう</rt></ruby>はre-rankingのプロトタイプを<ruby>実装<rt>じっそう</rt></ruby>しまして、ms-marco-MiniLMでrecall@5が78%から85%に<ruby>向上<rt>こうじょう</rt></ruby>しました。<br>*(Chào buổi sáng, em là intern Nguyễn. Hôm qua em đã implement prototype re-ranking, dùng ms-marco-MiniLM thì recall@5 tăng từ 78% lên 85% ạ.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>は、Claude APIの<ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>し<ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>結合<rt>けつごう</rt></ruby>して、エンドツーエンドの<ruby>検証<rt>けんしょう</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めます。ブロッカーは<ruby>特<rt>とく</rt></ruby>にありません。<ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Hôm nay em sẽ tích hợp phần gọi Claude API và verify end-to-end. Không có blocker. Em báo cáo xong ạ.)* |
| Member B | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>進捗<rt>しんちょく</rt></ruby>! re-ranking<ruby>後<rt>ご</rt></ruby>のlatencyはどのぐらいですか?<br>*(Tiến độ tuyệt vời! Latency sau re-ranking là bao nhiêu?)* |
| Đại | 80ミリ<ruby>秒<rt>びょう</rt></ruby>から130ミリ<ruby>秒<rt>びょう</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>えましたが、ユーザー<ruby>体験<rt>たいけん</rt></ruby><ruby>上<rt>じょう</rt></ruby>はまだ<ruby>許容<rt>きょよう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>しております。<br>*(Tăng từ 80ms lên 130ms ạ, nhưng theo em đánh giá thì trải nghiệm người dùng vẫn ở mức chấp nhận được.)* |
| Sato | <ruby>判断<rt>はんだん</rt></ruby>の<ruby>根拠<rt>こんきょ</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>でいいですね。<ruby>次<rt>つぎ</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Căn cứ phán đoán rõ ràng, tốt đấy. Tiếp, Tanaka.)* |

---

## Tình huống 13 — Cybozu desk · tuần 8, hỏi senior về best practice xử lý API key + secret

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>一<rt>ひと</rt></ruby>つお<ruby>聞<rt>き</rt></ruby>きしたいことがあります。Claude APIキーや<ruby>各種<rt>かくしゅ</rt></ruby>secretの<ruby>管理<rt>かんり</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>はどうされていますか?<br>*(Anh Sato, em muốn hỏi 1 việc. Cách quản lý API key của Claude và các loại secret thì anh làm thế nào ạ?)* |
| Sato | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>原則<rt>げんそく</rt></ruby><ruby>三<rt>みっ</rt></ruby>つ。<ruby>一<rt>いち</rt></ruby>、コードに<ruby>絶対<rt>ぜったい</rt></ruby><ruby>書<rt>か</rt></ruby>かない。<ruby>二<rt>に</rt></ruby>、<ruby>環境変数<rt>かんきょうへんすう</rt></ruby>で<ruby>渡<rt>わた</rt></ruby>す。<ruby>三<rt>さん</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby>はAWS Secrets Managerで<ruby>管理<rt>かんり</rt></ruby>。<br>*(Câu hỏi hay. 3 nguyên tắc. Một: tuyệt đối không viết trong code. Hai: truyền qua environment variable. Ba: production quản lý qua AWS Secrets Manager.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。`.env`ファイルもgitignoreすべきですよね。<br>*(Em đã rõ. File `.env` cũng phải gitignore phải không ạ.)* |
| Sato | その<ruby>通<rt>とお</rt></ruby>り。それから、git pushする<ruby>前<rt>まえ</rt></ruby>にpre-commit hookでsecretスキャンを<ruby>走<rt>はし</rt></ruby>らせるのもCybozu<ruby>標準<rt>ひょうじゅん</rt></ruby>です。`detect-secrets`というツールを<ruby>使<rt>つか</rt></ruby>っています。<br>*(Đúng vậy. Thêm nữa, trước khi git push thì chạy secret scan ở pre-commit hook cũng là chuẩn của Cybozu. Bọn anh dùng tool `detect-secrets`.)* |
| Đại | ありがとうございます、<ruby>後<rt>あと</rt></ruby>で<ruby>導入<rt>どうにゅう</rt></ruby>します。<br>*(Em cảm ơn ạ, lát em sẽ cài đặt.)* |

---

## Tình huống 14 — Cybozu cafeteria · tuần 9, ăn trưa với Inomata + Sato — small talk về Hizashi

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、<ruby>休<rt>やす</rt></ruby>みの<ruby>日<rt>ひ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をされていますか?<br>*(Đại, ngày nghỉ em làm gì?)* |
| Đại | <ruby>妻<rt>つま</rt></ruby>の<ruby>付<rt>つ</rt></ruby>き<ruby>添<rt>そ</rt></ruby>いと、あとは<ruby>個人<rt>こじん</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>です。ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリのアイデアを<ruby>練<rt>ね</rt></ruby>っていまして。<br>*(Em đi cùng vợ khám thai, rồi side project. Em đang ấp ủ ý tưởng về một app học tiếng Nhật cho người Việt ạ.)* |
| Sato | おっ、いいですね! どんなアーキテクチャを<ruby>考<rt>かんが</rt></ruby>えていますか?<br>*(Ồ, hay đấy! Em định kiến trúc thế nào?)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>今<rt>いま</rt></ruby>のCybozuのRAGスタックがそのまま<ruby>応用<rt>おうよう</rt></ruby>できるんじゃないかと<ruby>考<rt>かんが</rt></ruby>えています。pgvector + Claude API + sentence-transformers。<br>*(Thật ra em đang nghĩ là chính stack RAG của Cybozu giờ có thể áp dụng nguyên được. pgvector + Claude API + sentence-transformers.)* |
| Inomata | スタートアップ<ruby>志望<rt>しぼう</rt></ruby>ですか?<br>*(Em định khởi nghiệp à?)* |
| Đại | まだ<ruby>分<rt>わ</rt></ruby>かりません。<ruby>卒業後<rt>そつぎょうご</rt></ruby>の<ruby>進路<rt>しんろ</rt></ruby>は、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>卒研<rt>そつけん</rt></ruby>と<ruby>並行<rt>へいこう</rt></ruby>して<ruby>考<rt>かんが</rt></ruby>えていく<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Em chưa biết. Định hướng sau tốt nghiệp em sẽ vừa làm 卒研 sang năm vừa suy nghĩ ạ.)* |
| Sato | <ruby>応援<rt>おうえん</rt></ruby>します。<ruby>面白<rt>おもしろ</rt></ruby>い<ruby>方向<rt>ほうこう</rt></ruby>ですね。<br>*(Anh ủng hộ. Hướng đi thú vị đấy.)* |

---

## Tình huống 15 — Apartment Toyonaka · 22:30, Đại tâm sự với Mai — cảnh tiếng Việt cuối chương

> Đại về tới căn hộ Toyonaka, ngồi bên cạnh Mai đang ôm bụng bầu 7 tháng. Đại vừa tan ca, mệt nhưng phấn khích.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi, bụng còn đau không? Bé Hana đạp nhiều không? |
| Mai | (tiếng Việt) Hôm nay con đạp dữ lắm. Hôm nay ở Cybozu thế nào anh? |
| Đại | (tiếng Việt) Tốt lắm. Anh vừa demo prototype re-ranking, anh Sato khen. Mai à, anh kể em mới phát hiện ra cái này — gọi là pgvector. |
| Mai | (tiếng Việt) Pi-gì-vector? Là cái gì hả anh? |
| Đại | (tiếng Việt) Nó là một cái extension của PostgreSQL — cho phép dùng database thường để làm vector search luôn, không cần dịch vụ riêng như Pinecone. Cybozu dùng cái đó cho RAG. |
| Mai | (tiếng Việt) Anh nói RAG là cái gì đợt trước em chưa hiểu. |
| Đại | (tiếng Việt) RAG là Retrieval-Augmented Generation. Đại khái thế này: mình có 50.000 tài liệu, mình embed thành vector, lưu vào pgvector. Khi user hỏi, mình tìm 5 tài liệu liên quan nhất, đưa cho Claude API trả lời kèm trích dẫn nguồn. |
| Mai | (tiếng Việt) À hiểu rồi. Vậy nếu mình muốn làm app học tiếng Nhật cho người Việt, có dùng được cái này không? |
| Đại | (tiếng Việt) Đó! Đó! Đúng là cái anh đang nghĩ. Cybozu giống như một cái "bản xem trước" của Hizashi đó em. Cùng một stack thôi. |
| Mai | (tiếng Việt) Vậy là 3 tháng intern này anh đang được trả lương để học công nghệ sẽ làm Hizashi luôn hả? |
| Đại | (tiếng Việt) Ừ. ¥250 nghìn/tháng × 3 = ¥750 nghìn. Tiền nhà với đồ sơ sinh chuẩn bị đón Hana tầm ¥300 nghìn là ổn. Anh vẫn tiết kiệm được. |
| Mai | (tiếng Việt) Tốt quá anh. Mà anh ơi, anh nhớ giữ sức nhé. Sắp đến ngày sinh Hana, em cần anh khoẻ. |
| Đại | (tiếng Việt) Yên tâm. Hai vợ chồng cùng cố. Mai cố lên nha, sang năm anh xây Hizashi xong cả nhà mình có thêm cái để làm chung. |
| Mai | (tiếng Việt) Em đợi! Em là beta tester đầu tiên nhé. |

---

## Đọng lại chương 5

Đại trải qua 3 tháng đầu của kỳ thực tập dài hạn tại Cybozu Osaka, vừa làm intern engineer thực thụ vừa nuôi con sơ sinh. Học **mẫu chào hỏi ngày đầu** (「本日からお世話になります」), **xin xác nhận task** (「〜という理解で大丈夫でしょうか」), **hỏi lại khi chưa hiểu thuật ngữ** (「もう一度お願いできますか」), **báo tiến độ daily standup** (昨日/本日/ブロッカー format), **keigo xin remote work** (「リモートに変更させていただけますでしょうか」), và **đặt câu hỏi technical lịch sự** với senior (「〜について少しお聞きしたいことがあります」). Quan sát code review style của Cybozu (khen trước + đề xuất ở thể 「〜してはどうでしょうか」). Hiểu sâu RAG = embedding + pgvector + Claude API — chính là stack tương lai của Hizashi. ¥750k thu nhập, gia đình + công việc cân bằng nhờ văn hoá hybrid của Cybozu.

> Từ vựng & mẫu câu chương này: 長期インターン・お世話になります・承知しました・〜という理解で大丈夫でしょうか・もう一度お願いできますか・進捗報告・ブロッカー・フルリモート・家庭優先・コアタイム・フレックス・RAG・embedding・pgvector・semantic search・Claude API・re-ranking・recall@5・latency・コスト・〜してはどうでしょうか・〜させていただけますでしょうか・夜泣き・ハイブリッド

## Bí quyết chương

- **「お世話になります」là câu mở miệng kỳ thực tập** — không có câu chào này, người Nhật sẽ thấy intern chưa biết phép tắc.
- **Báo cáo daily standup format Nhật**: 昨日 → 本日 → ブロッカー. Đừng nói lung tung, cấu trúc cố định mới chuyên nghiệp.
- **Hỏi lại không phải thừa nhận yếu** — senior Nhật rất ghét intern gật gù giả vờ hiểu rồi làm sai. 「もう一度お願いできますか」 là câu được hoan nghênh.
- **Code review style Cybozu**: khen trước + 「〜してはどうでしょうか」 đề xuất, tránh thể mệnh lệnh kể cả với intern.
- **Văn hoá hybrid Cybozu thật**: công ty Nhật hiện đại tôn trọng gia đình. Báo trước sớm trên Slack là đủ.
- **Stack Cybozu = stack Hizashi**: intern không chỉ kiếm tiền, mà còn là "bản xem trước" công nghệ sản phẩm cá nhân tương lai.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 長期 | ちょうき | TRƯỜNG KỲ | Dài hạn |
| 申す | もうす | THÂN | Nói (khiêm) |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức |
| 入館 | にゅうかん | NHẬP QUÁN | Vào toà nhà |
| 総務 | そうむ | TỔNG VỤ | Tổng vụ |
| 受け取る | うけとる | THỤ THỦ | Nhận |
| 就業時間 | しゅうぎょうじかん | TỰU NGHIỆP THỜI GIAN | Giờ làm việc |
| 休憩 | きゅうけい | HƯU KHẾ | Nghỉ giải lao |
| 調整 | ちょうせい | ĐIỀU CHỈNH | Điều chỉnh |
| 柔軟 | じゅうなん | NHU NHUYỄN | Linh hoạt |
| 配慮 | はいりょ | PHỐI LỰ | Quan tâm |
| 概要 | がいよう | KHÁI YẾU | Sơ lược |
| 顧客 | こきゃく | CỐ KHÁCH | Khách hàng |
| 累計 | るいけい | LŨY KẾ | Tích luỹ |
| 自然言語 | しぜんげんご | TỰ NHIÊN NGÔN NGỮ | Ngôn ngữ tự nhiên |
| 検索 | けんさく | KIỂM SÁCH | Tìm kiếm |
| 大まか | おおまか | ĐẠI | Đại khái |
| 流れ | ながれ | LƯU | Quy trình |
| 関連 | かんれん | QUAN LIÊN | Liên quan |
| 回答 | かいとう | HỒI ĐÁP | Câu trả lời |
| 採用 | さいよう | THÁI DỤNG | Áp dụng, tuyển dụng |
| 叩く | たたく | KHẤU | Gõ |
| 類似度 | るいじど | LOẠI TỰ ĐỘ | Độ tương tự |
| 自前 | じまえ | TỰ TIỀN | Tự lo, nội bộ |
| 運用 | うんよう | VẬN DỤNG | Vận hành |
| 主権 | しゅけん | CHỦ QUYỀN | Chủ quyền |
| 保つ | たもつ | BẢO | Giữ |
| 方針 | ほうしん | PHƯƠNG CHÂM | Phương châm |
| 専攻 | せんこう | CHUYÊN CÔNG | Chuyên ngành |
| 心強い | こころづよい | TÂM CƯỜNG | Yên tâm |
| 評価指標 | ひょうかしひょう | ĐÁNH GIÁ CHỈ TIÊU | Tiêu chí đánh giá |
| 加える | くわえる | GIA | Thêm vào |
| 観点 | かんてん | QUAN ĐIỂM | Góc nhìn |
| 典型的 | てんけいてき | ĐIỂN HÌNH ĐÍCH | Điển hình |
| 褒める | ほめる | BAO | Khen |
| 改善案 | かいぜんあん | CẢI THIỆN ÁN | Đề xuất cải thiện |
| 命令形 | めいれいけい | MỆNH LỆNH HÌNH | Thể mệnh lệnh |
| 避ける | さける | TỴ | Tránh |
| 敬語 | けいご | KÍNH NGỮ | Kính ngữ |
| 本文 | ほんぶん | BẢN VĂN | Nội dung |
| 丁寧 | ていねい | ĐINH NINH | Lịch sự, cẩn thận |
| 試行 | しこう | THÍ HÀNH | Thử nghiệm |
| 計測 | けいそく | KẾ TRẮC | Đo |
| ブロッカー | — | — | Vấn đề chặn |
| 借りる | かりる | TÁ | Mượn |
| 使用量 | しようりょう | SỬ DỤNG LƯỢNG | Lượng dùng |
| 都度 | つど | ĐÔ ĐỘ | Mỗi lần |
| 調子 | ちょうし | ĐIỀU TỬ | Tình hình |
| 正直 | しょうじき | CHÍNH TRỰC | Thẳng thắn |
| 夜泣き | よなき | DẠ KHẤP | Quấy đêm |
| 事情 | じじょう | SỰ TÌNH | Hoàn cảnh |
| 関連性 | かんれんせい | QUAN LIÊN TÍNH | Tính liên quan |
| 任せる | まかせる | NHIỆM | Giao phó |
| 急 | きゅう | CẤP | Đột xuất |
| 変更 | へんこう | BIẾN CANH | Thay đổi |
| 発熱 | はつねつ | PHÁT NHIỆT | Sốt |
| 範囲 | はんい | PHẠM VI | Phạm vi |
| 順番 | じゅんばん | THUẬN PHIÊN | Lần lượt |
| 結合 | けつごう | KẾT HỢP | Tích hợp |
| 検証 | けんしょう | KIỂM CHỨNG | Kiểm chứng |
| 向上 | こうじょう | HƯỚNG THƯỢNG | Cải thiện, tăng |
| 体験 | たいけん | THỂ NGHIỆM | Trải nghiệm |
| 許容 | きょよう | HỨA DUNG | Chấp nhận |
| 根拠 | こんきょ | CĂN CỨ | Căn cứ |
| 各種 | かくしゅ | CÁC CHỦNG | Các loại |
| 環境変数 | かんきょうへんすう | HOÀN CẢNH BIẾN SỐ | Biến môi trường |
| 本番 | ほんばん | BẢN PHIÊN | Production |
| 管理 | かんり | QUẢN LÝ | Quản lý |
| 標準 | ひょうじゅん | TIÊU CHUẨN | Tiêu chuẩn |
| 走らせる | はしらせる | TẨU | Chạy (lệnh) |
| 個人開発 | こじんかいはつ | CÁ NHÂN KHAI PHÁT | Phát triển cá nhân |
| 練る | ねる | LUYỆN | Ấp ủ |
| 応用 | おうよう | ỨNG DỤNG | Áp dụng |
| 志望 | しぼう | CHÍ VỌNG | Nguyện vọng |
| 卒業後 | そつぎょうご | TỐT NGHIỆP HẬU | Sau tốt nghiệp |
| 進路 | しんろ | TIẾN LỘ | Hướng đi |
| 卒研 | そつけん | TỐT NGHIÊN | Nghiên cứu tốt nghiệp |
| 並行 | へいこう | TỊNH HÀNH | Song song |
| 応援 | おうえん | ỨNG VIỆN | Ủng hộ |
| ハイブリッド | — | — | Hybrid |
