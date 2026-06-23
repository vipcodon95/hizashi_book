# Sách sinh viên Đại học Osaka · T4. Toán nền — Đại số tuyến tính và Giải tích (数学基礎)

> **Mục tiêu nhân vật:** Đại 21 tuổi, giữa kỳ 1 (tháng 5/2026). Học các mẫu hội thoại tiếng Nhật của sinh viên ngành toán/CS: (1) đặt câu hỏi trong lớp 線形代数, (2) xin sensei giải thích lại định lý, (3) đề nghị kèm bạn (kèm Aiko), (4) hỏi nhờ giải bài, (5) xin sensei lời khuyên về tài liệu tham khảo, (6) báo bố mẹ điểm thi giữa kỳ qua video.

---

## Bối cảnh

Giữa tháng 5/2026, Đại đang trong tuần thi giữa kỳ 1. Lớp 線形代数 do Tajima-sensei dạy, 微積分 do Yoshida-sensei dạy — cả hai đều dùng tiếng Nhật học thuật khó (定理, 証明, 行列, 固有値). Đại có nền toán mạnh từ chuyên Tin Hà Nội nên top 5/80 (Đại số 92, Giải tích 88). Lin Wei top 1 (100). Aiko đuối (65/60), nhờ Đại kèm. Chương này tập trung **các mẫu câu đặt câu hỏi học thuật, nhờ giải thích lại, đề nghị kèm bạn, xin tài liệu tham khảo**.

---

## Tình huống 1 — Phòng A-201 · 9:00, lớp Đại số tuyến tính

*Tajima-sensei đứng trước bảng đen, vẽ ma trận 2×2.*

| Vai | Lời thoại |
|---|---|
| Tajima | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>行列<rt>ぎょうれつ</rt></ruby>の<ruby>固有値<rt>こゆうち</rt></ruby>と<ruby>固有<rt>こゆう</rt></ruby>ベクトルです。<ruby>定理<rt>ていり</rt></ruby>は det(A−λI)=0 です。<br>*(Hôm nay học trị riêng và vector riêng của ma trận. Định lý là det(A−λI)=0.)* |
| Tajima | A=[[1,2],[3,4]]の<ruby>場合<rt>ばあい</rt></ruby>、(1−λ)(4−λ)−6=0 を<ruby>解<rt>と</rt></ruby>くと、λ²−5λ−2=0 となります。<br>*(Với A=[[1,2],[3,4]] thì giải (1−λ)(4−λ)−6=0 thành λ²−5λ−2=0.)* |
| Đại | (tự tính nhẩm) λ = (5±√33)/2 ≈ 5.37 と −0.37 だね。<br>*(λ ≈ 5.37 và −0.37 nhé.)* |
| Aiko | (thì thầm với Đại) ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>暗算<rt>あんざん</rt></ruby>で<ruby>解<rt>と</rt></ruby>けるの?<br>*(Đại, cậu nhẩm ra được luôn á?)* |
| Đại | (thì thầm) <ruby>高校<rt>こうこう</rt></ruby>でやったから。Aikoは<ruby>2次<rt>にじ</rt></ruby><ruby>方程式<rt>ほうていしき</rt></ruby>の<ruby>公式<rt>こうしき</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えてる?<br>*(Cấp 3 tớ học rồi. Aiko nhớ công thức nghiệm phương trình bậc 2 không?)* |
| Aiko | x=(−b±√(b²−4ac))/2a ね?<br>*(x=(−b±√(b²−4ac))/2a chứ gì?)* |
| Đại | <ruby>正解<rt>せいかい</rt></ruby>!それを<ruby>使<rt>つか</rt></ruby>うだけ。<br>*(Đúng! Chỉ dùng cái đó thôi.)* |

---

## Tình huống 2 — Phòng A-201 · 9:30, Đại hỏi sensei về intuition

