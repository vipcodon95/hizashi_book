# Sách 15 · T2. Mastercam basic — Suzuki dạy CAM (Mastercam入門)

> **Mục tiêu:** 6/2023. Suzuki dạy Thái CAM Mastercam — phổ biến nhất Nhật xưởng nhỏ. Generate toolpath từ SolidWorks part. Lần đầu tự generate G-code.

---

## Scene 1 — Suzuki giới thiệu Mastercam · 17:30 設計室

| Speaker | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、CAMやろう。<br>*(Thái, làm CAM.)* |
| Thái | はい！<br>*(Vâng!)* |
| Suzuki | <ruby>当社<rt>とうしゃ</rt></ruby>はマスターキャム。<ruby>業界<rt>ぎょうかい</rt></ruby>シェア<ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby>。<br>*(Công ty Mastercam. Top market.)* |
| Thái | SolidWorksから<ruby>連動<rt>れんどう</rt></ruby>？<br>*(Liên kết SolidWorks?)* |
| Suzuki | はい、STEPファイル<ruby>経由<rt>けいゆ</rt></ruby>。<br>*(Vâng, qua STEP file.)* |

---

## Scene 2 — Toolpath generation · 18:00

| Speaker | Lời thoại |
|---|---|
| Suzuki | <ruby>素材<rt>そざい</rt></ruby><ruby>定義<rt>ていぎ</rt></ruby>、<ruby>原点<rt>げんてん</rt></ruby><ruby>設定<rt>せってい</rt></ruby>。<br>*(Định nghĩa phôi, set zero.)* |
| Thái | （<ruby>操作<rt>そうさ</rt></ruby>）<br>*(Thao tác.)* |
| Suzuki | <ruby>荒加工<rt>あらかこう</rt></ruby>：ポケットツールパス。<ruby>工具<rt>こうぐ</rt></ruby>φ16エンドミル。<br>*(Roughing: pocket toolpath. Endmill φ16.)* |
| Thái | <ruby>切込<rt>きりこ</rt></ruby>みは？<br>*(Depth of cut?)* |
| Suzuki | NAK80なら2mm。<ruby>送<rt>おく</rt></ruby>り0.1mm/<ruby>刃<rt>は</rt></ruby>。<br>*(NAK80: 2mm. Feed 0.1.)* |
| Thái | （<ruby>入力<rt>にゅうりょく</rt></ruby>）<br>*(Nhập.)* |

---

## Scene 3 — Simulation 3D · 18:30

| Speaker | Lời thoại |
|---|---|
| Suzuki | バックプロットで<ruby>確認<rt>かくにん</rt></ruby>。<br>*(Kiểm tra bằng đường chạy mô phỏng ngược.)* |
| Thái | （シミュレーション）<br>*(Mô phỏng.)* |
| Thái | わあ、3Dが<ruby>動<rt>うご</rt></ruby>いてる！<br>*(Ô, 3D chạy được kìa!)* |
| Suzuki | <ruby>衝突<rt>しょうとつ</rt></ruby>チェック。<ruby>赤<rt>あか</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>なしなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Kiểm tra va đập. Không hiện đỏ là ổn.)* |
| Thái | <ruby>緑<rt>みどり</rt></ruby>だけです。<br>*(Chỉ có xanh thôi ạ.)* |
| Suzuki | <ruby>仕上<rt>しあ</rt></ruby>げはコンタリングツールパス。φ8ボールエンドミル。<br>*(Phay tinh dùng đường chạy theo biên. Dao phay ngón đầu cầu φ8.)* |

---

## Scene 4 — G-code post · 19:00

| Speaker | Lời thoại |
|---|---|
| Suzuki | ポストプロセッサで G-code <ruby>生成<rt>せいせい</rt></ruby>。<br>*(Bộ xử lý hậu kỳ sẽ sinh ra G-code.)* |
| Thái | （<ruby>生成<rt>せいせい</rt></ruby>）<br>*(Sinh ra.)* |
| Thái | （テキスト<ruby>見<rt>み</rt></ruby>る）G01 X100 Y50 F500...<br>*(Xem mã văn bản.)* |
| Suzuki | これをマザックMCに<ruby>送<rt>おく</rt></ruby>る。<br>*(Cái này sẽ gửi sang máy MC Mazak.)* |
| Thái | （<ruby>感心<rt>かんしん</rt></ruby>）すごいですね...<br>*(Khâm phục. Tuyệt vời quá...)* |
| Suzuki | これからは<ruby>君<rt>きみ</rt></ruby>が<ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>パーツのCAMを<ruby>担当<rt>たんとう</rt></ruby>。<br>*(Từ giờ em mỗi ngày phụ trách CAM một chi tiết.)* |
| Thái | はい！<br>*(Vâng!)* |

