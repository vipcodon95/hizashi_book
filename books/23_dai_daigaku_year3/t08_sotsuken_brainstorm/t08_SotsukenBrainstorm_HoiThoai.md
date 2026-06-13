# Sách sinh viên Đại học Osaka · T8. Brainstorm đề tài 卒研 với Inoue-sensei (卒研テーマ)

> **Mục tiêu nhân vật:** Đại 23 tuổi, năm 3 CS kỳ 2 bắt đầu, 10/2028. Học các mẫu hội thoại tiếng Nhật của sinh viên CS sắp lên 卒研: (1) keigo 1on1 với giáo sư hướng dẫn, (2) trình bày phân tích trade-off giữa các phương án, (3) nói thẳng về động lực cá nhân với sensei (奥さんが動機), (4) thảo luận collab với senpai master, (5) viết research proposal bằng tiếng Nhật học thuật, (6) cảm ơn sensei lịch sự sau buổi 議論.

---

## Bối cảnh

Tháng 10 năm 2028. Đại đã kết thúc intern Cybozu, trở lại Lab Inoue (AI Lab Đại học Osaka). Trong tay đang có 内定 Cybozu ¥6.7M/năm (hạn phản hồi 31/12). Bước tiếp theo là đề tài 卒研 (luận văn tốt nghiệp năm 4), Inoue-sensei mời 1on1 ngày 5/10. Hạn chốt đề tài là 1/12. Yamada-senpai (master năm 2, lab member) đang làm multilingual NLP. Chương này tập trung các mẫu câu keigo academic + business + thảo luận research direction.

---

## Tình huống 1 — Lab Inoue B210 · 5/10 13:30, Đại đến phòng sensei chào hỏi đầu kỳ

*Phòng Inoue-sensei, kệ sách đầy paper, whiteboard có sơ đồ Transformer. Đại gõ cửa.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します、グエンです。<ruby>13<rt>じゅうさん</rt></ruby><ruby>時半<rt>じはん</rt></ruby>からお<ruby>時間<rt>じかん</rt></ruby>をいただいておりました。<br>*(Em xin phép, em là Nguyễn. Em đã hẹn được thầy 13h30 ạ.)* |
| Inoue | はい、どうぞ。お<ruby>掛<rt>か</rt></ruby>けください。<ruby>夏休<rt>なつやす</rt></ruby>みお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, em vào đi. Mời em ngồi. Cảm ơn em đã vất vả qua kỳ nghỉ hè.)* |
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>いたします。ご<ruby>無沙汰<rt>ぶさた</rt></ruby>しております。<br>*(Em xin phép. Lâu rồi chưa hỏi thăm thầy ạ.)* |
| Inoue | Cybozuの<ruby>長期<rt>ちょうき</rt></ruby>インターンはどうでしたか?<br>*(Kỳ thực tập dài hạn ở Cybozu thế nào?)* |
| Đại | はい、<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>充実<rt>じゅうじつ</rt></ruby>した<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>でした。Kintoneドキュメントに<ruby>対<rt>たい</rt></ruby>するRAGシステムを<ruby>構築<rt>こうちく</rt></ruby>し、<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>として<ruby>承認<rt>しょうにん</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>きました。<br>*(Vâng, là 3 tháng vô cùng trọn vẹn ạ. Em đã xây hệ thống RAG cho tài liệu Kintone, được phê duyệt làm ứng viên triển khai production.)* |
| Inoue | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>は<ruby>卒研<rt>そつけん</rt></ruby>にも<ruby>必<rt>かなら</rt></ruby>ず<ruby>活<rt>い</rt></ruby>きます。<br>*(Tuyệt vời. Kinh nghiệm thực tế sẽ chắc chắn có ích cho 卒研.)* |

---

## Tình huống 2 — Lab Inoue B210 · 5/10 13:40, Inoue giới thiệu 3 hướng đề tài

*Inoue mở slide trên iPad cho Đại xem, 3 hướng được liệt kê rõ ràng.*

| Vai | Lời thoại |
|---|---|
| Inoue | では、<ruby>卒研<rt>そつけん</rt></ruby>テーマの<ruby>議論<rt>ぎろん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りましょう。グエンくんの<ruby>適性<rt>てきせい</rt></ruby>とCybozu<ruby>経験<rt>けいけん</rt></ruby>を<ruby>考慮<rt>こうりょ</rt></ruby>して、<ruby>3<rt>みっ</rt></ruby>つの<ruby>方向性<rt>ほうこうせい</rt></ruby>を<ruby>提示<rt>ていじ</rt></ruby>します。<br>*(Vậy ta vào thảo luận đề tài 卒研. Cân nhắc khả năng của em và kinh nghiệm Cybozu, thầy đề xuất 3 hướng.)* |
| Inoue | 1つ<ruby>目<rt>め</rt></ruby>、「ベトナム<ruby>人<rt>じん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby><ruby>誤<rt>あやま</rt></ruby>り<ruby>検出<rt>けんしゅつ</rt></ruby>と<ruby>修正<rt>しゅうせい</rt></ruby>」。BERT<ruby>系<rt>けい</rt></ruby>モデルをfine-tuneしてgrammatical error correction (GEC)を<ruby>解<rt>と</rt></ruby>くテーマです。<br>*(Một: "Phát hiện và sửa lỗi tiếng Nhật của người học Việt". Đề tài fine-tune model dòng BERT để giải bài toán GEC.)* |
| Inoue | 2つ<ruby>目<rt>め</rt></ruby>、「<ruby>多言語<rt>たげんご</rt></ruby>コード<ruby>生成<rt>せいせい</rt></ruby>:ベトナム<ruby>人<rt>じん</rt></ruby><ruby>開発者<rt>かいはつしゃ</rt></ruby><ruby>向<rt>む</rt></ruby>けLLM」。<ruby>母国語<rt>ぼこくご</rt></ruby>+<ruby>日本語<rt>にほんご</rt></ruby>のmixed<ruby>指示<rt>しじ</rt></ruby>からcodeを<ruby>生成<rt>せいせい</rt></ruby>するテーマ。<br>*(Hai: "Sinh code đa ngôn ngữ: LLM cho lập trình viên Việt". Đề tài sinh code từ chỉ thị mixed tiếng mẹ đẻ + tiếng Nhật.)* |
| Inoue | 3つ<ruby>目<rt>め</rt></ruby>、「<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システム」。RAG + AIチューターで<ruby>学習者<rt>がくしゅうしゃ</rt></ruby>のレベルに<ruby>動的<rt>どうてき</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせる<ruby>仕組<rt>しく</rt></ruby>みの<ruby>研究<rt>けんきゅう</rt></ruby>。<br>*(Ba: "Hệ thống học ngôn ngữ thích ứng". Nghiên cứu cơ chế RAG + AI tutor điều chỉnh động theo trình độ người học.)* |
| Inoue | どう<ruby>感<rt>かん</rt></ruby>じますか? <ruby>正直<rt>しょうじき</rt></ruby>な<ruby>感想<rt>かんそう</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください。<br>*(Em cảm thấy thế nào? Cho thầy nghe cảm tưởng thật của em.)* |

