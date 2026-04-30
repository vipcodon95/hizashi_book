# Sách 22 · T7. OS入門 + Network — TCP/IP, HTTP, Linux (OS・ネットワーク)

> **Mục tiêu:** 9-10/2027. Lecture OS入門 (process, thread, memory, scheduling) + Network (OSI, TCP/IP, HTTP/HTTPS, DNS). Setup Linux Ubuntu dual-boot trên laptop. Mai bắt đầu Yamato Language School N2 prep.

## Bối cảnh

- Sensei OS: 中川-sensei (60t, ex-Linux kernel contributor 2005-2010)
- Sensei Network: 山中-sensei (50t, ex-NTT engineer)
- Lab: SSH vào server Linux của trường

---

## Scene 1 — OS lecture: Process vs Thread · 9:00

| Speaker | Lời thoại |
|---|---|
| Nakagawa | プロセスはOSの<ruby>独立<rt>どくりつ</rt></ruby><ruby>実行<rt>じっこう</rt></ruby><ruby>単位<rt>たんい</rt></ruby>で、メモリは<ruby>分離<rt>ぶんり</rt></ruby>されています。<br>*(Process: đơn vị thực thi độc lập của OS, bộ nhớ tách biệt.)* |
| Nakagawa | スレッドはプロセス<ruby>内<rt>ない</rt></ruby>の<ruby>軽量<rt>けいりょう</rt></ruby><ruby>実行<rt>じっこう</rt></ruby><ruby>単位<rt>たんい</rt></ruby>で、メモリを<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Thread: nhẹ, nằm trong process, dùng chung bộ nhớ.)* |
| Đại | (terminal Linux) `ps aux | head` → liệt kê tiến trình<br> |
| Đại | (terminal) `top` → giám sát tiến trình thời gian thực<br> |
| Đại | (Python multi-thread)<br>```python<br>import threading<br><br>def task(n):<br>    print(f"Task {n} running")<br><br>threads = [threading.Thread(target=task, args=(i,)) for i in range(5)]<br>for t in threads: t.start()<br>for t in threads: t.join()<br>```<br> |

---

## Scene 2 — Memory management · 11:00

| Speaker | Lời thoại |
|---|---|
| Nakagawa |<ruby>仮想<rt>かそう</rt></ruby>メモリとページテーブルの<ruby>仕組<rt>しく</rt></ruby>みです。<br>*(Bộ nhớ ảo + page table.)* |
| Nakagawa | ヒープ（malloc/newで<ruby>動的<rt>どうてき</rt></ruby><ruby>確保<rt>かくほ</rt></ruby>）とスタック（<ruby>関数呼<rt>かんすうよ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>し<ruby>用<rt>よう</rt></ruby>）。<br>*(Heap cấp phát động + Stack cho gọi hàm.)* |
| Nakagawa | メモリリークは<ruby>解放<rt>かいほう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れ → OOM killの<ruby>原因<rt>げんいん</rt></ruby>です。<br>*(Quên free → OOM kill.)* |

---

## Scene 3 — Network OSI 7 layers · 14:00

| Speaker | Lời thoại |
|---|---|
| Yamanaka-sensei | OSI 7:<br> |
| Yamanaka | 7 Application (HTTP, FTP, SMTP)<br> |
| Yamanaka | 6 Presentation (TLS, SSL)<br> |
| Yamanaka | 5 Session (NetBIOS, RPC)<br> |
| Yamanaka | 4 Transport (TCP, UDP)<br> |
| Yamanaka | 3 Network (IP, ICMP)<br> |
| Yamanaka | 2 Data Link (Ethernet, MAC)<br> |
| Yamanaka | 1 Physical (cable, wifi)<br> |
| Đại | (memo Anki)<ruby>覚<rt>おぼ</rt></ruby>えやすい:Please Do Not Throw Sausage Pizza Away (P-D-N-T-S-P-A từ tầng 1 lên).<br>*(Câu thần chú nhớ OSI.)* |

---

## Scene 4 — TCP vs UDP + HTTP · 16:00