---

## Scene 5 — 1 tuần thực hành · 6/2023 cuối

| Speaker | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>進捗<rt>しんちょく</rt></ruby>はどう？<br>*(Thái, tiến độ thế nào?)* |
| Thái | <ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby>のパーツCAMが<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Xong 5 chi tiết CAM ạ.)* |
| Suzuki | （<ruby>確認<rt>かくにん</rt></ruby>）...<ruby>切込<rt>きりこ</rt></ruby>みもうちょっと<ruby>大<rt>おお</rt></ruby>きくできるよ。<br>*(Kiểm tra. Chiều sâu cắt có thể tăng thêm chút nữa.)* |
| Thái | えっ、3mmですか？<br>*(Ơ, 3mm sao ạ?)* |
| Suzuki | NAK80なら2.5mmまで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(NAK80 thì đến 2.5mm vẫn ổn.)* |
| Thái | （メモする）<br>*(Ghi chú.)* |
| Suzuki | <ruby>経験<rt>けいけん</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えていく。<br>*(Học dần qua kinh nghiệm.)* |

---

## Scene 6 — Sakurai discusses · 12:30

| Speaker | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、Mastercam<ruby>進<rt>すす</rt></ruby>んでる？<br>*(Thái, Mastercam tiến triển không?)* |
| Thái | <ruby>1<rt>いっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>で<ruby>基本<rt>きほん</rt></ruby>はできました。<br>*(Một tháng đã nắm cơ bản rồi ạ.)* |
| Sakurai | <ruby>速<rt>はや</rt></ruby>い！<ruby>俺<rt>おれ</rt></ruby>は<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>かかった。<br>*(Nhanh đấy! Anh phải mất 3 tháng cơ.)* |
| Thái | <ruby>大学<rt>だいがく</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>しCADをやっていたので。<br>*(Hồi đại học em có học chút CAD.)* |
| Sakurai | <ruby>機械<rt>きかい</rt></ruby><ruby>科<rt>か</rt></ruby>は<ruby>有利<rt>ゆうり</rt></ruby>だね。<br>*(Khoa cơ khí có lợi thế nhỉ.)* |
| Thái | サクライさんに<ruby>追<rt>お</rt></ruby>いつきたいです。<br>*(Em muốn theo kịp anh Sakurai.)* |
| Sakurai | <ruby>2<rt>に</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>には<ruby>追<rt>お</rt></ruby>い<ruby>抜<rt>ぬ</rt></ruby>かれそうだな。<br>*(2 năm sau chắc anh bị em vượt mất.)* |

---

## Scene 7 — Đêm Mai · 22:00

| Speaker | Lời thoại |
|---|---|
| Mai | (VN) Anh, dạo này bận lắm hả?<br>*(Bận không.)* |
| Thái | (VN) MC với cả Mastercam, lại còn ôn N3 nữa. Cường độ cao thật.<br>*(Cao.)* |
| Mai | (VN) Anh đừng làm quá sức nhé.<br>*(Đừng quá sức.)* |
| Thái | (VN) Anh khoẻ mà. Có Putra với Sakurai hỗ trợ.<br>*(Có hỗ trợ.)* |
| Mai | (VN) Em yêu anh. Đợi anh 5 năm nữa.<br>*(Yêu.)* |
| Thái | (VN) Anh yêu em.<br>*(Yêu.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| マスターキャム | マスターキャム | Mastercam (phần mềm CAM phổ biến tại Nhật) |
| STEPファイル | ステップファイル | Tệp STEP (định dạng trao đổi CAD) |
| ポケットツールパス | ポケットツールパス | Đường chạy dao kiểu hốc |
| エンドミル | エンドミル | Dao phay ngón |
| 切込み | きりこみ | Chiều sâu cắt |
| 送り | おくり | Bước tiến dao |
| バックプロット | バックプロット | Đường chạy mô phỏng ngược |
| ボールエンドミル | ボールエンドミル | Dao phay ngón đầu cầu |
| ポストプロセッサ | ポストプロセッサ | Bộ xử lý hậu kỳ |
| G-code | ジーコード | Mã G |

## Bí quyết chương

- **Mastercam là CAM số 1 tại xưởng nhỏ Nhật**: Chuẩn ngành.
- **Thái học nhanh nhờ nền đại học cơ khí**: Nền tảng phát huy tác dụng.
- **Sakurai nói "2 năm sau bị vượt"**: Tạo cạnh tranh thân thiện.

> *"Một tháng nắm cơ bản Mastercam. Sakurai bảo 2 năm nữa sẽ bị vượt. Mục tiêu đã rõ."*
