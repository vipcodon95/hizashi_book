# Sách 21 · T5. アルゴリズム入門 + AtCoder 茶色 (アルゴリズム入門)

> **Mục tiêu:** 6/2026. Học アルゴリズム入門: complexity Big O, sorting (bubble/insertion/merge/quick), searching (linear/binary). AtCoder ABC weekly. Đại lên rating 茶色 (Brown 600+) cuối tháng. Yamato senpai 緑 (Green). Lin Wei 水色 (Cyan).

## Bối cảnh

- Thời gian: 6/2026 (giữa kỳ 1 cuối)
- Sensei: 大野-sensei (Algorithm prof, 60t, viết sách アルゴリズム入門)
- AtCoder schedule: Saturday 21:00 weekly ABC (4 problems, 100 phút)

---

## Scene 1 — Lecture Big O · 9:00

| Speaker | Lời thoại |
|---|---|
| Ohno-sensei | <ruby>計算量<rt>けいさんりょう</rt></ruby> Big O <ruby>記法<rt>きほう</rt></ruby>. <ruby>本日<rt>ほんじつ</rt></ruby><ruby>核心<rt>かくしん</rt></ruby>。<br>*(Complexity Big O. Trọng tâm.)* |
| Ohno | O(1) — constant. <ruby>例<rt>れい</rt></ruby>: hash lookup, array index.<br>*(Hằng số.)* |
| Ohno | O(log n) — logarithmic. <ruby>例<rt>れい</rt></ruby>: binary search.<br>*(Lô-ga-rit.)* |
| Ohno | O(n) — linear. <ruby>例<rt>れい</rt></ruby>: linear search, array traversal.<br>*(Tuyến tính.)* |
| Ohno | O(n log n) — quasi-linear. <ruby>例<rt>れい</rt></ruby>: merge sort, quicksort average.<br>*(Bán tuyến tính.)* |
| Ohno | O(n²) — quadratic. <ruby>例<rt>れい</rt></ruby>: bubble sort, naive nested loop.<br>*(Bậc 2.)* |
| Ohno | O(2ⁿ) — exponential. <ruby>例<rt>れい</rt></ruby>: brute force subset sum.<br>*(Mũ.)* |
| Ohno | O(n!) — factorial. <ruby>例<rt>れい</rt></ruby>: traveling salesman brute.<br>*(Giai thừa.)* |
| Đại | (VN, internal) Em đã biết qua chuyên Tin nhưng tiếng Nhật mới.<br>*(Quen.)* |

---

## Scene 2 — Sorting algorithms · 10:30

| Speaker | Lời thoại |
|---|---|
| Ohno | Bubble sort O(n²) — <ruby>隣<rt>となり</rt></ruby><ruby>同士<rt>どうし</rt></ruby><ruby>比較<rt>ひかく</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>。<br>*(So sánh hoán đổi 2 phần tử kề.)* |
| Đại | (code)<br>```python<br>def bubble_sort(arr):<br>    n = len(arr)<br>    for i in range(n):<br>        for j in range(0, n-i-1):<br>            if arr[j] > arr[j+1]:<br>                arr[j], arr[j+1] = arr[j+1], arr[j]<br>    return arr<br>```<br> |
| Ohno | Quicksort — divide & conquer. Pivot + partition. Average O(n log n).<br>*(Chia để trị. Trung bình O(n log n).)* |
| Đại | (code)<br>```python<br>def quicksort(arr):<br>    if len(arr) <= 1:<br>        return arr<br>    pivot = arr[len(arr)//2]<br>    left = [x for x in arr if x < pivot]<br>    middle = [x for x in arr if x == pivot]<br>    right = [x for x in arr if x > pivot]<br>    return quicksort(left) + middle + quicksort(right)<br>```<br> |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>のお<ruby>気<rt>き</rt></ruby>に<ruby>入<rt>い</rt></ruby>りはPythonの `sorted()` — Timsortで O(n log n)、いつも<ruby>使<rt>つか</rt></ruby>ってる。<br>*(Tớ khoái `sorted()` của Python — Timsort, O(n log n), lúc nào cũng dùng.)* |
| Lin Wei | (English) For competitive, just use `sorted()`. Don't reinvent the wheel.<br>*(Thi đấu thì cứ `sorted()` thôi. Đừng phát minh lại bánh xe.)* |

---

## Scene 3 — Binary search · 13:00

