# Sách sinh viên Đại học Osaka · T8. Mobile dev — Flutter first app cho Mai

> **Mục tiêu nhân vật:** Đại (sinh viên năm 2 Osaka U, 22 tuổi, 10-11/2027, Toyonaka). Học các mẫu hội thoại tiếng Nhật của SV mobile dev: hỏi sensei về lựa chọn framework, giải thích Dart cho bạn trong tutorial, hỏi lại senpai về StatefulWidget, demo `flutter run` cho cả lab, nhận góp ý feature từ Mai (tiếng Việt) và translate thành spec, brainstorm hạt giống Hizashi với Tuấn.

---

## Bối cảnh

10-11/2027. Đại học lecture **「モバイルアプリ<ruby>開発<rt>かいはつ</rt></ruby><ruby>入門<rt>にゅうもん</rt></ruby>」** do Suzuki-sensei (40 tuổi, ex-Google Tokyo Android team) phụ trách. Lecture so sánh native iOS/Android, React Native, và Flutter. Lớp chọn **Flutter 3.x** vì single codebase + native compile. Cuối tuần Đại build app đầu tay **"Mai's vocabulary tracker"** — Mai dùng học N2 từ tháng 9. App có SRS + dự định thêm TTS. Đây cũng là khoảnh khắc **hạt giống Hizashi** chính thức nảy mầm trong đầu Đại. Chương này tập trung các mẫu câu hỏi-đáp về mobile dev, demo code Flutter, và đối thoại Việt-Việt với Mai về tính năng app.

---

## Tình huống 1 — Giảng đường D3 · 9:00, Suzuki-sensei giảng tại sao chọn Flutter

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>本日<rt>ほんじつ</rt></ruby>はモバイル<ruby>開発<rt>かいはつ</rt></ruby>の<ruby>選択肢<rt>せんたくし</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<ruby>大<rt>おお</rt></ruby>きく<ruby>三<rt>みっ</rt></ruby>つあります。<br>*(Hôm nay bắt đầu từ lựa chọn cho mobile dev. Có 3 nhóm lớn.)* |
| Suzuki | <ruby>1<rt>いち</rt></ruby>:Native — iOS は Swift、Android は Kotlin。<ruby>性能<rt>せいのう</rt></ruby><ruby>最高<rt>さいこう</rt></ruby>ですが、コードベースが<ruby>二<rt>ふた</rt></ruby>つ<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(1: Native — iOS Swift, Android Kotlin. Hiệu năng cao nhất nhưng cần 2 codebase.)* |
| Suzuki | <ruby>2<rt>に</rt></ruby>:React Native — JS、ホットリロード、<ruby>単一<rt>たんいつ</rt></ruby>コードベース。Meta が<ruby>開発<rt>かいはつ</rt></ruby>。<br>*(2: React Native — JS, hot reload, single codebase. Meta phát triển.)* |
| Suzuki | <ruby>3<rt>さん</rt></ruby>:Flutter — Dart、ネイティブコンパイル、<ruby>美<rt>うつく</rt></ruby>しい UI。Google が<ruby>開発<rt>かいはつ</rt></ruby>。<br>*(3: Flutter — Dart, native compile, UI đẹp. Google phát triển.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>本講座<rt>ほんこうざ</rt></ruby>で Flutter を<ruby>選<rt>えら</rt></ruby>んだ<ruby>理由<rt>りゆう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Thầy ơi, lý do khoá học này chọn Flutter là gì ạ?)* |
| Suzuki | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>単一<rt>たんいつ</rt></ruby>コードで iOS、Android、Web、デスクトップまで<ruby>動<rt>うご</rt></ruby>くからです。<ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>には<ruby>学習<rt>がくしゅう</rt></ruby><ruby>効率<rt>こうりつ</rt></ruby>がいいです。<br>*(Câu hỏi hay. Vì một codebase chạy được iOS, Android, Web, desktop. Với SV năm 2 thì hiệu quả học cao.)* |

---

## Tình huống 2 — Giảng đường D3 · 10:00, Suzuki giảng Dart cơ bản

