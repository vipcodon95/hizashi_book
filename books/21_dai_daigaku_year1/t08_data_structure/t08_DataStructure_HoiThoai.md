# Sách 21 · T8. データ構造 — array, linked list, stack, queue, hash, tree (データ構造)

> **Mục tiêu:** 10-11/2026. Lecture データ構造 (Data Structures). Implement array, linked list, stack, queue, hash table, binary tree, BST, heap. AtCoder rating Đại lên 緑 (900). Yamato 緑 1100. Lin Wei 水色 1300.

## Bối cảnh

- Sensei: 大野-sensei (tiếp T5)
- Lecture 1 ngày/tuần × 8 tuần
- Reference: 「アルゴリズムとデータ構造」 教科書 ¥3,200

---

## Scene 1 — Array vs Linked List · Lecture 1

| Speaker | Lời thoại |
|---|---|
| Ohno | <ruby>本日<rt>ほんじつ</rt></ruby>はArrayとLinked Listを<ruby>比較<rt>ひかく</rt></ruby>します。<br>*(Hôm nay so sánh Array với Linked List.)* |
| Ohno | Array：<ruby>連続<rt>れんぞく</rt></ruby>メモリに<ruby>配置<rt>はいち</rt></ruby>。ランダムアクセスO(1)。<ruby>途中<rt>とちゅう</rt></ruby><ruby>挿入<rt>そうにゅう</rt></ruby>はO(n)。<br>*(Array: bố trí trong bộ nhớ liên tục. Truy cập ngẫu nhiên O(1). Chèn giữa O(n).)* |
| Ohno | Linked List：<ruby>分散<rt>ぶんさん</rt></ruby>メモリ。ランダムアクセスO(n)。<ruby>途中<rt>とちゅう</rt></ruby><ruby>挿入<rt>そうにゅう</rt></ruby>はO(1)（ポインタを<ruby>持<rt>も</rt></ruby>っていれば）。<br>*(LL: phân tán. Truy cập ngẫu nhiên O(n). Chèn giữa O(1) nếu giữ con trỏ.)* |
| Đại | (code) Linked list Python:<br>```python<br>class Node:<br>    def __init__(self, val):<br>        self.val = val<br>        self.next = None<br><br>class LinkedList:<br>    def __init__(self):<br>        self.head = None<br>    <br>    def append(self, val):<br>        if not self.head:<br>            self.head = Node(val)<br>            return<br>        cur = self.head<br>        while cur.next:<br>            cur = cur.next<br>        cur.next = Node(val)<br>```<br> |
| Yamato | (whisper) Pythonの `list` は<ruby>動的<rt>どうてき</rt></ruby><ruby>配列<rt>はいれつ</rt></ruby>だ。CPythonでの<ruby>実装<rt>じっそう</rt></ruby>。<br>*(`list` của Python là mảng động — cài đặt trong CPython.)* |

---

## Scene 2 — Stack & Queue · Lecture 2

| Speaker | Lời thoại |
|---|---|
| Ohno | Stack — LIFO。push、popともにO(1)。<ruby>用途<rt>ようと</rt></ruby>：undo<ruby>機能<rt>きのう</rt></ruby>、<ruby>再帰<rt>さいき</rt></ruby>のコールスタック。<br>*(Stack LIFO. Push/pop O(1). Dùng cho undo, call stack đệ quy.)* |
| Ohno | Queue — FIFO。エンキュー、デキューともにO(1)。<ruby>用途<rt>ようと</rt></ruby>：タスクスケジューラ、BFS。<br>*(Queue FIFO. Enqueue/dequeue O(1). Dùng cho task scheduler, BFS.)* |
| Đại | (code Stack Python) `stack = []; stack.append(x); stack.pop()` (built-in)<br> |
| Đại | (code Queue Python) `from collections import deque; q = deque(); q.append(x); q.popleft()` ← O(1)<br> |
| Ohno | <ruby>注意<rt>ちゅうい</rt></ruby>：Pythonの `list.pop(0)` はO(n)です！Queueには `deque` を<ruby>使<rt>つか</rt></ruby>ってください。<br>*(Lưu ý: `list.pop(0)` Python là O(n). Hàng đợi dùng `deque`.)* |
| Yamato | (whisper) AtCoderでよくあるバグ：BFSで `list.pop(0)` を<ruby>使<rt>つか</rt></ruby>うとTLE。`deque` に<ruby>直<rt>なお</rt></ruby>すとAC。<br>*(Bug hay gặp ở AtCoder: BFS dùng `list.pop(0)` là TLE. Sửa `deque` thành AC.)* |

