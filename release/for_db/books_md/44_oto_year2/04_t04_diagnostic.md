# Sách thực tập sinh ô tô · T4. Máy chẩn đoán OBD2 — đọc mã lỗi (OBD2スキャナーで故障コードを読む)

> **Mục tiêu nhân vật:** Phong (22 tuổi, Hải Phòng, năm 2, N3 cận) học sử dụng máy chẩn đoán OBD2 (スキャンツール) đọc mã lỗi DTC, cùng Tuấn xử lý 1 xe khách Honda Fit lỗi đèn engine. Học các mẫu hội thoại tiếng Nhật chuyên sâu ngành ô tô: nghe khách kể triệu chứng (症状をお聞かせください), hỏi lễ phép về tiền sử (〜のような症状はございましたか), giải thích cách kết nối máy cho kohai (DLCコネクタに繋ぎます), đọc mã DTC và giải thích (P0301は〜という意味です), trao đổi giả thuyết với 整備士長 (〜が原因の可能性があります), và thông báo kết quả cho khách (原因が判明しました).

---

## Bối cảnh

Tháng 7 năm 2026. Sau chiến dịch 車検, garage Anjo nhận xe Honda Fit của anh Suzuki (35 tuổi) — đèn check engine bật, công suất xe yếu. Yamada giao Phong dùng máy OBD2 chẩn đoán dưới sự giám sát của mình, đồng thời cho Tuấn quan sát. Garage có 2 máy chẩn đoán: máy hãng Toyota chuyên cho Toyota系, và máy đa hãng Snap-on Solus dùng cho xe ngoại. Chương này tập trung quy trình OBD2: nhận xe + phỏng vấn → kết nối DLC → đọc DTC → freeze frame → 動作データ → 仮説 → 検証修理 → 消去 + tái test. Mã lỗi điển hình: P0301 (xy lanh 1 misfire) và P0420 (catalyst hiệu suất kém).

---

## Tình huống 1 — 受付カウンター · 9:00, anh Suzuki khách hàng mang xe đến

| Vai | Lời thoại |
|---|---|
| Suzuki | おはようございます。<ruby>予約<rt>よやく</rt></ruby>なしですみません。<ruby>車<rt>くるま</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>くて...<br>*(Chào buổi sáng. Xin lỗi không đặt hẹn trước. Xe tôi đang có vấn đề...)* |
| Phong | おはようございます、<ruby>鈴木<rt>すずき</rt></ruby><ruby>様<rt>さま</rt></ruby>。Anjoモータースのフォンと<ruby>申<rt>もう</rt></ruby>します。<ruby>症状<rt>しょうじょう</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください。<br>*(Chào buổi sáng, anh Suzuki. Tôi là Phong, Anjo Motors. Anh kể triệu chứng giúp em.)* |
| Suzuki | <ruby>昨日<rt>きのう</rt></ruby>からエンジン<ruby>警告<rt>けいこく</rt></ruby>灯が<ruby>点灯<rt>てんとう</rt></ruby>しっぱなしです。<ruby>加速<rt>かそく</rt></ruby>も<ruby>弱<rt>よわ</rt></ruby>くなった<ruby>感<rt>かん</rt></ruby>じがします。<br>*(Từ hôm qua đèn cảnh báo engine sáng liên tục. Cảm giác tăng tốc cũng yếu đi.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>少<rt>すこ</rt></ruby>しお<ruby>聞<rt>き</rt></ruby>かせください。<ruby>振動<rt>しんどう</rt></ruby>のような<ruby>症状<rt>しょうじょう</rt></ruby>はございましたか?<br>*(Em rõ. Xin hỏi thêm. Có triệu chứng như rung động không ạ?)* |
| Suzuki | あ、そういえばアイドリングの<ruby>時<rt>とき</rt></ruby>、エンジンがガタガタします。<br>*(À nhắc mới nhớ, lúc nổ máy tại chỗ, máy hơi giật giật.)* |
| Phong | エンジン<ruby>警告<rt>けいこく</rt></ruby>灯は<ruby>点滅<rt>てんめつ</rt></ruby>していますか、<ruby>点灯<rt>てんとう</rt></ruby>のままですか?<br>*(Đèn cảnh báo engine nhấp nháy hay sáng liên tục ạ?)* |
| Suzuki | <ruby>点灯<rt>てんとう</rt></ruby>のままです。<br>*(Sáng liên tục.)* |
| Phong | わかりました。<ruby>走行<rt>そうこう</rt></ruby><ruby>距離<rt>きょり</rt></ruby>と<ruby>前回<rt>ぜんかい</rt></ruby>のオイル<ruby>交換<rt>こうかん</rt></ruby><ruby>時期<rt>じき</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Hiểu rồi. Anh cho em biết số km và lần thay dầu gần nhất được không ạ?)* |
| Suzuki | <ruby>走行<rt>そうこう</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5000<rt>ごせん</rt></ruby>キロ、オイル<ruby>交換<rt>こうかん</rt></ruby>は<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>です。<br>*(85.000km, thay dầu 3 tháng trước.)* |
| Phong | スパークプラグの<ruby>交換<rt>こうかん</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>はございますか?<br>*(Lịch sử thay bugi có không ạ?)* |
| Suzuki | プラグ?<ruby>覚<rt>おぼ</rt></ruby>えていないです。<ruby>新車<rt>しんしゃ</rt></ruby>から<ruby>交換<rt>こうかん</rt></ruby>していないかもしれません。<br>*(Bugi? Tôi không nhớ. Có thể từ lúc mua chưa thay.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。スキャナーで<ruby>故障<rt>こしょう</rt></ruby>コードを<ruby>読<rt>よ</rt></ruby>み<ruby>取<rt>と</rt></ruby>って、<ruby>原因<rt>げんいん</rt></ruby>を<ruby>特定<rt>とくてい</rt></ruby>させていただきます。<br>*(Em rõ. Em sẽ đọc mã lỗi bằng máy scanner để xác định nguyên nhân.)* |
| Suzuki | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>料金<rt>りょうきん</rt></ruby>は?<br>*(Nhờ anh. Phí thế nào?)* |
| Phong | <ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby><ruby>料<rt>りょう</rt></ruby>は<ruby>5500<rt>ごせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>原因<rt>げんいん</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>しましたら、ご<ruby>連絡<rt>れんらく</rt></ruby>してから<ruby>修理<rt>しゅうり</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Phí chẩn đoán 5.500 yên. Sau khi xác định được nguyên nhân, em sẽ liên lạc rồi mới sửa.)* |
| Suzuki | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh.)* |

---