| Vai | Lời thoại |
|---|---|
| Suzuki | Dart は<ruby>静的<rt>せいてき</rt></ruby><ruby>型付<rt>かたつ</rt></ruby>けで、Java と JS のハイブリッドの<ruby>感<rt>かん</rt></ruby>じです。<br>*(Dart là kiểu tĩnh, cảm giác lai Java và JS.)* |
| Suzuki | async/await が<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>装備<rt>そうび</rt></ruby>です。API <ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>しが<ruby>書<rt>か</rt></ruby>きやすいです。<br>*(async/await là tính năng built-in. Viết gọi API rất gọn.)* |
| Đại | (giơ tay) TypeScript と<ruby>比<rt>くら</rt></ruby>べると、どんな<ruby>違<rt>ちが</rt></ruby>いがありますか？<br>*(So với TypeScript, có khác gì không ạ?)* |
| Suzuki | <ruby>非常<rt>ひじょう</rt></ruby>に<ruby>似<rt>に</rt></ruby>ています。TypeScript を<ruby>知<rt>し</rt></ruby>っていれば、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>で Dart に<ruby>慣<rt>な</rt></ruby>れます。<br>*(Rất giống. Nếu biết TypeScript thì 1 tuần quen Dart.)* |
| Đại | <ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Em yên tâm rồi ạ.)* |

---

## Tình huống 3 — Phòng lab CS · 11:00, Đại giải thích Dart cho Putri

| Vai | Lời thoại |
|---|---|
| Putri | グエンくん、Dart の<ruby>変数<rt>へんすう</rt></ruby><ruby>宣言<rt>せんげん</rt></ruby>、`var` と `final` と `const` の<ruby>違<rt>ちが</rt></ruby>いがよく<ruby>分<rt>わ</rt></ruby>からない。<br>*(Em Nguyễn, mình không phân biệt được var, final, const của Dart.)* |
| Đại | `var` は<ruby>再<rt>さい</rt></ruby><ruby>代入<rt>だいにゅう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>、`final` は<ruby>一度<rt>いちど</rt></ruby>だけ<ruby>代入<rt>だいにゅう</rt></ruby>、`const` はコンパイル<ruby>時<rt>じ</rt></ruby><ruby>定数<rt>ていすう</rt></ruby>です。<br>*(var có thể gán lại, final chỉ gán một lần, const là hằng số tại compile time.)* |
| Đại | (viết ví dụ trên giấy)<br>```dart<br>var name = 'Đại';        // có thể đổi sau<br>final age = 22;           // gán 1 lần, runtime OK<br>const PI = 3.14;          // compile time<br>```<br> |
| Putri | あ、わかりやすい！ TypeScript の `let`、`const` <ruby>2<rt>に</rt></ruby>つだけより<ruby>細<rt>こま</rt></ruby>かいんだね。<br>*(À dễ hiểu! Khác với TypeScript chỉ có let và const.)* |
| Đại | そうそう。<ruby>細<rt>こま</rt></ruby>かいけど、その<ruby>分<rt>ぶん</rt></ruby><ruby>最適化<rt>さいてきか</rt></ruby>が<ruby>効<rt>き</rt></ruby>きやすい。<br>*(Đúng vậy. Chi tiết hơn nhưng nhờ vậy tối ưu tốt hơn.)* |

---

## Tình huống 4 — Phòng lab · 14:00, Đại tạo Flutter app đầu tay

| Vai | Lời thoại |
|---|---|
| Đại | (terminal) `flutter create my_first_app && cd my_first_app`<br> |
| Đại | (lib/main.dart)<br>```dart<br>import 'package:flutter/material.dart';<br><br>void main() => runApp(MyApp());<br><br>class MyApp extends StatelessWidget {<br>  @override<br>  Widget build(BuildContext context) {<br>    return MaterialApp(<br>      home: Scaffold(<br>        appBar: AppBar(title: Text('First App')),<br>        body: Center(child: Text('Hello, Flutter!')),<br>      ),<br>    );<br>  }<br>}<br>```<br> |
| Đại | (terminal) `flutter run -d chrome` → ブラウザに<ruby>表示<rt>ひょうじ</rt></ruby>。<ruby>続<rt>つづ</rt></ruby>けて `flutter run -d ios` → iOS シミュレータでも<ruby>動<rt>うご</rt></ruby>く！<br>*(Hiện trên Chrome → tiếp tục flutter run -d ios → chạy trên iOS simulator!)* |
| Đại | (cười) <ruby>同<rt>おな</rt></ruby>じコードが Web でも iOS でも<ruby>動<rt>うご</rt></ruby>くって<ruby>感動<rt>かんどう</rt></ruby>です！<br>*(Cùng code chạy được Web và iOS — xúc động thật!)* |

