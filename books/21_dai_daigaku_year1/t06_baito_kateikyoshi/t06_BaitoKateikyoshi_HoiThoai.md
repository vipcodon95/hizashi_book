# Sách 21 · T6. Summer baito — gia sư lập trình cho VN cohort (家庭教師バイト)

> **Mục tiêu:** 7-8/2026. Hè đầu ĐH. Đại bỏ Lawson (đã 2 năm). Thay bằng baito gia sư lập trình online ¥2500/h cho VN students THPT/ĐH muốn học code. Setup qua app PreSchool VN-Japan. Học sinh đầu: Linh-Anh — em gái Đại (22t, vừa graduate Nanzan IT 3/2026, làm Toyota Boshoku Aichi 4/2026, cần học Python cho data analysis).

## Bối cảnh

- Thời gian: 7-8/2026 (kỳ nghỉ hè 8 tuần)
- Income: 12h/tuần × 8 tuần × ¥2500 = ¥240k tổng
- Học sinh:
  - Linh-Anh (em gái Đại, 22t, vừa graduate Nanzan IT, làm Toyota Boshoku Aichi 4/2026 — cần học Python cho data analysis)
  - Tuấn-em (cohort sách 19-20, đang Kobe U Năm 1 経済学部, muốn switch path)
  - 2 em THPT HN
  - 1 anh đã đi làm IT muốn ôn LeetCode

---

## Scene 1 — Quyết định nghỉ Lawson · 28/6/2026

| Speaker | Lời thoại |
|---|---|
| Đại | (LINE Suzuki) スズキさん、<ruby>大学<rt>だいがく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>からプログラミング<ruby>家庭教師<rt>かていきょうし</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えます。<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>ありがとうございました。<br>*(Suzuki, từ năm 2 ĐH em chuyển sang gia sư lập trình. Cảm ơn 2 năm.)* |
| Suzuki | (LINE) ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頼<rt>たよ</rt></ruby>りになる<ruby>店員<rt>てんいん</rt></ruby>だった。<ruby>頑張<rt>がんば</rt></ruby>ってな。たまに<ruby>顔出<rt>かおだ</rt></ruby>しに<ruby>来<rt>こ</rt></ruby>い。<br>*(Đại, em là nhân viên đáng tin. Cố lên nhé. Thi thoảng ghé chơi.)* |
| Đại | (VN, internal) 2 năm Lawson Namba từ 6/2024. Trung bình ¥80k/tháng. Tổng khoảng ¥1.9M.<br>*(Lawson 2 năm.)* |
| Đại | (VN) Giờ chuyển sang gia sư = giờ giấc linh hoạt + đúng chuyên ngành + lương cao hơn (¥2500/h so với ¥1100/h ở Lawson).<br>*(Nâng cấp.)* |

---

## Scene 2 — Setup PreSchool app + first match · 1/7

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, internal) PreSchool VN-Japan — ứng dụng kết nối học viên Việt với gia sư công nghệ ở Nhật. Hồ sơ Đại: SV ĐH Osaka CNTT năm 1, AtCoder Brown.<br>*(Hồ sơ.)* |
| Đại | (LINE Linh-Anh em gái) Linh-Anh ơi! Anh dạy Python online ¥2500/h. Em có muốn học không?<br>*(Mời học.)* |
| Linh-Anh | (VN) Anh ơi! Em vừa vào Toyota Boshoku Nagoya (tốt nghiệp Nanzan IT 3/2026). Em làm data analyst — dùng Excel với SQL. Sếp bảo học Python sẽ tốt.<br>*(Toyota Boshoku.)* |
| Đại | (VN) Quá hợp! Anh kèm em mỗi cuối tuần 2h. ¥2500/h em nhé. Mà em là em ruột — anh giảm 50% còn ¥1250/h.<br>*(Giảm giá.)* |
| Linh-Anh | (VN) Anh khỏi giảm! Em trả nguyên giá để ủng hộ anh. Bao giờ bắt đầu hả anh?<br>*(Nguyên giá.)* |
| Đại | (VN) Sáng chủ nhật 9-11h tuần này. Anh gửi link Zoom cho em.<br>*(Chủ nhật.)* |

---

## Scene 3 — Buổi đầu với Linh-Anh · 5/7 9:00