## Tình huống 2 — Bàn工具 · 9:30, Phong giải thích máy OBD2 cho Tuấn trước khi dùng

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、<ruby>今日<rt>きょう</rt></ruby>はスキャンツールを<ruby>使<rt>つか</rt></ruby>います。OBD2スキャナーとも<ruby>言<rt>い</rt></ruby>います。<br>*(Tuấn, hôm nay dùng scan tool. Còn gọi là máy chẩn đoán OBD2.)* |
| Tuấn | OBD2?<br>*(OBD2?)* |
| Phong | On-Board Diagnostics の<ruby>2<rt>に</rt></ruby><ruby>世代<rt>せだい</rt></ruby><ruby>目<rt>め</rt></ruby>。<ruby>車<rt>くるま</rt></ruby>の<ruby>故障<rt>こしょう</rt></ruby>を<ruby>診断<rt>しんだん</rt></ruby>する<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>規格<rt>きかく</rt></ruby>です。<ruby>1996<rt>せんきゅうひゃくきゅうじゅうろく</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以降<rt>いこう</rt></ruby>の<ruby>車<rt>くるま</rt></ruby>はみんなOBD2<ruby>対応<rt>たいおう</rt></ruby>です。<br>*(On-Board Diagnostics đời 2. Là chuẩn chung để chẩn đoán xe. Xe từ 1996 trở đi đều hỗ trợ OBD2.)* |
| Tuấn | <ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>規格<rt>きかく</rt></ruby>、いいですね。<br>*(Chuẩn chung, hay nhỉ.)* |
| Phong | この<ruby>機械<rt>きかい</rt></ruby>はSnap-on Solus、<ruby>多<rt>た</rt></ruby><ruby>機種<rt>きしゅ</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>です。トヨタ・ホンダ・<ruby>日産<rt>にっさん</rt></ruby>・スズキ、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>めます。<br>*(Máy này Snap-on Solus, hỗ trợ nhiều hãng. Toyota, Honda, Nissan, Suzuki đọc được hết.)* |
| Tuấn | <ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Cách dùng có khó không?)* |
| Phong | <ruby>基本<rt>きほん</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>機能<rt>きのう</rt></ruby>。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>故障<rt>こしょう</rt></ruby>コード<ruby>読<rt>よ</rt></ruby>み<ruby>取<rt>と</rt></ruby>り。<ruby>二<rt>ふた</rt></ruby>つ、フリーズフレームデータ。<ruby>三<rt>みっ</rt></ruby>つ、ライブデータ(<ruby>動作<rt>どうさ</rt></ruby>データ)。<ruby>四<rt>よっ</rt></ruby>つ、<ruby>故障<rt>こしょう</rt></ruby>コード<ruby>消去<rt>しょうきょ</rt></ruby>。<br>*(4 chức năng cơ bản. Một, đọc mã lỗi. Hai, dữ liệu freeze frame. Ba, dữ liệu live (động). Bốn, xoá mã lỗi.)* |
| Tuấn | <ruby>4<rt>よん</rt></ruby><ruby>機能<rt>きのう</rt></ruby>、メモします。<br>*(4 chức năng, em ghi.)* |
| Phong | <ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>な<ruby>原則<rt>げんそく</rt></ruby>:<ruby>故障<rt>こしょう</rt></ruby>コードを<ruby>読<rt>よ</rt></ruby>む<ruby>前<rt>まえ</rt></ruby>に<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>消去<rt>しょうきょ</rt></ruby>しないでください。<ruby>消<rt>き</rt></ruby>えたら<ruby>証拠<rt>しょうこ</rt></ruby>がなくなります。<br>*(Nguyên tắc quan trọng nhất: trước khi đọc mã lỗi tuyệt đối đừng xoá. Xoá là mất bằng chứng.)* |
| Tuấn | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>読<rt>よ</rt></ruby>む→<ruby>記録<rt>きろく</rt></ruby>→<ruby>消去<rt>しょうきょ</rt></ruby>、の<ruby>順番<rt>じゅんばん</rt></ruby>ですね。<br>*(Em rõ. Thứ tự: đọc → ghi → xoá ạ.)* |
| Phong | <ruby>完璧<rt>かんぺき</rt></ruby>!<br>*(Hoàn hảo!)* |

---

## Tình huống 3 — ピット運転席 · 9:50, Phong kết nối DLC và quét lần đầu

*Phong mở cửa lái xe Honda Fit, tìm cổng OBD2.*

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、まずDLCコネクタを<ruby>探<rt>さが</rt></ruby>します。<br>*(Tuấn, trước hết tìm cổng DLC.)* |
| Tuấn | DLC?<br>*(DLC?)* |
| Phong | Data Link Connector。<ruby>診断<rt>しんだん</rt></ruby><ruby>機<rt>き</rt></ruby>を<ruby>繋<rt>つな</rt></ruby>ぐコネクタです。<ruby>運転席<rt>うんてんせき</rt></ruby>の<ruby>足元<rt>あしもと</rt></ruby>、ハンドルの<ruby>下<rt>した</rt></ruby>にあります。<br>*(Data Link Connector. Đầu cắm để nối máy chẩn đoán. Ở chỗ chân ghế lái, dưới vô lăng.)* |
| Phong | (chỉ tay) ここ、<ruby>16<rt>じゅうろく</rt></ruby>ピンのコネクタ。<br>*(Đây, đầu cắm 16 chân.)* |
| Tuấn | あ、ありました。<br>*(À, có rồi.)* |
| Phong | キーをONにします。エンジンは<ruby>始動<rt>しどう</rt></ruby>しません。これを「IGNオン」と<ruby>言<rt>い</rt></ruby>います。<br>*(Bật chìa ON. Không khởi động máy. Cái này gọi là "IGN On".)* |
| Phong | (cắm máy) ...スキャナー<ruby>接続<rt>せつぞく</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<br>*(Đã nối scanner xong.)* |
| Tuấn | <ruby>画面<rt>がめん</rt></ruby>に<ruby>何<rt>なに</rt></ruby>か<ruby>出<rt>で</rt></ruby>ましたね。<br>*(Có gì hiện lên màn hình rồi.)* |
| Phong | はい。<ruby>車両<rt>しゃりょう</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby><ruby>自動<rt>じどう</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby>:Honda Fit、<ruby>2018<rt>にせんじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby>モデル、<ruby>1500<rt>せんごひゃく</rt></ruby>cc。<ruby>正解<rt>せいかい</rt></ruby>です。<br>*(Vâng. Tự lấy thông tin xe: Honda Fit, 2018, 1500cc. Đúng.)* |
| Phong | では「Diagnostic Trouble Code」を<ruby>選<rt>えら</rt></ruby>びます。<br>*(Giờ chọn "Diagnostic Trouble Code".)* |

---

## Tình huống 4 — Vẫn ở ghế lái · 10:00, đọc mã lỗi và ghi chép

| Vai | Lời thoại |
|---|---|
| Phong | (đọc màn hình) コード<ruby>3<rt>みっ</rt></ruby>つあります。<br>*(Có 3 mã.)* |
| Phong | P0301:Cylinder 1 Misfire Detected。<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>の<ruby>失火<rt>しっか</rt></ruby><ruby>検出<rt>けんしゅつ</rt></ruby>。<br>*(P0301: Cylinder 1 Misfire Detected. Xy lanh số 1 phát hiện đánh lửa hụt.)* |
| Tuấn | <ruby>失火<rt>しっか</rt></ruby>?<br>*(失火?)* |
| Phong | エンジンの<ruby>燃焼<rt>ねんしょう</rt></ruby>が<ruby>失敗<rt>しっぱい</rt></ruby>することです。プラグの<ruby>故障<rt>こしょう</rt></ruby>とか、イグニッションコイルとか、<ruby>原因<rt>げんいん</rt></ruby>はいろいろです。<br>*(Là việc đốt cháy của máy bị hụt. Bugi hỏng, mobin đánh lửa... nguyên nhân nhiều thứ.)* |
| Phong | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、P0300:Random Misfire Detected。<ruby>複数<rt>ふくすう</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>のランダム<ruby>失火<rt>しっか</rt></ruby>。<br>*(Thứ hai, P0300: Random Misfire Detected. Nhiều xy lanh đánh lửa hụt ngẫu nhiên.)* |
| Phong | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、P0420:Catalyst System Efficiency Below Threshold (Bank 1)。<ruby>触媒<rt>しょくばい</rt></ruby><ruby>効率<rt>こうりつ</rt></ruby><ruby>低下<rt>ていか</rt></ruby>。<br>*(Thứ ba, P0420: Catalyst System Efficiency Below Threshold. Hiệu suất chất xúc tác giảm.)* |
| Tuấn | <ruby>3<rt>みっ</rt></ruby>つも?<br>*(Có 3 mã liền?)* |
| Phong | はい。でも<ruby>関連<rt>かんれん</rt></ruby>している<ruby>可能性<rt>かのうせい</rt></ruby>があります。<ruby>失火<rt>しっか</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>くと、<ruby>燃<rt>も</rt></ruby>えていないガソリンが<ruby>触媒<rt>しょくばい</rt></ruby>に<ruby>流<rt>なが</rt></ruby>れて、<ruby>触媒<rt>しょくばい</rt></ruby>を<ruby>傷<rt>いた</rt></ruby>めます。<br>*(Vâng. Nhưng có thể liên quan. Misfire kéo dài, xăng chưa đốt chảy vào catalyst, làm hỏng catalyst.)* |
| Tuấn | なるほど!P0301とP0420は<ruby>原因<rt>げんいん</rt></ruby>と<ruby>結果<rt>けっか</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>ですね。<br>*(Ra vậy! P0301 và P0420 là quan hệ nhân quả.)* |
| Phong | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>整備士<rt>せいびし</rt></ruby>の<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>です。<ruby>必<rt>かなら</rt></ruby>ず<ruby>記録<rt>きろく</rt></ruby>を<ruby>取<rt>と</rt></ruby>ります。<br>*(Tuyệt! Tư duy của kỹ thuật viên. Phải ghi lại.)* |

---