---

## Tình huống 5 — Phòng lab · 15:00, Đại hỏi senpai Yumi về StatefulWidget

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>由美<rt>ゆみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、StatelessWidget と StatefulWidget の<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けがまだ<ruby>曖昧<rt>あいまい</rt></ruby>です。<br>*(Chị Yumi, em còn mơ hồ về phân biệt StatelessWidget với StatefulWidget.)* |
| Yumi | <ruby>簡単<rt>かんたん</rt></ruby>。<ruby>画面<rt>がめん</rt></ruby>が<ruby>変<rt>か</rt></ruby>わるかどうか。テキストや<ruby>固定<rt>こてい</rt></ruby>ボタンなら Stateless、カウンタやフォームなら Stateful。<br>*(Đơn giản. Màn hình có đổi không. Text/button cố định thì Stateless, counter/form thì Stateful.)* |
| Đại | `setState` を<ruby>呼<rt>よ</rt></ruby>ぶと、build が<ruby>再<rt>さい</rt></ruby><ruby>実行<rt>じっこう</rt></ruby>される<ruby>仕組<rt>しく</rt></ruby>みですよね？<br>*(Gọi setState thì build chạy lại đúng không ạ?)* |
| Yumi | そう。React の `setState` と<ruby>同<rt>おな</rt></ruby>じ<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>。<ruby>差分<rt>さぶん</rt></ruby>レンダリングするから<ruby>速<rt>はや</rt></ruby>い。<br>*(Đúng. Tư duy giống setState của React. Render diff nên nhanh.)* |
| Đại | <ruby>納得<rt>なっとく</rt></ruby>です。ありがとうございます。<br>*(Em hiểu rõ rồi. Cảm ơn chị.)* |

---

## Tình huống 6 — Phòng riêng · cuối tuần, Đại brainstorm app cho Mai (LINE Tuấn)

*Đại nhắn Tuấn ở Hà Nội để chốt feature.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Tuấn) Tuấn ơi, anh định build app vocab tracker cho Mai học N2. Mày góp ý feature đi. |
| Tuấn | OK. 1. Thêm thẻ (JP + reading + nghĩa VN). 2. SRS giãn cách. 3. Audio TTS. 4. Tag theo level. 5. Stats học. |
| Đại | TTS để v2 đi. v1 anh làm core: thẻ + SRS + tag. DB Sqlite local. |
| Tuấn | Chuẩn. SRS algorithm dùng SM-2 đơn giản nhé, đừng vướng FSRS làm gì. |
| Đại | Chốt SM-2. Cuối tuần này code xong v0.1. |

---

## Tình huống 7 — Phòng riêng · tối thứ 7, Đại code Vocab + SRS

| Vai | Lời thoại |
|---|---|
| Đại | (lib/models/vocab.dart)<br>```dart<br>class Vocab {<br>  final int id;<br>  final String jp;<br>  final String reading;<br>  final String vn;<br>  int srsLevel;<br>  DateTime? nextReview;<br><br>  Vocab({required this.id, required this.jp,<br>         required this.reading, required this.vn,<br>         this.srsLevel = 0, this.nextReview});<br>}<br>```<br> |
| Đại | (lib/services/srs.dart)<br>```dart<br>// SM-2 simplified intervals (days)<br>const intervals = [1, 3, 7, 14, 30, 90];<br><br>DateTime nextReviewDate(int level) {<br>  final days = intervals[level.clamp(0, intervals.length - 1)];<br>  return DateTime.now().add(Duration(days: days));<br>}<br>```<br> |
| Đại | (LINE Tuấn) Xong core rồi. Thêm 50 từ N2 test → app hiện "5 từ đến hạn hôm nay" → quiz → đánh dấu đúng → giãn sang 3 ngày tới ✓ |
| Tuấn | Đỉnh. Gửi mai test thử đi. |

---

## Tình huống 8 — Phòng riêng · sáng chủ nhật, Mai dùng app + phản hồi (cảnh tiếng Việt giữa chương)

