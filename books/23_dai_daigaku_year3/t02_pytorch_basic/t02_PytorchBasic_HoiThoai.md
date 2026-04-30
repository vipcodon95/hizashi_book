# Sách 23 · T2. PyTorch basic — tensor, autograd, first NN (PyTorch入門)

> **Mục tiêu:** 4-5/2028. Đại học PyTorch — tensor + autograd + first neural network MNIST. CUDA setup laptop M-series → fallback to CPU/MPS. Yamada-senpai 1on1 weekly.

---

## Scene 1 — PyTorch install · 8/4

| Speaker | Lời thoại |
|---|---|
| Đại | (terminal) `pip install torch torchvision torchaudio`<br> |
| Đại | (Python) `import torch; print(torch.backends.mps.is_available())` → True (Apple M2)<br> |
| Đại | (VN, suy nghĩ) MPS = Metal Performance Shaders, tăng tốc GPU dòng M.<br>*(Hiểu về MPS.)* |

---

## Scene 2 — Tensor basics

| Speaker | Lời thoại |
|---|---|
| Yamada | Tensorは<ruby>多次元配列<rt>たじげんはいれつ</rt></ruby>のこと。NumPyと<ruby>互換<rt>ごかん</rt></ruby>があってGPUにも<ruby>対応<rt>たいおう</rt></ruby>している。<br>*(Tensor là mảng nhiều chiều, tương thích NumPy và chạy được trên GPU.)* |
| Đại | (code)<br>```python<br>import torch<br><br>x = torch.tensor([[1, 2], [3, 4]], dtype=torch.float32)<br>y = torch.tensor([[5, 6], [7, 8]], dtype=torch.float32)<br><br>print(x + y)  # element-wise add<br>print(x @ y)  # matrix multiplication<br>print(x.mean(), x.std())<br>```<br> |

---

## Scene 3 — Autograd intuition

| Speaker | Lời thoại |
|---|---|
| Yamada | Autogradは<ruby>自動微分<rt>じどうびぶん</rt></ruby>のこと。バックプロパゲーションの<ruby>核心<rt>かくしん</rt></ruby>だよ。<br>*(Autograd là vi phân tự động, là cốt lõi của lan truyền ngược.)* |
| Đại | (code)<br>```python<br>x = torch.tensor(2.0, requires_grad=True)<br>y = x ** 3 + 2 * x  # y = x³ + 2x<br>y.backward()  # compute dy/dx<br>print(x.grad)  # 3x² + 2 = 14 at x=2<br>```<br> |

---

## Scene 4 — First NN: MNIST classifier

| Speaker | Lời thoại |
|---|---|
| Yamada | <ruby>定番<rt>ていばん</rt></ruby>のMNIST、<ruby>手書<rt>てが</rt></ruby>き<ruby>数字<rt>すうじ</rt></ruby>28×28ピクセルを0〜9に<ruby>分類<rt>ぶんるい</rt></ruby>する<ruby>課題<rt>かだい</rt></ruby>だ。<br>*(MNIST kinh điển — phân loại chữ số viết tay 28×28 thành 0-9.)* |
| Đại | (code, simplified)<br>```python<br>import torch.nn as nn<br>import torch.optim as optim<br>from torchvision import datasets, transforms<br><br>class Net(nn.Module):<br>    def __init__(self):<br>        super().__init__()<br>        self.fc1 = nn.Linear(784, 128)<br>        self.fc2 = nn.Linear(128, 10)<br>    def forward(self, x):<br>        x = torch.relu(self.fc1(x.view(-1, 784)))<br>        return self.fc2(x)<br><br>model = Net().to('mps')<br>optimizer = optim.Adam(model.parameters(), lr=1e-3)<br>criterion = nn.CrossEntropyLoss()<br><br># Training loop<br>for epoch in range(5):<br>    for x, y in train_loader:<br>        x, y = x.to('mps'), y.to('mps')<br>        optimizer.zero_grad()<br>        loss = criterion(model(x), y)<br>        loss.backward()<br>        optimizer.step()<br>```<br> |
| Đại | (terminal output) Epoch 5: loss 0.04, accuracy 97.8% test<br> |
| Yamada | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>初<rt>はじ</rt></ruby>めてのニューラルネットワーク<ruby>完成<rt>かんせい</rt></ruby>だね!<br>*(Tuyệt! Mạng nơ-ron đầu tiên đã hoàn thành!)* |

---

## Scene 5 — Mai check-up + Tony+Yumi prep · 25/4

| Speaker | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi! Em 6 tháng thai rồi đấy. Bé khoẻ lắm.<br>*(Cập nhật thai kỳ.)* |
| Yumi | (Osaka-ben) マイさん!そろそろ<ruby>準備<rt>じゅんび</rt></ruby><ruby>始<rt>はじ</rt></ruby>めよか!ベビーベッドどこで<ruby>買<rt>か</rt></ruby>うん?<br>*(Mai! Bắt đầu chuẩn bị thôi nhỉ! Cũi em bé mua ở đâu nhỉ?)* |
| Mai | アカチャンホンポはどうですか?<ruby>千里中央<rt>せんりちゅうおう</rt></ruby><ruby>店<rt>てん</rt></ruby>がありますよ。<br>*(Akachan Honpo có được không ạ? Chi nhánh Senri-chuo có đấy.)* |
| Yumi | ほな<ruby>明日<rt>あした</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>こか!<br>*(Vậy mai đi cùng nhé!)* |

---

## Scene 6 — Đêm reflect

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 4-5/2028. Đã học PyTorch — tensor, autograd, mạng MNIST 97.8%.<br>*(Hoàn thành MNIST.)* |
| Đại | (VN) Anh Yamada hướng dẫn 1-1 hàng tuần. Bài tới đọc Multilingual BERT.<br>*(Lịch học với senpai.)* |
| Đại | (VN) Mai 6 tháng rồi. Cô Yumi giúp sắm đồ cho bé. Có cô chú Tony-Yumi như gia đình thứ 2 ở đây.<br>*(Gia đình ấm áp.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| PyTorch | パイトーチ | Framework deep learning của Meta |
| Tensor | テンソル | Mảng nhiều chiều |
| Autograd | オートグラッド | Vi phân tự động |
| Backprop | バックプロップ | Lan truyền ngược |
| MPS | エムピーエス | Metal Performance Shaders (Apple) |
| CUDA | クーダ | API GPU của NVIDIA |
| MNIST | エムニスト | Bộ dữ liệu chữ số viết tay |
| nn.Module | エヌエヌモジュール | Lớp model trong PyTorch |
| Adam optimizer | アダムオプティマイザー | Biến thể gradient descent phổ biến |
| CrossEntropyLoss | クロスエントロピーロス | Hàm mất mát đa lớp |
| Akachan Honpo | アカチャンホンポ | Chuỗi cửa hàng đồ em bé lớn ở Nhật |

## Bí quyết chương

- **PyTorch nền tảng**: Chuẩn bị cho BERT/Transformer ở T4.
- **MNIST 97.8%**: Mạng nơ-ron thực tế năm đầu học ML.
- **Gia đình mở rộng**: Cô Yumi giúp sắm đồ cho bé.

> *"PyTorch + MNIST. Anh Yamada mentor. Mai 6 tháng. Chuẩn bị đón con."*
