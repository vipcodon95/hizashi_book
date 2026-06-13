# Sách sinh viên Đại học Osaka · T2. Học PyTorch cơ bản với Yamada-senpai (PyTorch入門)

> **Mục tiêu nhân vật:** Đại 23t, tháng 4-5/2028, vào lab Inoue được 1 tháng. Học các mẫu hội thoại với senpai trong 1on1 kỹ thuật: hỏi cách cài thư viện (〜のインストール方法を教えていただけますか), báo lỗi terminal với senpai (エラーが出てしまったのですが), xin review code (コードを見ていただけますか), trình bày kết quả thực nghiệm trước senpai/sensei (結果をご報告いたします), thông báo nghỉ vì việc gia đình (家庭の都合で〜), và pattern keigo viết tin nhắn Slack/email lab.

---

## Bối cảnh

Tháng 4-5/2028. Đại đã đọc xong Attention Is All You Need + BERT paper. Giờ Yamada-senpai dạy implementation: PyTorch tensor → autograd → first NN (MNIST). Laptop Apple M2 dùng MPS thay CUDA. Mai 6 tháng thai, bắt đầu sắm đồ baby với cô Yumi. Chương này tập trung các mẫu câu kỹ thuật khi học senpai 1on1 + báo cáo kết quả lab.

---

## Tình huống 1 — Bàn Đại · 8/4 10:00, Yamada chỉ cài PyTorch

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、おはようございます。PyTorchのインストール<ruby>方法<rt>ほうほう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Anh Yamada, chào buổi sáng. Anh chỉ em cách cài PyTorch được không ạ?)* |
| Yamada | おはよう。MacBookやったよね、M2やっけ?<br>*(Chào. Cậu xài MacBook đúng không, M2 nhỉ?)* |
| Đại | はい、M2です。<br>*(Vâng, M2 ạ.)* |
| Yamada | じゃあ`pip install torch torchvision torchaudio`で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。MPSバックエンドがそのまま<ruby>使<rt>つか</rt></ruby>えるはずだ。<br>*(Vậy `pip install torch torchvision torchaudio` là OK. MPS backend dùng được luôn.)* |
| Đại | (gõ terminal) `pip install torch torchvision torchaudio` ... <ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(... Đã xong ạ.)* |
| Đại | (Python REPL) `import torch; print(torch.backends.mps.is_available())` → `True`. <ruby>動<rt>うご</rt></ruby>きました!<br>*(Chạy được rồi!)* |
| Yamada | OK。MPSはMetal Performance Shadersの<ruby>略<rt>りゃく</rt></ruby>で、AppleシリコンのGPU<ruby>加速<rt>かそく</rt></ruby>機能だ。CUDAの<ruby>代<rt>か</rt></ruby>わりに<ruby>使<rt>つか</rt></ruby>うやつ。<br>*(OK. MPS viết tắt của Metal Performance Shaders, là tính năng tăng tốc GPU của Apple Silicon. Dùng thay CUDA.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございます。<br>*(Em học hỏi được nhiều. Em cảm ơn anh.)* |

---

## Tình huống 2 — Whiteboard lab · 8/4 11:00, Yamada dạy tensor

*Yamada vẽ tensor 3D trên bảng, Đại ngồi gõ live code.*

| Vai | Lời thoại |
|---|---|
| Yamada | tensorは<ruby>多次元配列<rt>たじげんはいれつ</rt></ruby>のこと。NumPyと<ruby>互換性<rt>ごかんせい</rt></ruby>があってGPUにも<ruby>対応<rt>たいおう</rt></ruby>している。<br>*(Tensor là mảng nhiều chiều. Tương thích NumPy và chạy được trên GPU.)* |
| Đại | NumPyの`np.array`とほぼ<ruby>同<rt>おな</rt></ruby>じイメージですね?<br>*(Hình dung gần giống `np.array` của NumPy đúng không ạ?)* |
| Yamada | そう。ただし<ruby>違<rt>ちが</rt></ruby>いが3つある。1)autograd <ruby>機能<rt>きのう</rt></ruby>、2)GPU<ruby>対応<rt>たいおう</rt></ruby>、3)dtype<ruby>厳密<rt>げんみつ</rt></ruby>。<br>*(Ừ. Nhưng có 3 khác biệt: 1) tính năng autograd, 2) chạy GPU, 3) dtype nghiêm ngặt.)* |
| Đại | (code) <br>```python<br>x = torch.tensor([[1,2],[3,4]], dtype=torch.float32)<br>y = torch.tensor([[5,6],[7,8]], dtype=torch.float32)<br>print(x + y)   # element-wise<br>print(x @ y)   # matmul<br>``` |
| Đại | <ruby>結果<rt>けっか</rt></ruby>:<br>```<br>tensor([[ 6.,  8.], [10., 12.]])<br>tensor([[19., 22.], [43., 50.]])<br>``` |
| Yamada | <ruby>完璧<rt>かんぺき</rt></ruby>。じゃあshape変換やってみよう。`x.view(4)`、`x.reshape(1,4)`の<ruby>違<rt>ちが</rt></ruby>いを<ruby>調<rt>しら</rt></ruby>べてみて。<br>*(Hoàn hảo. Thử biến đổi shape đi. Tìm hiểu khác biệt giữa `x.view(4)` và `x.reshape(1,4)`.)* |
| Đại | はい、<ruby>調<rt>しら</rt></ruby>べてみます。<br>*(Vâng, em tra cứu ạ.)* |

