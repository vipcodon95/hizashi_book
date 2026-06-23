# Sách sinh viên Đại học Osaka · T4. Transformer + BERT (Attention Is All You Need)

> **Mục tiêu nhân vật:** Đại 23t, 9-10/2028, sau Hana 1 tháng (1 tuần nghỉ + 4 tuần làm bố mới). Học các mẫu hội thoại tiếng Nhật của thành viên lab khi đọc paper khó: trình bày paper trong seminar (本日の論文は〜です), hỏi sensei khi không hiểu công thức (この式の意味を教えていただけますか), thảo luận với senpai về thiết kế thực nghiệm (実験設計について相談したいのですが), báo cáo kết quả fine-tuning đầu tiên (ベースラインの結果をご報告いたします), từ chối lịch nhậu lab khéo léo (家族の都合で〜), nói chuyện với vợ + bố mẹ về tiến độ nghiên cứu.

---

## Bối cảnh

Tháng 9-10/2028. Hana đã 1 tháng tuổi, biết cười. Mai đang được mẹ chồng + Yumi đỡ đần. Đại quay lại lab full-time sau 1 tuần nghỉ. Lộ trình paper của Inoue-sensei đến phase 2: **Attention Is All You Need (Vaswani 2017)** → **BERT (Devlin 2018)** → **GPT-3 (Brown 2020)** → fine-tune **bert-base-japanese-v3** trên parallel corpus VN-JP. Chương này tập trung các mẫu câu seminar + 1on1 trình bày paper khó + báo kết quả thực nghiệm đầu tiên.

---

## Tình huống 1 — Phòng seminar · 9/9 14:00, Đại thuyết trình paper Attention (lần đầu)

*Phòng seminar lớn. 12 thành viên + Inoue-sensei + Watanabe准教授 ngồi bàn chữ U. Đại bước lên bảng, slide đầu hiện "Attention Is All You Need (Vaswani et al., 2017)".*

| Vai | Lời thoại |
|---|---|
| Đại | (hít sâu, cúi) <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます。グエン・ダイです。<ruby>論文<rt>ろんぶん</rt></ruby>は2017<ruby>年<rt>ねん</rt></ruby>NeurIPSの「Attention Is All You Need」、Vaswani <ruby>他<rt>ほか</rt></ruby>です。<br>*(Em xin phép giới thiệu paper hôm nay. Em là Nguyễn Đại. Bài là "Attention Is All You Need", Vaswani et al., NeurIPS 2017.)* |
| Đại | この<ruby>論文<rt>ろんぶん</rt></ruby>の<ruby>貢献<rt>こうけん</rt></ruby>は3つあります。1)RNNを<ruby>使<rt>つか</rt></ruby>わず<ruby>注意機構<rt>ちゅういきこう</rt></ruby>のみで<ruby>系列<rt>けいれつ</rt></ruby><ruby>変換<rt>へんかん</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>うTransformer<ruby>構造<rt>こうぞう</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>。2)<ruby>並列<rt>へいれつ</rt></ruby><ruby>処理<rt>しょり</rt></ruby>による<ruby>学習<rt>がくしゅう</rt></ruby><ruby>高速化<rt>こうそくか</rt></ruby>。3)WMT 2014 En-De・En-FrでSOTA<ruby>達成<rt>たっせい</rt></ruby>。<br>*(Bài có 3 đóng góp. 1) Đề xuất kiến trúc Transformer chỉ dùng attention mechanism, không RNN. 2) Tăng tốc huấn luyện nhờ xử lý song song. 3) Đạt SOTA trên WMT 2014 En-De và En-Fr.)* |
| Đại | (chuyển slide) <ruby>核心<rt>かくしん</rt></ruby>はScaled Dot-Product Attentionです。<ruby>数式<rt>すうしき</rt></ruby>は:Attention(Q, K, V) = softmax(QK^T / √d_k) · V<br>*(Cốt lõi là Scaled Dot-Product Attention. Công thức: Attention(Q, K, V) = softmax(QK^T / √d_k) · V.)* |
| Watanabe准教授 | (giơ tay) <ruby>分母<rt>ぶんぼ</rt></ruby>の√d_kはなぜ<ruby>必要<rt>ひつよう</rt></ruby>なんですか?<br>*(Tại sao mẫu số là √d_k?)* |
| Đại | はい、<ruby>次元数<rt>じげんすう</rt></ruby>d_kが<ruby>大<rt>おお</rt></ruby>きいとQK^Tの<ruby>値<rt>あたい</rt></ruby>も<ruby>大<rt>おお</rt></ruby>きくなり、softmaxが<ruby>飽和<rt>ほうわ</rt></ruby>して<ruby>勾配<rt>こうばい</rt></ruby>が<ruby>消失<rt>しょうしつ</rt></ruby>します。√d_kで<ruby>割<rt>わ</rt></ruby>ることで<ruby>分散<rt>ぶんさん</rt></ruby>を1<ruby>付近<rt>ふきん</rt></ruby>に<ruby>抑<rt>おさ</rt></ruby>えます。<br>*(Vâng, khi d_k lớn thì QK^T cũng lớn, softmax bão hoà → vanishing gradient. Chia √d_k để giữ phương sai gần 1 ạ.)* |
| Watanabe准教授 | <ruby>正解<rt>せいかい</rt></ruby>です。<br>*(Đúng.)* |
| Inoue | (gật đầu) <ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Tiếp đi.)* |

---

