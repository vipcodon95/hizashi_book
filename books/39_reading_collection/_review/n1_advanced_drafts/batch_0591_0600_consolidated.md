# Consolidated fix list — batch_0591_0600 (N1_advanced cấp 9)

File: `books/reading_collection/n1_advanced_drafts/batch_0591_0600.json`

**Đặc điểm batch**: 16 placeholder stubs CRITICAL (process chưa fill), Hangul leak `당`, mojibake R_0600 toàn bộ tiếng Việt mất dấu, 4 N+ばこそ fab, Q2 cause = 1/10 (cần ≥5/10), 5 critical factual errors.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q2 cause-format = 1/10** (CRITICAL) — phải ≥5/10. Rewrite Q2 ≥4 bài: gợi ý R_0591 (sao Genji bias gender), R_0593 (sao Zeami yugen), R_0596 (sao Shinran 悪人正機), R_0598 (sao Maruyama 無責任体系).
- **Pattern overuse CATASTROPHIC**:
  - にあって 145 instances toàn batch (~14.5/bài, cap 4) → cắt ~70%
  - たる 136 instances (~13.6/bài) → cắt ~70%
  - Replace: において / の中で / の状況下で / である / である以上 / といえる
- **Length giveaway hệ thống** Q4/Q5 ≥6/10 bài ratio 1.5-3.16× → rút.
- **Process placeholder leak CRITICAL** 16 stubs:
  - R_0593 (Zeami): line 1007, 1013, 1025, 1031, 1037 (5 stubs)
  - R_0594 (Dazai): line 1441 (1 stub)
  - R_0596 (Shinran): line 2227, 2239, 2245, 2257 (4 stubs)
  - R_0600 (Basho): line 3800, 3806, 3848, 3854, 3866, 3872 (6 stubs)
  → REPLACE bằng nội dung thật hoặc xóa+adjust sentence_count.

### R_0591 (Genji Gender) 
- **Pattern overuse**: にあって ×6 (line 111, 129, 153, 195, 207); たる ×4 (光源氏たる者 line 219 với proper noun) → cắt.
- **Length giveaway** Q4 1.77×, Q5 1.91× → rút.
- **typo**: line 1454 `quê mờ` → `phai mờ`; line 1448 `mạnh` thừa.
- **女三宮 mislocate**: bài đặt 女三宮 cùng nhóm 周縁 (六条御息所/夕顔) — 女三宮 là 正妻 (chính thê), không thuộc loại marginal → review.

### R_0592 (Bushido Nitobe) — FACTUAL CRITICAL
- **Translation duplicate**: đoạn dịch về Nitobe Quaker descendant lặp 2 lần liên tiếp trong `translation` (bản gốc JP chỉ 1 lần) → xóa duplicate.
- **Anachronism CRITICAL**: text viết "Nitobe...「恥の文化」という概念...ベネディクトが...『菊と刀』...先駆け" — SAI. Nitobe 1900 thảo luận 名誉/恥 như đức mục võ sĩ, KHÔNG đề xuất "恥の文化 vs 罪の文化" classification. Khái niệm hoàn toàn của Benedict 1946. Soften: "Nitobe đã chú trọng 名誉 và 恥, một chủ đề mà sau này Benedict (1946) hệ thống hóa thành dichotomy" thay vì "tiền đề".

### R_0593 (Zeami) 
- **Process placeholder** 5 stubs (line 1007-1037) — fill nội dung thật.
- **Pattern overuse**: にあって ×5 (line 903, 927, 957, 975, 993, 1017) + collocation sai semantic:
  - `嫉妬にあって` line 903 (にあって + cảm xúc trừu tượng ngắn) → `嫉妬の中で`
  - `狂乱にあって` line 957 → `狂乱の中で`
  - `般若面にあっては` line 927 (にあって + vật thể) → `般也面においては`
- **Hanjo nhầm**: bài mô tả 班女 = "愛する男を待ち続けて狂気に至った女性" — Hanjo (Zeami) là courtesan 花子 chờ Yoshida no Shōshō, đỉnh điểm là 再会 chứ KHÔNG phải tự sát/biến rắn (đó là 道成寺). Review/sửa.
- **Tên Zeami**: 「世阿弥元清」 → đúng học thuật là 観世元清 hoặc `世阿弥（観世元清）`.

### R_0594 (Dazai 斜陽) — HANGUL LEAK CRITICAL
- **Hangul leak**: line 1143 Q1 distractor text_vi `Thừa nhận một mức độ妥당của` (당 = Hangul) → `mức độ thỏa đáng`.
- **Process placeholder** 1 stub (line 1441) — fill.
- **Length giveaway** Q4 1.77×, Q5 3.16× CRITICAL → rút mạnh đáp án Q5 (đang 3-clause synthesis).
- **Q4 paraphrase distance ngắn**: copy gần literal câu 19-20 (`現実の出来事が虚構の作品の意味に介入することで…` ↔ `作者の死が作品の意味に介入し…`) → paraphrase xa, đổi 介入 → 影響を及ぼす.
- **Translation**: 物の哀れ = "vật vô ai" → "vật ai" hoặc giữ romaji.

### R_0595 (Manyoshu/Kokin) — FACTUAL CRITICAL
- **Factual error**: text viết `九世紀に編まれた『古今和歌集』` — SAI. Kokinshu được Daigo Tennō 905 ra lệnh, hoàn tất 913-914 = `十世紀初頭`. Sửa: `十世紀初頭に編まれた` / dịch "đầu thế kỷ 10".
- **Length giveaway** Q4 2.88× CRITICAL → rút.