*Đại video call Mai, đưa iPhone đang cài app để Mai thử qua màn hình.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi app dễ thương ghê! Cái card lật mượt lắm. Em thêm 100 từ N2 vào rồi. |
| Đại | (tiếng Việt) Vui không em? |
| Mai | (tiếng Việt) Vui. Nhưng em muốn nghe phát âm chuẩn. Anh thêm tính năng đọc tiếng Nhật được không? |
| Đại | (tiếng Việt) Được chứ. Flutter có gói `flutter_tts` luôn. Tuần sau anh thêm. |
| Mai | (tiếng Việt) Còn nữa — chỗ "đã thuộc / chưa thuộc" anh thêm nút "khó quá, học lại từ đầu" được không? Có hôm em sai cả mục N2 mondai 1, muốn reset. |
| Đại | (tiếng Việt) Reset SRS về level 0. OK ghi nhận, anh làm. |
| Mai | (tiếng Việt) Anh biết không, mấy đứa bạn em cũng đang cần app kiểu này. Linh-Anh đang học N4. Trang đang ôn N3. Có app tiếng Việt làm cho người Việt thì tốt biết bao. |
| Đại | (tiếng Việt, ngẩn người) Em nói đúng. App tiếng Nhật mà tiếng Anh giao diện, lại thiếu giải thích văn hoá VN... Đó là khoảng trống. |

---

## Tình huống 9 — Phòng riêng · sáng chủ nhật, Đại dịch phản hồi Mai thành spec

| Vai | Lời thoại |
|---|---|
| Đại | (tự nói ra tiếng, viết spec vào notebook) <ruby>機能<rt>きのう</rt></ruby><ruby>追加<rt>ついか</rt></ruby><ruby>仕様<rt>しよう</rt></ruby>:<br>*(Spec thêm tính năng:)* |
| Đại | <ruby>1<rt>いち</rt></ruby>. TTS<ruby>機能<rt>きのう</rt></ruby>:`flutter_tts` パッケージ<ruby>使用<rt>しよう</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>ロケール ja-JP <ruby>固定<rt>こてい</rt></ruby>。<br>*(1. Chức năng TTS: dùng gói flutter_tts, locale ja-JP.)* |
| Đại | <ruby>2<rt>に</rt></ruby>. SRS リセットボタン:カード<ruby>個別<rt>こべつ</rt></ruby>に level <ruby>0<rt>ぜろ</rt></ruby> へ<ruby>戻<rt>もど</rt></ruby>す。<br>*(2. Nút reset SRS: từng thẻ về level 0.)* |
| Đại | <ruby>3<rt>さん</rt></ruby>. UI:ベトナム<ruby>語<rt>ご</rt></ruby><ruby>表記<rt>ひょうき</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>。<ruby>文化的<rt>ぶんかてき</rt></ruby><ruby>注釈<rt>ちゅうしゃく</rt></ruby><ruby>欄<rt>らん</rt></ruby>を<ruby>新設<rt>しんせつ</rt></ruby>。<br>*(3. UI: thêm hiển thị tiếng Việt. Tạo cột chú thích văn hoá.)* |

---

## Tình huống 10 — Phòng riêng · chiều chủ nhật, Đại implement TTS

| Vai | Lời thoại |
|---|---|
| Đại | (pubspec.yaml)<br>```yaml<br>dependencies:<br>  flutter_tts: ^4.0.0<br>  sqflite: ^2.3.0<br>```<br> |
| Đại | (lib/services/tts_service.dart)<br>```dart<br>import 'package:flutter_tts/flutter_tts.dart';<br><br>class TtsService {<br>  final _tts = FlutterTts();<br><br>  Future<void> init() async {<br>    await _tts.setLanguage('ja-JP');<br>    await _tts.setSpeechRate(0.5);<br>  }<br><br>  Future<void> speak(String text) => _tts.speak(text);<br>}<br>```<br> |
| Đại | (chạy app, nhấn nút phát âm 「<ruby>勉強<rt>べんきょう</rt></ruby>」) `べんきょう` <ruby>聞<rt>き</rt></ruby>こえました！<br>*(Phát ra "べんきょう" rồi!)* |
| Đại | (LINE Mai) Em ơi, TTS done. Mai sáng anh send file mới. |
| Mai | (LINE, tiếng Việt) Tuyệt vời. Anh đỉnh nhất quả đất. |

---