## Tình huống 2 — Phòng seminar · 9/9 14:30, Đại bị sensei hỏi xoáy về multi-head

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>次<rt>つぎ</rt></ruby>はMulti-Head Attentionです。h<ruby>個<rt>こ</rt></ruby>(<ruby>論文<rt>ろんぶん</rt></ruby>では8)の<ruby>独立<rt>どくりつ</rt></ruby>したattention <ruby>機構<rt>きこう</rt></ruby>を<ruby>並列<rt>へいれつ</rt></ruby>に<ruby>動<rt>うご</rt></ruby>かし、<ruby>結果<rt>けっか</rt></ruby>を<ruby>連結<rt>れんけつ</rt></ruby>します。<br>*(Tiếp theo là Multi-Head Attention. Chạy song song h cơ chế attention độc lập (paper dùng 8), rồi nối kết quả.)* |
| Inoue | ダイくん、なぜ<ruby>複数<rt>ふくすう</rt></ruby>のheadが<ruby>必要<rt>ひつよう</rt></ruby>なんでしょう?1<ruby>個<rt>こ</rt></ruby>で<ruby>十分<rt>じゅうぶん</rt></ruby>ではないですか?<br>*(Đại, sao phải nhiều head? 1 head không đủ à?)* |
| Đại | (suy nghĩ 2 giây) えっと… <ruby>異<rt>こと</rt></ruby>なる<ruby>部分空間<rt>ぶぶんくうかん</rt></ruby>で<ruby>異<rt>こと</rt></ruby>なるパターンを<ruby>学習<rt>がくしゅう</rt></ruby>できるからです。<ruby>例<rt>たと</rt></ruby>えば、あるheadは<ruby>文法的<rt>ぶんぽうてき</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>、<ruby>別<rt>べつ</rt></ruby>のheadは<ruby>意味的<rt>いみてき</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>を<ruby>捉<rt>とら</rt></ruby>えると<ruby>論文<rt>ろんぶん</rt></ruby>5.4<ruby>節<rt>せつ</rt></ruby>で<ruby>分析<rt>ぶんせき</rt></ruby>されています。<br>*(Dạ... vì học được các pattern khác nhau trên các không gian con khác nhau. Ví dụ, head này bắt quan hệ ngữ pháp, head kia bắt quan hệ ngữ nghĩa — phân tích trong mục 5.4 của paper.)* |
| Inoue | いいですね。では<ruby>追加質問<rt>ついかしつもん</rt></ruby>:<ruby>多<rt>おお</rt></ruby>すぎるheadは<ruby>逆効果<rt>ぎゃくこうか</rt></ruby>になり<ruby>得<rt>え</rt></ruby>ますか?<br>*(Tốt. Hỏi thêm: nhiều head quá có phản tác dụng không?)* |
| Đại | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません、その<ruby>点<rt>てん</rt></ruby>については<ruby>論文<rt>ろんぶん</rt></ruby>に<ruby>明記<rt>めいき</rt></ruby>されておらず、<ruby>確証<rt>かくしょう</rt></ruby>がありません。<ruby>後<rt>のち</rt></ruby>ほど<ruby>調<rt>しら</rt></ruby>べて<ruby>来週<rt>らいしゅう</rt></ruby>ご<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Em xin lỗi, điểm này paper không nêu rõ, em chưa có chứng cứ. Em sẽ tra cứu và báo cáo tuần sau ạ.)* |
| Inoue | (gật) <ruby>分<rt>わ</rt></ruby>からないことを「<ruby>分<rt>わ</rt></ruby>からない」と<ruby>言<rt>い</rt></ruby>えるのは<ruby>研究者<rt>けんきゅうしゃ</rt></ruby>として<ruby>大事<rt>だいじ</rt></ruby>な<ruby>資質<rt>ししつ</rt></ruby>です。ヒント:Voita et al. 2019「Analyzing Multi-Head Self-Attention」を<ruby>読<rt>よ</rt></ruby>んでみてください。<br>*(Biết nói "không biết" với điều mình chưa biết là phẩm chất quan trọng của nhà nghiên cứu. Gợi ý: đọc Voita et al. 2019 "Analyzing Multi-Head Self-Attention".)* |
| Đại | (cúi) ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Em cảm ơn thầy chỉ giáo.)* |

---

## Tình huống 3 — Bàn Đại · 12/9 10:00, hỏi Yamada về positional encoding

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、お<ruby>時間<rt>じかん</rt></ruby><ruby>少<rt>すこ</rt></ruby>しよろしいでしょうか?<ruby>位置<rt>いち</rt></ruby>エンコーディングの<ruby>式<rt>しき</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Anh Yamada, em xin phép một chút thời gian. Anh giảng cho em ý nghĩa công thức positional encoding được không ạ?)* |
| Yamada | OK、ホワイトボードへ。<br>*(OK, lên bảng đi.)* |
| Yamada | (viết) PE(pos, 2i) = sin(pos / 10000^(2i/d_model)). <ruby>核心<rt>かくしん</rt></ruby>は<ruby>三角関数<rt>さんかくかんすう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って<ruby>位置情報<rt>いちじょうほう</rt></ruby>を<ruby>連続的<rt>れんぞくてき</rt></ruby>に<ruby>表現<rt>ひょうげん</rt></ruby>すること。<br>*(Cốt lõi là dùng hàm lượng giác để biểu diễn thông tin vị trí liên tục.)* |
| Đại | なぜsin/cosなのですか?learnable embeddingではダメなのでしょうか?<br>*(Sao lại sin/cos? Embedding learnable không được sao ạ?)* |
| Yamada | いい<ruby>質問<rt>しつもん</rt></ruby>!<ruby>論文<rt>ろんぶん</rt></ruby>では<ruby>両方<rt>りょうほう</rt></ruby><ruby>試<rt>ため</rt></ruby>したけど<ruby>性能<rt>せいのう</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだった。ただsin/cosは<ruby>学習時<rt>がくしゅうじ</rt></ruby>より<ruby>長<rt>なが</rt></ruby>い<ruby>系列<rt>けいれつ</rt></ruby>にも<ruby>外挿<rt>がいそう</rt></ruby>できる<ruby>利点<rt>りてん</rt></ruby>がある。<br>*(Câu hỏi hay! Paper thử cả hai, performance như nhau. Nhưng sin/cos có ưu điểm extrapolate được sang chuỗi dài hơn lúc train.)* |
| Đại | なるほど、<ruby>外挿性<rt>がいそうせい</rt></ruby>!よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ra là tính extrapolate! Em hiểu rồi.)* |
| Yamada | あとは<ruby>波長<rt>はちょう</rt></ruby>が10000倍<ruby>変<rt>か</rt></ruby>わるから、<ruby>異<rt>こと</rt></ruby>なるスケールの<ruby>位置関係<rt>いちかんけい</rt></ruby>を<ruby>捉<rt>とら</rt></ruby>えられる。<br>*(Bước sóng còn thay đổi gấp 10000 lần, bắt được quan hệ vị trí ở nhiều thang đo khác nhau.)* |