---

## Tình huống 3 — Bàn Đại · 8/4 13:30, Đại bị lỗi shape mismatch

*Đại đang code thì terminal đỏ rực. Yamada đi ngang.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません、エラーが<ruby>出<rt>で</rt></ruby>てしまったのですが、<ruby>少<rt>すこ</rt></ruby>し<ruby>見<rt>み</rt></ruby>ていただけますか?<br>*(Anh Yamada, em xin lỗi, em bị lỗi, anh xem giúp em được không ạ?)* |
| Yamada | OK、エラーメッセージ<ruby>見<rt>み</rt></ruby>せて。<br>*(OK, đưa thông báo lỗi đây xem.)* |
| Đại | (chỉ màn hình) `RuntimeError: mat1 and mat2 shapes cannot be multiplied (3x4 and 5x2)` です。<br>*(`RuntimeError: mat1 and mat2 shapes cannot be multiplied (3x4 and 5x2)`)* |
| Yamada | あー、matmulの<ruby>形<rt>かたち</rt></ruby>が<ruby>合<rt>あ</rt></ruby>っていない。3×4 と 5×2 は<ruby>掛<rt>か</rt></ruby>けられない。<ruby>内側<rt>うちがわ</rt></ruby>の<ruby>次元<rt>じげん</rt></ruby>を<ruby>揃<rt>そろ</rt></ruby>えないと。<br>*(À, shape matmul không khớp. 3×4 với 5×2 không nhân được. Phải khớp chiều bên trong.)* |
| Đại | あ、<ruby>内側<rt>うちがわ</rt></ruby>が4と5なので<ruby>合<rt>あ</rt></ruby>わないんですね。<br>*(À, chiều trong là 4 với 5 nên không khớp ạ.)* |
| Yamada | そう。`.shape`を<ruby>確認<rt>かくにん</rt></ruby>するクセをつけて。print debug や`assert x.shape == (...)`を<ruby>挟<rt>はさ</rt></ruby>むといいよ。<br>*(Đúng. Tạo thói quen check `.shape`. Chèn print debug hay `assert x.shape == (...)` cũng tốt.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>修正<rt>しゅうせい</rt></ruby>してみます。<br>*(Em rõ rồi ạ. Em sửa ngay.)* |

---

## Tình huống 4 — Bàn Đại · 8/4 15:00, autograd intuition

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>次<rt>つぎ</rt></ruby>はautograd、<ruby>自動微分<rt>じどうびぶん</rt></ruby>だ。バックプロパゲーションの<ruby>核心<rt>かくしん</rt></ruby>。<br>*(Tiếp theo là autograd, vi phân tự động. Cốt lõi của lan truyền ngược.)* |
| Đại | あの、「<ruby>自動微分<rt>じどうびぶん</rt></ruby>」というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>自動<rt>じどう</rt></ruby>なのですか?<br>*(Anh ơi, "vi phân tự động" cụ thể cái gì tự động ạ?)* |
| Yamada | いい<ruby>質問<rt>しつもん</rt></ruby>。<ruby>計算<rt>けいさん</rt></ruby>グラフを<ruby>構築<rt>こうちく</rt></ruby>しながら、<ruby>勾配<rt>こうばい</rt></ruby>(gradient)を<ruby>自動<rt>じどう</rt></ruby>で<ruby>計算<rt>けいさん</rt></ruby>してくれる。<ruby>手<rt>て</rt></ruby>で<ruby>微分<rt>びぶん</rt></ruby><ruby>式<rt>しき</rt></ruby>を<ruby>書<rt>か</rt></ruby>かなくていい。<br>*(Câu hỏi hay. Vừa xây dựng đồ thị tính toán vừa tự tính gradient. Không phải viết tay công thức vi phân.)* |
| Đại | (code) <br>```python<br>x = torch.tensor(2.0, requires_grad=True)<br>y = x ** 3 + 2 * x   # y = x³ + 2x<br>y.backward()<br>print(x.grad)        # dy/dx = 3x² + 2 = 14 at x=2<br>``` |
| Đại | <ruby>結果<rt>けっか</rt></ruby>:`tensor(14.)`。<ruby>手計算<rt>てけいさん</rt></ruby>と<ruby>合<rt>あ</rt></ruby>いました!<br>*(Kết quả 14, khớp với tính tay!)* |
| Yamada | <ruby>素晴<rt>すば</rt></ruby>らしい。これがgradient descentの<ruby>基礎<rt>きそ</rt></ruby>だ。あとは<ruby>大規模化<rt>だいきぼか</rt></ruby>するだけ。<br>*(Tuyệt vời. Đây là nền tảng gradient descent. Còn lại chỉ là phóng đại quy mô.)* |

---

## Tình huống 5 — Slack lab · 10/4 9:30, báo nghỉ chiều vì siêu âm

| Vai | Lời thoại |
|---|---|
| Đại | (Slack `#general`) <ruby>皆<rt>みな</rt></ruby>さま、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>15:00より<ruby>家庭<rt>かてい</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>(<ruby>妻<rt>つま</rt></ruby>の<ruby>定期検診<rt>ていきけんしん</rt></ruby><ruby>同伴<rt>どうはん</rt></ruby>)で<ruby>早退<rt>そうたい</rt></ruby>させていただきます。ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしますが、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。グエン・ダイ<br>*(Mọi người, chào buổi sáng. Hôm nay từ 15:00 em xin phép về sớm vì việc gia đình (đi cùng vợ khám định kỳ). Em xin lỗi vì làm phiền mọi người. Đại.)* |
| Yamada | (reply) <ruby>了解<rt>りょうかい</rt></ruby>!<ruby>奥<rt>おく</rt></ruby>さんに<ruby>気<rt>き</rt></ruby>をつけてって<ruby>伝<rt>つた</rt></ruby>えて!<br>*(Rõ! Nhắn vợ giữ gìn nhé!)* |
| Inoue | (reply) お<ruby>大事<rt>だいじ</rt></ruby>に。<br>*(Giữ gìn nhé.)* |
| Lin | (reply emoji 🤰👶) |
| Đại | (reply) <ruby>皆<rt>みな</rt></ruby>さま、ありがとうございます。<br>*(Mọi người, em cảm ơn ạ.)* |

---

## Tình huống 6 — Phòng họp nhỏ · 15/4 10:00, weekly 1on1 với Yamada

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>い。<br>*(Báo cáo tiến độ tuần này nào.)* |
| Đại | はい、<ruby>今週<rt>こんしゅう</rt></ruby>はtensorとautogradを<ruby>習得<rt>しゅうとく</rt></ruby>し、<ruby>簡単<rt>かんたん</rt></ruby>な<ruby>線形回帰<rt>せんけいかいき</rt></ruby>モデルを<ruby>実装<rt>じっそう</rt></ruby>しました。<br>*(Vâng, tuần này em học tensor và autograd, đã implement mô hình linear regression đơn giản.)* |
| Yamada | コードを<ruby>見<rt>み</rt></ruby>せてくれる?<br>*(Cho xem code đi?)* |
| Đại | こちらです。(mở screen share GitHub)<br>*(Đây ạ.)* |
| Yamada | (đọc) ふむふむ ... `.train()`と`.eval()`の<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えがないね。<ruby>線形回帰<rt>せんけいかいき</rt></ruby>では<ruby>影響<rt>えいきょう</rt></ruby>ないけど、Dropout/BatchNormを<ruby>使<rt>つか</rt></ruby>うときは<ruby>必須<rt>ひっす</rt></ruby>だから<ruby>今<rt>いま</rt></ruby>からクセつけて。<br>*(Để xem ... Không có switch giữa `.train()` và `.eval()`. Linear regression thì không ảnh hưởng, nhưng dùng Dropout/BatchNorm thì bắt buộc, nên tạo thói quen từ giờ.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Em rõ ạ. Em sẽ bổ sung.)* |
| Yamada | あとは`optimizer.zero_grad()`を<ruby>忘<rt>わす</rt></ruby>れずに。これ<ruby>忘<rt>わす</rt></ruby>れると<ruby>勾配<rt>こうばい</rt></ruby>が<ruby>累積<rt>るいせき</rt></ruby>して<ruby>学習<rt>がくしゅう</rt></ruby>が<ruby>壊<rt>こわ</rt></ruby>れる。<br>*(Còn nữa, đừng quên `optimizer.zero_grad()`. Quên là gradient tích luỹ, training hỏng.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>来週<rt>らいしゅう</rt></ruby>はMNIST<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Em rõ. Tuần tới em thử MNIST ạ.)* |
| Yamada | OK!2-layer MLPで<ruby>十分<rt>じゅうぶん</rt></ruby>、97%<ruby>狙<rt>ねら</rt></ruby>って。<br>*(OK! MLP 2 lớp là đủ, nhắm 97%.)* |

---

## Tình huống 7 — Bàn Đại · 22/4 14:00, MNIST chạy lần đầu

| Vai | Lời thoại |
|---|---|
| Đại | (code) <br>```python<br>class Net(nn.Module):<br>    def __init__(self):<br>        super().__init__()<br>        self.fc1 = nn.Linear(784, 128)<br>        self.fc2 = nn.Linear(128, 10)<br>    def forward(self, x):<br>        x = torch.relu(self.fc1(x.view(-1, 784)))<br>        return self.fc2(x)<br><br>model = Net().to('mps')<br>optimizer = optim.Adam(model.parameters(), lr=1e-3)<br>criterion = nn.CrossEntropyLoss()<br>``` |
| Đại | (terminal) Epoch 1: loss 0.32, acc 91.2% / Epoch 5: loss 0.04, acc 97.8% test<br> |
| Đại | (đứng dậy, đi tìm Yamada) <ruby>山田<rt>やまだ</rt></ruby>さん、MNIST<ruby>完成<rt>かんせい</rt></ruby>しました!テスト<ruby>精度<rt>せいど</rt></ruby>97.8%です!<br>*(Anh Yamada, MNIST xong rồi! Độ chính xác test 97.8%!)* |
| Yamada | おお、すごい!<ruby>初<rt>はじ</rt></ruby>めてのニューラルネットだろ?<ruby>感動<rt>かんどう</rt></ruby>するやろ。<br>*(Ồ tuyệt! Mạng nơ-ron đầu tiên đúng không? Xúc động chứ?)* |
| Đại | はい、<ruby>本当<rt>ほんとう</rt></ruby>に。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>書<rt>か</rt></ruby>いたコードが<ruby>数字<rt>すうじ</rt></ruby>を<ruby>認識<rt>にんしき</rt></ruby>できるなんて、まるで<ruby>魔法<rt>まほう</rt></ruby>です。<br>*(Vâng, thật sự đấy. Code mình viết mà nhận diện được chữ số, cứ như phép thuật ạ.)* |
| Yamada | その<ruby>感動<rt>かんどう</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れずに!<ruby>井上先生<rt>いのうえせんせい</rt></ruby>にも<ruby>報告<rt>ほうこく</rt></ruby>しよう。<br>*(Đừng quên cảm giác đó! Báo thầy Inoue luôn nhé.)* |

---

## Tình huống 8 — Bàn Inoue-sensei · 22/4 16:00, báo cáo MNIST 97.8%

| Vai | Lời thoại |
|---|---|
| Đại | (cúi nhẹ) <ruby>井上先生<rt>いのうえせんせい</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>失礼<rt>しつれい</rt></ruby>します。MNIST<ruby>分類器<rt>ぶんるいき</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>させていただきたいのですが、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Thầy Inoue, em xin phép làm phiền thầy. Em muốn báo cáo kết quả phân loại MNIST, thầy có thời gian không ạ?)* |
| Inoue | はい、どうぞ。<br>*(Được, mời.)* |
| Đại | 2<ruby>層<rt>そう</rt></ruby>MLP、<ruby>隠<rt>かく</rt></ruby>れ<ruby>層<rt>そう</rt></ruby>128<ruby>次元<rt>じげん</rt></ruby>、Adam optimizer、<ruby>学習率<rt>がくしゅうりつ</rt></ruby>1e-3で5エポック<ruby>学習<rt>がくしゅう</rt></ruby>した<ruby>結果<rt>けっか</rt></ruby>、テスト<ruby>精度<rt>せいど</rt></ruby>97.8%を<ruby>達成<rt>たっせい</rt></ruby>しました。<br>*(MLP 2 lớp, ẩn 128 chiều, Adam optimizer, learning rate 1e-3, train 5 epoch, đạt độ chính xác test 97.8%.)* |
| Inoue | いいですね。<ruby>過学習<rt>かがくしゅう</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>しましたか?<br>*(Tốt. Đã check overfitting chưa?)* |
| Đại | はい、train accが98.5%、test accが97.8%でしたので、<ruby>差<rt>さ</rt></ruby>は0.7%です。<ruby>軽<rt>かる</rt></ruby>い<ruby>過学習<rt>かがくしゅう</rt></ruby>ですが<ruby>許容範囲内<rt>きょようはんいない</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>しました。<br>*(Vâng, train acc 98.5%, test acc 97.8%, chênh 0.7%. Overfit nhẹ nhưng trong ngưỡng chấp nhận được ạ.)* |
| Inoue | <ruby>正<rt>ただ</rt></ruby>しい<ruby>判断<rt>はんだん</rt></ruby>です。<ruby>次<rt>つぎ</rt></ruby>はCNNでMNISTをやってみてください。99%は<ruby>超<rt>こ</rt></ruby>えられます。<br>*(Phán đoán đúng. Tiếp theo thử CNN cho MNIST. Vượt 99% được đấy.)* |
| Đại | はい、<ruby>挑戦<rt>ちょうせん</rt></ruby>させていただきます。<br>*(Vâng, em xin phép thử ạ.)* |