| Vai | Lời thoại |
|---|---|
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか?<br>*(Thưa thầy, em hỏi được không ạ?)* |
| Tajima | はい、どうぞ。<br>*(Em hỏi đi.)* |
| Đại | <ruby>計算<rt>けいさん</rt></ruby>はできますが、<ruby>固有値<rt>こゆうち</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>がイメージできません。<ruby>幾何学的<rt>きかがくてき</rt></ruby>にはどう<ruby>解釈<rt>かいしゃく</rt></ruby>すればいいですか?<br>*(Em tính được nhưng chưa hình dung nghĩa của trị riêng. Hiểu hình học thì sao ạ?)* |
| Tajima | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>行列<rt>ぎょうれつ</rt></ruby>は<ruby>空間<rt>くうかん</rt></ruby>の<ruby>変換<rt>へんかん</rt></ruby>を<ruby>表<rt>あらわ</rt></ruby>します。<ruby>固有<rt>こゆう</rt></ruby>ベクトルは、<ruby>変換後<rt>へんかんご</rt></ruby>も<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>変<rt>か</rt></ruby>わらないベクトルです。<ruby>固有値<rt>こゆうち</rt></ruby>はその<ruby>伸縮<rt>しんしゅく</rt></ruby><ruby>率<rt>りつ</rt></ruby>です。<br>*(Câu hỏi tuyệt vời. Ma trận biểu diễn phép biến đổi không gian. Vector riêng là vector không đổi hướng sau biến đổi. Trị riêng là tỉ lệ co giãn.)* |
| Đại | あ、なるほど!<ruby>主成分分析<rt>しゅせいぶんぶんせき</rt></ruby>でよく<ruby>使<rt>つか</rt></ruby>われるのはそのためですか?<br>*(À ra vậy! Vì thế PCA hay dùng đúng không ạ?)* |
| Tajima | その<ruby>通<rt>とお</rt></ruby>りです。グエン<ruby>君<rt>くん</rt></ruby>、よく<ruby>勉強<rt>べんきょう</rt></ruby>していますね。<br>*(Đúng vậy. Đại học hành chăm chỉ ghê.)* |

---

## Tình huống 3 — Hành lang · 10:50, Aiko cầu cứu kèm

| Vai | Lời thoại |
|---|---|
| Aiko | ダイ<ruby>君<rt>くん</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いがあるんだけど。<br>*(Đại ơi, mình có chuyện nhờ.)* |
| Đại | どうした?<br>*(Sao thế?)* |
| Aiko | <ruby>線形代数<rt>せんけいだいすう</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>分<rt>わ</rt></ruby>からない。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>中間<rt>ちゅうかん</rt></ruby>テストなのに...。<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>ってもらえる?<br>*(Đại số tuyến tính mình chịu thật. Tuần sau thi giữa kỳ rồi... Cậu kèm mình được không?)* |
| Đại | もちろん!<ruby>遠慮<rt>えんりょ</rt></ruby>しないで。いつがいい?<br>*(Tất nhiên! Đừng ngại. Khi nào tiện cho cậu?)* |
| Aiko | <ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>図書館<rt>としょかん</rt></ruby>でどう?<br>*(Chiều nay 4 giờ ở thư viện được không?)* |
| Đại | OK!でも<ruby>一<rt>ひと</rt></ruby>つ<ruby>条件<rt>じょうけん</rt></ruby>。<br>*(OK! Nhưng 1 điều kiện.)* |
| Aiko | え?<br>*(Hả?)* |
| Đại | Aikoは<ruby>UI<rt>ユーアイ</rt></ruby>/<ruby>UX<rt>ユーエックス</rt></ruby>の<ruby>感覚<rt>かんかく</rt></ruby>があるから、<ruby>視覚的<rt>しかくてき</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>するよ。<ruby>苦手<rt>にがて</rt></ruby><ruby>意識<rt>いしき</rt></ruby>を<ruby>捨<rt>す</rt></ruby>てて。<br>*(Aiko có gu UI/UX nên tớ giải thích bằng hình ảnh. Vứt cảm giác sợ toán đi nhé.)* |
| Aiko | はい、<ruby>頑張<rt>がんば</rt></ruby>る!<br>*(Vâng, tớ cố!)* |

---

## Tình huống 4 — Phòng B-105 · 11:00, lớp Giải tích Yoshida-sensei

| Vai | Lời thoại |
|---|---|
| Yoshida | <ruby>微分<rt>びぶん</rt></ruby>の<ruby>定義<rt>ていぎ</rt></ruby>は f'(x) = lim(h→0)[f(x+h)−f(x)]/h です。<br>*(Định nghĩa đạo hàm là f'(x) = lim(h→0)[f(x+h)−f(x)]/h.)* |
| Yoshida | <ruby>例<rt>れい</rt></ruby>として、f(x)=x² の<ruby>場合<rt>ばあい</rt></ruby>、f'(x)=2x になります。<ruby>証明<rt>しょうめい</rt></ruby>は<ruby>教科書<rt>きょうかしょ</rt></ruby><ruby>32<rt>さんじゅうに</rt></ruby>ページを<ruby>参照<rt>さんしょう</rt></ruby>してください。<br>*(Ví dụ với f(x)=x² thì f'(x)=2x. Chứng minh tham khảo trang 32 sách giáo khoa.)* |
| Yamato | (thì thầm với Đại) <ruby>俺<rt>おれ</rt></ruby>、<ruby>高校<rt>こうこう</rt></ruby>でやったの<ruby>覚<rt>おぼ</rt></ruby>えてるけど、<ruby>用語<rt>ようご</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>忘<rt>わす</rt></ruby>れた。「<ruby>微分<rt>びぶん</rt></ruby>」って<ruby>英語<rt>えいご</rt></ruby>で<ruby>何<rt>なん</rt></ruby>やっけ?<br>*(Cấp 3 tớ học rồi mà quên hết thuật ngữ. "微分" tiếng Anh là gì nhỉ?)* |
| Đại | (thì thầm) derivative。<ruby>積分<rt>せきぶん</rt></ruby>は integral。<br>*(Derivative. Tích phân là integral.)* |
| Yamato | あぁ、それなら<ruby>分<rt>わ</rt></ruby>かる!<br>*(À, vậy thì hiểu rồi!)* |
| Yoshida | <ruby>田中<rt>たなか</rt></ruby><ruby>君<rt>くん</rt></ruby>、グエン<ruby>君<rt>くん</rt></ruby>、<ruby>授業中<rt>じゅぎょうちゅう</rt></ruby>の<ruby>私語<rt>しご</rt></ruby>は<ruby>控<rt>ひか</rt></ruby>えてください。<br>*(Tanaka, Đại, không nói chuyện riêng trong giờ.)* |
| Yamato + Đại | すみません!<br>*(Em xin lỗi thầy!)* |