---

## Tình huống 4 — Phòng seminar · 16/9 14:00, Sato-D seminar BERT

| Vai | Lời thoại |
|---|---|
| Sato (D3) | <ruby>本日<rt>ほんじつ</rt></ruby>はBERT、Devlin et al. 2018<ruby>年<rt>ねん</rt></ruby>の<ruby>論文<rt>ろんぶん</rt></ruby>です。<ruby>事前学習<rt>じぜんがくしゅう</rt></ruby>タスクは2つ。<br>*(Hôm nay là BERT, Devlin et al. 2018. Có 2 task pre-training.)* |
| Sato | 1)MLM(Masked Language Model):トークンの15%をマスクして<ruby>予測<rt>よそく</rt></ruby>。<br>*(MLM: che 15% token để dự đoán.)* |
| Sato | 2)NSP(Next Sentence Prediction):2<ruby>文<rt>ぶん</rt></ruby>が<ruby>連続<rt>れんぞく</rt></ruby>するかを<ruby>判定<rt>はんてい</rt></ruby>。<br>*(NSP: phán đoán 2 câu có liên tiếp không.)* |
| Đại | (giơ tay) <ruby>失礼<rt>しつれい</rt></ruby>します、<ruby>質問<rt>しつもん</rt></ruby>させていただきます。15%という<ruby>比率<rt>ひりつ</rt></ruby>は<ruby>経験的<rt>けいけんてき</rt></ruby>に<ruby>決<rt>き</rt></ruby>めたのでしょうか?<br>*(Em xin phép hỏi. Tỷ lệ 15% là quyết định theo kinh nghiệm thôi ạ?)* |
| Sato | はい、ablation study(<ruby>論文<rt>ろんぶん</rt></ruby>Appendix C)で10〜20%を<ruby>試<rt>ため</rt></ruby>して15%が<ruby>最良<rt>さいりょう</rt></ruby>だったとあります。<ruby>後続<rt>こうぞく</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>(RoBERTa)では40%でも<ruby>有効<rt>ゆうこう</rt></ruby>と<ruby>報告<rt>ほうこく</rt></ruby>されてます。<br>*(Vâng, ablation study trong Appendix C thử 10-20%, 15% tốt nhất. Nghiên cứu sau (RoBERTa) báo cáo 40% cũng hiệu quả.)* |
| Đại | (note) RoBERTa <ruby>要<rt>よう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。ありがとうございました。<br>*(RoBERTa cần xác nhận lại. Em cảm ơn ạ.)* |

---

## Tình huống 5 — Bàn Đại · 18/9 9:30, lên kế hoạch fine-tune BERT-Japanese

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>実験設計<rt>じっけんせっけい</rt></ruby>について<ruby>相談<rt>そうだん</rt></ruby>したいのですが、<ruby>本日<rt>ほんじつ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby>いただけますでしょうか?<br>*(Anh Yamada, em muốn xin tư vấn về thiết kế thực nghiệm, anh dành cho em 30 phút hôm nay được không ạ?)* |
| Yamada | OK、11<ruby>時<rt>じ</rt></ruby>からどう?<br>*(OK, 11 giờ thế nào?)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>事前<rt>じぜん</rt></ruby>にdocumentを<ruby>共有<rt>きょうゆう</rt></ruby>しておきます。<br>*(Em rõ ạ. Em share document trước.)* |
| (11:00 phòng họp nhỏ) <br> |
| Đại | (mở Notion doc) <ruby>研究目的<rt>けんきゅうもくてき</rt></ruby>:ベトナム<ruby>人学習者<rt>じんがくしゅうしゃ</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby><ruby>誤<rt>あやま</rt></ruby>りパターンを<ruby>自動<rt>じどう</rt></ruby><ruby>検出<rt>けんしゅつ</rt></ruby>。データ:<ruby>自作<rt>じさく</rt></ruby>VN-learner JP error corpus 1,000<ruby>文<rt>ぶん</rt></ruby>(<ruby>正<rt>ただ</rt></ruby>500/<ruby>誤<rt>ご</rt></ruby>500)。<br>*(Mục tiêu: tự động phát hiện pattern lỗi tiếng Nhật của người học Việt. Data: corpus tự xây 1.000 câu (500 đúng/500 sai).)* |
| Đại | モデル:cl-tohoku/bert-base-japanese-v3を<ruby>二値分類<rt>にちぶんるい</rt></ruby>でfine-tune。<br>*(Model: cl-tohoku/bert-base-japanese-v3 fine-tune nhị phân.)* |
| Yamada | データ1,000はちょっと<ruby>少<rt>すく</rt></ruby>ないな。3<ruby>分割<rt>ぶんかつ</rt></ruby>するとtrain 700/val 150/test 150か。<br>*(Data 1000 hơi ít. Chia 3 thì train 700/val 150/test 150 nhỉ.)* |
| Đại | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>少<rt>すく</rt></ruby>ないので5-fold cross validation を<ruby>導入<rt>どうにゅう</rt></ruby>することを<ruby>検討<rt>けんとう</rt></ruby>しています。<br>*(Vâng, đúng vậy. Vì ít nên em đang cân nhắc áp dụng 5-fold cross validation.)* |
| Yamada | いいね。あとはベースラインを<ruby>必<rt>かなら</rt></ruby>ず<ruby>設定<rt>せってい</rt></ruby>して。ルールベース(<ruby>助詞<rt>じょし</rt></ruby><ruby>誤<rt>ご</rt></ruby><ruby>用<rt>よう</rt></ruby><ruby>辞書<rt>じしょ</rt></ruby>マッチング)とTF-IDF + SVMの2つは<ruby>必須<rt>ひっす</rt></ruby>。<br>*(Tốt. Còn phải set baseline. Rule-based (dictionary matching lỗi trợ từ) và TF-IDF + SVM là 2 baseline bắt buộc.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>来週<rt>らいしゅう</rt></ruby>までにベースライン<ruby>実装<rt>じっそう</rt></ruby>+ <ruby>結果<rt>けっか</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Em rõ ạ. Tuần sau em sẽ implement baseline + share kết quả.)* |