## Tình huống 11 — Phòng lab · sáng thứ 2, Đại làm mẫu cho Suzuki-sensei

*Đại xin 10 phút sau lecture để demo cá nhân.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>鈴木<rt>すずき</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>個人<rt>こじん</rt></ruby><ruby>制作<rt>せいさく</rt></ruby>でアプリを<ruby>作<rt>つく</rt></ruby>ってみました。<ruby>見<rt>み</rt></ruby>ていただけますか？<br>*(Thưa thầy Suzuki, cuối tuần em làm app cá nhân. Thầy xem giúp em được không ạ?)* |
| Suzuki | もちろん。<ruby>何<rt>なん</rt></ruby>のアプリ？<br>*(Tất nhiên. App gì?)* |
| Đại | ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>単語<rt>たんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリです。SRS と TTS<ruby>機能<rt>きのう</rt></ruby><ruby>付<rt>つ</rt></ruby>きです。<br>*(App học từ vựng tiếng Nhật cho người Việt. Có SRS và TTS.)* |
| Đại | (demo trên iPhone) <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>復習<rt>ふくしゅう</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>枚<rt>まい</rt></ruby> → <ruby>音声<rt>おんせい</rt></ruby><ruby>再生<rt>さいせい</rt></ruby> → <ruby>覚<rt>おぼ</rt></ruby>えていたら<ruby>3<rt>みっ</rt></ruby><ruby>日後<rt>かご</rt></ruby>へ。<br>*(Hôm nay 5 thẻ ôn → phát audio → nhớ rồi thì sang 3 ngày sau.)* |
| Suzuki | <ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>でこのレベル？ ターゲットユーザーが<ruby>明確<rt>めいかく</rt></ruby>で、いい<ruby>視点<rt>してん</rt></ruby>です。<br>*(SV năm 2 mà làm tới mức này à? Target user rõ ràng, góc nhìn tốt.)* |
| Đại | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>婚約者<rt>こんやくしゃ</rt></ruby>が N2 を<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>で、<ruby>彼女<rt>かのじょ</rt></ruby>のために<ruby>作<rt>つく</rt></ruby>りました。<br>*(Em không dám nhận. Vợ chưa cưới của em đang học N2, em làm cho cô ấy.)* |
| Suzuki | (cười ấm) いい<ruby>動機<rt>どうき</rt></ruby>です。<ruby>本格的<rt>ほんかくてき</rt></ruby>に<ruby>発展<rt>はってん</rt></ruby>させたら、<ruby>卒業<rt>そつぎょう</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>のテーマにもなりますよ。<br>*(Động cơ tốt đấy. Phát triển nghiêm túc thì còn làm được đề tài tốt nghiệp.)* |
| Đại | (tim đập mạnh) <ruby>本当<rt>ほんとう</rt></ruby>ですか？ <ruby>考<rt>かんが</rt></ruby>えてみます。<br>*(Thật ạ? Em sẽ suy nghĩ ạ.)* |

---

## Tình huống 12 — Cafeteria · trưa thứ 2, Đại nhắn Aiko ý tưởng startup

*Aiko là bạn cùng lab từ năm 1, có gốc thiết kế.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>愛子<rt>あいこ</rt></ruby>さん、ちょっと<ruby>相談<rt>そうだん</rt></ruby>があるんだけど。<br>*(Aiko, mình có chuyện muốn bàn.)* |
| Aiko | <ruby>何<rt>なに</rt></ruby>？<br>*(Gì thế?)* |
| Đại | ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリ、<ruby>本気<rt>ほんき</rt></ruby>でやろうかと<ruby>思<rt>おも</rt></ruby>ってる。<br>*(App học tiếng Nhật cho người Việt — mình đang tính làm nghiêm túc.)* |
| Aiko | <ruby>面白<rt>おもしろ</rt></ruby>そう。<ruby>市場<rt>しじょう</rt></ruby>は？<br>*(Có vẻ thú vị. Market thế nào?)* |
| Đại | <ruby>日本<rt>にほん</rt></ruby><ruby>在住<rt>ざいじゅう</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby><ruby>労働<rt>ろうどう</rt></ruby><ruby>者<rt>しゃ</rt></ruby>が<ruby>50<rt>ごじゅう</rt></ruby><ruby>万人<rt>まんにん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>、<ruby>留学生<rt>りゅうがくせい</rt></ruby>が<ruby>10<rt>じゅう</rt></ruby><ruby>万人<rt>まんにん</rt></ruby><ruby>近<rt>ちか</rt></ruby>く。<br>*(Người Việt đang sống ở Nhật trên 500k, du học sinh gần 100k.)* |
| Aiko | <ruby>小<rt>ちい</rt></ruby>さくないね。UI <ruby>設計<rt>せっけい</rt></ruby>、<ruby>手伝<rt>てつだ</rt></ruby>うよ。<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>として<ruby>覚<rt>おぼ</rt></ruby>えておいて。<br>*(Không nhỏ đâu. Mình hỗ trợ thiết kế UI. Nhớ ghi tên mình vào danh sách co-founder nha.)* |
| Đại | (cười) <ruby>了解<rt>りょうかい</rt></ruby>です！<br>*(OK luôn!)* |