| Speaker | Lời thoại |
|---|---|
| Đại | (Zoom) Linh-Anh ơi! Hôm nay học Python căn bản nhé. Bắt đầu từ pandas — thư viện phân tích dữ liệu chính.<br>*(Pandas.)* |
| Linh-Anh | (VN) Em mới chỉ biết tên pandas thôi. Em cài rồi anh ạ.<br>*(Cài rồi.)* |
| Đại | (share screen) `import pandas as pd; df = pd.read_csv('sales.csv')`<br> |
| Đại | (VN) `df.head()` xem 5 hàng đầu. `df.info()` xem cột với kiểu dữ liệu.<br>*(Head, info.)* |
| Linh-Anh | (VN) Ôi! 1 dòng nạp được cả file CSV. Excel em mở file mất 10 giây cơ.<br>*(Nhanh.)* |
| Đại | (VN) `df.groupby('region').sum()` tương đương Pivot Table của Excel. Nhưng lập trình được.<br>*(Groupby.)* |
| Linh-Anh | (VN) Em áp dụng ngay được anh ạ! Sếp em yêu cầu báo cáo doanh thu hằng tháng — em đang làm tay mất 4 tiếng. Dùng pandas chắc 30 phút thôi.<br>*(Áp dụng.)* |
| Đại | (VN) Đúng rồi! Tuần sau anh dạy `matplotlib` để vẽ biểu đồ tự động.<br>*(Biểu đồ.)* |

---

## Scene 4 — Tuấn em call · 12/7

| Speaker | Lời thoại |
|---|---|
| Tuấn | (VN, video call) Anh Đại! Em Tuấn đây. Anh còn nhớ em không?<br>*(Tuấn.)* |
| Đại | (VN) Tuấn à! Cùng khoá lớp B trường tiếng. Em vào Kobe khoa Kinh tế năm 1 đúng không?<br>*(Cùng khoá.)* |
| Tuấn | (VN) Vâng. Nhưng em hối hận quá anh ạ. Em thấy anh học CNTT, em cũng muốn chuyển sang.<br>*(Hối hận.)* |
| Đại | (VN) Chuyển khoa khó nhưng vẫn được. Em mới năm 1 chưa muộn đâu.<br>*(Chuyển.)* |
| Tuấn | (VN) Em đang tìm hiểu 編入 (chuyển tiếp) sang khoa CNTT năm 3. Cần học Python với thuật toán trước.<br>*(Chuyển tiếp.)* |
| Đại | (VN) Được, anh kèm em! Cuối tuần chủ nhật 14-16h em ổn không?<br>*(Chủ nhật.)* |
| Tuấn | (VN) Vâng anh! ¥2500/h em trả nguyên giá. Em cảm ơn anh nhiều!<br>*(Nguyên giá.)* |

---

## Scene 5 — Project pandas Linh-Anh: monthly report · 27/7

| Speaker | Lời thoại |
|---|---|
| Linh-Anh | (VN) Anh ơi! Báo cáo doanh thu 6/2026 em làm bằng pandas chỉ 25 phút!<br>*(25 phút.)* |
| Đại | (VN) Cho anh xem code đi.<br>*(Xem code.)* |
| Linh-Anh | (Zoom share)<br>```python<br>import pandas as pd<br>import matplotlib.pyplot as plt<br><br>df = pd.read_csv('sales_2026_06.csv')<br>monthly = df.groupby('region')['amount'].sum().sort_values(ascending=False)<br><br>monthly.plot(kind='bar', title='6/2026 Sales by Region')<br>plt.savefig('report_06.png', dpi=150)<br>plt.show()<br>```<br> |
| Đại | (VN) Tuyệt vời! Code gọn gàng. Sếp em khen không?<br>*(Khen.)* |
| Linh-Anh | (VN) Sếp em sốc luôn! Bảo em "tăng tốc workflow của data team". Tăng lương em 5% = ¥10k/tháng.<br>*(Lương.)* |
| Đại | (VN) Em biết tự động hoá rồi. ¥10k/tháng × 12 = ¥120k/năm. Lương gia sư của em mới ¥120k cho 6 tuần. Hiệu suất đầu tư gấp 10 lần luôn.<br>*(Hiệu suất.)* |

---

## Scene 6 — Income summary cuối hè · 30/8

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, internal) Tổng kết 8 tuần hè:<br>*(Hè.)* |
| Đại | (VN) - Linh-Anh em gái: 8 buổi × 2h × ¥2500 = ¥40k<br> |
| Đại | (VN) - Tuấn em: 8 buổi × 2h × ¥2500 = ¥40k<br> |
| Đại | (VN) - 2 em THPT Hà Nội (1h/tuần × 8): 16h × ¥2000 (giảm cho học sinh) = ¥32k<br> |
| Đại | (VN) - Anh IT LeetCode (1h/tuần × 6): ¥18k<br> |
| Đại | (VN) Tổng: ¥130k. Ít hơn dự kiến ¥240k vì chỉ có 4 học viên.<br>*(¥130k.)* |
| Đại | (VN) Nhưng chất lượng cao — mình được dạy thực tế, học được rất nhiều khi giảng cho người khác (kỹ thuật Feynman).<br>*(Chất lượng.)* |

---

## Scene 7 — Yamato + Aiko visit dorm Đại · 1/9