## Tình huống 5 — ピット · 10:15, đọc Freeze Frame Data

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>次<rt>つぎ</rt></ruby>、フリーズフレームデータを<ruby>読<rt>よ</rt></ruby>みます。<br>*(Tiếp theo, đọc freeze frame data.)* |
| Tuấn | フリーズフレーム?<br>*(Freeze frame?)* |
| Phong | <ruby>故障<rt>こしょう</rt></ruby>が<ruby>起<rt>お</rt></ruby>きた<ruby>瞬間<rt>しゅんかん</rt></ruby>の<ruby>車<rt>くるま</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>です。<ruby>写真<rt>しゃしん</rt></ruby>みたいなものです。<br>*(Là ghi chép trạng thái xe ngay khoảnh khắc lỗi xảy ra. Như chụp ảnh.)* |
| Phong | (đọc) P0301の<ruby>瞬間<rt>しゅんかん</rt></ruby>:エンジン<ruby>回転数<rt>かいてんすう</rt></ruby>800rpm、<ruby>車速<rt>しゃそく</rt></ruby>0キロ、<ruby>水温<rt>すいおん</rt></ruby>85<ruby>度<rt>ど</rt></ruby>、スロットル<ruby>開度<rt>かいど</rt></ruby>3%。<br>*(Khoảnh khắc P0301: vòng tua 800rpm, tốc độ 0km, nhiệt độ nước 85 độ, độ mở bướm ga 3%.)* |
| Tuấn | これは<ruby>何<rt>なに</rt></ruby>を<ruby>意味<rt>いみ</rt></ruby>しますか?<br>*(Cái này nghĩa gì ạ?)* |
| Phong | <ruby>回転数<rt>かいてんすう</rt></ruby>800rpm、<ruby>速度<rt>そくど</rt></ruby>0キロ、スロットル3%。これは<ruby>典型<rt>てんけい</rt></ruby><ruby>的<rt>てき</rt></ruby>なアイドリング<ruby>状態<rt>じょうたい</rt></ruby>です。つまり、<ruby>停車中<rt>ていしゃちゅう</rt></ruby>に<ruby>失火<rt>しっか</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>しています。<br>*(800rpm, tốc 0km, ga 3%. Đây là trạng thái nổ máy tại chỗ điển hình. Tức là misfire xảy ra khi dừng xe.)* |
| Phong | <ruby>水温<rt>すいおん</rt></ruby>85<ruby>度<rt>ど</rt></ruby>=エンジンは<ruby>暖<rt>あたた</rt></ruby>かい。つまり<ruby>暖機後<rt>だんきご</rt></ruby>の<ruby>失火<rt>しっか</rt></ruby>です。<br>*(Nhiệt 85 độ = máy đã ấm. Tức là misfire sau khi máy ấm.)* |
| Tuấn | お<ruby>客様<rt>きゃくさま</rt></ruby>が「アイドリング<ruby>時<rt>じ</rt></ruby>にガタガタ」と<ruby>言<rt>い</rt></ruby>ったのと<ruby>一致<rt>いっち</rt></ruby>します!<br>*(Khớp với lời khách "rung khi nổ máy tại chỗ"!)* |
| Phong | そのとおり!<ruby>症状<rt>しょうじょう</rt></ruby>とフリーズフレーム、<ruby>一致<rt>いっち</rt></ruby>です。<br>*(Đúng! Triệu chứng và freeze frame khớp.)* |

---

## Tình huống 6 — ピット · 10:30, Live Data — quan sát thông số động cơ thực thời

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>最後<rt>さいご</rt></ruby>、ライブデータです。エンジンを<ruby>始動<rt>しどう</rt></ruby>します。<br>*(Cuối, live data. Khởi động máy.)* |
| Tuấn | (đứng quan sát) ...<br>*( )* |
| Phong | (đọc màn hình) <ruby>回転数<rt>かいてんすう</rt></ruby>780rpm。<ruby>各<rt>かく</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>の<ruby>失火<rt>しっか</rt></ruby><ruby>回数<rt>かいすう</rt></ruby>:1<ruby>番<rt>ばん</rt></ruby>15<ruby>回<rt>かい</rt></ruby>、2<ruby>番<rt>ばん</rt></ruby>2<ruby>回<rt>かい</rt></ruby>、3<ruby>番<rt>ばん</rt></ruby>0<ruby>回<rt>かい</rt></ruby>、4<ruby>番<rt>ばん</rt></ruby>1<ruby>回<rt>かい</rt></ruby>。<br>*(Tua 780rpm. Số lần misfire mỗi xy lanh: số 1 15 lần, số 2 2 lần, số 3 0 lần, số 4 1 lần.)* |
| Tuấn | <ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>が<ruby>圧倒<rt>あっとう</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>多<rt>おお</rt></ruby>いです!<br>*(Xy lanh số 1 nhiều áp đảo!)* |
| Phong | はい。1<ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>が<ruby>確定<rt>かくてい</rt></ruby>です。<br>*(Vâng. Xác định vấn đề ở xy lanh số 1.)* |
| Phong | <ruby>酸素<rt>さんそ</rt></ruby>センサーも<ruby>見<rt>み</rt></ruby>てみよう。O2<ruby>上流<rt>じょうりゅう</rt></ruby>0.1〜0.9Vで<ruby>変動<rt>へんどう</rt></ruby>、<ruby>正常<rt>せいじょう</rt></ruby>。O2<ruby>下流<rt>かりゅう</rt></ruby>0.7Vでほぼ<ruby>固定<rt>こてい</rt></ruby>。<br>*(Xem cảm biến oxy. O2 thượng nguồn dao động 0.1~0.9V, bình thường. O2 hạ nguồn cố định 0.7V.)* |
| Tuấn | <ruby>固定<rt>こてい</rt></ruby>って?<br>*(Cố định là?)* |
| Phong | <ruby>触媒<rt>しょくばい</rt></ruby>が<ruby>正常<rt>せいじょう</rt></ruby>なら、<ruby>下流<rt>かりゅう</rt></ruby>センサーは<ruby>変動<rt>へんどう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ないはずだけど、ほぼ<ruby>上流<rt>じょうりゅう</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>動<rt>うご</rt></ruby>きなら、<ruby>触媒<rt>しょくばい</rt></ruby>が<ruby>劣化<rt>れっか</rt></ruby>しているサインです。P0420の<ruby>裏付<rt>うらづ</rt></ruby>けです。<br>*(Nếu catalyst bình thường, cảm biến hạ nguồn dao động ít. Nhưng nếu chuyển động gần giống thượng nguồn thì là dấu hiệu catalyst suy giảm. Bằng chứng cho P0420.)* |
| Tuấn | ライブデータでP0420の<ruby>裏付<rt>うらづ</rt></ruby>けまで<ruby>取<rt>と</rt></ruby>れるんですね。<br>*(Live data lấy được cả bằng chứng P0420 nhỉ.)* |
| Phong | <ruby>正<rt>まさ</rt></ruby>に<ruby>整備士<rt>せいびし</rt></ruby>の<ruby>武器<rt>ぶき</rt></ruby>です。<br>*(Đúng là vũ khí của kỹ thuật viên.)* |

---