---

## Tình huống 5 — Sau giờ Giải tích · 12:30, hỏi sensei tài liệu tham khảo

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>吉田<rt>よしだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>授業<rt>じゅぎょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>は<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。<br>*(Thầy Yoshida, lúc nãy em xin lỗi ạ.)* |
| Yoshida | いえ、<ruby>気<rt>き</rt></ruby>にしないでください。<ruby>何<rt>なに</rt></ruby>か<ruby>用<rt>よう</rt></ruby>ですか?<br>*(Không sao, đừng để bụng. Em có việc gì?)* |
| Đại | <ruby>微積分<rt>びせきぶん</rt></ruby>をもっと<ruby>深<rt>ふか</rt></ruby>く<ruby>勉強<rt>べんきょう</rt></ruby>したいんですが、おすすめの<ruby>参考書<rt>さんこうしょ</rt></ruby>はありますか?<br>*(Em muốn học sâu hơn về giải tích, thầy có sách tham khảo nào khuyến nghị không ạ?)* |
| Yoshida | <ruby>初学者<rt>しょがくしゃ</rt></ruby>なら<ruby>杉浦<rt>すぎうら</rt></ruby><ruby>光夫<rt>みつお</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の『<ruby>解析<rt>かいせき</rt></ruby><ruby>入門<rt>にゅうもん</rt></ruby>』がいい。もう<ruby>少<rt>すこ</rt></ruby>し<ruby>進<rt>すす</rt></ruby>みたければ Stewart の『Calculus』を<ruby>英語<rt>えいご</rt></ruby>で。<br>*(Người mới nên đọc "Giải tích nhập môn" của thầy Sugiura Mitsuo. Tiến thêm thì đọc Stewart "Calculus" tiếng Anh.)* |
| Đại | <ruby>図書館<rt>としょかん</rt></ruby>にありますか?<br>*(Thư viện có không ạ?)* |
| Yoshida | <ruby>両方<rt>りょうほう</rt></ruby>あります。<ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>数学<rt>すうがく</rt></ruby>コーナー、<ruby>請求記号<rt>せいきゅうきごう</rt></ruby><ruby>413<rt>よんいちさん</rt></ruby>。<br>*(Cả hai đều có. Tầng 3 góc Toán, mã 413.)* |
| Đại | ありがとうございます!<ruby>放課後<rt>ほうかご</rt></ruby><ruby>借<rt>か</rt></ruby>りに<ruby>行<rt>い</rt></ruby>きます。<br>*(Em cảm ơn thầy! Chiều tan em ra mượn ạ.)* |

---

## Tình huống 6 — Thư viện tầng 3 · 16:00, kèm Aiko qua hình ảnh

*Đại trải giấy A3 trên bàn, vẽ hệ trục Oxy. Aiko mở Figma trên iPad.*