| Speaker | Lời thoại |
|---|---|
| Yamanaka | TCPは<ruby>接続型<rt>せつぞくがた</rt></ruby>、<ruby>信頼性<rt>しんらいせい</rt></ruby>あり、<ruby>順序<rt>じゅんじょ</rt></ruby><ruby>保証<rt>ほしょう</rt></ruby>。<ruby>用途<rt>ようと</rt></ruby>:Web、メール。<br>*(TCP có kết nối, tin cậy, đúng thứ tự — dùng cho web, email.)* |
| Yamanaka | UDPは<ruby>非接続型<rt>ひせつぞくがた</rt></ruby>、<ruby>高速<rt>こうそく</rt></ruby>、<ruby>保証<rt>ほしょう</rt></ruby>なし。<ruby>用途<rt>ようと</rt></ruby>:ストリーミング、ゲーム、DNS。<br>*(UDP không kết nối, nhanh, không đảm bảo — streaming, game, DNS.)* |
| Đại | (terminal) `curl -v https://google.com` → xem TCP handshake + phản hồi HTTP/2<br> |
| Yamanaka | HTTPSはHTTP over TLSです。<ruby>証明書<rt>しょうめいしょ</rt></ruby>はLet's Encryptで<ruby>無料<rt>むりょう</rt></ruby>。<br>*(HTTPS = HTTP qua TLS, chứng chỉ Let's Encrypt miễn phí.)* |

---

## Scene 5 — DNS deep · evening

| Speaker | Lời thoại |
|---|---|
| Yamanaka | DNSはドメインをIPに<ruby>変換<rt>へんかん</rt></ruby>します。<ruby>階層<rt>かいそう</rt></ruby>はroot → TLD → authoritative。<br>*(DNS phân cấp: root → TLD → authoritative.)* |
| Đại | (terminal) `dig vandai.dev` → A record + nameserver Cloudflare<br> |
| Đại | (terminal) `nslookup vandai.dev`<br> |

---

## Scene 6 — Linux dual-boot Ubuntu setup · weekend

| Speaker | Lời thoại |
|---|---|
| Đại | (LINE Rajesh)<ruby>俺<rt>おれ</rt></ruby>、Linux Ubuntuのデュアルブートを<ruby>導入<rt>どうにゅう</rt></ruby>したで！<br>*(Tớ cài dual-boot Ubuntu rồi nha!)* |
| Rajesh | (English) Awesome! Ubuntu 24.04 LTS. Test in Live USB first.<br>*(Thử Live USB trước cái đã.)* |
| Đại | (Ubuntu 24.04) GNOME desktop。zsh + tmux + neovimを<ruby>導入<rt>どうにゅう</rt></ruby>。<br>*(Cài đặt môi trường.)* |
| Đại | (terminal) `apt install python3 nodejs postgresql docker.io`<br> |

---

## Scene 7 — Mai N2 prep start · Yamato School

| Speaker | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi! Hôm nay em đi buổi đầu ở Yamato School. Lớp N2 có 12 đứa (5 VN, 4 TQ, 2 Indo, 1 Phil).<br>*(Lớp N2.)* |
| Đại | (VN) Ngon em! Ôn 6 tháng — em thi tháng 2/2028 nha.<br>*(Mục tiêu.)* |
| Mai | (VN) Em sẽ giỏi cho anh xem.<br>*(Đợi xem.)* |

---

## Scene 8 — Đêm reflect

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 9–10/2027. Nhập môn OS + Mạng: process/thread/bộ nhớ + OSI 7 tầng + TCP/UDP + HTTPS + DNS.<br>*(OS + Mạng.)* |
| Đại | (VN) Đã cài dual-boot Linux Ubuntu 24.04. Bộ công cụ: zsh + tmux + neovim + Docker.<br>*(Linux.)* |
| Đại | (VN) Mai vào học N2 ở Yamato School. 6 tháng ôn.<br>*(Mai N2.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| プロセス | プロセス | Tiến trình |
| スレッド | スレッド | Luồng |
| 仮想メモリ | かそうメモリ | Bộ nhớ ảo |
| Heap | ヒープ | Cấp phát động |
| Stack | スタック | Vùng gọi hàm |
| OSI 7 layers | オーエスアイ | Mô hình OSI 7 tầng |
| TCP | ティーシーピー | Giao thức truyền tin cậy |
| UDP | ユーディーピー | Giao thức truyền tốc độ cao |
| HTTPS | エイチティーティーピーエス | HTTP + TLS |
| DNS | ディーエヌエス | Hệ phân giải tên miền |
| Ubuntu LTS | ウブンツ | Bản phân phối Linux hỗ trợ dài hạn |
| zsh | ジーシェル | Shell nâng cấp từ bash |
| tmux | ティーマックス | Bộ ghép terminal |
| neovim | ネオビム | Vim hiện đại |
| Let's Encrypt | レッツエンクリプト | Chứng chỉ TLS miễn phí |

## Bí quyết chương

- **OS + Mạng — nền tảng năm 2**: Là gốc cho năm 3 backend/cloud/SRE.
- **Linux dual-boot**: Bước đi thực tế của SV CS.
- **Mai bắt đầu N2**: Mở đường cho Mai đỗ N2 trước khi Đại tốt nghiệp.

> *"OS + Network. Linux Ubuntu. Mai N2 start Yamato School."*