## Tình huống 7 — ピット · 11:00, thảo luận giả thuyết với Yamada

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>診断<rt>しんだん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>のご<ruby>相談<rt>そうだん</rt></ruby>をさせてください。<br>*(Anh Yamada, em xin trao đổi kết quả chẩn đoán.)* |
| Yamada | どうぞ。<br>*(Mời.)* |
| Phong | <ruby>故障<rt>こしょう</rt></ruby>コードは<ruby>3<rt>みっ</rt></ruby>つ:P0301・P0300・P0420。フリーズフレームはアイドリング<ruby>時<rt>じ</rt></ruby>の<ruby>失火<rt>しっか</rt></ruby>。ライブデータでは<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby><ruby>失火<rt>しっか</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>2回。<br>*(3 mã: P0301, P0300, P0420. Freeze frame là misfire khi nổ tại chỗ. Live data, xy lanh 1 misfire 15 lần, xy lanh 2 misfire 2 lần.)* |
| Yamada | <ruby>仮説<rt>かせつ</rt></ruby>は?<br>*(Giả thuyết là gì?)* |
| Phong | <ruby>3<rt>みっ</rt></ruby>つの<ruby>仮説<rt>かせつ</rt></ruby>があります。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>のスパークプラグの<ruby>劣化<rt>れっか</rt></ruby>が<ruby>原因<rt>げんいん</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>があります。<ruby>走行<rt>そうこう</rt></ruby>8<ruby>万<rt>まん</rt></ruby>5000キロでプラグ<ruby>未交換<rt>みこうかん</rt></ruby>です。<br>*(Có 3 giả thuyết. Một, có khả năng bugi xy lanh 1 hỏng. Đã đi 85.000km mà chưa thay bugi.)* |
| Phong | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>イグニッションコイルの<ruby>故障<rt>こしょう</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>もあります。<br>*(Hai, có khả năng mobin đánh lửa xy lanh 1 hỏng.)* |
| Phong | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、インジェクターの<ruby>詰<rt>つ</rt></ruby>まりの<ruby>可能性<rt>かのうせい</rt></ruby>も<ruby>否定<rt>ひてい</rt></ruby>できません。<br>*(Ba, không thể loại trừ khả năng kim phun bị tắc.)* |
| Yamada | いいな。<ruby>確<rt>たし</rt></ruby>かめ<ruby>方<rt>かた</rt></ruby>は?<br>*(Tốt. Cách kiểm tra?)* |
| Phong | コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストを<ruby>提案<rt>ていあん</rt></ruby>します。1<ruby>番<rt>ばん</rt></ruby>と3<ruby>番<rt>ばん</rt></ruby>のコイルを<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えて、もう<ruby>一度<rt>いちど</rt></ruby><ruby>失火<rt>しっか</rt></ruby>を<ruby>測定<rt>そくてい</rt></ruby>します。<ruby>失火<rt>しっか</rt></ruby>が3<ruby>番<rt>ばん</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ったら、コイル<ruby>故障<rt>こしょう</rt></ruby><ruby>確定<rt>かくてい</rt></ruby>。<ruby>移<rt>うつ</rt></ruby>らなかったら、プラグかインジェクター。<br>*(Em đề nghị đổi mobin. Đổi mobin xy lanh 1 và 3, đo misfire lại. Nếu misfire chuyển sang số 3, xác định mobin hỏng. Không chuyển thì là bugi hoặc kim phun.)* |
| Yamada | <ruby>論理的<rt>ろんりてき</rt></ruby>でいい。<ruby>進<rt>すす</rt></ruby>めろ。<br>*(Logic, tốt. Tiến hành đi.)* |
| Phong | あと、<ruby>触媒<rt>しょくばい</rt></ruby>P0420は、まず<ruby>失火<rt>しっか</rt></ruby><ruby>修理後<rt>しゅうりご</rt></ruby>に<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>たいと<ruby>思<rt>おも</rt></ruby>います。<ruby>触媒<rt>しょくばい</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>は<ruby>高額<rt>こうがく</rt></ruby>ですので。<br>*(Còn P0420 catalyst, em muốn xem tình hình sau khi sửa misfire đã. Thay catalyst tốn nhiều tiền.)* |
| Yamada | いい<ruby>判断<rt>はんだん</rt></ruby>。<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>目線<rt>めせん</rt></ruby>だな。<br>*(Phán đoán tốt. Đứng góc nhìn khách hàng.)* |

---

## Tình huống 8 — ピット · 11:30, kiểm tra giả thuyết — đổi coil 1 ↔ 3

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストです。<ruby>手順<rt>てじゅん</rt></ruby>:キーOFF→コネクタ<ruby>抜<rt>ぬ</rt></ruby>く→コイルボルト<ruby>外<rt>はず</rt></ruby>す→1<ruby>番<rt>ばん</rt></ruby>と3<ruby>番<rt>ばん</rt></ruby><ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>え→<ruby>戻<rt>もど</rt></ruby>す→キーON→<ruby>再測定<rt>さいそくてい</rt></ruby>。<br>*(Tuấn, kiểm tra đổi mobin. Quy trình: tắt chìa → rút đầu cắm → tháo bu lông mobin → đổi 1 và 3 → lắp lại → bật chìa → đo lại.)* |
| Tuấn | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ.)* |
| Phong | (thao tác) ...<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>え<ruby>完了<rt>かんりょう</rt></ruby>。コードを<ruby>消去<rt>しょうきょ</rt></ruby>して、<ruby>10<rt>じゅっ</rt></ruby><ruby>分間<rt>ぷんかん</rt></ruby>アイドリング。<br>*(Đã đổi xong. Xoá mã rồi nổ máy tại chỗ 10 phút.)* |
| (10 phút sau) | |
| Phong | <ruby>結果<rt>けっか</rt></ruby>:P0303 Cylinder 3 Misfire Detected。3<ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りました!<br>*(Kết quả: P0303 Cylinder 3 Misfire Detected. Chuyển sang xy lanh 3 rồi!)* |
| Tuấn | おー!<ruby>確定<rt>かくてい</rt></ruby>ですね。<br>*(Ồ! Xác định rồi nhỉ.)* |
| Phong | はい。<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けた<ruby>旧<rt>きゅう</rt></ruby>3<ruby>番<rt>ばん</rt></ruby>コイル=<ruby>正常<rt>せいじょう</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けた<ruby>旧<rt>きゅう</rt></ruby>1<ruby>番<rt>ばん</rt></ruby>コイル=<ruby>故障<rt>こしょう</rt></ruby>。<ruby>論理<rt>ろんり</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>原因<rt>げんいん</rt></ruby>はイグニッションコイル<ruby>故障<rt>こしょう</rt></ruby>です。<br>*(Vâng. Mobin 3 cũ giờ ở số 1 = bình thường, mobin 1 cũ giờ ở số 3 = hỏng. Logic là nguyên nhân do mobin đánh lửa hỏng.)* |
| Phong | プラグも8<ruby>万<rt>まん</rt></ruby>5000キロで<ruby>未交換<rt>みこうかん</rt></ruby>なので、<ruby>同時<rt>どうじ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>を<ruby>推奨<rt>すいしょう</rt></ruby>します。<br>*(Bugi cũng 85.000km chưa thay nên em đề nghị thay cùng.)* |

---

## Tình huống 9 — Phòng điện thoại · 12:00, gọi điện báo khách

