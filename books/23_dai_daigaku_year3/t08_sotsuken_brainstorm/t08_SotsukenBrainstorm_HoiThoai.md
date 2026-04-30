# Sách 23 · T8. 卒研テーマ brainstorm — Inoue 3 hướng (卒研テーマ)

> **Mục tiêu:** 10/2028. Đại trở lại lab. Inoue-sensei 1-1 — đề tài 卒研 (luận văn tốt nghiệp) hạn 1/12. Inoue gợi ý 3 hướng: NLP sửa lỗi, code generation cho lập trình viên Việt, hệ thống học ngôn ngữ. Đại đang cân nhắc.

---

## Scene 1 — Inoue 1on1 · 5/10/2028

| Speaker | Lời thoại |
|---|---|
| Inoue | グエンくん、Cybozuのインターンは<ruby>素晴<rt>すば</rt></ruby>らしかったですね。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>卒研<rt>そつけん</rt></ruby>テーマについて<ruby>議論<rt>ぎろん</rt></ruby>しましょう。<br>*(Đại, kỳ thực tập ở Cybozu vừa rồi rất xuất sắc đó. Hôm nay chúng ta thảo luận về đề tài 卒研 nhé.)* |
| Inoue | <ruby>3<rt>みっ</rt></ruby>つの<ruby>方向<rt>ほうこう</rt></ruby><ruby>性<rt>せい</rt></ruby>を<ruby>提示<rt>ていじ</rt></ruby>します：<br>*(Tôi đề xuất 3 hướng:)* |
| Inoue | <ruby>1<rt>いち</rt></ruby>：ベトナム<ruby>人<rt>じん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby><ruby>誤<rt>あやま</rt></ruby>り<ruby>検出<rt>けんしゅつ</rt></ruby>＋<ruby>修正<rt>しゅうせい</rt></ruby> (BERT fine-tune)<br>*(1: Phát hiện và sửa lỗi tiếng Nhật của người học Việt.)* |
| Inoue | <ruby>2<rt>に</rt></ruby>：<ruby>多言語<rt>たげんご</rt></ruby>コード<ruby>生成<rt>せいせい</rt></ruby> (ベトナム<ruby>人<rt>じん</rt></ruby>プログラマ<ruby>向<rt>む</rt></ruby>けLLM)<br>*(2: Sinh code đa ngôn ngữ cho lập trình viên Việt.)* |
| Inoue | <ruby>3<rt>さん</rt></ruby>：<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>言語学習<rt>げんごがくしゅう</rt></ruby>システム (RAG + AI tutor — Hizashi<ruby>的<rt>てき</rt></ruby>な<ruby>方向<rt>ほうこう</rt></ruby>)<br>*(3: Hệ thống học ngôn ngữ thích ứng.)* |
| Đại | (VN, nội tâm) Hướng 3 đúng chính xác là tầm nhìn Hizashi của mình.<br>*(Hướng 3.)* |

---

## Scene 2 — Đại weighing trade-offs

| Speaker | Lời thoại |
|---|---|
| Đại | <ruby>3<rt>みっ</rt></ruby>つとも<ruby>魅力的<rt>みりょくてき</rt></ruby>です。ただ、<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>が<ruby>個人的<rt>こじんてき</rt></ruby>に<ruby>関心<rt>かんしん</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>いです。<br>*(Cả 3 đều hấp dẫn ạ. Nhưng cá nhân em quan tâm đến hướng số 3 nhất.)* |
| Inoue | <ruby>奥<rt>おく</rt></ruby>さんが<ruby>動機<rt>どうき</rt></ruby>ですか？<br>*(Vợ em là động lực à?)* |
| Đại | はい！<ruby>妻<rt>つま</rt></ruby>のマイは<ruby>今<rt>いま</rt></ruby>N2の<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>市販<rt>しはん</rt></ruby>の<ruby>教材<rt>きょうざい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っていますが、<ruby>不便<rt>ふべん</rt></ruby>な<ruby>点<rt>てん</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて……。<br>*(Vâng ạ! Vợ em Mai đang ôn N2. Hằng ngày dùng giáo trình bán sẵn nhưng có nhiều điểm bất tiện ạ.)* |
| Inoue | <ruby>強<rt>つよ</rt></ruby>い<ruby>動機<rt>どうき</rt></ruby>はよい<ruby>研究<rt>けんきゅう</rt></ruby>につながりますよ。<ruby>来月<rt>らいげつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>までに<ruby>決定<rt>けってい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Có động lực mạnh thường dẫn đến nghiên cứu tốt. Hạn chốt là ngày 1 tháng sau nhé.)* |