---

## Tình huống 3 — Lab Inoue B210 · 5/10 13:50, Đại phân tích trade-off 3 phương án

| Vai | Lời thoại |
|---|---|
| Đại | ありがとうございます。<ruby>3<rt>みっ</rt></ruby>つともそれぞれ<ruby>魅力<rt>みりょく</rt></ruby>がございます。trade-offを<ruby>整理<rt>せいり</rt></ruby>させていただいてもよろしいでしょうか?<br>*(Em cảm ơn thầy. Cả 3 đều có sức hấp dẫn riêng. Em xin phép phân tích trade-off được không ạ?)* |
| Inoue | ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em cứ làm.)* |
| Đại | 1つ<ruby>目<rt>め</rt></ruby>のGEC: <ruby>研究<rt>けんきゅう</rt></ruby>の<ruby>新規性<rt>しんきせい</rt></ruby>と<ruby>定量<rt>ていりょう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>のしやすさは<ruby>強<rt>つよ</rt></ruby>みですが、<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>動機<rt>どうき</rt></ruby>は<ruby>弱<rt>よわ</rt></ruby>めです。データセット<ruby>収集<rt>しゅうしゅう</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>そうです。<br>*(Hướng 1 GEC: điểm mạnh là tính mới về research và dễ đánh giá định lượng, nhưng động lực cá nhân của em yếu hơn. Thu thập dataset cũng khá khó.)* |
| Đại | 2つ<ruby>目<rt>め</rt></ruby>のコード<ruby>生成<rt>せいせい</rt></ruby>: <ruby>業務<rt>ぎょうむ</rt></ruby>と<ruby>近<rt>ちか</rt></ruby>く、Cybozuの<ruby>経験<rt>けいけん</rt></ruby>が<ruby>活<rt>い</rt></ruby>きます。ただ、GitHub Copilotなど<ruby>既存<rt>きそん</rt></ruby>サービスとの<ruby>差別化<rt>さべつか</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい<ruby>気<rt>き</rt></ruby>がします。<br>*(Hướng 2 sinh code: gần với công việc, kinh nghiệm Cybozu phát huy. Nhưng em cảm thấy khó differentiate với các service hiện có như GitHub Copilot.)* |
| Đại | 3つ<ruby>目<rt>め</rt></ruby>の<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>: <ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>動機<rt>どうき</rt></ruby>が<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>く、CybozuのRAG<ruby>技術<rt>ぎじゅつ</rt></ruby>がそのまま<ruby>使<rt>つか</rt></ruby>えます。ただ<ruby>評価<rt>ひょうか</rt></ruby><ruby>指標<rt>しひょう</rt></ruby>の<ruby>設計<rt>せっけい</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しいかもしれません。<br>*(Hướng 3 học ngôn ngữ thích ứng: động lực cá nhân rất mạnh, kỹ thuật RAG ở Cybozu áp dụng nguyên được. Nhưng thiết kế tiêu chí đánh giá có thể khó.)* |
| Đại | <ruby>結論<rt>けつろん</rt></ruby>として、3つ<ruby>目<rt>め</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>く<ruby>関心<rt>かんしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っております。<br>*(Kết luận, em đặc biệt quan tâm hướng 3 ạ.)* |
| Inoue | trade-offの<ruby>分析<rt>ぶんせき</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>ですね。<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>の<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>動機<rt>どうき</rt></ruby>とは<ruby>具体的<rt>ぐたいてき</rt></ruby>に?<br>*(Phân tích trade-off rõ ràng đấy. Động lực cá nhân với hướng 3, cụ thể là gì?)* |

---