| Vai | Lời thoại |
|---|---|
| Phong | もしもし、<ruby>鈴木<rt>すずき</rt></ruby><ruby>様<rt>さま</rt></ruby>でしょうか。Anjoモータースのフォンでございます。<br>*(Alô, có phải anh Suzuki. Tôi là Phong, Anjo Motors.)* |
| Suzuki | はい、フォンさん。<br>*(Vâng, Phong-san.)* |
| Phong | お<ruby>車<rt>くるま</rt></ruby>の<ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>いたしました。<ruby>原因<rt>げんいん</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>いたしました。<br>*(Chẩn đoán xe đã hoàn tất. Em xác định được nguyên nhân.)* |
| Suzuki | はい、どうぞ。<br>*(Vâng, anh nói.)* |
| Phong | <ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>のイグニッションコイルが<ruby>故障<rt>こしょう</rt></ruby>しております。コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストで<ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みでございます。<br>*(Mobin đánh lửa xy lanh 1 bị hỏng. Đã xác nhận bằng kiểm tra đổi mobin.)* |
| Suzuki | コイル<ruby>交換<rt>こうかん</rt></ruby>ですね。<br>*(Thay mobin nhỉ.)* |
| Phong | はい。<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>同時<rt>どうじ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>を<ruby>推奨<rt>すいしょう</rt></ruby>いたします。<ruby>残<rt>のこ</rt></ruby>りの<ruby>3<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>時期<rt>じき</rt></ruby>に<ruby>故障<rt>こしょう</rt></ruby>する<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いです。<br>*(Vâng. Em đề nghị thay đồng loạt 4 cái. 3 cái còn lại có khả năng cao hỏng cùng thời điểm.)* |
| Suzuki | <ruby>金額<rt>きんがく</rt></ruby>は?<br>*(Giá?)* |
| Phong | <ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>セットで<ruby>2<rt>に</rt></ruby><ruby>万<rt>まん</rt></ruby>8000<ruby>円<rt>えん</rt></ruby>、<ruby>工賃<rt>こうちん</rt></ruby><ruby>6000<rt>ろくせん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>4000<rt>よんせん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(4 cái 28.000 yên, công thợ 6.000 yên. Tổng cộng 34.000 yên.)* |
| Phong | あと、スパークプラグも<ruby>8<rt>はち</rt></ruby><ruby>万<rt>まん</rt></ruby>5000キロ<ruby>未交換<rt>みこうかん</rt></ruby>ですので、<ruby>同時<rt>どうじ</rt></ruby>に<ruby>交換<rt>こうかん</rt></ruby>を<ruby>推奨<rt>すいしょう</rt></ruby>いたします。プラグ<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>8000<ruby>円<rt>えん</rt></ruby>、<ruby>工賃<rt>こうちん</rt></ruby>は<ruby>同時<rt>どうじ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>のため<ruby>追加<rt>ついか</rt></ruby>なしです。<br>*(Còn bugi 85.000km chưa thay nên em đề nghị thay cùng. 4 bugi 8.000 yên, công thợ không phụ thu vì làm cùng.)* |
| Suzuki | <ruby>同時<rt>どうじ</rt></ruby><ruby>工賃<rt>こうちん</rt></ruby>0は<ruby>嬉<rt>うれ</rt></ruby>しいね。<ruby>合計<rt>ごうけい</rt></ruby>?<br>*(Công không tính thêm sướng nhỉ. Tổng?)* |
| Phong | <ruby>診断<rt>しんだん</rt></ruby><ruby>料<rt>りょう</rt></ruby>5500<ruby>円<rt>えん</rt></ruby>+コイル<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>34000<rt>さんまんよんせん</rt></ruby><ruby>円<rt>えん</rt></ruby>+プラグ<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>8000<ruby>円<rt>えん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>7500<rt>ななせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Phí chẩn đoán 5.500 + 4 mobin 34.000 + 4 bugi 8.000. Tổng 47.500 yên.)* |
| Suzuki | お<ruby>願<rt>ねが</rt></ruby>いします。エンジン<ruby>警告<rt>けいこく</rt></ruby>灯のP0420は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Nhờ anh. Còn P0420 đèn engine có ổn không?)* |
| Phong | P0420は<ruby>触媒<rt>しょくばい</rt></ruby>の<ruby>劣化<rt>れっか</rt></ruby><ruby>警告<rt>けいこく</rt></ruby>です。<ruby>失火<rt>しっか</rt></ruby>の<ruby>修理後<rt>しゅうりご</rt></ruby>に<ruby>消<rt>き</rt></ruby>える<ruby>場合<rt>ばあい</rt></ruby>もございます。まずコイル・プラグ<ruby>交換<rt>こうかん</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>てから、ご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<ruby>触媒<rt>しょくばい</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>は<ruby>高額<rt>こうがく</rt></ruby>ですので。<br>*(P0420 là cảnh báo suy giảm catalyst. Có trường hợp sau khi sửa misfire thì tắt. Trước hết thay coil, plug rồi quan sát, em sẽ liên lạc lại. Thay catalyst tốn tiền.)* |
| Suzuki | フォンさん、<ruby>説明<rt>せつめい</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすいですね。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Phong-san, giải thích dễ hiểu nhỉ. Tôi yên tâm.)* |
| Phong | ありがとうございます。<ruby>修理後<rt>しゅうりご</rt></ruby>、<ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby>頃にご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<br>*(Cảm ơn anh. Sau khi sửa, khoảng 17 giờ em sẽ liên lạc.)* |

---

## Tình huống 10 — ピット · 14:00, thay coil + plug, Tuấn hỗ trợ

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、コイル<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>とプラグ<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>します。トゥアンは<ruby>新品<rt>しんぴん</rt></ruby>のプラグの<ruby>準備<rt>じゅんび</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tuấn, thay 4 mobin và 4 bugi. Em chuẩn bị bugi mới giúp.)* |
| Tuấn | はい。プラグの<ruby>型番<rt>かたばん</rt></ruby>は?<br>*(Vâng. Số hiệu bugi?)* |
| Phong | NGK SILZKR7B11、4<ruby>本<rt>ほん</rt></ruby>。コイルはホンダ<ruby>純正<rt>じゅんせい</rt></ruby>30520-RB0-S01、4<ruby>本<rt>ほん</rt></ruby>です。<br>*(NGK SILZKR7B11, 4 cái. Mobin chính hãng Honda 30520-RB0-S01, 4 cái.)* |
| Tuấn | (lấy ra) ...ありました。<br>*(Có rồi.)* |
| Phong | プラグの<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けトルクは<ruby>規定値<rt>きていち</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby>ニュートンメートルです。トルクレンチを<ruby>使<rt>つか</rt></ruby>います。<br>*(Trị siết bugi quy định 22 Nm. Dùng cờ lê lực.)* |
| Tuấn | <ruby>22<rt>にじゅうに</rt></ruby>ニュートンメートル。メモ。<br>*(22 Nm. Ghi.)* |
| Phong | プラグの<ruby>新品<rt>しんぴん</rt></ruby>と<ruby>古<rt>ふる</rt></ruby>いの、<ruby>並<rt>なら</rt></ruby>べて<ruby>比<rt>くら</rt></ruby>べて。<br>*(Bugi mới và cũ, xếp ra so xem.)* |
| Tuấn | あ!1<ruby>番<rt>ばん</rt></ruby>のプラグ、<ruby>電極<rt>でんきょく</rt></ruby>がすごく<ruby>摩耗<rt>まもう</rt></ruby>しています。<br>*(A! Bugi số 1 cực mòn ghê.)* |
| Phong | はい。<ruby>燃焼<rt>ねんしょう</rt></ruby><ruby>状態<rt>じょうたい</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>できます。1<ruby>番<rt>ばん</rt></ruby>は<ruby>黒<rt>くろ</rt></ruby>くて、<ruby>燃焼<rt>ねんしょう</rt></ruby><ruby>不良<rt>ふりょう</rt></ruby>のサイン。<ruby>他<rt>た</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>は<ruby>茶色<rt>ちゃいろ</rt></ruby>、<ruby>正常<rt>せいじょう</rt></ruby>な<ruby>燃焼<rt>ねんしょう</rt></ruby>。<br>*(Vâng. Có thể đoán được trạng thái cháy. Số 1 đen, dấu hiệu cháy kém. 3 cái khác nâu, cháy bình thường.)* |
| Tuấn | プラグも<ruby>診断<rt>しんだん</rt></ruby><ruby>道具<rt>どうぐ</rt></ruby>になるんですね。<br>*(Bugi cũng là dụng cụ chẩn đoán nhỉ.)* |
| Phong | <ruby>整備士<rt>せいびし</rt></ruby>はすべてが<ruby>情報<rt>じょうほう</rt></ruby><ruby>源<rt>げん</rt></ruby>です。<br>*(Kỹ thuật viên thì cái gì cũng là nguồn thông tin.)* |

---