---

## Tình huống 6 — Bàn Đại · 23/9 weekend ở nhà, fine-tune BERT lần đầu

*Cuối tuần, Đại ngồi bàn nhỏ ở phòng khách Toyonaka. Mai đang ngủ, Hana ngủ trong cũi.*

| Vai | Lời thoại |
|---|---|
| Đại | (gõ terminal) `pip install transformers datasets accelerate`<br> |
| Đại | (Python code) <br>```python<br>from transformers import AutoTokenizer, AutoModelForSequenceClassification<br>from transformers import Trainer, TrainingArguments<br>import torch<br><br>MODEL = "cl-tohoku/bert-base-japanese-v3"<br>tokenizer = AutoTokenizer.from_pretrained(MODEL)<br>model = AutoModelForSequenceClassification.from_pretrained(MODEL, num_labels=2)<br><br># Fine-tune args<br>args = TrainingArguments(<br>    output_dir="./hizashi-bert-v1",<br>    num_train_epochs=3,<br>    per_device_train_batch_size=8,<br>    learning_rate=2e-5,<br>    eval_strategy="epoch",<br>    save_strategy="epoch",<br>)<br>``` |
| Đại | (Trainer.train() chạy 25 phút trên MPS) Epoch 1 val acc 71%, Epoch 2 val acc 76%, Epoch 3 val acc 78%.<br> |
| Mai | (từ giường, tiếng Việt) Anh ơi! Hana đói rồi, em pha sữa nhé. |
| Đại | (tiếng Việt) Em để anh. Em ngủ tiếp đi, đêm qua em dậy 3 lần rồi. |
| Mai | (tiếng Việt) Anh sao rồi? Code chạy được không? |
| Đại | (tiếng Việt) Được rồi em. Fine-tune BERT phát hiện câu sai tiếng Nhật của người Việt, đạt 78%. Mầm Hizashi có dạng kỹ thuật rồi đấy! |
| Mai | (tiếng Việt, cười) Anh giỏi quá. Pha sữa cho con xong rồi đi ngủ chút đi. |

---

## Tình huống 7 — Slack DM Yamada · 24/9 10:00 chủ nhật

| Vai | Lời thoại |
|---|---|
| Đại | (Slack) <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>週末<rt>しゅうまつ</rt></ruby><ruby>失礼<rt>しつれい</rt></ruby>します。BERT fine-tune<ruby>初回<rt>しょかい</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Anh Yamada, em xin phép làm phiền cuối tuần. Em báo cáo kết quả fine-tune BERT lần đầu.)* |
| Đại | (Slack)<br>- Model: bert-base-japanese-v3<br>- Data: 1,000<ruby>文<rt>ぶん</rt></ruby>(700/150/150 split)<br>- 3 epochs, lr 2e-5, batch 8<br>- Val acc 78%, Test acc 76%<br>- Baseline比較:Rule-based 62%, TF-IDF+SVM 68%<br>- BERTが<ruby>明確<rt>めいかく</rt></ruby>に<ruby>優位<rt>ゆうい</rt></ruby>(+8〜14pt) |
| Yamada | (Slack, 30分後) おお、いいやん!ベースラインも<ruby>真面目<rt>まじめ</rt></ruby>に<ruby>立<rt>た</rt></ruby>てたのが<ruby>偉<rt>えら</rt></ruby>い!<ruby>井上先生<rt>いのうえせんせい</rt></ruby>にも<ruby>共有<rt>きょうゆう</rt></ruby>しといて。<br>*(Ồ tốt đấy! Lập baseline nghiêm túc là điểm hay! Share thầy Inoue luôn nhé.)* |
| Yamada | (Slack)<ruby>次<rt>つぎ</rt></ruby>のステップ:データを2,000〜3,000<ruby>文<rt>ぶん</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>やす。あとerror analysis、どんな<ruby>誤<rt>ご</rt></ruby><ruby>用<rt>よう</rt></ruby>パターンが<ruby>難<rt>むずか</rt></ruby>しいか<ruby>調<rt>しら</rt></ruby>べる。<br>*(Bước tiếp: tăng data lên 2.000-3.000 câu. Và error analysis — xem lỗi nào model khó phát hiện.)* |
| Đại | (Slack) <ruby>承知<rt>しょうち</rt></ruby>しました!<ruby>来週<rt>らいしゅう</rt></ruby><ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Em rõ! Tuần sau em làm.)* |

---

## Tình huống 8 — 1on1 Inoue-sensei · 25/9 14:00, báo cáo Hizashi v0.1