## Tình huống 4 — Lab Inoue B210 · 5/10 14:00, Đại nói thẳng về Mai + Hizashi

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げてもよろしいでしょうか。<br>*(Em xin được nói thẳng được không ạ.)* |
| Inoue | もちろんです。<br>*(Tất nhiên.)* |
| Đại | <ruby>妻<rt>つま</rt></ruby>のマイが<ruby>現在<rt>げんざい</rt></ruby>N2の<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>市販<rt>しはん</rt></ruby>の<ruby>教材<rt>きょうざい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っていますが、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>に<ruby>特化<rt>とっか</rt></ruby>した<ruby>教材<rt>きょうざい</rt></ruby>が<ruby>少<rt>すく</rt></ruby>なく<ruby>苦労<rt>くろう</rt></ruby>しております。<br>*(Vợ em Mai hiện đang ôn N2. Hằng ngày dùng giáo trình bán sẵn nhưng vất vả vì ít giáo trình chuyên biệt cho người học Việt.)* |
| Đại | <ruby>例<rt>たと</rt></ruby>えば、ベトナム<ruby>人<rt>じん</rt></ruby>がよく<ruby>間違<rt>まちが</rt></ruby>える「<ruby>長音<rt>ちょうおん</rt></ruby>」(おとうさん/おとさん)や、<ruby>濁音<rt>だくおん</rt></ruby>と<ruby>清音<rt>せいおん</rt></ruby>の<ruby>区別<rt>くべつ</rt></ruby>(きん/ぎん)。<ruby>母国語<rt>ぼこくご</rt></ruby>の<ruby>影響<rt>えいきょう</rt></ruby>で<ruby>困<rt>こま</rt></ruby>る<ruby>箇所<rt>かしょ</rt></ruby>を<ruby>個別<rt>こべつ</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>するシステムがあれば<ruby>便利<rt>べんり</rt></ruby>だと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Ví dụ những chỗ người Việt hay nhầm: trường âm (おとうさん/おとさん), phân biệt thanh đục/thanh thanh (きん/ぎん). Em nghĩ nếu có hệ thống xử lý cá nhân hoá những điểm khó vì ảnh hưởng tiếng mẹ đẻ thì sẽ rất tiện.)* |
| Đại | また、<ruby>個人<rt>こじん</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>で「Hizashi」というプロジェクトを<ruby>進<rt>すす</rt></ruby>めておりまして、<ruby>卒研<rt>そつけん</rt></ruby>とリンクさせたいという<ruby>思<rt>おも</rt></ruby>いもございます。<br>*(Thêm nữa, em đang làm side project tên "Hizashi", em cũng có ý muốn link với 卒研 ạ.)* |
| Inoue | <ruby>奥<rt>おく</rt></ruby>さんが<ruby>動機<rt>どうき</rt></ruby>ですか? それは<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>動機<rt>どうき</rt></ruby>ですね。<ruby>強<rt>つよ</rt></ruby>い<ruby>動機<rt>どうき</rt></ruby>は<ruby>良<rt>よ</rt></ruby>い<ruby>研究<rt>けんきゅう</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ずつながります。<br>*(Vợ là động lực à? Đó là động lực tuyệt vời. Động lực mạnh chắc chắn dẫn đến nghiên cứu tốt.)* |
| Đại | ありがとうございます。お<ruby>恥<rt>は</rt></ruby>ずかしながら……。<br>*(Em cảm ơn thầy. Em hơi ngại quá ạ……)* |
| Inoue | <ruby>恥<rt>は</rt></ruby>ずかしくないですよ。<ruby>研究者<rt>けんきゅうしゃ</rt></ruby>の<ruby>多<rt>おお</rt></ruby>くは、<ruby>身近<rt>みぢか</rt></ruby>な<ruby>問題<rt>もんだい</rt></ruby>から<ruby>研究<rt>けんきゅう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。それが<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>研究<rt>けんきゅう</rt></ruby>です。<br>*(Không có gì phải ngại đâu. Phần lớn nhà nghiên cứu đều bắt đầu từ vấn đề thân thuộc. Đó mới là nghiên cứu thật.)* |

---

## Tình huống 5 — Lab Inoue B210 · 5/10 14:10, làm rõ scope 卒研 vs Hizashi

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>1<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>卒研<rt>そつけん</rt></ruby>は<ruby>学術<rt>がくじゅつ</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>であり、<ruby>商<rt>しょう</rt></ruby><ruby>用<rt>よう</rt></ruby>プロダクト<ruby>開発<rt>かいはつ</rt></ruby>ではないので、<ruby>明確<rt>めいかく</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>分<rt>わ</rt></ruby>けが<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Cho thầy xác nhận 1 điều. 卒研 là nghiên cứu học thuật, không phải phát triển sản phẩm thương mại, nên cần tách biệt rõ ràng.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しております。<br>*(Vâng, em hiểu ạ.)* |
| Inoue | <ruby>卒研<rt>そつけん</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>は「<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムにおける<ruby>新規<rt>しんき</rt></ruby><ruby>手法<rt>しゅほう</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>と<ruby>評価<rt>ひょうか</rt></ruby>」。プロダクト<ruby>化<rt>か</rt></ruby>(Hizashi)は<ruby>別途<rt>べっと</rt></ruby><ruby>個人<rt>こじん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Phạm vi 卒研: "Đề xuất và đánh giá phương pháp mới trong hệ thống học ngôn ngữ thích ứng". Việc sản phẩm hoá (Hizashi) là chuyện cá nhân riêng.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>研究<rt>けんきゅう</rt></ruby>の<ruby>貢献<rt>こうけん</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>になりますでしょうか?<br>*(Em đã rõ. Vậy đóng góp về mặt nghiên cứu sẽ là gì ạ?)* |
| Inoue | <ruby>2<rt>ふた</rt></ruby>つ<ruby>考<rt>かんが</rt></ruby>えられます。1つ<ruby>目<rt>め</rt></ruby>、ベトナム<ruby>人<rt>じん</rt></ruby>L2 Japaneseのerror patternをカテゴリ<ruby>化<rt>か</rt></ruby>したデータセットの<ruby>構築<rt>こうちく</rt></ruby>。<br>*(Có 2 điều có thể nghĩ tới. Một: xây dataset phân loại error pattern của người học tiếng Nhật L2 người Việt.)* |
| Inoue | 2つ<ruby>目<rt>め</rt></ruby>、<ruby>学習者<rt>がくしゅうしゃ</rt></ruby>の<ruby>誤<rt>あやま</rt></ruby>り<ruby>履歴<rt>りれき</rt></ruby>から<ruby>個別<rt>こべつ</rt></ruby>カリキュラムを<ruby>動的<rt>どうてき</rt></ruby>に<ruby>生成<rt>せいせい</rt></ruby>するRAGベースの<ruby>手法<rt>しゅほう</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>。<ruby>定量<rt>ていりょう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>はretention rateで<ruby>計<rt>はか</rt></ruby>れます。<br>*(Hai: đề xuất phương pháp dựa trên RAG để sinh động curriculum cá nhân từ lịch sử lỗi của người học. Đánh giá định lượng đo bằng retention rate.)* |
| Đại | <ruby>非常<rt>ひじょう</rt></ruby>に<ruby>明確<rt>めいかく</rt></ruby>です。ありがとうございます。<br>*(Rất rõ ràng ạ. Em cảm ơn thầy.)* |