## Tình huống 11 — ピット · 16:00, kiểm tra sau sửa — xoá mã, test lại

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>交換<rt>こうかん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。スキャナーで<ruby>故障<rt>こしょう</rt></ruby>コードを<ruby>消去<rt>しょうきょ</rt></ruby>します。<br>*(Đã thay xong. Xoá mã lỗi bằng scanner.)* |
| Tuấn | <ruby>消去<rt>しょうきょ</rt></ruby>OK?<br>*(Xoá OK?)* |
| Phong | <ruby>消去<rt>しょうきょ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。エンジン<ruby>始動<rt>しどう</rt></ruby>、20<ruby>分間<rt>ぷんかん</rt></ruby>アイドリングと<ruby>軽<rt>かる</rt></ruby>い<ruby>走行<rt>そうこう</rt></ruby>テスト。<br>*(Đã xoá. Khởi động máy, 20 phút nổ tại chỗ và test đi nhẹ.)* |
| (20 phút sau Phong lái xe quanh khu) | |
| Phong | (về garage) ライブデータ:<ruby>失火<rt>しっか</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby><ruby>全<rt>すべ</rt></ruby>て0<ruby>回<rt>かい</rt></ruby>。<ruby>故障<rt>こしょう</rt></ruby>コード:なし。<ruby>修理<rt>しゅうり</rt></ruby><ruby>成功<rt>せいこう</rt></ruby>です。<br>*(Live data: misfire 4 xy lanh đều 0. Mã lỗi: không có. Sửa thành công.)* |
| Tuấn | やった!<br>*(Tuyệt!)* |
| Phong | O2<ruby>下流<rt>かりゅう</rt></ruby>センサーも0.6〜0.8Vで<ruby>軽<rt>かる</rt></ruby>く<ruby>変動<rt>へんどう</rt></ruby>しています。<ruby>触媒<rt>しょくばい</rt></ruby>はまだ<ruby>機能<rt>きのう</rt></ruby>している<ruby>可能性<rt>かのうせい</rt></ruby>があります。<ruby>1<rt>いっ</rt></ruby><ruby>週間後<rt>しゅうかんご</rt></ruby>に<ruby>再点検<rt>さいてんけん</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Cảm biến O2 hạ nguồn cũng dao động nhẹ 0.6~0.8V. Có khả năng catalyst vẫn hoạt động. Em đề nghị tái kiểm tra sau 1 tuần.)* |
| Yamada | (đến) フォン、<ruby>結果<rt>けっか</rt></ruby>は?<br>*(Phong, kết quả?)* |
| Phong | <ruby>修理<rt>しゅうり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>失火<rt>しっか</rt></ruby><ruby>消失<rt>しょうしつ</rt></ruby>、<ruby>故障<rt>こしょう</rt></ruby>コードなし。P0420は1<ruby>週間<rt>しゅうかん</rt></ruby><ruby>様子<rt>ようす</rt></ruby><ruby>見<rt>み</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Đã sửa xong, misfire mất, không còn mã lỗi. P0420 đề nghị quan sát 1 tuần.)* |
| Yamada | <ruby>完璧<rt>かんぺき</rt></ruby>。トゥアンも<ruby>勉強<rt>べんきょう</rt></ruby>になったな?<br>*(Hoàn hảo. Tuấn cũng học được nhỉ?)* |
| Tuấn | はい!OBD2の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>と<ruby>仮説<rt>かせつ</rt></ruby><ruby>検証<rt>けんしょう</rt></ruby>の<ruby>方法<rt>ほうほう</rt></ruby>、よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng! Cách dùng OBD2 và phương pháp kiểm chứng giả thuyết, em hiểu rõ.)* |

---

## Tình huống 12 — 受付カウンター · 17:30, giao xe và giải thích cho khách

| Vai | Lời thoại |
|---|---|
| Suzuki | お<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Phiền anh.)* |
| Phong | <ruby>鈴木<rt>すずき</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>修理<rt>しゅうり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Anh Suzuki, để anh chờ. Báo cáo sửa xong.)* |
| Suzuki | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời.)* |
| Phong | こちらが<ruby>診断<rt>しんだん</rt></ruby>レポートです。<ruby>故障<rt>こしょう</rt></ruby>コードP0301・P0300・P0420が<ruby>検出<rt>けんしゅつ</rt></ruby>されました。<br>*(Đây là báo cáo chẩn đoán. Đã phát hiện mã lỗi P0301, P0300, P0420.)* |
| Phong | コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストで<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>イグニッションコイル<ruby>故障<rt>こしょう</rt></ruby>と<ruby>確定<rt>かくてい</rt></ruby>しました。<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>同時<rt>どうじ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>、スパークプラグも<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>同時<rt>どうじ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>いたしました。<br>*(Bằng test đổi mobin, đã xác định mobin xy lanh 1 hỏng. Thay đồng loạt 4 mobin, 4 bugi.)* |
| Phong | <ruby>修理後<rt>しゅうりご</rt></ruby>、<ruby>20<rt>にじゅっ</rt></ruby><ruby>分間<rt>ぷんかん</rt></ruby>の<ruby>走行<rt>そうこう</rt></ruby>テストで<ruby>失火<rt>しっか</rt></ruby>ゼロ、<ruby>故障<rt>こしょう</rt></ruby>コードなしを<ruby>確認<rt>かくにん</rt></ruby>済<ruby>済<rt>ず</rt></ruby>みです。<br>*(Sau sửa, 20 phút test đường, misfire bằng 0, không còn mã lỗi.)* |
| Suzuki | エンジン<ruby>警告<rt>けいこく</rt></ruby>灯は?<br>*(Đèn cảnh báo engine?)* |
| Phong | <ruby>消灯<rt>しょうとう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>済<ruby>済<rt>ず</rt></ruby>みです。<br>*(Đã xác nhận tắt.)* |
| Phong | P0420<ruby>触媒<rt>しょくばい</rt></ruby>は、<ruby>修理後<rt>しゅうりご</rt></ruby>のO2センサーデータが<ruby>軽<rt>かる</rt></ruby>く<ruby>変動<rt>へんどう</rt></ruby>しておりますので、<ruby>触媒<rt>しょくばい</rt></ruby>はまだ<ruby>機能<rt>きのう</rt></ruby>している<ruby>可能性<rt>かのうせい</rt></ruby>がございます。<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>使用<rt>しよう</rt></ruby>していただいてから、もう<ruby>一度<rt>いちど</rt></ruby><ruby>再点検<rt>さいてんけん</rt></ruby>させていただきたいです。<ruby>再点検<rt>さいてんけん</rt></ruby><ruby>料<rt>りょう</rt></ruby>は<ruby>無料<rt>むりょう</rt></ruby>です。<br>*(P0420 catalyst, sau sửa cảm biến O2 đã dao động nhẹ nên catalyst có thể vẫn hoạt động. Em xin được tái kiểm tra sau 1 tuần dùng. Phí tái kiểm tra miễn phí.)* |
| Suzuki | <ruby>無料<rt>むりょう</rt></ruby>?ありがとうございます。<br>*(Miễn phí? Cảm ơn anh.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>合計<rt>ごうけい</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>7500<rt>ななせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>明細<rt>めいさい</rt></ruby>はこちらです。<br>*(Tổng cộng hôm nay 47.500 yên. Bảng kê đây ạ.)* |
| Suzuki | フォンさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。ありがとう。<br>*(Phong-san, em giúp tôi quá. Cảm ơn.)* |
| Phong | こちらこそ、<ruby>本日<rt>ほんじつ</rt></ruby>はAnjoモータースをご<ruby>利用<rt>りよう</rt></ruby>いただきありがとうございました。お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りください。<br>*(Em mới phải cảm ơn. Hôm nay cảm ơn anh đã sử dụng Anjo Motors. Anh đi đường cẩn thận.)* |

---

## Tình huống 13 — Văn phòng 工場長 · 18:00, Sato khen Phong

| Vai | Lời thoại |
|---|---|
| Sato | フォンさん、<ruby>山田<rt>やまだ</rt></ruby>さんから<ruby>聞<rt>き</rt></ruby>きました。<ruby>本日<rt>ほんじつ</rt></ruby>のホンダフィットの<ruby>診断<rt>しんだん</rt></ruby>、よくやりましたね。<br>*(Phong-san, tôi nghe anh Yamada kể. Chẩn đoán Honda Fit hôm nay, làm tốt nhỉ.)* |
| Phong | ありがとうございます。<ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>のご<ruby>指導<rt>しどう</rt></ruby>のおかげです。<br>*(Cảm ơn anh. Là nhờ anh Yamada chỉ bảo.)* |
| Sato | コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストの<ruby>提案<rt>ていあん</rt></ruby>、<ruby>触媒<rt>しょくばい</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>様子<rt>ようす</rt></ruby><ruby>見<rt>み</rt></ruby>提案、お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>目線<rt>めせん</rt></ruby>ですごく<ruby>良<rt>よ</rt></ruby>かったです。<br>*(Đề xuất test đổi mobin, đề xuất xem catalyst 1 tuần, đứng góc nhìn khách rất tốt.)* |
| Phong | ありがとうございます。<br>*(Cảm ơn anh.)* |
| Sato | <ruby>来月<rt>らいげつ</rt></ruby>から、フォンさんに<ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やします。<ruby>承知<rt>しょうち</rt></ruby>してもらえますか?<br>*(Từ tháng sau tăng phụ trách chẩn đoán cho Phong. Em đồng ý không?)* |
| Phong | はい、ぜひお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>にもなります。<br>*(Vâng, em rất mong. Cũng là học cho 2級 検定.)* |
| Sato | <ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>も<ruby>受<rt>う</rt></ruby>けるんですか?<br>*(Em định thi cả 2 cấp?)* |
| Phong | はい、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Vâng, em muốn thi năm 3.)* |
| Sato | <ruby>応援<rt>おうえん</rt></ruby>します。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Tôi ủng hộ. Cố lên nhé.)* |
| Phong | ありがとうございます。<br>*(Cảm ơn anh.)* |