| Vai | Lời thoại |
|---|---|
| Đại | (cúi) <ruby>井上先生<rt>いのうえせんせい</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>いただきありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>はHizashi v0.1のベースライン<ruby>実験<rt>じっけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Thầy Inoue, em cảm ơn thầy dành thời gian. Hôm nay em báo cáo kết quả thực nghiệm baseline Hizashi v0.1.)* |
| Inoue | はい、どうぞ。<br>*(Vâng, mời.)* |
| Đại | (slide) bert-base-japanese-v3を<ruby>自作<rt>じさく</rt></ruby>1,000<ruby>文<rt>ぶん</rt></ruby>VN-learner corpusでfine-tuneし、test acc 76%を<ruby>達成<rt>たっせい</rt></ruby>しました。Rule-based 62%、TF-IDF+SVM 68%を<ruby>明確<rt>めいかく</rt></ruby>に<ruby>上回<rt>うわまわ</rt></ruby>っています。<br>*(Fine-tune bert-base-japanese-v3 trên corpus 1.000 câu tự xây, test acc 76%. Vượt rõ Rule-based 62% và TF-IDF+SVM 68%.)* |
| Inoue | データ1,000は<ruby>論文<rt>ろんぶん</rt></ruby>として<ruby>主張<rt>しゅちょう</rt></ruby>するには<ruby>少<rt>すく</rt></ruby>ないですね。<ruby>統計的<rt>とうけいてき</rt></ruby><ruby>有意性<rt>ゆういせい</rt></ruby>はどう<ruby>担保<rt>たんぽ</rt></ruby>しますか?<br>*(1.000 hơi ít để công bố thành paper. Đảm bảo ý nghĩa thống kê thế nào?)* |
| Đại | はい、ご<ruby>指摘<rt>してき</rt></ruby>の<ruby>通<rt>とお</rt></ruby>りです。<ruby>来月<rt>らいげつ</rt></ruby>までに3,000<ruby>文<rt>ぶん</rt></ruby>まで<ruby>拡張<rt>かくちょう</rt></ruby>し、5-fold cross validationで95%<ruby>信頼<rt>しんらい</rt></ruby><ruby>区間<rt>くかん</rt></ruby>を<ruby>算出<rt>さんしゅつ</rt></ruby>する<ruby>計画<rt>けいかく</rt></ruby>です。<br>*(Vâng, đúng như thầy chỉ ra. Em sẽ mở rộng lên 3.000 câu vào tháng sau, dùng 5-fold cross validation tính khoảng tin cậy 95%.)* |
| Inoue | <ruby>計画<rt>けいかく</rt></ruby>が<ruby>具体的<rt>ぐたいてき</rt></ruby>ですね。それから、エラー<ruby>分析<rt>ぶんせき</rt></ruby>はやっていますか?<br>*(Kế hoạch cụ thể đấy. Còn error analysis thì sao?)* |
| Đại | まだです。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>着手<rt>ちゃくしゅ</rt></ruby>します。<ruby>助詞<rt>じょし</rt></ruby><ruby>誤<rt>ご</rt></ruby><ruby>用<rt>よう</rt></ruby>・<ruby>動詞<rt>どうし</rt></ruby><ruby>活用<rt>かつよう</rt></ruby><ruby>誤<rt>ご</rt></ruby>り・<ruby>語順<rt>ごじゅん</rt></ruby><ruby>誤<rt>ご</rt></ruby>りの3カテゴリに<ruby>分類<rt>ぶんるい</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Chưa ạ. Tuần sau em bắt đầu. Em dự định phân loại thành 3 category: sai trợ từ, sai chia động từ, sai trật tự từ.)* |
| Inoue | いいですね。それから、<ruby>長期的<rt>ちょうきてき</rt></ruby>には<ruby>誤<rt>ご</rt></ruby>検出だけでなく<ruby>正<rt>ただ</rt></ruby>しい<ruby>表現<rt>ひょうげん</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>もできるとよいですね。GPTとの<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせを<ruby>検討<rt>けんとう</rt></ruby>してください。<br>*(Tốt. Còn về dài hạn, không chỉ phát hiện lỗi mà còn gợi ý cách diễn đạt đúng nữa thì hay. Cân nhắc kết hợp GPT nhé.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。BERTで<ruby>検出<rt>けんしゅつ</rt></ruby>、GPTで<ruby>修正<rt>しゅうせい</rt></ruby><ruby>提案<rt>ていあん</rt></ruby> — Hizashiの<ruby>基本<rt>きほん</rt></ruby><ruby>構成<rt>こうせい</rt></ruby>が<ruby>見<rt>み</rt></ruby>えてきました。ありがとうございます。<br>*(Vâng, em rõ. BERT phát hiện, GPT gợi ý sửa — kiến trúc cơ bản Hizashi đã rõ. Em cảm ơn thầy.)* |

---

## Tình huống 9 — Lounge lab · 29/9 18:00, từ chối tiệc Watanabe准教授

| Vai | Lời thoại |
|---|---|
| Watanabe | みんな、<ruby>金曜<rt>きんよう</rt></ruby><ruby>夜<rt>よる</rt></ruby><ruby>梅田<rt>うめだ</rt></ruby>で<ruby>研究室<rt>けんきゅうしつ</rt></ruby><ruby>飲<rt>の</rt></ruby>み<ruby>会<rt>かい</rt></ruby>やるよ!<ruby>新入生<rt>しんにゅうせい</rt></ruby>も<ruby>来<rt>こ</rt></ruby>られる<ruby>人<rt>ひと</rt></ruby>は<ruby>来<rt>き</rt></ruby>てね!<br>*(Mọi người, tối thứ Sáu có tiệc lab ở Umeda nhé! Tân sinh viên ai đến được thì đến!)* |
| Suzuki (B3) | <ruby>行<rt>い</rt></ruby>きまーす!<br>*(Em đi!)* |
| Takahashi | <ruby>俺<rt>おれ</rt></ruby>も!<br>*(Tớ nữa!)* |
| Đại | (do dự rồi đứng lên) <ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>家族<rt>かぞく</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>でお<ruby>休<rt>やす</rt></ruby>みさせていただきます。<ruby>娘<rt>むすめ</rt></ruby>がまだ<ruby>生後<rt>せいご</rt></ruby>2ヶ<ruby>月<rt>げつ</rt></ruby>でして…<br>*(Thưa thầy Watanabe, em xin lỗi, vì việc gia đình em xin được vắng. Con gái em mới 2 tháng tuổi ạ...)* |
| Watanabe | あ、もちろん!<ruby>育児<rt>いくじ</rt></ruby>が<ruby>最優先<rt>さいゆうせん</rt></ruby>です。<ruby>気<rt>き</rt></ruby>にしないで。<br>*(Ồ tất nhiên! Việc chăm con ưu tiên nhất. Đừng ngại.)* |
| Đại | ご<ruby>理解<rt>りかい</rt></ruby>ありがとうございます。<br>*(Em cảm ơn thầy thông cảm ạ.)* |
| Suzuki | (nhỏ với Đại) ダイくん、すごいね、お<ruby>父<rt>とう</rt></ruby>さん!<br>*(Đại oai thật, làm bố rồi đấy!)* |
| Đại | (cười nhẹ) <ruby>夜<rt>よる</rt></ruby>2<ruby>回<rt>かい</rt></ruby><ruby>授乳<rt>じゅにゅう</rt></ruby>で<ruby>起<rt>お</rt></ruby>きるから、<ruby>飲<rt>の</rt></ruby>みに<ruby>行<rt>い</rt></ruby>く<ruby>体力<rt>たいりょく</rt></ruby>がないんだよ。<br>*(Đêm dậy cho con bú 2 lần, không còn sức đi nhậu đâu.)* |

---

## Tình huống 10 — Hành lang lab · 1/10 11:00, Đại gặp Kim (D2 hội thoại) hỏi GPT

| Vai | Lời thoại |
|---|---|
| Đại | Kimさん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいですか?<ruby>井上先生<rt>いのうえせんせい</rt></ruby>から「GPTとの<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせ」を<ruby>検討<rt>けんとう</rt></ruby>するよう<ruby>言<rt>い</rt></ruby>われまして、<ruby>対話<rt>たいわ</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>のKimさんにご<ruby>相談<rt>そうだん</rt></ruby>できればと…<br>*(Anh Kim, em xin chút thời gian được không? Thầy Inoue bảo em cân nhắc kết hợp với GPT, em muốn xin tư vấn của anh chuyên hội thoại...)* |
| Kim (D2) | もちろん!ラウンジ<ruby>行<rt>い</rt></ruby>こうか。<br>*(Tất nhiên! Đi lounge nhé.)* |
| (lounge) <br> |
| Kim | Hizashiの<ruby>場合<rt>ばあい</rt></ruby>、GPTを<ruby>使<rt>つか</rt></ruby>うとしたら2つの<ruby>選択肢<rt>せんたくし</rt></ruby>がある。1)OpenAI API、2)Llama 3 local hosting。<br>*(Trường hợp Hizashi, dùng GPT có 2 lựa chọn: 1) OpenAI API, 2) Llama 3 self-host.)* |
| Đại | コスト<ruby>面<rt>めん</rt></ruby>はどうでしょうか?<br>*(Về mặt chi phí thế nào ạ?)* |
| Kim | OpenAIは1<ruby>万<rt>まん</rt></ruby>クエリで<ruby>数百<rt>すうひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、Llama 3は GPUサーバー<ruby>必要<rt>ひつよう</rt></ruby>だけど<ruby>従量課金<rt>じゅうりょうかきん</rt></ruby>ナシ。<ruby>事業<rt>じぎょう</rt></ruby>として<ruby>展開<rt>てんかい</rt></ruby>するなら<ruby>後者<rt>こうしゃ</rt></ruby>。<br>*(OpenAI vài trăm yên/10.000 query, Llama 3 cần GPU server nhưng không tính theo lượng. Nếu triển khai làm business thì option 2.)* |
| Đại | なるほど…<ruby>修士<rt>しゅうし</rt></ruby><ruby>時代<rt>じだい</rt></ruby>はOpenAI API、<ruby>事業化<rt>じぎょうか</rt></ruby><ruby>時<rt>じ</rt></ruby>はLlama 3 — その<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えで<ruby>進<rt>すす</rt></ruby>めようと<ruby>思<rt>おも</rt></ruby>います。<br>*(Ra vậy... Thời thạc sĩ dùng OpenAI API, lúc startup hoá thì chuyển Llama 3 — em sẽ đi theo lộ trình đó.)* |
| Kim | いいプランだね。<br>*(Plan tốt đấy.)* |