---

## Tình huống 6 — Lab Inoue B210 · 5/10 14:20, hỏi lại về evaluation methodology

| Vai | Lời thoại |
|---|---|
| Đại | 1つ<ruby>不<rt>ふ</rt></ruby><ruby>明<rt>めい</rt></ruby><ruby>点<rt>てん</rt></ruby>がございます。retention rateというのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどのように<ruby>計測<rt>けいそく</rt></ruby>しますか?<br>*(Em có 1 điểm chưa rõ. Retention rate cụ thể đo thế nào ạ?)* |
| Inoue | <ruby>良<rt>よ</rt></ruby>い<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>2<rt>ふた</rt></ruby>つの<ruby>方法<rt>ほうほう</rt></ruby>があります。<br>*(Câu hỏi tốt. Có 2 cách.)* |
| Inoue | 1つ<ruby>目<rt>め</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>後<rt>ご</rt></ruby>のテストで、<ruby>学<rt>まな</rt></ruby>んだ<ruby>項目<rt>こうもく</rt></ruby>の<ruby>正答率<rt>せいとうりつ</rt></ruby>を<ruby>計測<rt>けいそく</rt></ruby>。<ruby>従来<rt>じゅうらい</rt></ruby><ruby>手法<rt>しゅほう</rt></ruby>とabベース<ruby>比較<rt>ひかく</rt></ruby>。<br>*(Một: đo tỉ lệ trả lời đúng các mục đã học sau 1 tuần kiểm tra. So sánh AB-base với phương pháp truyền thống.)* |
| Inoue | 2つ<ruby>目<rt>め</rt></ruby>、<ruby>長期<rt>ちょうき</rt></ruby>的にはspaced repetitionとの<ruby>比較<rt>ひかく</rt></ruby>。AnkiやSuperMemoのアルゴリズムがベースラインになります。<br>*(Hai: so sánh dài hạn với spaced repetition. Thuật toán của Anki hoặc SuperMemo sẽ là baseline.)* |
| Đại | なるほど。Ankiのアルゴリズムはご<ruby>存知<rt>ぞんじ</rt></ruby>でしょうか?<br>*(À hiểu rồi. Thầy biết thuật toán của Anki không ạ?)* |
| Inoue | はい、SM-2アルゴリズムですね。シンプルですが<ruby>強<rt>つよ</rt></ruby>いベースラインです。<ruby>後<rt>あと</rt></ruby>で<ruby>参考<rt>さんこう</rt></ruby><ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Ừ, thuật toán SM-2. Đơn giản nhưng là baseline mạnh. Lát thầy share paper tham khảo.)* |
| Đại | ありがとうございます。<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んで<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>初期<rt>しょき</rt></ruby><ruby>案<rt>あん</rt></ruby>をまとめてご<ruby>提示<rt>ていじ</rt></ruby>いたします。<br>*(Em cảm ơn. Em sẽ đọc paper và đến tuần sau trình thầy bản phác thảo đầu tiên ạ.)* |

---

