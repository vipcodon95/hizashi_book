# Sách 23 · T4. Transformer + BERT — học attention mechanism (Transformer・BERT)

> **Mục tiêu:** 5-6/2028 (sau Hana 1 tháng). Inoue Lab seminar deep: "Attention Is All You Need" (Vaswani 2017) + BERT (Devlin 2018) + GPT (Radford). Đại fine-tune BERT-Japanese trên VN-JP parallel corpus nhỏ. Foundation cho Hizashi NLP.

---

## Scene 1 — Attention paper · 12/5

| Speaker | Lời thoại |
|---|---|
| Yamada | <ruby>本日<rt>ほんじつ</rt></ruby>は2017<ruby>年<rt>ねん</rt></ruby>の「Attention Is All You Need」を<ruby>読<rt>よ</rt></ruby>みます。<br>*(Hôm nay đọc bài "Attention Is All You Need" năm 2017.)* |
| Yamada | セルフアテンションはQ(クエリ)、K(キー)、V(バリュー)から<ruby>成<rt>な</rt></ruby>り、スコアは softmax(QK^T/√d_k)·V で<ruby>計算<rt>けいさん</rt></ruby>される。<br>*(Self-attention gồm Q, K, V; score tính bằng softmax(QK^T/√d_k)·V.)* |
| Đại | (viết bảng)<br>```<br>attention(Q, K, V) = softmax(Q·K^T / √d_k) · V<br>```<br> |
| Yamada | <ruby>並列<rt>へいれつ</rt></ruby><ruby>処理<rt>しょり</rt></ruby>ができて<ruby>長距離<rt>ちょうきょり</rt></ruby><ruby>依存<rt>いぞん</rt></ruby>も<ruby>捉<rt>とら</rt></ruby>えられる。RNNを<ruby>超<rt>こ</rt></ruby>えたんだ。<br>*(Có thể xử lý song song và bắt được phụ thuộc xa. Đã vượt RNN.)* |

---

## Scene 2 — Multi-head + positional encoding

| Speaker | Lời thoại |
|---|---|
| Yamada | マルチヘッドは8つのアテンション<ruby>機構<rt>きこう</rt></ruby>を<ruby>並列<rt>へいれつ</rt></ruby>に<ruby>動<rt>うご</rt></ruby>かす<ruby>仕組<rt>しく</rt></ruby>みだ。<br>*(Multi-head là cơ chế chạy song song 8 đầu attention.)* |
| Yamada | <ruby>位置<rt>いち</rt></ruby>エンコーディングはsin/cosの<ruby>式<rt>しき</rt></ruby>で<ruby>位置情報<rt>いちじょうほう</rt></ruby>を<ruby>加<rt>くわ</rt></ruby>える。<ruby>再帰<rt>さいき</rt></ruby><ruby>構造<rt>こうぞう</rt></ruby>なしで<ruby>順序<rt>じゅんじょ</rt></ruby>を<ruby>表現<rt>ひょうげん</rt></ruby>できるんだ。<br>*(Positional encoding dùng công thức sin/cos để bổ sung thông tin vị trí, không cần cấu trúc đệ quy.)* |

---

## Scene 3 — BERT explained · 19/5

| Speaker | Lời thoại |
|---|---|
| Yamada | BERTは Bidirectional Encoder Representations from Transformers の<ruby>略<rt>りゃく</rt></ruby>、2018<ruby>年<rt>ねん</rt></ruby>の<ruby>論文<rt>ろんぶん</rt></ruby>だ。<br>*(BERT viết tắt của Bidirectional Encoder Representations from Transformers, công bố năm 2018.)* |
| Yamada | <ruby>事前学習<rt>じぜんがくしゅう</rt></ruby>のタスクは2つある。<br>*(Có 2 task pre-training.)* |
| Yamada | ・MLM(マスク<ruby>言語<rt>げんご</rt></ruby>モデル):トークンの15%をマスクして<ruby>予測<rt>よそく</rt></ruby>させる。<br>*(MLM: che 15% token rồi cho mô hình đoán.)* |
| Yamada | ・NSP(<ruby>次文予測<rt>じぶんよそく</rt></ruby>):2<ruby>文<rt>ぶん</rt></ruby>が<ruby>連続<rt>れんぞく</rt></ruby>しているかを<ruby>判定<rt>はんてい</rt></ruby>する。<br>*(NSP: phán đoán 2 câu có liên tiếp hay không.)* |
| Yamada | ファインチューニングで<ruby>下流<rt>かりゅう</rt></ruby>タスク(<ruby>分類<rt>ぶんるい</rt></ruby>、<ruby>固有表現抽出<rt>こゆうひょうげんちゅうしゅつ</rt></ruby>、Q&A)に<ruby>応用<rt>おうよう</rt></ruby>できる。<br>*(Fine-tune để áp dụng cho các task hạ nguồn — phân loại, NER, Q&A.)* |