| Vai | Lời thoại |
|---|---|
| Đại | Aiko、<ruby>行列<rt>ぎょうれつ</rt></ruby>を「<ruby>図形<rt>ずけい</rt></ruby>の<ruby>変形<rt>へんけい</rt></ruby>ツール」と<ruby>思<rt>おも</rt></ruby>って。<br>*(Aiko, hình dung ma trận như "công cụ biến đổi hình".)* |
| Aiko | Figmaの transform みたいに?<br>*(Như transform của Figma á?)* |
| Đại | その<ruby>通<rt>とお</rt></ruby>り!<ruby>行列<rt>ぎょうれつ</rt></ruby> [[2,0],[0,3]] は<ruby>横<rt>よこ</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>倍<rt>ばい</rt></ruby>、<ruby>縦<rt>たて</rt></ruby>に<ruby>3<rt>さん</rt></ruby><ruby>倍<rt>ばい</rt></ruby>するスケール<ruby>変換<rt>へんかん</rt></ruby>。<br>*(Chuẩn! Ma trận [[2,0],[0,3]] là phép scale ngang 2 lần, dọc 3 lần.)* |
| Aiko | (mắt sáng) あ!じゃあ<ruby>固有<rt>こゆう</rt></ruby>ベクトルは「<ruby>変形<rt>へんけい</rt></ruby>しても<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>変<rt>か</rt></ruby>わらない<ruby>軸<rt>じく</rt></ruby>」だね?<br>*(À! Vậy vector riêng là "trục không đổi hướng khi biến đổi" đúng không?)* |
| Đại | <ruby>正解<rt>せいかい</rt></ruby>!Aikoは<ruby>視覚<rt>しかく</rt></ruby><ruby>派<rt>は</rt></ruby>だから、こう<ruby>覚<rt>おぼ</rt></ruby>えれば<ruby>計算<rt>けいさん</rt></ruby>もできる。<br>*(Đúng! Aiko thuộc tuýp thị giác, nhớ vậy thì tính được.)* |
| Aiko | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>分<rt>わ</rt></ruby>かりやすい!ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>先生<rt>せんせい</rt></ruby>より<ruby>説明<rt>せつめい</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>。<br>*(Dễ hiểu thật! Đại giảng còn dễ hơn thầy luôn.)* |
| Đại | (cười) <ruby>大袈裟<rt>おおげさ</rt></ruby>!<ruby>先生<rt>せんせい</rt></ruby>には<ruby>言<rt>い</rt></ruby>わないで。<br>*(Phóng đại quá! Đừng kể thầy nha.)* |

---

## Tình huống 7 — Thư viện · 17:00, Lin Wei khoe điểm và đề nghị kèm Aiko cuối tuần

| Vai | Lời thoại |
|---|---|
| Lin Wei | (đến bàn) みんな!<ruby>線形代数<rt>せんけいだいすう</rt></ruby>の<ruby>模試<rt>もし</rt></ruby><ruby>結果<rt>けっか</rt></ruby><ruby>出<rt>で</rt></ruby>たよ。<ruby>僕<rt>ぼく</rt></ruby><ruby>100<rt>ひゃく</rt></ruby><ruby>点<rt>てん</rt></ruby>!<br>*(Mọi người ơi! Có kết quả thi thử Đại số rồi. Tớ 100 điểm!)* |
| Yamato | (đứng dậy) マジ?トップやんけ!<ruby>俺<rt>おれ</rt></ruby><ruby>85<rt>はちじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>や。<br>*(Thật á? Top luôn! Tớ 85.)* |
| Đại | <ruby>僕<rt>ぼく</rt></ruby>は<ruby>92<rt>きゅうじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>位<rt>い</rt></ruby>だね。<br>*(Tớ 92. Hạng 2 nè.)* |
| Aiko | (cười khô) <ruby>私<rt>わたし</rt></ruby><ruby>65<rt>ろくじゅうご</rt></ruby>...。<br>*(Mình 65...)* |
| Lin Wei | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>!<ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しよう。<ruby>土曜日<rt>どようび</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby>、どう?<br>*(Không sao! Cuối tuần học chung. Sáng thứ Bảy được không?)* |
| Aiko | <ruby>本当<rt>ほんとう</rt></ruby>に?<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ないけど、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thật á? Ngại quá nhưng nhờ Lin nhé.)* |
| Lin Wei | <ruby>気<rt>き</rt></ruby>にしないで!<ruby>教<rt>おし</rt></ruby>えるのは<ruby>自分<rt>じぶん</rt></ruby>の<ruby>復習<rt>ふくしゅう</rt></ruby>にもなるから。<br>*(Đừng ngại! Dạy lại cũng là ôn cho tớ.)* |
| Đại | <ruby>僕<rt>ぼく</rt></ruby>も<ruby>参加<rt>さんか</rt></ruby>するよ。<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Tớ cũng tham gia. Ba đứa cùng cố nhé.)* |

---

## Tình huống 8 — Phòng 305 · 19:00, hỏi Yamato cách dùng NumPy