| Speaker | Lời thoại |
|---|---|
| Ohno | Binary search O(log n) — <ruby>探索<rt>たんさく</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>を<ruby>毎回<rt>まいかい</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>に<ruby>絞<rt>しぼ</rt></ruby>る。<br>*(Tìm kiếm nhị phân — phạm vi thu hẹp một nửa mỗi lần.)* |
| Đại | (code)<br>```python<br>def binary_search(arr, target):<br>    left, right = 0, len(arr) - 1<br>    while left <= right:<br>        mid = (left + right) // 2<br>        if arr[mid] == target:<br>            return mid<br>        elif arr[mid] < target:<br>            left = mid + 1<br>        else:<br>            right = mid - 1<br>    return -1<br>```<br> |
| Ohno | <ruby>注意<rt>ちゅうい</rt></ruby>:<ruby>事前<rt>じぜん</rt></ruby>にソートが<ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Lưu ý: phải sắp xếp trước.)* |
| Yamato | Pythonには `bisect` モジュールが<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>装備<rt>そうび</rt></ruby>されている。<br>*(Python có sẵn module bisect.)* |
| Yamato | (code) `from bisect import bisect_left; idx = bisect_left(arr, target)`<br> |

---

## Scene 4 — AtCoder ABC weekly Saturday · 21:00