---

## Scene 4 — Đại fine-tune BERT-Japan · weekend

| Speaker | Lời thoại |
|---|---|
| Đại | (terminal) `pip install transformers datasets torch`<br> |
| Đại | (Python)<br>```python<br>from transformers import AutoTokenizer, AutoModelForSequenceClassification<br>import torch<br><br>tokenizer = AutoTokenizer.from_pretrained("cl-tohoku/bert-base-japanese-v3")<br>model = AutoModelForSequenceClassification.from_pretrained("cl-tohoku/bert-base-japanese-v3", num_labels=2)<br><br># Fine-tune on VN-learner JP error detection (sample 1000 sentences)<br># ... training loop ...<br>```<br> |
| Đại | (output) Mô hình sau fine-tune đạt accuracy 78% trên câu lỗi VN-JP.<br> |
| Yamada | <ruby>第<rt>だい</rt></ruby>1ステップ<ruby>成功<rt>せいこう</rt></ruby>だね!<ruby>俺<rt>おれ</rt></ruby>の<ruby>多言語<rt>たげんご</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>とも<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>合<rt>あ</rt></ruby>うよ。<br>*(Bước 1 thành công! Hợp với hướng nghiên cứu đa ngôn ngữ của anh đấy.)* |

---

## Scene 5 — GPT vs BERT difference

| Speaker | Lời thoại |
|---|---|
| Yamada | BERTはエンコーダのみ、<ruby>双方向<rt>そうほうこう</rt></ruby>で<ruby>分類<rt>ぶんるい</rt></ruby>タスクに<ruby>強<rt>つよ</rt></ruby>い。<br>*(BERT chỉ có encoder, hai chiều, mạnh ở task phân loại.)* |
| Yamada | GPTはデコーダのみ、<ruby>自己回帰<rt>じこかいき</rt></ruby>で<ruby>生成<rt>せいせい</rt></ruby>タスクに<ruby>強<rt>つよ</rt></ruby>い。<br>*(GPT chỉ có decoder, tự hồi quy, mạnh ở task sinh văn bản.)* |
| Đại | (VN, suy nghĩ) Hizashi cần cả hai: BERT để phát hiện lỗi và GPT để đối thoại dạy học.<br>*(Cần cả hai mô hình.)* |

---

## Scene 6 — Đêm + Hana 1 tháng

| Speaker | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi! Hana cười rồi!<br>*(Bé cười lần đầu.)* |
| Đại | (VN) Lần đầu đấy em! 1 tháng tuổi rồi.<br>*(Cùng vui.)* |
| Đại | (VN, nhật ký) 5-6/2028. Đã học Transformer + BERT + GPT. Fine-tune bert-base-japanese-v3 cho phát hiện lỗi VN-JP, đạt 78%.<br>*(Tổng kết NLP.)* |
| Đại | (VN) Hizashi sẽ cần BERT (phát hiện lỗi) + GPT (trợ lý dạy). Kiến trúc đã rõ hơn rồi.<br>*(Kiến trúc rõ ràng hơn.)* |
| Đại | (VN) Hana 1 tháng đã biết cười. Mai mệt nhưng vui lắm.<br>*(Hana cười.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| Attention mechanism | アテンションメカニズム | Cơ chế chú ý |
| Self-attention | セルフアテンション | Tự chú ý trong cùng chuỗi |
| Multi-head | マルチヘッド | 8 đầu attention song song |
| Positional encoding | ポジショナルエンコーディング | Bổ sung thông tin vị trí |
| Transformer | トランスフォーマー | Kiến trúc Vaswani 2017 |
| BERT | バート | Bidirectional Encoder (Google 2018) |
| GPT | ジーピーティー | Generative Pretrained Transformer (OpenAI) |
| MLM | エムエルエム | Mô hình ngôn ngữ có mặt nạ |
| NSP | エヌエスピー | Dự đoán câu kế tiếp |
| Fine-tuning | ファインチューニング | Tinh chỉnh mô hình pre-train cho task cụ thể |
| HuggingFace | ハギングフェイス | Hub mô hình NLP |
| bert-base-japanese-v3 | バートベースジャパニーズv3 | BERT tiếng Nhật pre-train của ĐH Tohoku |

## Bí quyết chương

- **Bộ ba Transformer/BERT/GPT**: Nền tảng cho Hizashi.
- **Lần fine-tune đầu**: Phát hiện lỗi VN-JP 78% — đã xác nhận tính khả thi kỹ thuật của Hizashi.

> *"Transformer + BERT + GPT. Fine-tune phát hiện lỗi VN-JP 78%. Hizashi khả thi kỹ thuật. Hana 1 tháng đã biết cười."*