---

## Tình huống 9 — Quán cà phê Toyonaka · 25/4 18:00, Yumi rủ Mai sắm đồ baby

*Tony và Yumi mời Đại+Mai cà phê chiều. Đại mệt nhưng đến đủ.*

| Vai | Lời thoại |
|---|---|
| Yumi | (Osaka-ben) マイさん、お<ruby>腹<rt>なか</rt></ruby><ruby>大<rt>おお</rt></ruby>きなったなぁ!もう6ヶ<ruby>月<rt>げつ</rt></ruby>やろ?<br>*(Mai, bụng to lên rồi nhỉ! 6 tháng rồi đúng không?)* |
| Mai | はい、<ruby>来月<rt>らいげつ</rt></ruby>から7ヶ<ruby>月<rt>げつ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Vâng, sang tháng là 7 tháng ạ.)* |
| Yumi | そろそろベビーグッズ<ruby>揃<rt>そろ</rt></ruby>えなあかんやろ。アカチャンホンポはどう?<ruby>千里中央店<rt>せんりちゅうおうてん</rt></ruby>でかいで〜!<br>*(Sắp phải sắm đồ baby rồi đấy. Akachan Honpo thế nào? Chi nhánh Senri-chuo to lắm!)* |
| Mai | アカチャンホンポ、<ruby>知<rt>し</rt></ruby>っています!リストは<ruby>作<rt>つく</rt></ruby>ったのですが、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと<ruby>何<rt>なに</rt></ruby>を<ruby>選<rt>えら</rt></ruby>べばいいか<ruby>分<rt>わ</rt></ruby>からなくて。<br>*(Akachan Honpo, em biết ạ! Em có danh sách rồi, nhưng nói thật em không biết chọn cái nào.)* |
| Yumi | ほな<ruby>明日<rt>あした</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>こか!<ruby>私<rt>わたし</rt></ruby>、<ruby>孫<rt>まご</rt></ruby><ruby>気分<rt>きぶん</rt></ruby>で<ruby>選<rt>えら</rt></ruby>びたいねん!<br>*(Vậy mai đi cùng nhé! Tớ muốn chọn với tâm trạng "bà ngoại"!)* |
| Tony | (Osaka-ben) <ruby>俺<rt>おれ</rt></ruby>は<ruby>運転手<rt>うんてんしゅ</rt></ruby>やで。アルファード<ruby>出<rt>だ</rt></ruby>すわ。<br>*(Tôi làm tài xế. Lái Alphard ra nhé.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>何<rt>なに</rt></ruby>から<ruby>何<rt>なに</rt></ruby>までお<ruby>世話<rt>せわ</rt></ruby>になってしまって…<br>*(Cô chú giúp đỡ tụi cháu từ A đến Z luôn...)* |
| Yumi | あほ、<ruby>家族<rt>かぞく</rt></ruby>やん!<br>*(Đồ ngốc, người nhà mà!)* |

---

## Tình huống 10 — Bàn Đại · 30/4 11:00, Đại implement CNN MNIST 99.2%

| Vai | Lời thoại |
|---|---|
| Đại | (Slack DM Yamada) <ruby>山田<rt>やまだ</rt></ruby>さん、CNN<ruby>版<rt>ばん</rt></ruby>MNISTができました!テスト99.2%です。コードレビューお<ruby>願<rt>ねが</rt></ruby>いできますでしょうか?<br>*(Anh Yamada, CNN MNIST xong rồi! Test 99.2%. Anh review code giúp em được không ạ?)* |
| Yamada | (Slack) おお<ruby>早<rt>はや</rt></ruby>っ!PR<ruby>作<rt>つく</rt></ruby>って<ruby>送<rt>おく</rt></ruby>って。15<ruby>分<rt>ぷん</rt></ruby>でレビューする。<br>*(Ồ nhanh thế! Tạo PR gửi đi. 15 phút tớ review.)* |
| Đại | (Slack) ありがとうございます!PR<ruby>送<rt>おく</rt></ruby>りました:`github.com/inoue-lab/dai-experiments/pull/3`<br>*(Cảm ơn anh! Đã gửi PR.)* |
| Yamada | (Slack, 15分後) レビューしたよ。Conv2D → ReLU → MaxPool の<ruby>流<rt>なが</rt></ruby>れがきれい。1<ruby>点<rt>てん</rt></ruby>だけ、`nn.functional.relu`より`nn.ReLU()`をmodule化した<ruby>方<rt>ほう</rt></ruby>がよい。<ruby>理由<rt>りゆう</rt></ruby>は`model.modules()`で<ruby>追跡<rt>ついせき</rt></ruby>できるから。<br>*(Đã review. Luồng Conv2D → ReLU → MaxPool đẹp. Chỉ 1 điểm: nên dùng `nn.ReLU()` module hơn `nn.functional.relu`. Lý do là track được qua `model.modules()`.)* |
| Đại | (Slack) <ruby>承知<rt>しょうち</rt></ruby>しました!すぐ<ruby>修正<rt>しゅうせい</rt></ruby>してforce-pushします。<br>*(Em rõ ạ! Em sửa ngay rồi force-push.)* |

---

## Tình huống 11 — Lounge lab · 30/4 16:00, đồng cohort hỏi lời khuyên

| Vai | Lời thoại |
|---|---|
| Suzuki | ダイくん!MNISTもうCNNまでいったん? <ruby>早<rt>はや</rt></ruby>すぎやろ!<br>*(Đại! MNIST đã đến CNN rồi à? Nhanh quá!)* |
| Takahashi | コツとかある?<br>*(Có tips gì không?)* |
| Đại | コツというか…<ruby>毎日<rt>まいにち</rt></ruby>1<ruby>時間<rt>じかん</rt></ruby>、エラーメッセージを<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>読<rt>よ</rt></ruby>む<ruby>時間<rt>じかん</rt></ruby>を<ruby>確保<rt>かくほ</rt></ruby>しています。<ruby>解決<rt>かいけつ</rt></ruby>したら<ruby>必<rt>かなら</rt></ruby>ずノートに<ruby>書<rt>か</rt></ruby>き<ruby>留<rt>と</rt></ruby>めます。<br>*(Tips thì... em dành 1 tiếng mỗi ngày đọc kỹ thông báo lỗi. Giải quyết xong là ghi vào sổ.)* |

| Suzuki | エラー<ruby>専用<rt>せんよう</rt></ruby>ノート!?<br>*(Sổ chuyên cho lỗi à!?)* |
| Đại | はい、Notionで「<ruby>遭遇<rt>そうぐう</rt></ruby>したエラー」というデータベースを<ruby>作<rt>つく</rt></ruby>って、エラーメッセージ・<ruby>原因<rt>げんいん</rt></ruby>・<ruby>解決法<rt>かいけつほう</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>しています。<br>*(Vâng, em làm database "Lỗi đã gặp" trên Notion, ghi message - nguyên nhân - cách giải quyết.)* |
| Takahashi | それや!<ruby>俺<rt>おれ</rt></ruby>も<ruby>真似<rt>まね</rt></ruby>するわ。<br>*(Đó! Tớ bắt chước đây.)* |
| Đại | テンプレートを<ruby>共有<rt>きょうゆう</rt></ruby>しますね。<br>*(Em share template nhé.)* |

---

## Tình huống 12 — Phòng khách Toyonaka · 30/4 22:00, gọi bố mẹ ở VN

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt, video call) Bố mẹ ơi! Mai ơi đến chào ông bà này. |
| Mẹ Đại | (tiếng Việt) Trời, Mai bụng to rồi! Có khoẻ không con? |
| Mai | (tiếng Việt) Con khoẻ ạ. Hôm trước cô Yumi dẫn con đi sắm đồ baby ở Akachan Honpo. Mua được cũi, xe đẩy, áo sơ sinh đủ rồi. |
| Bố Đại | (tiếng Việt) Đại học hành sao rồi con? |
| Đại | (tiếng Việt) Bố ơi, tháng này con học PyTorch — framework deep learning ấy. Đã chạy được mạng nơ-ron đầu tiên, nhận diện chữ số viết tay đạt 99.2%. |
| Bố Đại | (tiếng Việt) Bố không hiểu lắm nhưng nghe oai phết. Anh Yamada vẫn dạy con à? |
| Đại | (tiếng Việt) Vâng, anh ấy 1on1 hàng tuần. Em PR lên GitHub là anh review trong 15 phút. Thầy Inoue cũng hôm trước khen con biết check overfitting. |
| Mẹ Đại | (tiếng Việt) Con cố lên. Hana ra đời tháng 8 mẹ sang chăm Mai 1 tháng nhé. |
| Đại | (tiếng Việt) Vâng, visa 短期滞在 con đang lo. Sẽ xong trước tháng 7. |
| Mai | (tiếng Việt) Mẹ ơi, mẹ sang con vui lắm! |
| Bố Đại | (tiếng Việt) Thôi đi ngủ đi, bên đó muộn rồi. |

