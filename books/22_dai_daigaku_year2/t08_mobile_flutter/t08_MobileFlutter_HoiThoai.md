# Sách 22 · T8. Mobile dev — Flutter first app (モバイル開発)

> **Mục tiêu:** 10-11/2027. Lecture Mobile dev. Choose Flutter (Google Dart) over React Native. Đại build first app — "Mai's vocabulary tracker" — Mai dùng học N2.

## Bối cảnh

- Sensei Mobile: 鈴木-sensei (40t, ex-Google Tokyo Android team)
- Flutter chosen vì cross-platform iOS+Android single codebase
- Foreshadow Hizashi mobile sách 23-24

---

## Scene 1 — Why Flutter · 9:00

| Speaker | Lời thoại |
|---|---|
| Suzuki-sensei | モバイル<ruby>開発<rt>かいはつ</rt></ruby>の<ruby>選択肢<rt>せんたくし</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つです。<br>*(3 lựa chọn cho mobile dev.)* |
| Suzuki |<ruby>1<rt>いち</rt></ruby>:Native iOS（Swift）+ Android（Kotlin） —<ruby>最高<rt>さいこう</rt></ruby><ruby>性能<rt>せいのう</rt></ruby>、ただしコードベース<ruby>2<rt>に</rt></ruby>つ<br> |
| Suzuki |<ruby>2<rt>に</rt></ruby>:React Native（Meta） — JS、ホットリロード、<ruby>単一<rt>たんいつ</rt></ruby>コードベース<br> |
| Suzuki |<ruby>3<rt>さん</rt></ruby>:Flutter（Google Dart） —<ruby>単一<rt>たんいつ</rt></ruby>コードベース、ネイティブコンパイル、UIが<ruby>美<rt>うつく</rt></ruby>しい<br> |
| Suzuki |<ruby>本講座<rt>ほんこうざ</rt></ruby>ではFlutter 3.xを<ruby>使<rt>つか</rt></ruby>います。<br>*(Học phần này dùng Flutter 3.x.)* |

---

## Scene 2 — Dart language intro

| Speaker | Lời thoại |
|---|---|
| Suzuki | DartはGoogleが<ruby>2011<rt>にせんじゅういち</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>発表<rt>はっぴょう</rt></ruby>。<ruby>静的<rt>せいてき</rt></ruby><ruby>型付<rt>かたつ</rt></ruby>けで、JavaとJSのハイブリッドの<ruby>感<rt>かん</rt></ruby>じです。<br>*(Dart ra mắt 2011, kiểu tĩnh, lai Java/JS.)* |
| Đại | (code) `var name = 'Đại'; int age = 22; void main() { print('$name is $age'); }`<br> |
| Suzuki | async/awaitが<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>装備<rt>そうび</rt></ruby>。APIの<ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>しに<ruby>便利<rt>べんり</rt></ruby>です。<br>*(async/await built-in, tiện cho gọi API.)* |

---

## Scene 3 — First Flutter app · counter

| Speaker | Lời thoại |
|---|---|
| Đại | (terminal) `flutter create my_first_app`<br> |
| Đại | (lib/main.dart)<br>```dart<br>import 'package:flutter/material.dart';<br><br>void main() => runApp(MyApp());<br><br>class MyApp extends StatelessWidget {<br>  @override<br>  Widget build(BuildContext context) {<br>    return MaterialApp(<br>      home: Scaffold(<br>        appBar: AppBar(title: Text('First App')),<br>        body: Center(child: Text('Hello, Flutter!')),<br>      ),<br>    );<br>  }<br>}<br>```<br> |
| Đại | (terminal) `flutter run -d chrome` → trình duyệt web<br> |
| Đại | (terminal) `flutter run -d ios` → iOS simulator<br> |
| Đại | (Macbook)<ruby>同<rt>おな</rt></ruby>じコードがWebでもiOSでも<ruby>動<rt>うご</rt></ruby>く！<br>*(Cùng một codebase chạy được Web + iOS!)* |

---