---

## Tình huống 11 — Bàn Đại · 3/10 20:00, Hana cười lần đầu

*Đại đang code trên laptop ở phòng khách. Hana 2 tháng nằm trên ghế gấu trúc.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, hét nhỏ) Anh ơi! Hana cười rồi! |
| Đại | (tiếng Việt, đứng bật dậy) Hả? Cười thật á? |
| Mai | (tiếng Việt) Vừa cười xong! Anh thử làm mặt cười cho con xem! |
| Đại | (làm mặt cười với Hana) Hana ơi! Bố đây con! |
| Hana | (cười khoé miệng) <br>*(Cười toe.)* |
| Đại | (tiếng Việt, mắt rưng) Trời ơi! Con cười rồi em! Lần đầu nhé! |
| Mai | (tiếng Việt) Anh chụp ảnh đi! Gửi cô Yumi với mẹ ở VN! |
| Đại | (tiếng Việt) Vâng vâng. Anh quay video luôn! |

---

## Tình huống 12 — LINE group + gọi điện về VN · 3/10 21:00

| Vai | Lời thoại |
|---|---|
| Đại | (LINE group, gửi video) Cả nhà ơi! Hana cười lần đầu lúc 8 giờ tối nay! 2 tháng 28 ngày tuổi! |
| Mẹ Đại | (VN) Trời ơi cháu xinh quá! Bà nội xem đi xem lại không chán! |
| Yumi | (JP) <ruby>陽奈<rt>ひな</rt></ruby>ちゃん、<ruby>笑顔<rt>えがお</rt></ruby><ruby>最高<rt>さいこう</rt></ruby>!<ruby>明日<rt>あした</rt></ruby><ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>くわ!<br>*(Bé Hina cười tuyệt vời! Mai cô qua xem!)* |
| (Đại gọi video bố mẹ ở Hà Nội) <br> |
| Bố Đại | (VN) Đại ơi! Cháu cười lần đầu đấy! Đại có nhớ con khi nào cười lần đầu không? |
| Đại | (VN) Con không nhớ bố ạ. Chắc bố mẹ ghi vào sổ tay nhỉ? |
| Mẹ Đại | (VN) Có chứ! Con cười lần đầu 2 tháng 15 ngày. Hana muộn hơn anh chút. |
| Đại | (VN) Bố mẹ ơi, dạo này nghiên cứu thuận lợi. Em fine-tune model BERT phát hiện lỗi câu tiếng Nhật của người Việt, đạt 76% rồi. Thầy Inoue khen kế hoạch cụ thể. |
| Bố Đại | (VN) Bố mừng cho con. Vừa làm bố vừa làm nghiên cứu, đừng quá sức nhé. |
| Mai | (VN, ghé vào) Mẹ ơi, anh ấy đêm nào cũng dậy thay tã thay cho con đấy. Con không thiếu ngủ đâu. |
| Mẹ Đại | (VN) Tốt rồi. Vợ chồng chia sẻ nhau là tốt. Cô Yumi vẫn sang nấu cháo gà chứ? |
| Mai | (VN) Vâng mẹ, tuần 3 lần. Cô Yumi nói chăm Mai như con dâu cô ấy luôn. |
| Bố Đại | (VN) Cảm ơn cô chú Tony-Yumi nhiều! Tết bố mẹ sẽ gửi cà phê Buôn Ma Thuột sang cảm ơn. |