---

## Tình huống 14 — Ký túc xá bếp · 21:00, gọi điện Hải Phòng cho bố (Cảnh tiếng Việt)

> Cảnh tiếng Việt — Phong kể bố chuyện chẩn đoán xe Honda Fit thành công.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Bố ơi, hôm nay con xử lý 1 ca khó nè bố. |
| Bố Phong | (tiếng Việt) Sao con? Kể bố nghe. |
| Phong | (tiếng Việt) Có anh khách Suzuki mang xe Honda Fit đến, đèn engine bật, máy rung khi nổ tại chỗ. Con dùng máy chẩn đoán *OBD2* — On-Board Diagnostics, đọc ra 3 mã lỗi. |
| Bố Phong | (tiếng Việt) 3 mã liền hả? |
| Phong | (tiếng Việt) Vâng. P0301 là xy lanh số 1 đánh lửa hụt. P0300 là nhiều xy lanh hụt. P0420 là catalyst — bộ xúc tác khí thải — bị giảm hiệu suất. |
| Bố Phong | (tiếng Việt) Bố mới biết. Bên đó có máy đọc mã lỗi à? |
| Phong | (tiếng Việt) Có bố. Máy *Snap-on Solus*, đa hãng, đọc Toyota Honda Nissan tất. Con nhìn freeze frame data — như chụp ảnh khoảnh khắc lỗi — biết được xe rung khi nổ tại chỗ. Rồi xem live data — số lần misfire theo từng xy lanh, xy lanh 1 nhiều áp đảo. |
| Bố Phong | (tiếng Việt) Đỉnh thật con. Sau đó? |
| Phong | (tiếng Việt) Con với anh Yamada thảo luận 3 giả thuyết: bugi cũ, mobin hỏng, kim phun tắc. Sau đó con đề xuất *coil swap test* — đổi mobin xy lanh 1 và 3. Sau khi đổi, lỗi misfire chuyển sang xy lanh 3. Vậy là khẳng định mobin xy lanh 1 hỏng. |
| Bố Phong | (tiếng Việt) Logic ghê. Phương pháp loại trừ giả thuyết — đúng phong cách kỹ thuật cơ. |
| Phong | (tiếng Việt) Vâng. Con đề nghị thay luôn 4 mobin và 4 bugi cùng lúc. Riêng P0420 catalyst, con đề nghị khách dùng 1 tuần rồi tái kiểm tra miễn phí — vì thay catalyst tốn 80.000-100.000 yên, không muốn khách tốn vô ích. |
| Bố Phong | (tiếng Việt) Đứng góc nhìn khách hàng đó con. Bố làm ở cảng bao năm cũng vậy thôi — sửa cái gì cần sửa, đừng sửa cái không cần. |
| Phong | (tiếng Việt) Chiều trưởng xưởng Sato gọi con vào khen, bảo từ tháng sau con phụ trách chẩn đoán nhiều hơn. Còn nói ủng hộ con thi *2級整備士* năm sau nữa. |
| Bố Phong | (tiếng Việt) Trời, con bố thành chuyên gia chẩn đoán rồi đấy. 2級 là cao đấy con, cố lên. |
| Phong | (tiếng Việt) Vâng bố. Em Tuấn cũng học được nhiều hôm nay. Em ấy nhớ nguyên tắc đọc-ghi-xoá rồi. |
| Bố Phong | (tiếng Việt) Tốt. Hai anh em cùng tiến. Bố mẹ tự hào. |
| Phong | (tiếng Việt) Vâng bố. Con đi nghỉ đây. |

---

## Tình huống 15 — Bàn học · 22:00, ghi nhật ký lưu mã lỗi và mẫu câu

| Vai | Lời thoại |
|---|---|
| Phong | (đọc nhẩm khi viết) <ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>。<ruby>初<rt>はじ</rt></ruby>めての<ruby>本格<rt>ほんかく</rt></ruby><ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>。<ruby>修理<rt>しゅうり</rt></ruby><ruby>成功<rt>せいこう</rt></ruby>。<br>*(Tháng 7. Lần đầu phụ trách chẩn đoán nghiêm túc. Sửa thành công.)* |
| Phong | <ruby>故障<rt>こしょう</rt></ruby>コード<ruby>例<rt>れい</rt></ruby>:P0301=1<ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby><ruby>失火<rt>しっか</rt></ruby>、P0302=2<ruby>番<rt>ばん</rt></ruby>失火、P0300=ランダム失火、P0420=<ruby>触媒<rt>しょくばい</rt></ruby><ruby>劣化<rt>れっか</rt></ruby>、P0171=<ruby>燃料<rt>ねんりょう</rt></ruby>リーン、P0172=<ruby>燃料<rt>ねんりょう</rt></ruby>リッチ。<br>*(Ví dụ mã lỗi: P0301 xy lanh 1 misfire, P0302 xy lanh 2, P0300 random, P0420 catalyst suy giảm, P0171 nhiên liệu nghèo, P0172 nhiên liệu giàu.)* |
| Phong | OBD2の<ruby>4<rt>よん</rt></ruby><ruby>機能<rt>きのう</rt></ruby>:①DTC<ruby>読<rt>よ</rt></ruby>み<ruby>取<rt>と</rt></ruby>り ②フリーズフレーム ③ライブデータ ④<ruby>消去<rt>しょうきょ</rt></ruby>。<ruby>絶対<rt>ぜったい</rt></ruby>に「<ruby>読<rt>よ</rt></ruby>む→<ruby>記録<rt>きろく</rt></ruby>→<ruby>修理<rt>しゅうり</rt></ruby>→<ruby>消去<rt>しょうきょ</rt></ruby>→<ruby>再<rt>さい</rt></ruby>テスト」の<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<br>*(4 chức năng OBD2: 1 đọc DTC 2 freeze frame 3 live data 4 xoá. Tuyệt đối tuân thủ thứ tự "đọc → ghi → sửa → xoá → tái test".)* |
| Phong | <ruby>診断<rt>しんだん</rt></ruby><ruby>思考<rt>しこう</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>:<ruby>症状<rt>しょうじょう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>→コード<ruby>読<rt>よ</rt></ruby>み<ruby>取<rt>と</rt></ruby>り→<ruby>仮説<rt>かせつ</rt></ruby><ruby>3<rt>みっ</rt></ruby>つ→<ruby>検証<rt>けんしょう</rt></ruby>テスト。コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストが<ruby>有効<rt>ゆうこう</rt></ruby>。<br>*(4 bước tư duy chẩn đoán: xác nhận triệu chứng → đọc mã → 3 giả thuyết → kiểm chứng. Test đổi mobin hiệu quả.)* |
| Phong | <ruby>表現<rt>ひょうげん</rt></ruby>:<ruby>症状<rt>しょうじょう</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください・〜のような<ruby>症状<rt>しょうじょう</rt></ruby>はございましたか・<ruby>原因<rt>げんいん</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>いたしました・〜の<ruby>可能性<rt>かのうせい</rt></ruby>があります・〜を<ruby>推奨<rt>すいしょう</rt></ruby>いたします・<ruby>様子<rt>ようす</rt></ruby><ruby>見<rt>み</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Mẫu câu: xin kể triệu chứng, có triệu chứng ~ không, đã xác định nguyên nhân, có khả năng ~, em đề nghị ~, em đề nghị quan sát.)* |

---

## Đọng lại chương 4

Phong làm chủ máy chẩn đoán OBD2 và quy trình chẩn đoán lỗi 4 bước (症状確認 → コード読み取り → 仮説3つ → 検証テスト), học các mẫu câu năm 2 ngành ô tô đặc biệt chuyên sâu: **phỏng vấn khách về triệu chứng** (症状をお聞かせください・〜のような症状はございましたか・走行距離と前回の〜時期を教えていただけますか), **giải thích cách kết nối DLC cho kohai** (DLCコネクタはハンドルの下にあります・キーをONにします), **đọc mã DTC theo cấu trúc "Pxxxx: nghĩa+tác động"** (P0301は1番気筒の失火検出という意味です), **thảo luận giả thuyết với 整備士長** (〜が原因の可能性があります・コイル入れ替えテストを提案します・確かめ方は〜), **thông báo kết quả cho khách** (原因が判明いたしました・〜と確定しました・〜の可能性がございます・様子見を提案します), và **đứng góc nhìn khách hàng** (触媒交換は高額ですので・再点検料は無料です). Nắm 6 mã lỗi P0xxx điển hình (P0301, P0302, P0300, P0420, P0171, P0172), 4 chức năng OBD2, nguyên tắc tuyệt đối "đọc → ghi → sửa → xoá → tái test". Được 工場長 Sato khen và tăng phụ trách chẩn đoán từ tháng sau.