---

## Scene 3 — Hash Table · Lecture 3

| Speaker | Lời thoại |
|---|---|
| Ohno | Hash Table — <ruby>平均<rt>へいきん</rt></ruby>O(1)の<ruby>検索<rt>けんさく</rt></ruby>。ハッシュ<ruby>関数<rt>かんすう</rt></ruby> + <ruby>衝突<rt>しょうとつ</rt></ruby><ruby>処理<rt>しょり</rt></ruby>（チェイニングまたはオープンアドレッシング）。<br>*(Hash table — tra cứu trung bình O(1). Hàm băm + xử lý xung đột.)* |
| Đại | (code) Python `dict`:<br>```python<br>users = {"dai": 21, "yamato": 18, "aiko": 18}<br>print(users["dai"])  # O(1)<br>users["lin_wei"] = 19  # O(1) avg<br>```<br> |
| Ohno | Setはvalueを<ruby>持<rt>も</rt></ruby>たないハッシュテーブル。<ruby>重複<rt>じゅうふく</rt></ruby><ruby>排除<rt>はいじょ</rt></ruby>に<ruby>便利<rt>べんり</rt></ruby>。<br>*(Set = hash table không có value. Tiện loại trùng.)* |
| Đại | (code) `seen = set(); if x in seen: ...; seen.add(x)` — O(1) check.<br> |
| Lin Wei | (English) For competitive: `defaultdict(list)` for grouping.<br>*(Trong thi đấu: dùng `defaultdict(list)` để gom nhóm.)* |
| Yamato | (code) `from collections import defaultdict; groups = defaultdict(list); groups[key].append(val)`<br> |

---

## Scene 4 — Tree & Binary Search Tree · Lecture 4

| Speaker | Lời thoại |
|---|---|
| Ohno | Tree — <ruby>根<rt>ね</rt></ruby>と<ruby>子<rt>こ</rt></ruby><ruby>節点<rt>せってん</rt></ruby>から<ruby>成<rt>な</rt></ruby>る。<ruby>二分木<rt>にぶんぎ</rt></ruby>は<ruby>子<rt>こ</rt></ruby>が<ruby>最大<rt>さいだい</rt></ruby><ruby>2<rt>に</rt></ruby>つ。<br>*(Tree: gồm gốc và các nút con. Cây nhị phân tối đa 2 con.)* |
| Ohno | <ruby>二分探索木<rt>にぶんたんさくぎ</rt></ruby> (BST)：<ruby>左<rt>ひだり</rt></ruby> < <ruby>節点<rt>せってん</rt></ruby> < <ruby>右<rt>みぎ</rt></ruby>。<ruby>検索<rt>けんさく</rt></ruby>・<ruby>挿入<rt>そうにゅう</rt></ruby>は<ruby>平均<rt>へいきん</rt></ruby>O(log n)。<br>*(BST: trái < nút < phải. Tìm/chèn trung bình O(log n).)* |
| Ohno | <ruby>平衡<rt>へいこう</rt></ruby>BST (AVL、<ruby>赤黒木<rt>あかくろぎ</rt></ruby>) — Pythonでは `sortedcontainers` ライブラリを<ruby>使<rt>つか</rt></ruby>う。<br>*(Cây cân bằng AVL/RB — Python dùng `sortedcontainers`.)* |
| Đại | (code) BST Python:<br>```python<br>class TreeNode:<br>    def __init__(self, val):<br>        self.val = val<br>        self.left = None<br>        self.right = None<br><br>def insert(root, val):<br>    if not root:<br>        return TreeNode(val)<br>    if val < root.val:<br>        root.left = insert(root.left, val)<br>    else:<br>        root.right = insert(root.right, val)<br>    return root<br>```<br> |