---

## Tình huống 13 — Phòng riêng · tối thứ 2, gọi video Mai (cảnh tiếng Việt cuối)

> Cảnh tiếng Việt — Đại video call Mai báo tin buổi demo với sensei và lời gợi ý đề tài tốt nghiệp.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi! Hôm nay anh làm mẫu app cho Suzuki-sensei. Ông khen, còn nói có thể phát triển thành đề tài tốt nghiệp luôn. |
| Mai | (tiếng Việt) Trời ơi! Em mừng quá. Vậy là app của em sẽ trở thành luận văn của anh? |
| Đại | (tiếng Việt) Đúng vậy. Mà không chỉ app cho em đâu. Anh tính làm hẳn cho cộng đồng người Việt — `Hizashi`. Aiko đăng ký làm `co-founder` rồi. |
| Mai | (tiếng Việt) Hizashi nghĩa là gì anh? |
| Đại | (tiếng Việt) Tiếng Nhật là 「<ruby>陽射<rt>ひざ</rt></ruby>し」 — tia nắng. Anh muốn app này như tia nắng cho người Việt mò mẫm học tiếng Nhật. |
| Mai | (tiếng Việt) Tên hay quá. Em là người dùng đầu tiên đó nha. |
| Đại | (tiếng Việt) Em là `user 1`. Suốt đời. Hôm nay em phát hiện 1 từ N2 nào hay nhất? |
| Mai | (tiếng Việt) 「<ruby>切<rt>き</rt></ruby>っ<ruby>掛<rt>か</rt></ruby>け」 — nghĩa là "khởi đầu". Em thấy hôm nay đúng là `切っ掛け` cho cả hai mình. |
| Đại | (tiếng Việt) Hay. Anh thêm từ đó vào app làm từ kỷ niệm. Ngủ ngon em. |
| Mai | (tiếng Việt) Anh ngủ ngon. Cố lên co-founder. |

---

## Đọng lại chương 8

Hai ngày cuối tuần đặt nền tảng cho cả hành trình Hizashi. Đại học **Flutter 3.x** + **Dart** trong lecture của Suzuki-sensei, biết phân biệt **var/final/const**, **StatelessWidget vs StatefulWidget**, **setState → diff render**. Tạo Flutter app đầu tay chạy được trên cả Chrome và iOS simulator chỉ với một codebase. Cuối tuần build **"Mai vocabulary tracker v0.1"**: `Vocab` model + **SRS SM-2** intervals + Sqlite local + 100 từ N2 thật. Nhận feedback tiếng Việt từ Mai, dịch thành spec JP **「機能追加仕様」**, implement **flutter_tts** với locale ja-JP. Sáng thứ 2 demo cho Suzuki-sensei bằng mẫu **「個人制作でアプリを作ってみました。見ていただけますか」** — được sensei khen và gợi ý **「卒業研究のテーマにもなりますよ」**. Trưa thứ 2 mời Aiko làm **co-founder** thiết kế UI. Tối gọi video Mai chốt tên **「<ruby>陽射<rt>ひざ</rt></ruby>し」=Hizashi**. Mai chính thức là **user 1 suốt đời**, và từ kỷ niệm 「<ruby>切<rt>き</rt></ruby>っ<ruby>掛<rt>か</rt></ruby>け」 ghim vào lịch sử.