## Tình huống 7 — Lab Inoue B210 · 5/10 14:30, Inoue đề cập timeline + deadline

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>最後<rt>さいご</rt></ruby>にスケジュールを<ruby>確認<rt>かくにん</rt></ruby>しましょう。<ruby>正式<rt>せいしき</rt></ruby>テーマ<ruby>登録<rt>とうろく</rt></ruby><ruby>締<rt>し</rt></ruby>め<ruby>切<rt>き</rt></ruby>りは<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>です。<br>*(Cuối cùng ta xác nhận lịch trình. Hạn chốt đăng ký đề tài chính thức là 1 tháng 12.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Em đã rõ ạ.)* |
| Inoue | <ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>初期<rt>しょき</rt></ruby><ruby>案<rt>あん</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までにproposalの<ruby>初稿<rt>しょこう</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>までにlab seminarで<ruby>発表<rt>はっぴょう</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>に<ruby>最終<rt>さいしゅう</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>。これでいかがでしょうか?<br>*(Tuần sau bản phác thảo, cuối tháng 10 bản nháp proposal, 15/11 thuyết trình lab seminar, cuối tháng 11 điều chỉnh cuối. Em thấy thế nào?)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>各<rt>かく</rt></ruby>マイルストーンを<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<ruby>不<rt>ふ</rt></ruby><ruby>明<rt>めい</rt></ruby><ruby>点<rt>てん</rt></ruby>が<ruby>出<rt>で</rt></ruby>たらSlackでご<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Em đã rõ. Em sẽ giữ đúng từng milestone. Có gì chưa rõ em xin được hỏi thầy qua Slack ạ.)* |
| Inoue | はい、いつでもどうぞ。それでは<ruby>本日<rt>ほんじつ</rt></ruby>はここまで。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>有意義<rt>ゆういぎ</rt></ruby>な<ruby>議論<rt>ぎろん</rt></ruby>でした。<br>*(Ừ, bất cứ lúc nào cũng được. Hôm nay đến đây thôi. Buổi thảo luận thật sự có ý nghĩa.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>貴重<rt>きちょう</rt></ruby>なお<ruby>時間<rt>じかん</rt></ruby>をいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。(đứng dậy, cúi 45 độ)<br>*(Hôm nay thầy đã dành cho em thời gian quý báu, em xin chân thành cảm ơn. Em xin phép ạ.)* |

---

## Tình huống 8 — Lab Inoue lounge · 5/10 15:00, Đại ngẫu gặp Yamada-senpai sau buổi 1on1

*Lounge nhỏ ở lab, có máy pha cà phê. Yamada (master 2, 24t) đang pha espresso.*

| Vai | Lời thoại |
|---|---|
| Yamada | おっ、グエンくん、<ruby>久<rt>ひさ</rt></ruby>しぶり! Cybozuどうだった?<br>*(Ồ, Đại, lâu rồi mới gặp! Cybozu thế nào?)* |
| Đại | お<ruby>疲<rt>つか</rt></ruby>れさまです、<ruby>山田<rt>やまだ</rt></ruby>さん。<ruby>充実<rt>じゅうじつ</rt></ruby>した<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>でした。<ruby>内定<rt>ないてい</rt></ruby>も<ruby>頂<rt>いただ</rt></ruby>きまして。<br>*(Chào anh Yamada. 3 tháng vừa rồi rất trọn vẹn. Em còn nhận được 内定 nữa.)* |
| Yamada | おお、すげー! <ruby>新卒<rt>しんそつ</rt></ruby><ruby>確約<rt>かくやく</rt></ruby>? おめでとう。Cybozu<ruby>行<rt>い</rt></ruby>くの?<br>*(Ồ, ngon đấy! Cam kết fresh à? Chúc mừng. Em đi Cybozu à?)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>、まだ<ruby>悩<rt>なや</rt></ruby>んでおります。<ruby>個人<rt>こじん</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>の「Hizashi」を<ruby>本格化<rt>ほんかくか</rt></ruby>させたい<ruby>気持<rt>きも</rt></ruby>ちも<ruby>強<rt>つよ</rt></ruby>くて。<br>*(Thật ra em vẫn đang băn khoăn. Em cũng muốn làm side project "Hizashi" thật nghiêm túc.)* |
| Yamada | Hizashi、<ruby>前<rt>まえ</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いてたな。ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリでしょ?<br>*(Hizashi, anh nghe lâu rồi. App học tiếng Nhật cho người Việt phải không?)* |
| Đại | はい。それで<ruby>卒研<rt>そつけん</rt></ruby>テーマも<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>して、<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムに<ruby>決<rt>き</rt></ruby>まりそうです。<br>*(Vâng. Nên em đã thảo luận đề tài 卒研 với thầy Inoue, có vẻ sẽ là hệ thống học ngôn ngữ thích ứng.)* |
| Yamada | ちょっと<ruby>待<rt>ま</rt></ruby>って、それ<ruby>俺<rt>おれ</rt></ruby>の<ruby>修士<rt>しゅうし</rt></ruby><ruby>テーマ<rt></rt></ruby>と<ruby>関連<rt>かんれん</rt></ruby>するじゃん! <ruby>俺<rt>おれ</rt></ruby>はmultilingual NLPで、L1-L2 transferのerror patternやってんの。<br>*(Khoan đã, cái đó liên quan đề tài master của anh đấy! Anh đang làm multilingual NLP, error pattern do L1-L2 transfer.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>ですか! <ruby>偶然<rt>ぐうぜん</rt></ruby>すぎますね。<br>*(Thật ạ! Trùng hợp quá đi.)* |

---

## Tình huống 9 — Lab Inoue lounge · 5/10 15:15, Yamada đề xuất collab cụ thể

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>提案<rt>ていあん</rt></ruby>していい?<br>*(Anh đề xuất cụ thể được không?)* |
| Đại | ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, anh nói đi ạ.)* |
| Yamada | <ruby>役割<rt>やくわり</rt></ruby><ruby>分担<rt>ぶんたん</rt></ruby>はこう。<ruby>俺<rt>おれ</rt></ruby>がVN-JP error detectionのモデリング<ruby>担当<rt>たんとう</rt></ruby>。<ruby>君<rt>きみ</rt></ruby>がerror履<ruby>歴<rt>れき</rt></ruby>を<ruby>使<rt>つか</rt></ruby>った<ruby>適応的<rt>てきおうてき</rt></ruby>カリキュラム<ruby>生成<rt>せいせい</rt></ruby>とAIチューター<ruby>担当<rt>たんとう</rt></ruby>。<br>*(Phân vai thế này. Anh phụ trách modeling error detection VN-JP. Em phụ trách sinh curriculum thích ứng từ lịch sử lỗi và AI tutor.)* |
| Yamada | <ruby>俺<rt>おれ</rt></ruby>のerror detection modelをAPIにして<ruby>君<rt>きみ</rt></ruby>のシステムから<ruby>呼<rt>よ</rt></ruby>べるようにすれば、<ruby>両方<rt>りょうほう</rt></ruby>の<ruby>研究<rt>けんきゅう</rt></ruby>に<ruby>貢献<rt>こうけん</rt></ruby>できる。<br>*(Anh wrap error detection model thành API, hệ thống của em gọi đến. Như vậy đóng góp cho cả 2 nghiên cứu.)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>提案<rt>ていあん</rt></ruby>です。ただ、<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>のご<ruby>承認<rt>しょうにん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>かと<ruby>思<rt>おも</rt></ruby>いますが、<ruby>進<rt>すす</rt></ruby>めてもよろしいでしょうか?<br>*(Đề xuất tuyệt vời. Nhưng em nghĩ cần xin phép thầy Inoue trước, em tiếp tục được không ạ?)* |
| Yamada | もちろん、<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>には<ruby>俺<rt>おれ</rt></ruby>から<ruby>話<rt>はな</rt></ruby>しておく。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>火曜<rt>かよう</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>でミーティングしようか。<br>*(Tất nhiên, để anh nói với thầy Inoue. Thứ 3 tuần sau, 3 người mình họp nhé.)* |
| Đại | はい、<ruby>是非<rt>ぜひ</rt></ruby>。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜<rt>かよう</rt></ruby>までに<ruby>役割<rt>やくわり</rt></ruby><ruby>分担<rt>ぶんたん</rt></ruby><ruby>案<rt>あん</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>してドキュメントにまとめます。<br>*(Vâng, rất sẵn lòng. Đến thứ 3 tuần sau em sẽ tổng hợp phân vai thành document.)* |
| Yamada | ナイス! <ruby>俺<rt>おれ</rt></ruby>もreview<ruby>側<rt>がわ</rt></ruby>で<ruby>協力<rt>きょうりょく</rt></ruby>するから。<br>*(OK ngon! Anh sẽ hỗ trợ ở phía review.)* |

---

## Tình huống 10 — Lab Inoue lounge · 5/10 15:30, hỏi Yamada về dataset Vietnamese-Japanese

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>1<rt>ひと</rt></ruby>つ<ruby>質問<rt>しつもん</rt></ruby>させてください。VN-JPのerror datasetはどうやって<ruby>作<rt>つく</rt></ruby>っていますか?<br>*(Anh Yamada, em xin hỏi 1 câu. Dataset error VN-JP anh xây thế nào ạ?)* |
| Yamada | いい<ruby>質問<rt>しつもん</rt></ruby>! データ<ruby>収集<rt>しゅうしゅう</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大変<rt>たいへん</rt></ruby>なところなんだ。<ruby>3<rt>みっ</rt></ruby>つのsourceを<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせてる。<br>*(Câu hỏi hay! Chính việc thu thập dữ liệu là phần khó nhất. Anh kết hợp 3 nguồn.)* |
| Yamada | 1: Lang-8とHiNativeのpublic comment(ベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby><ruby>投稿<rt>とうこう</rt></ruby>と<ruby>添削<rt>てんさく</rt></ruby>ペア)。2: <ruby>大阪<rt>おおさか</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>留学生<rt>りゅうがくせい</rt></ruby>センターから<ruby>許諾<rt>きょだく</rt></ruby><ruby>済<rt>ず</rt></ruby>みの<ruby>作文<rt>さくぶん</rt></ruby>データ。3: <ruby>自分<rt>じぶん</rt></ruby>で<ruby>合成<rt>ごうせい</rt></ruby>データをClaudeで<ruby>生成<rt>せいせい</rt></ruby>。<br>*(Một: comment public của Lang-8 và HiNative — cặp bài viết của người Việt + chỉnh sửa. Hai: dữ liệu bài viết của trung tâm sinh viên quốc tế ĐH Osaka đã có giấy phép. Ba: tự sinh synthetic data bằng Claude.)* |
| Đại | <ruby>合成<rt>ごうせい</rt></ruby>データはClaudeで?どんなプロンプトを<ruby>使<rt>つか</rt></ruby>いますか?<br>*(Synthetic data bằng Claude à? Anh dùng prompt thế nào?)* |
| Yamada | few-shotで「ベトナム<ruby>人<rt>じん</rt></ruby>がよく<ruby>間違<rt>まちが</rt></ruby>えるパターン」を5<ruby>例<rt>れい</rt></ruby>ぐらい<ruby>入<rt>い</rt></ruby>れて、「<ruby>類似<rt>るいじ</rt></ruby>のerror sentenceを20<ruby>個<rt>こ</rt></ruby><ruby>生成<rt>せいせい</rt></ruby>して」とする。<ruby>後<rt>あと</rt></ruby>で<ruby>人手<rt>てさぎょう</rt></ruby>でフィルタリング。<br>*(Few-shot 5 ví dụ "lỗi người Việt hay mắc", rồi yêu cầu "sinh 20 câu error tương tự". Sau đó lọc thủ công.)* |
| Đại | なるほど、Cybozuで<ruby>学<rt>まな</rt></ruby>んだprompt engineeringがそのまま<ruby>使<rt>つか</rt></ruby>えますね。<br>*(Hiểu rồi, prompt engineering em học ở Cybozu áp dụng nguyên được nhỉ.)* |
| Yamada | そうそう、<ruby>君<rt>きみ</rt></ruby>はその<ruby>分野<rt>ぶんや</rt></ruby><ruby>強<rt>つよ</rt></ruby>いから<ruby>頼<rt>たの</rt></ruby>もしい。<br>*(Đúng đúng, em mảng đó mạnh nên anh yên tâm.)* |

---

## Tình huống 11 — Toyonaka apartment · 5/10 20:00, Đại nhắn LINE Mai báo tiến độ + xin gợi ý beta tester

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mai, tiếng Việt) Em ơi! Hôm nay anh gặp thầy Inoue 1 tiếng. Chốt được hướng 卒研 rồi! |
| Mai | (LINE, tiếng Việt) Wow nhanh thế! Hướng gì hả anh? |
| Đại | (LINE, tiếng Việt) Hướng 3 — hệ thống học ngôn ngữ thích ứng. Đúng cái anh nói với em đó. |
| Mai | (LINE, tiếng Việt) Trời, vậy là 卒研 + Hizashi cùng một hướng luôn hả? |
| Đại | (LINE, tiếng Việt) Đúng. Mà thầy nói 卒研 và Hizashi phải tách biệt — 卒研 là academic, Hizashi là product. Em đừng nói lẫn lộn nhé. |
| Mai | (LINE, tiếng Việt) Hiểu rồi. Thế anh có collab với ai không? |
| Đại | (LINE, tiếng Việt) Có! Anh Yamada-senpai master năm 2 — đề tài của ảnh là VN-JP error detection. Ảnh wrap thành API, anh gọi từ hệ thống của anh. |
| Mai | (LINE, tiếng Việt) Hay quá! Vậy em làm gì được không? Em là beta tester đầu tiên mà. |
| Đại | (LINE, tiếng Việt) Em là cái nguồn động lực anh nói thẳng với thầy luôn rồi. Thầy nói "vợ là động lực — đó là động lực tuyệt vời". Em nổi tiếng với cả lab anh đó. |
| Mai | (LINE, tiếng Việt) Trời ơi! Em đỏ mặt rồi. Vậy bao giờ em được thử app? |
| Đại | (LINE, tiếng Việt) Cuối tháng 11 anh sẽ có proposal hoàn chỉnh. MVP đầu tiên Q1/2029. Em cố ôn N2 đến lúc đó nhé, anh sẽ dùng dữ liệu lỗi của em làm test case. |