## Scene 4 — Mai vocabulary tracker app · weekend project

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nội tâm) Mai đang ôn N2 — cần app theo dõi từ vựng. Anh build cho em.<br>*(Cho Mai.)* |
| Đại | (Đặc tả app Flutter)<br>- Thêm thẻ từ vựng (Nhật + cách đọc + nghĩa Việt)<br>- Đánh dấu "đã thuộc" / "cần ôn lại"<br>- Giãn cách kiểu SRS<br>- DB SQLite cục bộ<br> |
| Đại | (code, simplified)<br>```dart<br>class Vocab {<br>  final String jp;<br>  final String reading;<br>  final String vn;<br>  int srsLevel;<br>  DateTime? nextReview;<br>}<br><br>// Future<List<Vocab>> dueForReview() async { ... }<br>```<br> |
| Đại | (kiểm thử) Thêm 50 từ N2 → app hiện "5 từ đến hạn hôm nay" → tap → quiz → đánh dấu đúng → giãn 1 ngày → 3 ngày → 7 ngày<br> |

---

## Scene 5 — Mai dùng app + feedback

| Speaker | Lời thoại |
|---|---|
| Mai | (VN, đang nghịch app trên iPhone của Đại) Ơ app đẹp ghê anh! Em thêm 100 từ N2 vào rồi nè.<br>*(100 từ.)* |
| Mai | (VN) Anh thêm tính năng TTS đọc tiếng Nhật được không?<br>*(TTS.)* |
| Đại | (VN) Được chứ! Flutter có gói `flutter_tts` luôn. Tuần sau anh thêm.<br>*(Thêm.)* |
| Mai | (VN) App này quan trọng với em lắm. Linh-Anh em gái em với mấy bạn VN đều sẽ dùng.<br>*(Quan trọng.)* |
| Đại | (VN, nội tâm) Mai góp ý nhỏ mà gợi cho mình ý tưởng lớn. Mai chính là người dùng mục tiêu của Hizashi sau này.<br>*(Hạt giống Hizashi.)* |

---

## Scene 6 — Đêm reflect

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 10–11/2027. Học mobile Flutter. Build app đầu tay "Mai vocab tracker".<br>*(Flutter.)* |
| Đại | (VN) Một codebase chạy Web + iOS + Android. Ngôn ngữ Dart làm việc rất nhanh.<br>*(Dart.)* |
| Đại | (VN) Mai dùng app + góp ý TTS — mình nhận ra có thể build app học ngôn ngữ cho cộng đồng VN.<br>*(HẠT GIỐNG.)* |
| Đại | (VN) Hạt giống ý tưởng cho luận văn tốt nghiệp... còn 1,5 năm nữa.<br>*(Hạt giống.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| Flutter | フラッター | Framework mobile đa nền tảng của Google |
| Dart | ダート | Ngôn ngữ của Google dùng cho Flutter |
| React Native | リアクトネイティブ | Framework mobile của Meta (JS) |
| Cross-platform | クロスプラットフォーム | Một codebase chạy nhiều OS |
| Native compiled | ネイティブコンパイル | Biên dịch ra mã native |
| StatelessWidget | ステートレスウィジェット | Component bất biến của Flutter |
| StatefulWidget | ステートフルウィジェット | Component có trạng thái của Flutter |
| Material Design | マテリアルデザイン | Hệ thiết kế của Google |
| SQLite | エスキューライト | DB nhúng |
| flutter_tts | フラッターティーティーエス | Gói Text-to-Speech cho Flutter |
| SRS | エスアールエス | Hệ thống ôn lặp giãn cách |

## Bí quyết chương

- **Chọn Flutter**: Chuẩn bị công nghệ cho Hizashi (sách 23–24).
- **Mai vocab tracker**: Khoảnh khắc HẠT GIỐNG cho ý tưởng Hizashi — Đại nhận ra giá trị của app học ngôn ngữ.
- **Phản hồi TTS**: Mai gợi ý tính năng → Đại sẽ làm → mở rộng thành Hizashi.

> *"Flutter first app: Mai vocab tracker. SRS + TTS. Hizashi idea seed planted."*