---

## Đọng lại chương 2

Tháng 4-5/2028. Đại học PyTorch nền tảng dưới sự kèm cặp 1on1 hàng tuần của Yamada-senpai: **tensor → autograd → MLP MNIST 97.8% → CNN MNIST 99.2%**. Học được nhiều mẫu câu kỹ thuật quan trọng: **「インストール方法を教えていただけますか」** (xin chỉ cài thư viện), **「エラーが出てしまったのですが、見ていただけますか」** (báo lỗi với senpai), **「コードレビューお願いできますでしょうか」** (xin code review qua Slack), **「ご報告させていただきたいのですが、今お時間大丈夫でしょうか」** (báo cáo sensei lúc bận), **「家庭の都合で早退させていただきます」** (xin nghỉ vì việc gia đình — chuẩn Slack lab). Trong 1on1 với Inoue-sensei, biết cách trả lời câu hỏi overfitting (train/test gap 0.7%, trong ngưỡng chấp nhận). Yumi-bà nội tinh thần dẫn Mai đi Akachan Honpo Senri-chuo sắm đồ baby. Cuối tháng video call bố mẹ ở VN — visa 短期滞在 cho mẹ sang chăm sau khi Hana sinh đang được lo.

> Từ vựng & mẫu câu chương này: PyTorch・tensor・autograd・MPS・CUDA・MNIST・MLP・CNN・Adam optimizer・CrossEntropyLoss・過学習・学習率・隠れ層・テスト精度・線形回帰・勾配・自動微分・教えていただけますか・エラーが出てしまったのですが・ご報告させていただきます・家庭の都合で早退・コードレビューお願いできますでしょうか・force-push・Akachan Honpo・短期滞在ビザ