| Speaker | Lời thoại |
|---|---|
| Yamato | (LINE group) ABC<ruby>始<rt>はじ</rt></ruby>まる！<br>*(ABC bắt đầu!)* |
| Đại | (VSCode + browser AtCoder) <br>*(Mở.)* |
| Đại | (VN, internal) Bài A: in "Yes" hoặc "No" tuỳ N chẵn lẻ. Dễ.<br>*(Bài A.)* |
| Đại | (code) `n = int(input()); print("Yes" if n % 2 == 0 else "No")` → AC<br> |
| Đại | (VN) Bài B: đếm số ước của N.<br>*(Bài B.)* |
| Đại | (code)<br>```python<br>n = int(input())<br>count = 0<br>for i in range(1, int(n**0.5)+1):<br>    if n % i == 0:<br>        count += 2 if i != n//i else 1<br>print(count)<br>```<br>→ AC<br> |
| Đại | (VN) Bài C: BFS đồ thị — chưa học. Bỏ qua.<br>*(Bỏ bài C.)* |
| Đại | (LINE Yamato) <ruby>俺<rt>おれ</rt></ruby>はA+B AC。CはBFSでまだ<ruby>未学習<rt>みがくしゅう</rt></ruby>。<br>*(Tớ AC bài A+B. Bài C dùng BFS, chưa học.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>はA+B+C AC。BFSは<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>でやる。<br>*(Tớ AC A+B+C. BFS sẽ học ở bài giảng tháng sau.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>は<ruby>先<rt>さき</rt></ruby>に<ruby>独学<rt>どくがく</rt></ruby>するわ。<br>*(Tớ tự học trước.)* |

---

## Scene 5 — BFS self-study · Sunday morning

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, internal) BFS — Breadth-First Search. Duyệt theo hàng đợi (queue).<br>*(BFS.)* |
| Đại | (code)<br>```python<br>from collections import deque<br><br>def bfs(graph, start):<br>    visited = {start}<br>    queue = deque([start])<br>    result = []<br>    while queue:<br>        node = queue.popleft()<br>        result.append(node)<br>        for neighbor in graph[node]:<br>            if neighbor not in visited:<br>                visited.add(neighbor)<br>                queue.append(neighbor)<br>    return result<br>```<br> |
| Đại | (terminal) Test: graph = {1: [2,3], 2: [4], 3: [4], 4: []}, bfs(1) → [1,2,3,4] ✓<br> |
| Đại | (VN, internal) Dùng `deque` thay `list` để popleft đạt O(1). List popleft = O(n).<br>*(Deque.)* |

---

## Scene 6 — Lin Wei show off Cyan rating · Monday

| Speaker | Lời thoại |
|---|---|
| Lin Wei | (English) Guys! After yesterday's ABC I'm now Cyan (1200+).<br>*(Mọi người ơi! Sau ABC hôm qua tớ đã lên Cyan 1200+ rồi.)* |
| Yamato | （<ruby>悔<rt>くや</rt></ruby>しい）<ruby>俺<rt>おれ</rt></ruby>は<ruby>緑<rt>みどり</rt></ruby>の1100。<ruby>近<rt>ちか</rt></ruby>いぞ！<br>*(Tức quá! Tớ Green 1100. Sát rồi đấy!)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>は<ruby>茶色<rt>ちゃいろ</rt></ruby>の750だ。<br>*(Tớ Brown 750.)* |
| Lin Wei | First month Brown is good for newbie!<br>*(Tháng đầu lên Brown là tốt cho lính mới rồi!)* |
| Đại | (VN, internal) Mục tiêu năm 1: Green (1000+). Năm 2: Cyan (1200+).<br>*(Mục tiêu.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>は<ruby>登録<rt>とうろく</rt></ruby>すらしてない（<ruby>笑<rt>わら</rt></ruby>）。<br>*(Mình còn chưa đăng ký nữa cơ! Cười.)* |
| Yamato | UI/UXも<ruby>大事<rt>だいじ</rt></ruby>だよ！<ruby>競技<rt>きょうぎ</rt></ruby>プログラミングがみんなに<ruby>必須<rt>ひっす</rt></ruby>ってわけじゃない。<br>*(UI/UX cũng quan trọng mà! Lập trình thi đấu không phải ai cũng bắt buộc đâu.)* |

---

## Scene 7 — Reflection: Algorithm path map · Wednesday

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) Algorithm roadmap năm 1:<br>*(Roadmap.)* |
| Đại | (VN) - Tháng 6: BFS, DFS, sorting<br> |
| Đại | (VN) - Tháng 7: Greedy, recursion<br> |
| Đại | (VN) - Tháng 8: Dynamic Programming (DP)<br> |
| Đại | (VN) - Tháng 9: Graph (Dijkstra, Floyd)<br> |
| Đại | (VN) - Tháng 10-12: Advanced (Segment tree, Union-Find)<br> |
| Đại | (VN) - Tháng 1-3: AtCoder rating 緑 mục tiêu<br> |
| Đại | (VN) Sách tham khảo: 「アルゴ式」 site Nhật + LeetCode + Codeforces<br>*(Resource.)* |

---

## Scene 8 — Đêm reflect + LINE Mai · 22:30

| Speaker | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi! Anh đang học gì?<br>*(Học gì?)* |
| Đại | (VN) Thuật toán. Bubble sort, binary search, BFS. Tiếng Nhật là アルゴリズム.<br>*(Thuật toán.)* |
| Mai | (VN) Em không hiểu nhưng nghe ngầu quá!<br>*(Ngầu.)* |
| Đại | (VN) Thuật toán = công thức giải bài toán. Cốt lõi nhất của ngành CNTT.<br>*(Định nghĩa.)* |
| Mai | (VN) Anh giỏi quá. 7 tháng nữa cưới.<br>*(7 tháng.)* |
| Đại | (VN, nhật ký) 6/2026. AtCoder 茶色 750. Lin Wei Cyan, Yamato Green. Mục tiêu năm 1: Green.<br>*(Mục tiêu Green.)* |
| Đại | (VN) Code bubble/quick sort OK. BFS tự học. DP tháng 8. Năm 1 phải vững thuật toán.<br>*(Vững nền.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| アルゴリズム | アルゴリズム | Algorithm |
| 計算量 | けいさんりょう | Computational complexity |
| Big O | ビッグオー | Big O notation |
| ソート | ソート | Sort |
| バブルソート | バブルソート | Bubble sort O(n²) |
| クイックソート | クイックソート | Quicksort O(n log n) avg |
| マージソート | マージソート | Merge sort O(n log n) |
| 二分探索 | にぶんたんさく | Binary search O(log n) |
| BFS | ビーエフエス | Breadth-First Search (deque) |
| DFS | ディーエフエス | Depth-First Search (stack/recursion) |
| グラフ | グラフ | Graph (vertex + edge) |
| 動的計画法 | どうてきけいかくほう | Dynamic Programming (DP) |
| 茶色 | ちゃいろ | AtCoder Brown rating (400-799) |
| 緑 | みどり | AtCoder Green rating (800-1199) |
| 水色 | みずいろ | AtCoder Cyan rating (1200-1599) |

## Bí quyết chương

- **Big O introduction**: Foundational vocab tiếng Nhật (計算量, 二分探索) cho reader CS.
- **3 sorts implementation**: Bubble (educational) + Quicksort (Pythonic divide-conquer) + sorted() (production-ready).
- **AtCoder progression**: Đại 750 Brown sau 1 tháng = realistic cho beginner. Lin Wei Cyan = giỏi sẵn. Yamato Green = trung khá.
- **Algorithm roadmap**: 12 tháng kế hoạch — sẽ check lại ở T12 sách 21.

> *"Algorithm foundation. AtCoder Brown 750. BFS self-learn. Mục tiêu năm 1: Green."*