---

## Tình huống 12 — Apartment Toyonaka · 6/10 21:30, Mai + thảo luận deadline cuối tháng 12 — cảnh tiếng Việt cuối chương

> Đại bế Hana 2 tháng đang ngủ trong địu. Mai đang cho Hana xem ảnh trên màn hình. Cả nhà 3 người video call.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Hana này, ba con hôm nay gặp thầy Inoue ở trường nè. Ba con nói thẳng "vợ em là động lực" nha. |
| Đại | (tiếng Việt) Cười... Đừng dạy con những chuyện như thế chứ. Mà em, anh đang nghĩ về deadline cuối tháng 12. |
| Mai | (tiếng Việt) Deadline 内定 phải không? Còn 2 tháng rưỡi nữa. |
| Đại | (tiếng Việt) Ừ. 31/12 phải trả lời Cybozu. Anh đang nghĩ cách để quyết. |
| Mai | (tiếng Việt) Anh có tiêu chí gì chưa? |
| Đại | (tiếng Việt) Anh có 3 tiêu chí. Một: cuối tháng 11 lab seminar — proposal 卒研 có được duyệt không. Hai: cuối tháng 12 MVP Hizashi sơ bộ — có ít nhất 5 beta tester người Việt thử và bảo "có giá trị". Ba: tài chính — tiền tiết kiệm có đủ 6 tháng nuôi gia đình mà không cần lương Cybozu không. |
| Mai | (tiếng Việt) Wow, anh nghĩ logic ghê. Vậy nếu cả 3 tiêu chí pass thì startup, không pass thì Cybozu? |
| Đại | (tiếng Việt) Ừ. Anh không muốn quyết bằng cảm xúc. Phải có dữ liệu thật. |
| Mai | (tiếng Việt) Em ủng hộ. Mà anh ơi, em nhắc anh điều này — dù chọn cái nào, em cũng đứng cùng anh. Cybozu thì mình ổn định, có Hana được chăm sóc tốt. Startup thì rủi ro nhưng vui hơn. |
| Đại | (tiếng Việt) Cảm ơn em. Mà em ạ, anh học được một cái hôm nay từ thầy Inoue. Thầy nói "phần lớn nhà nghiên cứu bắt đầu từ vấn đề thân thuộc — đó mới là nghiên cứu thật". Anh nghĩ vấn đề thân thuộc nhất của anh chính là em và Hana. |
| Mai | (tiếng Việt) Khóc thật. Đừng làm em khóc trước Hana chứ. |
| Đại | (tiếng Việt) Mai à, 14 tháng tới mình cùng đi qua nhé. Anh sẽ làm 卒研 + Hizashi MVP song song. Cuối tháng 12 mình quyết chung. |
| Mai | (tiếng Việt) Ừ. Đi nào! |