---

## Scene 5 — Heap & Priority Queue · Lecture 5

| Speaker | Lời thoại |
|---|---|
| Ohno | Heap — <ruby>完全<rt>かんぜん</rt></ruby><ruby>二分木<rt>にぶんぎ</rt></ruby>。Min-heapは<ruby>根<rt>ね</rt></ruby>が<ruby>最小値<rt>さいしょうち</rt></ruby>。<ruby>挿入<rt>そうにゅう</rt></ruby>と<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>しはO(log n)。<br>*(Heap = cây nhị phân đầy đủ. Min-heap: gốc = min. Chèn/lấy O(log n).)* |
| Ohno | <ruby>優先度付<rt>ゆうせんどつ</rt></ruby>きキューの<ruby>用途<rt>ようと</rt></ruby>：Dijkstra、top-K<ruby>問題<rt>もんだい</rt></ruby>、イベントスケジューラ。<br>*(Hàng đợi ưu tiên dùng cho: Dijkstra, top-K, lập lịch sự kiện.)* |
| Đại | (code) Python `heapq`:<br>```python<br>import heapq<br><br>h = []<br>heapq.heappush(h, 3)<br>heapq.heappush(h, 1)<br>heapq.heappush(h, 4)<br>print(heapq.heappop(h))  # 1<br>```<br> |
| Yamato | <ruby>注意<rt>ちゅうい</rt></ruby>：Pythonの `heapq` はmin-heapだけ。max-heapにしたいなら<ruby>値<rt>あたい</rt></ruby>を<ruby>負<rt>ふ</rt></ruby>にする。<br>*(`heapq` Python chỉ có min-heap. Muốn max-heap thì lấy giá trị âm.)* |
| Đại | (code) `heapq.heappush(h, -val); -heapq.heappop(h)` for max-heap.<br> |

---

## Scene 6 — AtCoder weekly · 1/11

| Speaker | Lời thoại |
|---|---|
| Yamato | (LINE) ABCの<ruby>結果<rt>けっか</rt></ruby>：<br>*(Kết quả ABC:)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>はA+B+C+D AC、+35レート。<ruby>緑<rt>みどり</rt></ruby>1100→1135。<br>*(Tớ AC 4 bài, +35. Green 1100→1135.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>はA+B+C AC、+25。ついに<ruby>緑<rt>みどり</rt></ruby><ruby>到達<rt>とうたつ</rt></ruby>！800→900→925。<br>*(Tớ AC 3 bài, +25. Cuối cùng cũng lên Green!)* |
| Lin Wei | (English) +12. Cyan 1305→1317. C was tricky but D was easy with Dijkstra.<br>*(+12. Cyan 1305→1317. Bài C khó nhằn còn D dễ với Dijkstra.)* |
| Aiko | （<ruby>笑<rt>わら</rt></ruby>う）みんな<ruby>競技<rt>きょうぎ</rt></ruby>プログラミング<ruby>狂<rt>くる</rt></ruby>いだね！<br>*(Cười. Mọi người cuồng lập trình thi đấu nhỉ!)* |
| Đại | <ruby>愛子<rt>あいこ</rt></ruby>はFigmaとUI/UXの<ruby>分野<rt>ぶんや</rt></ruby>でAwwwardsを<ruby>狙<rt>ねら</rt></ruby>え！<br>*(Aiko ở mảng Figma + UI/UX nhắm Awwwards đi!)* |
| Aiko | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>頑張<rt>がんば</rt></ruby>る！<br>*(Cười. Cố!)* |

---

## Scene 7 — Tony+Yumi visit + family dinner · 11/11 thứ 6

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, internal) Tối thứ 6 vẫn ăn cơm nhà Tanaka. Hôm nay Đại rủ Yamato với Aiko cùng đi.<br>*(Truyền thống.)* |
| Tony | （<ruby>玄関<rt>げんかん</rt></ruby>）ダイ<ruby>君<rt>くん</rt></ruby>、ヤマトくんとアイコちゃんも！ようこそ！<br>*(Ở cửa. Đại, Yamato, Aiko nữa! Mời vào!)* |
| Yumi | <ruby>今日<rt>きょう</rt></ruby>はベトナム<ruby>料理<rt>りょうり</rt></ruby>よ！ダイ<ruby>君<rt>くん</rt></ruby>が<ruby>教<rt>おし</rt></ruby>えてくれた<ruby>春巻<rt>はるま</rt></ruby>き。<br>*(Hôm nay món Việt đó! Nem Đại dạy cô.)* |
| Yamato | (lần đầu ăn nem) <ruby>美味<rt>おい</rt></ruby>しい！<br>*(Ngon quá!)* |
| Aiko | お<ruby>母<rt>かあ</rt></ruby>さん<ruby>料理<rt>りょうり</rt></ruby>お<ruby>上手<rt>じょうず</rt></ruby>ですね！<br>*(Cô nấu khéo quá!)* |
| Yumi | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>息子<rt>むすこ</rt></ruby>がいないから、ダイが<ruby>息子<rt>むすこ</rt></ruby>みたいなものよ。<br>*(Cười. Không có con trai nên Đại như con trai vậy đó.)* |