## Bí quyết chương

- **Senpai 1on1 = pattern keigo cố định**: 「教えていただけますか」 (cài đặt), 「見ていただけますか」 (lỗi), 「お願いできますでしょうか」 (review). Đừng dùng tame-go với senpai trong context kỹ thuật, dù thân.
- **Báo cáo Inoue-sensei cần CON SỐ + PHÁN ĐOÁN**: Không chỉ nói "97.8%", phải kèm "train/test gap 0.7%, trong ngưỡng chấp nhận" — sensei muốn thấy bạn biết phân tích, không phải khoe số.
- **Slack lab keigo formal**: 「家庭の都合で早退させていただきます。ご迷惑をおかけしますが、よろしくお願いいたします」 — câu chuẩn cho mọi tin nhắn nghỉ/về sớm/vắng họp. Sensei và sempai sẽ thông cảm.
- **Đầu tư database lỗi**: Khi cohort hỏi lời khuyên, share template Notion "Lỗi đã gặp" — vừa giúp đồng đội, vừa xây uy tín bản thân.
- **Family Tony-Yumi như ông bà tinh thần**: Yumi tự gọi mình là "孫気分" (tâm trạng bà ngoại) — văn hoá Osaka-ben thân tình. Đáp lại bằng 「家族のように〜お世話になってしまって」.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 方法 | ほうほう | PHƯƠNG PHÁP | Cách thức |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn tất |
| 略 | りゃく | LƯỢC | Viết tắt |
| 加速 | かそく | GIA TỐC | Tăng tốc |
| 多次元配列 | たじげんはいれつ | ĐA THỨ NGUYÊN PHỐI LIỆT | Mảng nhiều chiều |
| 互換性 | ごかんせい | HỖ HOÁN TÍNH | Khả năng tương thích |
| 対応 | たいおう | ĐỐI ỨNG | Hỗ trợ, đối ứng |
| 違い | ちがい | VI | Sự khác biệt |
| 機能 | きのう | CƠ NĂNG | Chức năng |
| 厳密 | げんみつ | NGHIÊM MẬT | Nghiêm ngặt |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 完璧 | かんぺき | HOÀN BÍCH | Hoàn hảo |
| 調べる | しらべる | ĐIỀU | Tra cứu, kiểm tra |
| 申し訳 | もうしわけ | THÂN DỊCH | Lời xin lỗi |
| 内側 | うちがわ | NỘI TRẮC | Bên trong |
| 次元 | じげん | THỨ NGUYÊN | Chiều, dimension |
| 揃える | そろえる | TỀ | Đồng đều, khớp |
| 修正 | しゅうせい | TU CHÍNH | Sửa chữa |
| 自動微分 | じどうびぶん | TỰ ĐỘNG VI PHÂN | Vi phân tự động |
| 核心 | かくしん | HẠCH TÂM | Cốt lõi |
| 計算 | けいさん | KẾ TOÁN | Tính toán |
| 構築 | こうちく | CẤU TRÚC | Xây dựng |
| 勾配 | こうばい | CẤU PHỐI | Gradient |
| 微分式 | びぶんしき | VI PHÂN THỨC | Công thức vi phân |
| 手計算 | てけいさん | THỦ KẾ TOÁN | Tính tay |
| 大規模化 | だいきぼか | ĐẠI QUY MÔ HOÁ | Mở rộng quy mô |
| 皆 | みな | GIAI | Mọi người |
| 家庭 | かてい | GIA ĐÌNH | Gia đình |
| 都合 | つごう | ĐÔ HỢP | Việc, lịch trình |
| 定期検診 | ていきけんしん | ĐỊNH KỲ KIỂM CHẨN | Khám định kỳ |
| 同伴 | どうはん | ĐỒNG BẠN | Đi cùng |
| 早退 | そうたい | TẢO THOÁI | Về sớm |
| 迷惑 | めいわく | MÊ HOẶC | Phiền phức |
| 大事 | だいじ | ĐẠI SỰ | Quan trọng, giữ gìn |
| 了解 | りょうかい | LIỄU GIẢI | Đã hiểu |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 習得 | しゅうとく | TẬP ĐẮC | Học được, nắm vững |
| 線形回帰 | せんけいかいき | TUYẾN HÌNH HỒI QUY | Hồi quy tuyến tính |
| 実装 | じっそう | THỰC TRANG | Triển khai code |
| 影響 | えいきょう | ẢNH HƯỞNG | Ảnh hưởng |
| 累積 | るいせき | LŨY TÍCH | Tích luỹ |
| 壊れる | こわれる | HOẠI | Hỏng, gãy |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | Thách thức, thử |
| 認識 | にんしき | NHẬN THỨC | Nhận diện |
| 魔法 | まほう | MA PHÁP | Phép thuật |
| 感動 | かんどう | CẢM ĐỘNG | Cảm động |
| 隠れ層 | かくれそう | ẨN TẦNG | Tầng ẩn |
| 学習率 | がくしゅうりつ | HỌC TẬP SUẤT | Learning rate |
| 達成 | たっせい | ĐẠT THÀNH | Đạt được |
| 過学習 | かがくしゅう | QUÁ HỌC TẬP | Overfitting |
| 許容範囲内 | きょようはんいない | HỨA DUNG PHẠM VI NỘI | Trong ngưỡng chấp nhận |
| 判断 | はんだん | PHÁN ĐOÁN | Phán đoán |
| 正しい | ただしい | CHÍNH | Đúng |
| 来月 | らいげつ | LAI NGUYỆT | Tháng sau |
| 選ぶ | えらぶ | TUYỂN | Chọn |
| 運転手 | うんてんしゅ | VẬN CHUYỂN THỦ | Tài xế |
| 家族 | かぞく | GIA TỘC | Gia đình |
| 早く | はやく | TẢO | Sớm, nhanh |
| 追跡 | ついせき | TRUY TÍCH | Theo dõi |
| 遭遇 | そうぐう | TAO NGỘ | Gặp phải |
| 原因 | げんいん | NGUYÊN NHÂN | Nguyên nhân |
| 解決法 | かいけつほう | GIẢI QUYẾT PHÁP | Cách giải quyết |
| 記録 | きろく | KÝ LỤC | Ghi chép |
| 真似 | まね | CHÂN TỰ | Bắt chước |
| 短期滞在 | たんきたいざい | ĐOẢN KỲ TRỆ TẠI | Lưu trú ngắn hạn (visa) |
| ビザ | — | — | Visa |
| 簡単 | かんたん | GIẢN ĐƠN | Đơn giản |
| 精度 | せいど | TINH ĐỘ | Độ chính xác |
| テスト精度 | テストせいど | — TINH ĐỘ | Độ chính xác trên test |