### R_0596 (Shinran Tannisho) — TRANSLATION CRITICAL
- **Mistranslation**: `愚禿親鸞` = "Ngẫu Độc Shinran" — SAI Hán-Việt. 愚=ngu, 禿=đốc → `Ngu Đốc Shinran` hoặc giữ Romaji `Gutoku Shinran`. Glossary giải "kẻ ngốc đầu trọc" mâu thuẫn với phiên âm.
- **Process placeholder** 4 stubs (line 2227, 2239, 2245, 2257) — fill.
- **Tannisho 公開時期**: bài viết "rộng rãi từ 江戸時代" — thực tế phổ biến từ 明治 (Kiyozawa Manshi). Edu thời còn hạn chế. Nuance.
- **Pattern stack**: line 2231 `思索者にして宗教改革者たる所以` (にして+たる stacking) → `思索者であり同時に宗教改革者である所以`.

### R_0597 (Tanizaki 細雪)
- **Fab grammar CRITICAL**: 
  - line 2547 `美しきものへの愛着ばこそ` (N+ばこそ direct) → `愛着があればこそ` / `愛着のゆえにこそ`
  - line 2661 `戦時における美の記録ばこそが` → `美を記録すればこそ` / `美の記録こそが`
- **Length giveaway** Q5 1.98× → rút (đang 3-clause synthesis).
- **Q4 paraphrase distance**: copy y nguyên 対抗言説/大文字の歴史/小文字の日常 câu 21 → paraphrase xa.
- **Distractor cluster** Q4 D `兵士たちの士気を高め戦争終結を早めた` (absurd extreme) → soft-tone.

### R_0598 (Maruyama 無責任の体系)
- **Self-confirmed overuse**: Q4 (line 2354-2378) explicit dạy "にあって được dùng nhiều lần" — tự thừa nhận overuse có ý đồ pedagogical, vẫn vi phạm cap. Bỏ Q4 này hoặc rewrite.
- **Translation typo**: `ran mất kiểm soát` → `vận hành mất kiểm soát` line ~ (R_0598).

### R_0599 (Moriyama Provoke)
- **Factual nuance**: bài viết `『プロヴォーク』は…多木浩二や中平卓馬、そして森山大道らが参加した雑誌` — Provoke (1968/11) sáng lập bởi 多木/中平/高梨豊/岡田隆彦 (4 người, KHÔNG có Moriyama). Moriyama tham gia từ số 2 (1969/3). Sửa: `同誌は多木浩二、中平卓馬らによって創刊され、第二号から森山大道が参加した`.
- **Pattern stack**: line 3425 `写真家たる者が...写し取るべきものを` — たる者 + ものを stacked, bookish.

### R_0600 (Basho) — TRANSLATION CRITICAL
- **Fab grammar CRITICAL**:
  - line 3768 `芭蕉ばこそ、…凝縮し得た` → `芭蕉だからこそ` / `芭蕉であればこそ`
  - line 3852 `芭蕉ばこそ、この矛盾…解決した` → same fix
- **Process placeholder** 6 stubs (line 3800, 3806, 3848, 3854, 3866, 3872) — fill.
- **Mojibake CRITICAL diacritic loss** toàn bộ translation từ line 3760: `thoi/tân huong/tâp/đăt/thâm sau/đôc lâp/đông/đôt/giưa/vĩnh cưu/tia gọt/phong kín/Nguyên Lôc/han/tao ra/sư thâp/giac ngô/ngôn ngư/chi ra/sự thâp/hoc/im lặng` → REWRITE toàn bộ với đầy đủ dấu Tiếng Việt.
- **Translation**: 元禄 = "Nguyên Lôc" → `Nguyên Lộc` / Genroku.

## P2 — SHOULD FIX (Major systemic)

- たる cap ≤4/bài toàn batch (cắt ~70%, giữ với role: 政治家たる者, 教師たる者, 国家たる者; bỏ với 詩人/作家/思索者/写真家 abstract proper).
- にあって ≤4/bài; bỏ にあって + cảm xúc/vật thể.
- にして lệch tính chất → 〜であり.
- Q5 đáp án ≤2 clause (≤60 chars JP), distractor cùng length range.
- Q4 paraphrase distance: synonym hóa keyword.
- Meta-grammar Q phân bố across grammar items, không tập trung vào たる.

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài (đặc biệt sau khi fill placeholder)
- [ ] R_0592: xóa đoạn dịch duplicate; soften Nitobe-Benedict anachronism
- [ ] R_0594: 妥당 → 妥đáng (Hangul leak)
- [ ] R_0595: 九世紀 → 十世紀初頭
- [ ] R_0596: 愚禿 = Ngu Đốc / Gutoku
- [ ] R_0599: Provoke founders (Moriyama từ số 2)
- [ ] R_0600: REWRITE translation diacritics + 元禄 → Nguyên Lộc
- [ ] 16 process placeholder stubs filled (R_0593/R_0594/R_0596/R_0600)
- [ ] N+ばこそ direct ×4 (R_0597 ×2, R_0600 ×2) → V仮定+ばこそ / N+であればこそ
- [ ] にあって ≤4/bài; bỏ にあって + 嫉妬/狂乱/般若面
- [ ] たる ≤4/bài
- [ ] Q2 cause ≥5/10
- [ ] Meta-grammar Q ≤1/5
- [ ] Q5 length ≤1.3× (R_0591/R_0594/R_0597 đặc biệt)
- [ ] Q4 paraphrase distance (R_0594/R_0597)
- [ ] Distractor extreme cluster ≤2/Q (R_0593_Q4, R_0597_Q4)
- [ ] No Hangul/TQ giản thể
- [ ] Translation field đủ dấu Tiếng Việt (R_0600)