---

## Scene 8 — Đêm reflect + LINE Mai · 23:00

| Speaker | Lời thoại |
|---|---|
| Đại | (LINE Mai) Em ơi! AtCoder rating của anh lên 緑 (Green 925) rồi!<br>*(Green!)* |
| Mai | (VN) Ôi! Em xem hệ thống rating rồi. Anh lên cấp luôn!<br>*(Lên cấp.)* |
| Đại | (VN) Mục tiêu năm 1: Green ✓. Năm 2: Cyan.<br>*(Mục tiêu.)* |
| Mai | (VN) 2 tháng nữa anh về cưới em rồi. Mẹ em đang may áo dài đó.<br>*(2 tháng.)* |
| Đại | (VN, nhật ký) 11/2026. Cấu trúc dữ liệu: array/LL/stack/queue/hash/tree/heap. Built-in Python mạnh: `list`, `dict`, `set`, `deque`, `heapq`.<br>*(Data Structure.)* |
| Đại | (VN) AtCoder Green 925. Tiến độ cả nhóm: Lin Wei Cyan 1317, Yamato Green 1135, Đại Green 925. Aiko không thi.<br>*(Cả nhóm.)* |
| Đại | (VN) Tony+Yumi vẫn là gia đình thứ hai. Yamato + Aiko lần đầu ăn nem.<br>*(Gia đình.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| データ構造 | データこうぞう | Data structure |
| Array | アレイ / 配列 | Array |
| Linked List | リンクトリスト | Linked list |
| Stack | スタック | Stack (LIFO) |
| Queue | キュー | Queue (FIFO) |
| Hash Table | ハッシュテーブル | Hash table |
| Tree | ツリー / 木構造 | Tree |
| Binary Search Tree | にぶんたんさくき | BST |
| Heap | ヒープ | Heap |
| Priority Queue | プライオリティキュー | Priority queue |
| LIFO | ラスト イン ファースト アウト | Last In First Out |
| FIFO | ファースト イン ファースト アウト | First In First Out |
| collision | コリジョン | Hash collision |
| chaining | チェイニング | Hash collision strategy |
| balanced BST | バランスドビーエスティー | AVL/RB tree |

## Bí quyết chương

- **8 data structures essential**: Cover toàn bộ năm 1 cần biết.
- **Python built-in nhấn mạnh**: list, dict, set, deque, heapq, sortedcontainers — học SV biết dùng tools sẵn có thay vì reinvent.
- **AtCoder progression**: Green 925 cho Đại = realistic + đúng mục tiêu năm 1.
- **Tony+Yumi recurring**: Maintain family bond từ sách 19-20.

> *"Data Structure 8 cấu trúc. Python built-in mạnh. AtCoder Green ✓. 2 tháng cưới Mai."*