---

## Đọng lại chương 4

Tháng 9-10/2028. Sau 1 tuần nghỉ chăm Hana, Đại quay lại lab full-time và hoàn thành phase 2 lộ trình của Inoue-sensei: thuyết trình paper **Attention Is All You Need** trong seminar, học **BERT** từ Sato-D, hỏi Yamada về **positional encoding sin/cos**, hỏi Kim về **GPT (OpenAI API vs Llama 3 local)**. Học các mẫu câu seminar quan trọng: **「本日の論文を紹介させていただきます」** (mở đầu seminar), **「申し訳ありません、その点については確証がありません。後ほど調べてご報告させていただきます」** (trả lời "không biết" với sensei chuyên nghiệp), **「実験設計について相談したいのですが、お時間いただけますでしょうか」** (xin senpai tư vấn), **「結果をご報告いたします」** (báo cáo kết quả qua Slack/email), **「家族の都合でお休みさせていただきます」** (từ chối tiệc lab khéo). Fine-tune **bert-base-japanese-v3** lần đầu trên corpus VN-learner 1.000 câu, đạt **test acc 76%**, vượt baseline Rule-based 62% và TF-IDF+SVM 68%. Inoue-sensei chốt kiến trúc Hizashi: **BERT phát hiện lỗi + GPT gợi ý sửa**. Hana 2 tháng cười lần đầu — bố mẹ ở VN xúc động qua video call. Hai mầm Hizashi + Hana cùng lớn.

> Từ vựng & mẫu câu chương này: Transformer・Self-Attention・Scaled Dot-Product・Multi-Head・positional encoding・BERT・MLM・NSP・RoBERTa・fine-tuning・bert-base-japanese-v3・cross validation・ablation study・error analysis・統計的有意性・ベースライン・本日の論文を紹介させていただきます・確証がありません・後ほどご報告させていただきます・実験設計について相談したいのですが・家族の都合でお休みさせていただきます・ご指導ありがとうございます・お時間いただけますでしょうか・分からないと言える資質

## Bí quyết chương