| Vai | Lời thoại |
|---|---|
| Đại | (gọi LINE Yamato) ヤマト、NumPyのlinalg.eigの<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby><ruby>分<rt>わ</rt></ruby>かる?<br>*(Yamato, biết cách dùng NumPy linalg.eig không?)* |
| Yamato | (voice call) おう、<ruby>簡単<rt>かんたん</rt></ruby>やで。<ruby>3<rt>さん</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>でできる。<br>*(Ờ, đơn giản. 3 dòng là xong.)* |
| Đại | (gõ theo)<br>```python<br>import numpy as np<br>A = np.array([[1, 2], [3, 4]])<br>eigenvalues, eigenvectors = np.linalg.eig(A)<br>print(eigenvalues)<br>```<br> |
| Đại | <ruby>結果<rt>けっか</rt></ruby>: `[-0.37 5.37]`。<ruby>手計算<rt>てけいさん</rt></ruby>と<ruby>一致<rt>いっち</rt></ruby>した!<br>*(Kết quả: [-0.37 5.37]. Khớp với tính tay!)* |
| Yamato | やろ?<ruby>手計算<rt>てけいさん</rt></ruby>は<ruby>意味<rt>いみ</rt></ruby><ruby>理解<rt>りかい</rt></ruby>のため、NumPyは<ruby>実務<rt>じつむ</rt></ruby>のためや。<br>*(Đúng không? Tính tay để hiểu nghĩa, NumPy để làm thực tế.)* |
| Đại | <ruby>納得<rt>なっとく</rt></ruby>。<ruby>授業<rt>じゅぎょう</rt></ruby>では<ruby>手計算<rt>てけいさん</rt></ruby>、ラボでは NumPy。<br>*(Hợp lý. Trên lớp tính tay, trong lab NumPy.)* |
| Yamato | せやで。SciPyも<ruby>覚<rt>おぼ</rt></ruby>えとき、<ruby>積分<rt>せきぶん</rt></ruby>とかも<ruby>1<rt>いち</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>や。<br>*(Đúng. Nhớ cả SciPy nữa, tích phân cũng 1 dòng.)* |

---

## Tình huống 9 — Cafe trường · thứ Bảy 11:00, học nhóm Đại + Lin Wei + Aiko

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English mix) OK、<ruby>今日<rt>きょう</rt></ruby>はAikoの<ruby>苦手<rt>にがて</rt></ruby>な<ruby>固有値<rt>こゆうち</rt></ruby><ruby>計算<rt>けいさん</rt></ruby>を<ruby>30<rt>さんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>解<rt>と</rt></ruby>こう。<br>*(OK, hôm nay giải 30 bài trị riêng — chỗ Aiko yếu.)* |
| Aiko | <ruby>30<rt>さんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>?<ruby>多<rt>おお</rt></ruby>いよ〜!<br>*(30 bài? Nhiều quá!)* |
| Đại | <ruby>多<rt>おお</rt></ruby>くないよ。<ruby>1<rt>いち</rt></ruby><ruby>問<rt>もん</rt></ruby>あたり<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>時間半<rt>じかんはん</rt></ruby>で<ruby>終<rt>お</rt></ruby>わる。<br>*(Không nhiều đâu. Mỗi bài 5 phút. 2 tiếng rưỡi xong.)* |
| Lin Wei | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>5<rt>ご</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に、<ruby>残<rt>のこ</rt></ruby>り<ruby>25<rt>にじゅうご</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>個別<rt>こべつ</rt></ruby>、<ruby>最後<rt>さいご</rt></ruby>に<ruby>答<rt>こた</rt></ruby>え<ruby>合<rt>あ</rt></ruby>わせ、いい?<br>*(5 bài đầu làm chung, 25 bài còn lại tự làm, cuối đối đáp án, được không?)* |
| Aiko | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>計画<rt>けいかく</rt></ruby>!<br>*(Kế hoạch tuyệt!)* |
| Đại | じゃあ<ruby>1<rt>いち</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>目<rt>め</rt></ruby>:A=[[2,1],[1,2]] の<ruby>固有値<rt>こゆうち</rt></ruby>を<ruby>求<rt>もと</rt></ruby>めてください。<br>*(Bài 1: tính trị riêng của A=[[2,1],[1,2]].)* |
| Aiko | (tính giấy) (2−λ)²−1=0 → λ²−4λ+3=0 → λ=1 と<ruby>3<rt>さん</rt></ruby>!<br>*(λ=1 và 3!)* |
| Lin Wei + Đại | <ruby>正解<rt>せいかい</rt></ruby>!<br>*(Đúng rồi!)* |
| Aiko | やった!<br>*(Hay quá!)* |

---