---

## Đọng lại chương 8

Đại quay lại Lab Inoue tháng 10/2028 với 内定 Cybozu trong tay. Buổi 1on1 với Inoue-sensei 1 tiếng đã chốt hướng 卒研 hướng 3 — **適応的言語学習システム** (hệ thống học ngôn ngữ thích ứng dựa trên RAG + AI tutor + retention rate). Học **keigo 1on1 với giáo sư** (「失礼します」, 「お時間をいただいておりました」, 「失礼いたします」 lúc về), **phân tích trade-off 3 phương án** với cấu trúc rõ ràng từng hướng (điểm mạnh + điểm yếu + lý do chọn), **nói thẳng động lực cá nhân** (「妻が現在N2の勉強中です」, 「お恥ずかしながら」), **hỏi lại về methodology** (「具体的にどのように計測しますか」), và **xác nhận timeline + cam kết milestone**. Bonus: gặp Yamada-senpai ở lounge, chốt collab cụ thể — Yamada modeling error detection VN-JP wrap thành API, Đại tích hợp vào hệ thống thích ứng. 3 tiêu chí ra quyết định cuối tháng 12: proposal pass + MVP có 5 beta tester người Việt + tài chính đủ 6 tháng.

> Từ vựng & mẫu câu chương này: 卒研・卒業研究・卒論・proposal・lab seminar・適応的言語学習システム・誤り検出・修正・RAG・AIチューター・retention rate・spaced repetition・SM-2アルゴリズム・error pattern・L1-L2 transfer・multilingual NLP・synthetic data・few-shot・お時間をいただいておりました・お恥ずかしながら・正直に申し上げてもよろしいでしょうか・trade-offを整理させていただいてもよろしいでしょうか・承知しております・各マイルストーンを必ず守ります・貴重なお時間をいただき誠にありがとうございました・失礼いたします

## Bí quyết chương