> Từ vựng & mẫu câu chương này: Flutter・Dart・Widget・StatelessWidget・StatefulWidget・setState・MaterialApp・Scaffold・var/final/const・async/await・hot reload・ネイティブコンパイル・cross-platform・SRS・SM-2・Sqlite・flutter_tts・ja-JP・卒業研究・共同創業者・切っ掛け・陽射し (Hizashi)・〜について確認させてください・個人制作でアプリを作ってみました・見ていただけますか・〜の使い分けがまだ曖昧です・恐れ入ります・本格的に発展させたら

## Bí quyết chương

- **Một sensei khen bằng 100 lần tự khen**: Mẫu 「卒業研究のテーマにもなりますよ」 từ Suzuki-sensei chính thức xác nhận đề tài Hizashi cho sách 23-24.
- **Mai → user 1 → Vietnamese market**: Cuộc trò chuyện tiếng Việt Mai-Đại làm vỡ insight "app cho người Việt, bằng cách nghĩ Việt" — không chỉ dịch giao diện sang VN, mà reframe toàn bộ pedagogy.
- **Hạt giống → mầm cây**: Tên Hizashi 「陽射し」, từ kỷ niệm 「切っ掛け」, co-founder Aiko — 3 mốc tinh thần cho sách 23 trở đi.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | lựa chọn |
| 性能 | せいのう | TÍNH NĂNG | hiệu năng |
| 単一 | たんいつ | ĐƠN NHẤT | duy nhất |
| 必要 | ひつよう | TẤT YẾU | cần thiết |
| 美しい | うつくしい | MỸ | đẹp |
| 本講座 | ほんこうざ | BẢN GIẢNG TOẠ | khoá học này |
| 選ぶ | えらぶ | TUYỂN | chọn |
| 理由 | りゆう | LÝ DO | lý do |
| 学習効率 | がくしゅうこうりつ | HỌC TẬP HIỆU SUẤT | hiệu quả học |
| 静的型付け | せいてきかたつけ | TĨNH ĐÍCH HÌNH PHÓ | kiểu tĩnh |
| 標準装備 | ひょうじゅんそうび | TIÊU CHUẨN TRANG BỊ | trang bị tiêu chuẩn |
| 非常に | ひじょうに | PHI THƯỜNG | rất, cực kỳ |
| 似る | にる | TỢ | giống |
| 安心 | あんしん | AN TÂM | yên tâm |
| 変数宣言 | へんすうせんげん | BIẾN SỐ TUYÊN NGÔN | khai báo biến |
| 代入 | だいにゅう | ĐẠI NHẬP | gán |
| 定数 | ていすう | ĐỊNH SỐ | hằng số |
| 最適化 | さいてきか | TỐI THÍCH HOÁ | tối ưu hoá |
| 曖昧 | あいまい | ÁI MUỘI | mơ hồ |
| 画面 | がめん | HOẠ DIỆN | màn hình |
| 固定 | こてい | CỐ ĐỊNH | cố định |
| 納得 | なっとく | NỘP ĐẮC | hiểu rõ, thuyết phục |
| 婚約者 | こんやくしゃ | HÔN ƯỚC GIẢ | vợ/chồng chưa cưới |
| 動機 | どうき | ĐỘNG CƠ | động cơ |
| 卒業研究 | そつぎょうけんきゅう | TỐT NGHIỆP NGHIÊN CỨU | đề tài tốt nghiệp |
| 相談 | そうだん | TƯƠNG ĐÀM | bàn bạc |
| 市場 | しじょう | THỊ TRƯỜNG | thị trường |
| 在住 | ざいじゅう | TẠI TRỤ | đang sinh sống |
| 労働者 | ろうどうしゃ | LAO ĐỘNG GIẢ | người lao động |
| 共同創業者 | きょうどうそうぎょうしゃ | CỘNG ĐỒNG SÁNG NGHIỆP GIẢ | co-founder |
| 候補 | こうほ | HẬU BỔ | ứng viên |
| 切っ掛け | きっかけ | THIẾT QUẢI | khởi đầu, cơ hội |
| 陽射し | ひざし | DƯƠNG XẠ | tia nắng |
| 発展 | はってん | PHÁT TRIỂN | phát triển |
| 表記 | ひょうき | BIỂU KÝ | hiển thị |
| 注釈 | ちゅうしゃく | CHÚ THÍCH | chú thích |
| 新設 | しんせつ | TÂN THIẾT | tạo mới |