## Tình huống 10 — Phòng tự học · 16:00, Aiko cảm ơn

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>30<rt>さんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>終<rt>お</rt></ruby>わった。<ruby>正解率<rt>せいかいりつ</rt></ruby><ruby>26<rt>にじゅうろく</rt></ruby>/<ruby>30<rt>さんじゅう</rt></ruby>!<br>*(Xong 30 bài. Đúng 26/30!)* |
| Lin Wei | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>来週<rt>らいしゅう</rt></ruby>のテストは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。<br>*(Tuyệt! Tuần sau thi không lo.)* |
| Aiko | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>のおかげ。<ruby>今度<rt>こんど</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がお<ruby>礼<rt>れい</rt></ruby>に<ruby>何<rt>なに</rt></ruby>かしたい。<br>*(Thật sự nhờ hai cậu. Lần sau mình muốn trả lễ.)* |
| Đại | <ruby>気<rt>き</rt></ruby>にしないで。お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>だよ。<br>*(Đừng để bụng. Tương trợ nhau thôi.)* |
| Aiko | じゃあ、<ruby>来週<rt>らいしゅう</rt></ruby>テスト<ruby>終<rt>お</rt></ruby>わったら、<ruby>私<rt>わたし</rt></ruby>の<ruby>地元<rt>じもと</rt></ruby><ruby>京都<rt>きょうと</rt></ruby>に<ruby>日帰<rt>ひがえ</rt></ruby>り<ruby>旅行<rt>りょこう</rt></ruby><ruby>案内<rt>あんない</rt></ruby>するね。<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>とも<ruby>京都<rt>きょうと</rt></ruby>まだ<ruby>行<rt>い</rt></ruby>ってないでしょ?<br>*(Vậy tuần sau thi xong, mình dẫn hai cậu đi Kyoto một ngày nhé. Hai cậu chưa đi Kyoto đúng không?)* |
| Lin Wei + Đại | <ruby>行<rt>い</rt></ruby>く!<ruby>絶対<rt>ぜったい</rt></ruby><ruby>行<rt>い</rt></ruby>く!<br>*(Đi! Đi chắc luôn!)* |

---

## Tình huống 11 — Phòng 305 · thứ Hai 18:00, thi giữa kỳ xong, báo điểm sensei

*Sau bài thi 線形代数 trả điểm online. Đại lên gặp Tajima-sensei sau giờ.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>田島<rt>たじま</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>中間<rt>ちゅうかん</rt></ruby>テストの<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<ruby>94<rt>きゅうじゅうよん</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<br>*(Thầy Tajima, em có kết quả thi rồi. Em được 94.)* |
| Tajima | おお、よく<ruby>頑張<rt>がんば</rt></ruby>りましたね。<ruby>模試<rt>もし</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby>アップ。<br>*(Ồ, em cố gắng tốt đấy. Tăng 2 điểm so với thi thử.)* |
| Đại | <ruby>固有値<rt>こゆうち</rt></ruby>の<ruby>幾何学的<rt>きかがくてき</rt></ruby><ruby>意味<rt>いみ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらったおかげです。ありがとうございました。<br>*(Nhờ thầy giảng nghĩa hình học của trị riêng. Em cảm ơn ạ.)* |
| Tajima | グエン<ruby>君<rt>くん</rt></ruby>は<ruby>機械学習<rt>きかいがくしゅう</rt></ruby>に<ruby>興味<rt>きょうみ</rt></ruby>あるんですよね?<br>*(Đại quan tâm machine learning đúng không?)* |
| Đại | はい!<br>*(Vâng ạ!)* |
| Tajima | <ruby>線形代数<rt>せんけいだいすう</rt></ruby>はその<ruby>基礎<rt>きそ</rt></ruby>です。<ruby>固有値<rt>こゆうち</rt></ruby>、<ruby>特異値分解<rt>とくいちぶんかい</rt></ruby>、<ruby>主成分分析<rt>しゅせいぶんぶんせき</rt></ruby>—すべて<ruby>繋<rt>つな</rt></ruby>がっています。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Đại số tuyến tính là nền của nó. Trị riêng, SVD, PCA — đều liên kết. Cố lên nhé.)* |
| Đại | はい、<ruby>続<rt>つづ</rt></ruby>けて<ruby>勉強<rt>べんきょう</rt></ruby>します!<br>*(Vâng, em học tiếp ạ!)* |

---

## Tình huống 12 — Phòng 305 · 22:00, video call báo điểm bố mẹ + Mai