- **Vào phòng sensei phải đúng nghi thức**: 「失礼します」 + tên + nhắc giờ hẹn (「13時半からお時間をいただいておりました」). Sensei sẽ đánh giá cao sự chỉn chu.
- **Phân tích trade-off > nhận xét cảm tính**: Khi sensei đưa N phương án, đừng nói "em thích phương án X". Thay vào đó: trade-off matrix (điểm mạnh + điểm yếu) cho từng phương án, kết luận cuối cùng có căn cứ.
- **Nói thẳng động lực cá nhân là OK trong academic Nhật**: Inoue-sensei thật sự đánh giá cao 「奥さんが動機」. Người Nhật trọng động lực 動機 — đặc biệt động lực thân thuộc.
- **卒研 ≠ product development**: Khi đề tài 卒研 liên kết với side project commercial, phải tách rõ scope. Sensei cảnh báo "卒研 là academic research, sản phẩm hoá là chuyện cá nhân riêng".
- **Hỏi senpai về dataset là move khôn**: Bài toán research khó nhất thường là data collection. Yamada chia sẻ kinh nghiệm 3 nguồn (public web + university permission + synthetic by Claude) tiết kiệm tháng trời cho Đại.
- **Cam kết milestone bằng văn bản**: Sensei đưa ra timeline 4 mốc, Đại trả lời 「各マイルストーンを必ず守ります」 + đề xuất report qua Slack. Đó là chuẩn working agreement giữa student + advisor ở lab Nhật.
- **Cuối buổi luôn cảm ơn "貴重なお時間"**: Câu chốt 「貴重なお時間をいただき、誠にありがとうございました」 + cúi 45 độ. Đây là chuẩn etiquette kết thúc 1on1 với sensei.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 無沙汰 | ぶさた | VÔ SA THÁI | Lâu không gặp |
| 夏休み | なつやすみ | HẠ HƯU | Kỳ nghỉ hè |
| 充実 | じゅうじつ | SUNG THỰC | Trọn vẹn |
| 経験 | けいけん | KINH NGHIỆM | Kinh nghiệm |
| 活きる | いきる | HOẠT | Sống lại, có ích |
| 適性 | てきせい | THÍCH TÍNH | Năng khiếu |
| 考慮 | こうりょ | KHẢO LỰ | Cân nhắc |
| 提示 | ていじ | ĐỀ THỊ | Đề xuất |
| 解く | とく | GIẢI | Giải (bài toán) |
| 母国語 | ぼこくご | MẪU QUỐC NGỮ | Tiếng mẹ đẻ |
| 開発者 | かいはつしゃ | KHAI PHÁT GIẢ | Lập trình viên |
| 感想 | かんそう | CẢM TƯỞNG | Cảm tưởng |
| 整理 | せいり | CHỈNH LÝ | Sắp xếp |
| 新規性 | しんきせい | TÂN QUY TÍNH | Tính mới |
| 定量評価 | ていりょうひょうか | ĐỊNH LƯỢNG ĐÁNH GIÁ | Đánh giá định lượng |
| 収集 | しゅうしゅう | THU TẬP | Thu thập |
| 差別化 | さべつか | SAI BIỆT HOÁ | Differentiation |
| 指標 | しひょう | CHỈ TIÊU | Tiêu chí |
| 関心 | かんしん | QUAN TÂM | Sự quan tâm |
| 教材 | きょうざい | GIÁO TÀI | Giáo trình |
| 苦労 | くろう | KHỔ LAO | Vất vả |
| 長音 | ちょうおん | TRƯỜNG ÂM | Trường âm |
| 濁音 | だくおん | TRẦM ÂM | Thanh đục |
| 清音 | せいおん | THANH ÂM | Thanh trong |
| 区別 | くべつ | KHU BIỆT | Phân biệt |
| 箇所 | かしょ | CÁ SỞ | Chỗ, nơi |
| 便利 | べんり | TIỆN LỢI | Tiện lợi |
| 恥ずかしい | はずかしい | SỈ | Ngại, xấu hổ |
| 身近 | みぢか | THÂN CẬN | Thân thuộc |
| 本物 | ほんもの | BẢN VẬT | Thật, đích thực |
| 学術 | がくじゅつ | HỌC THUẬT | Học thuật |
| 商用 | しょうよう | THƯƠNG DỤNG | Thương mại |
| 切り分け | きりわけ | THIẾT PHÂN | Tách bạch |
| 新規 | しんき | TÂN QUY | Mới |
| 手法 | しゅほう | THỦ PHÁP | Phương pháp |
| 別途 | べっと | BIỆT ĐỒ | Riêng biệt |
| 履歴 | りれき | LÝ LỊCH | Lịch sử |
| カリキュラム | — | — | Curriculum |
| 不明点 | ふめいてん | BẤT MINH ĐIỂM | Điểm chưa rõ |
| 比較 | ひかく | TỶ GIẢO | So sánh |
| 参考 | さんこう | THAM KHẢO | Tham khảo |
| 初期案 | しょきあん | SƠ KỲ ÁN | Bản phác đầu |
| 締め切り | しめきり | ĐẾ THIẾT | Hạn chót |
| 初稿 | しょこう | SƠ CẢO | Bản nháp đầu |
| 最終調整 | さいしゅうちょうせい | TỐI CHUNG ĐIỀU CHỈNH | Điều chỉnh cuối |
| マイルストーン | — | — | Mốc |
| 守る | まもる | THỦ | Giữ, tuân |
| 有意義 | ゆういぎ | HỮU Ý NGHĨA | Có ý nghĩa |
| 貴重 | きちょう | QUÝ TRỌNG | Quý báu |
| 久しぶり | ひさしぶり | CỬU | Lâu rồi mới |
| 偶然 | ぐうぜん | NGẪU NHIÊN | Trùng hợp |
| 役割 | やくわり | DỊCH CÁT | Vai trò |
| 分担 | ぶんたん | PHÂN ĐẢM | Phân chia |
| 大歓迎 | だいかんげい | ĐẠI HOAN NGHÊNH | Hoan nghênh |
| 投稿 | とうこう | ĐẦU CẢO | Bài đăng |
| 添削 | てんさく | THIÊM SƯỚC | Chỉnh sửa |
| 留学生 | りゅうがくせい | LƯU HỌC SINH | Du học sinh |
| 許諾 | きょだく | HỨA NẶC | Cấp phép |
| 作文 | さくぶん | TÁC VĂN | Bài tập làm văn |
| 合成 | ごうせい | HỢP THÀNH | Tổng hợp |
| 類似 | るいじ | LOẠI TỰ | Tương tự |
| 頼もしい | たのもしい | LẠI | Đáng tin |