> Từ vựng & mẫu câu chương này: OBD2・スキャンツール・DLCコネクタ・故障コード・DTC・フリーズフレーム・ライブデータ・消去・P0301・P0300・P0420・失火・misfire・気筒・触媒・劣化・酸素センサー・O2上流・O2下流・スパークプラグ・イグニッションコイル・インジェクター・コイル入れ替えテスト・症状・判明・推奨・症状をお聞かせください・〜のような症状はございましたか・原因が判明いたしました・〜の可能性がございます・〜を推奨いたします・様子見を提案します・〜が原因の可能性があります

## Bí quyết chương

- OBD2 = chuẩn quốc tế đọc lỗi cho mọi xe từ 1996. Cổng DLC 16 chân nằm dưới vô lăng, chân ghế lái.
- 4 chức năng máy chẩn đoán BẮT BUỘC dùng theo thứ tự: ①DTC読み取り → ②フリーズフレーム → ③ライブデータ → ④消去. KHÔNG được xoá trước khi đọc + ghi.
- Cấu trúc mã DTC: chữ cái + 4 số. P=Powertrain, B=Body, C=Chassis, U=Network. Mã P03xx = misfire. P04xx = emission.
- Tư duy chẩn đoán 4 bước: ① 症状 (qua phỏng vấn khách) → ② DTC + freeze frame + live data → ③ ≥3 giả thuyết → ④ kiểm chứng bằng test (coil swap, plug swap, etc.).
- Khi phỏng vấn khách dùng câu mở `症状をお聞かせください` rồi đóng bằng câu cụ thể `〜のような症状はございましたか`. Đừng hỏi `わかりません?` kiểu thẩm vấn.
- Khi giải thích cho khách: cấu trúc 3 lớp: ① nguyên nhân kỹ thuật bằng câu đơn giản → ② hạng mục sửa + giá → ③ option/follow-up (vd: 様子見・再点検無料).
- Khi gặp lỗi P0420 catalyst đi kèm misfire, BAO GIỜ cũng sửa misfire trước → quan sát 1-2 tuần → mới quyết định thay catalyst. Tránh ép khách chi tiền không cần thiết.
- Sửa mobin/bugi nên thay theo BỘ (4 cái cùng lúc) chứ KHÔNG thay riêng cái hỏng — vì 3 cái còn lại có cùng tuổi thọ, sắp hỏng theo.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 症状 | しょうじょう | TRIỆU TRẠNG | Triệu chứng |
| 加速 | かそく | GIA TỐC | Tăng tốc |
| 振動 | しんどう | CHẤN ĐỘNG | Rung động |
| 点滅 | てんめつ | ĐIỂM MIỆT | Nhấp nháy |
| 点灯 | てんとう | ĐIỂM ĐĂNG | Sáng (đèn) |
| 走行距離 | そうこうきょり | TẨU HÀNH CỰ LY | Số km đi được |
| 履歴 | りれき | LÝ LỊCH | Lịch sử |
| 故障診断 | こしょうしんだん | CỐ CHƯỚNG CHẨN ĐOÁN | Chẩn đoán lỗi |
| 特定 | とくてい | ĐẶC ĐỊNH | Xác định, định danh |
| 判明 | はんめい | PHÁN MINH | Làm rõ, xác định |
| スキャンツール | — | — | Scan tool |
| OBD2 | — | — | OBD-II chuẩn chẩn đoán |
| 標準規格 | ひょうじゅんきかく | TIÊU CHUẨN QUY CÁCH | Tiêu chuẩn chung |
| DLCコネクタ | — | — | Đầu cắm DLC |
| 故障コード | こしょうコード | CỐ CHƯỚNG — | Mã lỗi DTC |
| フリーズフレーム | — | — | Freeze frame (ảnh chụp lỗi) |
| ライブデータ | — | — | Live data (dữ liệu động) |
| 消去 | しょうきょ | TIÊU KHỬ | Xoá |
| 記録 | きろく | KÝ LỤC | Ghi chép |
| 失火 | しっか | THẤT HỎA | Misfire (đánh lửa hụt) |
| 気筒 | きとう | KHÍ ỐNG | Xy lanh |
| 燃焼 | ねんしょう | NHIÊN THIÊU | Đốt cháy |
| 触媒 | しょくばい | XÚC MẠI | Chất xúc tác (catalyst) |
| 劣化 | れっか | LIỆT HOÁ | Suy giảm |
| 効率 | こうりつ | HIỆU SUẤT | Hiệu suất |
| 関連 | かんれん | QUAN LIÊN | Liên quan |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 関係 | かんけい | QUAN HỆ | Quan hệ |
| 瞬間 | しゅんかん | THUẤN GIAN | Khoảnh khắc |
| 状態 | じょうたい | TRẠNG THÁI | Trạng thái |
| 回転数 | かいてんすう | HỒI CHUYỂN SỐ | Vòng tua |
| 車速 | しゃそく | XA TỐC | Tốc độ xe |
| 水温 | すいおん | THUỶ ÔN | Nhiệt độ nước |
| スロットル | — | — | Bướm ga |
| 開度 | かいど | KHAI ĐỘ | Độ mở |
| 典型的 | てんけいてき | ĐIỂN HÌNH | Điển hình |
| 一致 | いっち | NHẤT TRÍ | Khớp nhau |
| 酸素センサー | さんそセンサー | TOAN TỐ — | Cảm biến oxy (O2 sensor) |
| 上流 | じょうりゅう | THƯỢNG LƯU | Thượng nguồn |
| 下流 | かりゅう | HẠ LƯU | Hạ nguồn |
| 変動 | へんどう | BIẾN ĐỘNG | Dao động |
| 固定 | こてい | CỐ ĐỊNH | Cố định |
| 裏付け | うらづけ | LÝ PHÓ | Bằng chứng phụ |
| 仮説 | かせつ | GIẢ THUYẾT | Giả thuyết |
| スパークプラグ | — | — | Bugi |
| イグニッションコイル | — | — | Mobin đánh lửa |
| インジェクター | — | — | Kim phun nhiên liệu |
| 詰まり | つまり | TRÁP | Tắc nghẽn |
| 否定 | ひてい | PHỦ ĐỊNH | Phủ định |
| 入れ替え | いれかえ | NHẬP THẾ | Đổi chỗ, hoán đổi |
| 論理的 | ろんりてき | LUẬN LÝ ĐÍCH | Logic, có lý lẽ |
| 確定 | かくてい | XÁC ĐỊNH | Xác định chắc chắn |
| 検証 | けんしょう | KIỂM CHỨNG | Kiểm chứng |
| 純正 | じゅんせい | THUẦN CHÍNH | Chính hãng |
| 型番 | かたばん | HÌNH PHIÊN | Số hiệu |
| トルクレンチ | — | — | Cờ lê lực |
| 電極 | でんきょく | ĐIỆN CỰC | Cực điện |
| 摩耗 | まもう | MA HAO | Mòn |
| 不良 | ふりょう | BẤT LƯƠNG | Kém, lỗi |
| 情報源 | じょうほうげん | THÔNG TIN NGUYÊN | Nguồn thông tin |
| 様子見 | ようすみ | DẠNG TỬ KIẾN | Quan sát thêm |
| 再点検 | さいてんけん | TÁI ĐIỂM KIỂM | Tái kiểm tra |
| 高額 | こうがく | CAO NGẠCH | Số tiền lớn |
| 工賃 | こうちん | CÔNG TRƯỚC | Tiền công thợ |
| 目線 | めせん | MỤC TUYẾN | Góc nhìn, ánh nhìn |
| 機能 | きのう | CƠ NĂNG | Chức năng |
| 検出 | けんしゅつ | KIỂM XUẤT | Phát hiện |
| 推奨 | すいしょう | THÔI KHUYẾN | Đề nghị, khuyến cáo |
| 応援 | おうえん | ỨNG VIỆN | Ủng hộ, cổ vũ |