> Cảnh tiếng Việt — Đại bật video call ba chiều với Mai, bố và mẹ ở Hà Nội. Báo điểm giữa kỳ.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Cả nhà ơi! Con vừa có điểm giữa kỳ. Đại số tuyến tính 94, Giải tích 90. Top 3 của 80 đứa khoa CNTT. |
| Mẹ | (tiếng Việt) Trời ơi! Mẹ tự hào quá con. Học toán bằng tiếng Nhật mà vẫn dẫn đầu được, thật là... mẹ không biết nói gì nữa. |
| Bố | (tiếng Việt) Đúng là không uổng công ba năm chuyên Tin Hà Nội. Con nhớ cảm ơn các thầy cấp 3 nhé. |
| Đại | (tiếng Việt) Vâng bố. Mà bên đại học Nhật họ có thuật ngữ riêng — 固有値 là eigenvalue, 微分 là derivative — toàn từ kanji khó. Lúc thầy nói nhanh là con phải hỏi 「もう一度お願いします」 luôn. |
| Mai | (tiếng Việt) Em đang ôn thi cuối kỳ Sư phạm. Anh kèm em môn Toán cao cấp qua Zoom được không? |
| Đại | (tiếng Việt) Được chứ! Cuối tuần này anh kèm em. Em chuẩn bị danh sách bài khó gửi anh trước nhé. |
| Mẹ | (tiếng Việt) Hai đứa chuẩn bị cưới rồi mà vẫn học chung. Lý tưởng quá! |
| Đại | (tiếng Việt) À nói thêm, con kèm bạn Aiko môn Đại số. Bạn ấy gốc design UI/UX nên con dạy theo kiểu hình ảnh — giống công cụ transform của Figma. Bạn ấy hiểu liền. |
| Bố | (tiếng Việt) Hay! Truyền đạt cho người không cùng ngành mới là kiểm tra mình hiểu thật sự. Cố lên con! |
| Đại | (tiếng Việt) Vâng. Còn 8 tháng nữa thôi, Mai sang Nhật cưới. Cả nhà ngủ ngon nhé! |

---

## Đọng lại chương 4

Giữa tháng 5/2026 — Đại trải qua tuần thi giữa kỳ Toán nền. Cậu học **đặt câu hỏi học thuật trang trọng** 「<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか?」, **xin sensei giải thích sâu hơn** 「<ruby>幾何学的<rt>きかがくてき</rt></ruby>にはどう<ruby>解釈<rt>かいしゃく</rt></ruby>すればいいですか?」, **xin tài liệu tham khảo** 「おすすめの<ruby>参考書<rt>さんこうしょ</rt></ruby>はありますか?」, **đề nghị kèm bạn theo gu của bạn** (giải thích ma trận = Figma transform cho Aiko), **xin lỗi khi nói chuyện riêng trong giờ** 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした」 và **báo điểm/cảm ơn sensei** 「〜のおかげです、ありがとうございました」. Đại đứng top 3/80 (94 + 90), Lin Wei top 1, Aiko từ 65 lên 26/30 nhờ kèm. Tajima-sensei foreshadow đường ML: 線形代数 → SVD → PCA.

> Từ vựng & mẫu câu chương này: <ruby>線形代数<rt>せんけいだいすう</rt></ruby>・<ruby>微積分<rt>びせきぶん</rt></ruby>・<ruby>行列<rt>ぎょうれつ</rt></ruby>・<ruby>固有値<rt>こゆうち</rt></ruby>・<ruby>固有<rt>こゆう</rt></ruby>ベクトル・<ruby>微分<rt>びぶん</rt></ruby>・<ruby>積分<rt>せきぶん</rt></ruby>・<ruby>定理<rt>ていり</rt></ruby>・<ruby>証明<rt>しょうめい</rt></ruby>・<ruby>変換<rt>へんかん</rt></ruby>・<ruby>幾何学的<rt>きかがくてき</rt></ruby>・<ruby>参考書<rt>さんこうしょ</rt></ruby>・<ruby>請求記号<rt>せいきゅうきごう</rt></ruby>・<ruby>中間<rt>ちゅうかん</rt></ruby>テスト・<ruby>模試<rt>もし</rt></ruby>・<ruby>主成分分析<rt>しゅせいぶんぶんせき</rt></ruby>・NumPy・SciPy・<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか・〜のおかげです・<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした・お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>

## Bí quyết chương