---

## Scene 3 — Discuss với Yamada-senpai

| Speaker | Lời thoại |
|---|---|
| Yamada | <ruby>俺<rt>おれ</rt></ruby>の<ruby>修士<rt>しゅうし</rt></ruby>テーマがmultilingual NLPなんだよ。<ruby>君<rt>きみ</rt></ruby>の<ruby>方向<rt>ほうこう</rt></ruby>3だと<ruby>直接<rt>ちょくせつ</rt></ruby>コラボできるチャンスじゃん！<br>*(Đề tài Master của tớ đúng là multilingual NLP đấy. Hướng 3 của cậu thì collab trực tiếp được luôn!)* |
| Yamada | <ruby>俺<rt>おれ</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>はこう：VN-JPの<ruby>誤<rt>あやま</rt></ruby>り<ruby>検出<rt>けんしゅつ</rt></ruby> (<ruby>俺<rt>おれ</rt></ruby>がモデリング<ruby>担当<rt>たんとう</rt></ruby>) ＋<ruby>適応的<rt>てきおうてき</rt></ruby>システム＋AIチューター (グエンくんのHizashi)。<br>*(Tớ đề xuất kết hợp: phát hiện lỗi VN-JP do tớ làm phần modeling + hệ thống thích ứng + AI tutor là Hizashi của cậu.)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしいです！<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>具体案<rt>ぐたいあん</rt></ruby>をまとめて<ruby>提示<rt>ていじ</rt></ruby>します！<br>*(Tuyệt quá anh ơi! Tuần sau em sẽ tổng hợp đề xuất cụ thể trình lên!)* |

---

## Scene 4 — Mai tạm hoãn N2 + tình hình ôn lại

| Speaker | Lời thoại |
|---|---|
| Mai | (VN) Em xin lùi N2 sang kỳ thi 12/2028 anh nhé.<br>*(Lùi N2.)* |
| Đại | (VN) Em cố lên nha! Xong dự án ở lab anh sẽ xây app riêng cho em luôn.<br>*(App.)* |
| Mai | (VN) Anh đang nghĩ tới Hizashi đúng không?<br>*(Hizashi.)* |
| Đại | (VN) Đúng rồi em! 卒研 năm 4 sẽ chính là MVP của Hizashi.<br>*(MVP.)* |
| Mai | (VN) Vậy em sẽ là beta tester đầu tiên nhé!<br>*(Beta!)* |

---

## Scene 5 — Đêm reflect

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) 10/2028. Brainstorm 卒研. Inoue-sensei đưa 3 hướng.<br>*(3 hướng.)* |
| Đại | (VN) Mình chọn hướng 3 — hệ thống học ngôn ngữ thích ứng. Động lực chính là Mai.<br>*(Hướng 3.)* |
| Đại | (VN) Có cơ hội collab với Yamada-senpai (phần modeling multilingual NLP).<br>*(Collab.)* |
| Đại | (VN) Hạn quyết định 1/11. Tháng sau mình sẽ chốt rõ ràng.<br>*(Quyết định.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| 卒研 | そつけん | Graduation research |
| 卒論 | そつろん | Graduation thesis (paper) |
| 誤り検出 | あやまりけんしゅつ | Error detection |
| 修正 | しゅうせい | Correction |
| Code generation | コードジェネレーション | LLM tạo code |
| 適応的 | てきおうてき | Adaptive |
| 動機 | どうき | Motivation |
| Beta tester | ベータテスター | Beta tester |

## Bí quyết chương

- **3 lựa chọn brainstorm**: Inoue-sensei đưa ra lựa chọn có ý nghĩa.
- **Collab với Yamada**: Đặt nền multilingual NLP backend cho Hizashi.
- **Động lực Mai rõ ràng**: Động lực cá nhân được nói thẳng.

> *"Brainstorm 卒研 3 hướng. Đại nghiêng về hướng 3 (hệ thống học ngôn ngữ thích ứng = Hizashi). Cơ hội collab với Yamada. Mai = động lực cốt lõi."*