| Speaker | Lời thoại |
|---|---|
| Yamato | （<ruby>来<rt>く</rt></ruby>る）ダイ！<ruby>夏休<rt>なつやす</rt></ruby>みどうだった？<br>*(Đến chơi. Đại! Hè vừa rồi sao?)* |
| Đại | <ruby>家庭教師<rt>かていきょうし</rt></ruby>を4<ruby>人<rt>にん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>した。¥130k<ruby>稼<rt>かせ</rt></ruby>いだよ。<br>*(Dạy gia sư 4 người. Kiếm được ¥130k.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>はAtCoderの<ruby>競技<rt>きょうぎ</rt></ruby><ruby>合宿<rt>がっしゅく</rt></ruby>と<ruby>家族<rt>かぞく</rt></ruby><ruby>旅行<rt>りょこう</rt></ruby>で<ruby>稼<rt>かせ</rt></ruby>げなかった。<br>*(Tớ đi trại tập huấn AtCoder với du lịch gia đình, không kiếm được.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>はFigmaの<ruby>勉強<rt>べんきょう</rt></ruby>とUIの<ruby>展示<rt>てんじ</rt></ruby><ruby>会<rt>かい</rt></ruby>に<ruby>参加<rt>さんか</rt></ruby>してた。<br>*(Mình học Figma với tham gia triển lãm UI.)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby>Hack U Osakaが<ruby>始<rt>はじ</rt></ruby>まる。<ruby>準備<rt>じゅんび</rt></ruby><ruby>進<rt>すす</rt></ruby>んでる？<br>*(Tuần sau Hack U Osaka bắt đầu. Chuẩn bị tới đâu rồi?)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>＋<ruby>君<rt>きみ</rt></ruby>＋<ruby>愛子<rt>あいこ</rt></ruby> = <ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>チーム！<br>*(Tớ + cậu + Aiko = team 3 người!)* |
| Aiko | UI<ruby>担当<rt>たんとう</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>。バックエンドはダイ。アルゴリズムはヤマト。<br>*(UI mình phụ trách. Backend Đại. Thuật toán Yamato.)* |

---

## Scene 8 — Đêm reflect + LINE Mai · 22:00

| Speaker | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi! Hè anh bận không?<br>*(Bận?)* |
| Đại | (VN) Anh dạy gia sư 4 người Python. Linh-Anh đã áp dụng pandas vào Toyota Boshoku — sếp tăng lương cho em ấy.<br>*(Linh-Anh.)* |
| Mai | (VN) Hay quá! Anh có thêm việc tay trái dạy học rồi.<br>*(Việc tay trái.)* |
| Đại | (VN) Anh thích dạy. Kỹ thuật Feynman — dạy lại là cách học sâu nhất.<br>*(Feynman.)* |
| Mai | (VN) Còn 4 tháng nữa cưới. Em hồi hộp lắm anh ạ.<br>*(4 tháng.)* |
| Đại | (VN, nhật ký) Hè 2026. Bỏ Lawson sau 2 năm. Bắt đầu gia sư Python online ¥2500/h. 4 học viên: Linh-Anh + Tuấn + 2 em THPT + 1 anh IT.<br>*(Chuyển hướng.)* |
| Đại | (VN) Thu nhập ¥130k. Chất lượng hơn số lượng. Linh-Anh áp dụng pandas vào công việc thật.<br>*(Áp dụng thật.)* |
| Đại | (VN) Tuần sau Hack U Osaka — team Đại + Yamato + Aiko. Háo hức!<br>*(Hack U.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| 家庭教師 | かていきょうし | Gia sư |
| 切り替え | きりかえ | Chuyển đổi |
| 顔出し | かおだし | Ghé chơi (mặt) |
| PreSchool | プリスクール | App tutor matching VN-Japan |
| pandas | パンダス | Python data analysis lib |
| matplotlib | マットプロットリブ | Python plot lib |
| read_csv | リードシーエスブイ | Đọc CSV |
| groupby | グループバイ | Nhóm theo |
| Pivot Table | ピボットテーブル | Bảng pivot Excel |
| 編入 | へんにゅう | Transfer (chuyển khoa/trường) |
| 自動化 | じどうか | Tự động hoá |
| ROI | アールオーアイ | Return on Investment |
| Feynman technique | ファインマンテクニック | Học bằng cách dạy lại |
| 合宿 | がっしゅく | Camp tập trung |

## Bí quyết chương

- **Career switch baito**: Lawson → gia sư = bước trưởng thành. Income chỉ 12% lượng nhưng impact lớn.
- **Linh-Anh callback sách 16**: Em gái Đại du học Nanzan IT 4 năm → graduate 3/2026 → vào Toyota Boshoku Nagoya. Cohort recurring.
- **Tuấn switch path setup**: Tuấn sẽ 編入 sang khoa CNTT — sẽ là cofounder Hizashi sách 24!
- **Pandas real-life apply**: Linh-Anh tăng lương ¥10k/tháng từ pandas — show value của tech skill.
- **Hack U setup**: T7 sẽ là first hackathon — team Đại + Yamato + Aiko đã định.

> *"Switch baito. ¥2500/h gia sư. Linh-Anh apply pandas Toyota Boshoku — ROI 10x. Hack U sắp tới."*