- **「<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか?」** sang trọng hơn 「質問していい?」 — dùng với sensei. Câu trả lời thường là 「どうぞ」.
- **Hỏi intuition thay vì công thức**: 「<ruby>幾何学的<rt>きかがくてき</rt></ruby>にはどう<ruby>解釈<rt>かいしゃく</rt></ruby>すればいいですか?」 — sensei sẽ vui hơn câu hỏi tính toán đơn thuần.
- **「〜のおかげです」** là cách cảm ơn lịch sự khi báo kết quả tốt cho thầy/người giúp đỡ.
- **「お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>」** dùng khi từ chối lời cảm ơn quá đà của bạn — "tương trợ thôi mà".
- Kỹ thuật **kèm bạn theo gu**: Aiko design → ma trận = Figma transform. Tương tự sau này dạy Mai cấp 3 Toán cao cấp — adapt theo nền tảng người học.
- Khi thầy nhắc nhở nói chuyện riêng: nói ngay 「すみません!」 + cuối giờ lên xin lỗi lại 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした」 — văn hoá Nhật đánh giá cao việc xin lỗi đầy đủ.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 数学基礎 | すうがくきそ | SỐ HỌC CƠ SỞ | toán nền |
| 線形代数 | せんけいだいすう | TUYẾN HÌNH ĐẠI SỐ | đại số tuyến tính |
| 微積分 | びせきぶん | VI TÍCH PHÂN | giải tích |
| 行列 | ぎょうれつ | HÀNG LIỆT | ma trận |
| 固有値 | こゆうち | CỐ HỮU TRỊ | trị riêng |
| 定理 | ていり | ĐỊNH LÝ | định lý |
| 場合 | ばあい | TRƯỜNG HỢP | trường hợp |
| 暗算 | あんざん | ÁM TOÁN | tính nhẩm |
| 方程式 | ほうていしき | PHƯƠNG TRÌNH THỨC | phương trình |
| 公式 | こうしき | CÔNG THỨC | công thức |
| 計算 | けいさん | KẾ TOÁN | tính toán |
| 意味 | いみ | Ý VỊ | ý nghĩa |
| 幾何学的 | きかがくてき | KỶ HÀ HỌC ĐÍCH | hình học |
| 解釈 | かいしゃく | GIẢI THÍCH | diễn giải |
| 空間 | くうかん | KHÔNG GIAN | không gian |
| 変換 | へんかん | BIẾN HOÁN | phép biến đổi |
| 方向 | ほうこう | PHƯƠNG HƯỚNG | hướng |
| 伸縮率 | しんしゅくりつ | THÂN SÚC SUẤT | tỉ lệ co giãn |
| 主成分分析 | しゅせいぶんぶんせき | CHỦ THÀNH PHẦN PHÂN TÍCH | PCA |
| 中間 | ちゅうかん | TRUNG GIAN | giữa kỳ |
| 遠慮 | えんりょ | VIỄN LỰ | ngại |
| 視覚的 | しかくてき | THỊ GIÁC ĐÍCH | thị giác |
| 説明 | せつめい | THUYẾT MINH | giải thích |
| 苦手 | にがて | KHỔ THỦ | yếu, kém |
| 意識 | いしき | Ý THỨC | ý thức |
| 微分 | びぶん | VI PHÂN | đạo hàm |
| 定義 | ていぎ | ĐỊNH NGHĨA | định nghĩa |
| 証明 | しょうめい | CHỨNG MINH | chứng minh |
| 教科書 | きょうかしょ | GIÁO KHOA THƯ | sách giáo khoa |
| 参照 | さんしょう | THAM CHIẾU | tham khảo |
| 用語 | ようご | DỤNG NGỮ | thuật ngữ |
| 積分 | せきぶん | TÍCH PHÂN | tích phân |
| 私語 | しご | TƯ NGỮ | nói chuyện riêng |
| 申し訳 | もうしわけ | THÂN DỊCH | xin lỗi |
| 参考書 | さんこうしょ | THAM KHẢO THƯ | sách tham khảo |
| 初学者 | しょがくしゃ | SƠ HỌC GIẢ | người mới học |
| 解析 | かいせき | GIẢI TÍCH | giải tích |
| 請求記号 | せいきゅうきごう | THỈNH CẦU KÝ HIỆU | mã thư viện |
| 図形 | ずけい | ĐỒ HÌNH | hình |
| 変形 | へんけい | BIẾN HÌNH | biến hình |
| 軸 | じく | TRỤC | trục |
| 視覚派 | しかくは | THỊ GIÁC PHÁI | thuộc tuýp thị giác |
| 大袈裟 | おおげさ | ĐẠI KHẾ TA | phóng đại |
| 模試 | もし | MÔ THÍ | thi thử |
| 正解率 | せいかいりつ | CHÍNH GIẢI SUẤT | tỷ lệ đúng |
| 復習 | ふくしゅう | PHỤC TẬP | ôn tập |
| 案内 | あんない | ÁN NỘI | hướng dẫn |
| 手計算 | てけいさん | THỦ KẾ TOÁN | tính tay |
| 一致 | いっち | NHẤT TRÍ | trùng khớp |
| 実務 | じつむ | THỰC VỤ | thực tế |
| 納得 | なっとく | NẠP ĐẮC | hợp lý |
| 個別 | こべつ | CÁ BIỆT | riêng lẻ |
| 答え合わせ | こたえあわせ | ĐÁP HỢP | đối đáp án |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 結構 | けっこう | KẾT CẤU | tốt, ổn |
| 互い様 | おたがいさま | HỖ DẠNG | tương trợ |
| 地元 | じもと | ĐỊA NGUYÊN | quê |
| 日帰り | ひがえり | NHẬT QUY | đi về trong ngày |
| 特異値分解 | とくいちぶんかい | ĐẶC DỊ TRỊ PHÂN GIẢI | SVD |