- **Thuyết trình paper trong seminar có cấu trúc 3 bước**: 1) 紹介させていただきます + tác giả/năm, 2) 貢献は3つ (đóng góp), 3) 核心 + công thức. Đừng đọc abstract — paraphrase thành 3 điểm rõ ràng.
- **Sensei hỏi xoáy = cơ hội, không phải bẫy**: Khi Inoue hỏi điều bạn không biết, đừng bịa. 「申し訳ありません、確証がありません。後ほど調べてご報告させていただきます」 — sensei sẽ tôn trọng. Bịa = mất uy tín.
- **Báo cáo kết quả qua Slack có FORMAT**: Bullet point — Model / Data / Hyperparam / Metric / Baseline比較 / 考察. Yamada sẽ reply trong 30 phút.
- **1on1 sensei = chuẩn bị doc + slide**: Đừng đến tay không. Notion doc share trước → sensei đọc trong khi bạn trình bày → câu hỏi xoáy hơn nhưng dùng được sâu hơn.
- **Từ chối tiệc lab vì gia đình = OK ở Nhật học thuật**: 「家族の都合でお休みさせていただきます。娘がまだ生後2ヶ月でして」 — sensei Nhật hiện đại tôn trọng育児 (chăm con) tuyệt đối. Trẻ con < 6 tháng là lá chắn miễn dịch.
- **Hai mầm cùng lớn**: Hizashi (kỹ thuật BERT+GPT) và Hana (cười lần đầu) — phép song hành đẹp của T4. Báo bố mẹ VN qua video call về cả nghiên cứu lẫn cháu.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 論文 | ろんぶん | LUẬN VĂN | Bài báo khoa học |
| 貢献 | こうけん | CỐNG HIẾN | Đóng góp |
| 注意機構 | ちゅういきこう | CHÚ Ý CƠ CẤU | Cơ chế attention |
| 系列 | けいれつ | HỆ LIỆT | Chuỗi |
| 変換 | へんかん | BIẾN HOÁN | Biến đổi |
| 提案 | ていあん | ĐỀ ÁN | Đề xuất |
| 高速化 | こうそくか | CAO TỐC HOÁ | Tăng tốc |
| 分母 | ぶんぼ | PHÂN MẪU | Mẫu số |
| 次元数 | じげんすう | THỨ NGUYÊN SỐ | Số chiều |
| 飽和 | ほうわ | BÃO HOÀ | Bão hoà |
| 消失 | しょうしつ | TIÊU THẤT | Biến mất |
| 分散 | ぶんさん | PHÂN TÁN | Phương sai |
| 抑える | おさえる | ỨC | Kìm giữ |
| 正解 | せいかい | CHÍNH GIẢI | Đáp án đúng |
| 続ける | つづける | TỤC | Tiếp tục |
| 複数 | ふくすう | PHỨC SỐ | Nhiều |
| 独立 | どくりつ | ĐỘC LẬP | Độc lập |
| 連結 | れんけつ | LIÊN KẾT | Nối, ghép |
| 異なる | ことなる | DỊ | Khác biệt |
| 部分空間 | ぶぶんくうかん | BỘ PHẬN KHÔNG GIAN | Không gian con |
| 文法的 | ぶんぽうてき | VĂN PHÁP ĐÍCH | Thuộc ngữ pháp |
| 関係 | かんけい | QUAN HỆ | Quan hệ |
| 意味的 | いみてき | Ý NGHĨA ĐÍCH | Thuộc ngữ nghĩa |
| 捉える | とらえる | TRÓC | Bắt, nắm bắt |
| 分析 | ぶんせき | PHÂN TÍCH | Phân tích |
| 追加質問 | ついかしつもん | TRUY GIA CHẤT VẤN | Câu hỏi bổ sung |
| 逆効果 | ぎゃくこうか | NGHỊCH HIỆU QUẢ | Phản tác dụng |
| 明記 | めいき | MINH KÝ | Ghi rõ |
| 確証 | かくしょう | XÁC CHỨNG | Bằng chứng chắc chắn |
| 資質 | ししつ | TƯ CHẤT | Phẩm chất |
| 位置 | いち | VỊ TRÍ | Vị trí |
| 三角関数 | さんかくかんすう | TAM GIÁC HÀM SỐ | Hàm lượng giác |
| 位置情報 | いちじょうほう | VỊ TRÍ TÌNH BÁO | Thông tin vị trí |
| 連続的 | れんぞくてき | LIÊN TỤC ĐÍCH | Liên tục |
| 表現 | ひょうげん | BIỂU HIỆN | Biểu diễn |
| 性能 | せいのう | TÍNH NĂNG | Hiệu năng |
| 学習時 | がくしゅうじ | HỌC TẬP THỜI | Lúc huấn luyện |
| 外挿 | がいそう | NGOẠI TRA | Ngoại suy (extrapolate) |
| 利点 | りてん | LỢI ĐIỂM | Ưu điểm |
| 波長 | はちょう | BA TRƯỜNG | Bước sóng |
| 事前学習 | じぜんがくしゅう | SỰ TIỀN HỌC TẬP | Pre-training |
| 予測 | よそく | DỰ TRẮC | Dự đoán |
| 連続 | れんぞく | LIÊN TỤC | Liên tiếp |
| 判定 | はんてい | PHÁN ĐỊNH | Phán đoán |
| 比率 | ひりつ | TỶ SUẤT | Tỷ lệ |
| 経験的 | けいけんてき | KINH NGHIỆM ĐÍCH | Theo kinh nghiệm |
| 最良 | さいりょう | TỐI LƯƠNG | Tốt nhất |
| 後続 | こうぞく | HẬU TỤC | Tiếp theo, kế tiếp |
| 有効 | ゆうこう | HỮU HIỆU | Có hiệu quả |
| 実験設計 | じっけんせっけい | THỰC NGHIỆM THIẾT KẾ | Thiết kế thí nghiệm |
| 自作 | じさく | TỰ TÁC | Tự xây/làm |
| 二値分類 | にちぶんるい | NHỊ TRỊ PHÂN LOẠI | Phân loại nhị phân |
| 分割 | ぶんかつ | PHÂN CÁT | Chia tách |
| 導入 | どうにゅう | ĐẠO NHẬP | Đưa vào, áp dụng |
| 検討 | けんとう | KIỂM THẢO | Cân nhắc |
| 助詞 | じょし | TRỢ TỪ | Trợ từ |
| 誤用 | ごよう | NGỘ DỤNG | Dùng sai |
| 辞書 | じしょ | TỪ THƯ | Từ điển |
| 着手 | ちゃくしゅ | TRỨ THỦ | Bắt tay vào |
| 動詞活用 | どうしかつよう | ĐỘNG TỪ HOẠT DỤNG | Chia động từ |
| 語順 | ごじゅん | NGỮ THUẬN | Trật tự từ |
| 統計的 | とうけいてき | THỐNG KÊ ĐÍCH | Theo thống kê |
| 有意性 | ゆういせい | HỮU Ý TÍNH | Tính ý nghĩa thống kê |
| 担保 | たんぽ | ĐẢM BẢO | Đảm bảo |
| 拡張 | かくちょう | KHUẾCH TRƯƠNG | Mở rộng |
| 信頼区間 | しんらいくかん | TÍN LẠI KHU GIAN | Khoảng tin cậy |
| 算出 | さんしゅつ | TOÁN XUẤT | Tính ra |
| 指摘 | してき | CHỈ TRÍCH | Chỉ ra |
| 長期的 | ちょうきてき | TRƯỜNG KỲ ĐÍCH | Dài hạn |
| 基本構成 | きほんこうせい | CƠ BẢN CẤU THÀNH | Cấu trúc cơ bản |
| 抱負 | ほうふ | BÃO PHỤ | Hoài bão |
| 体力 | たいりょく | THỂ LỰC | Thể lực |
| 授乳 | じゅにゅう | THỤ NHŨ | Cho con bú |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | Lựa chọn |
| 従量課金 | じゅうりょうかきん | TÒNG LƯỢNG KHOÁ KIM | Trả theo lượng dùng |
| 事業 | じぎょう | SỰ NGHIỆP | Sự nghiệp, business |
| 展開 | てんかい | TRIỂN KHAI | Triển khai |
| 事業化 | じぎょうか | SỰ NGHIỆP HOÁ | Thương mại hoá |
