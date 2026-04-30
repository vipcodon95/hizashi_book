# Sách 22 · T5. DB入門 — PostgreSQL + ER diagram + JOIN (DB入門)

> **Mục tiêu:** 7/2027. DB lecture deep: ER diagram + Normalization 1NF/2NF/3NF + JOIN (INNER/LEFT/RIGHT/FULL) + Transaction ACID + Index. Project nhỏ: SV info system 5 bảng.

## Bối cảnh

- Sensei Takahashi (continued T1)
- Project: school enrollment system (5 tables: students, courses, enrollments, professors, departments)

---

## Scene 1 — ER diagram · 9:00

| Speaker | Lời thoại |
|---|---|
| Takahashi | ER = Entity-Relationship。<ruby>陳<rt>チェン</rt></ruby>1976<ruby>年<rt>ねん</rt></ruby><ruby>提唱<rt>ていしょう</rt></ruby>。<br>*(Chen đề xuất năm 1976.)* |
| Takahashi | Entity =<ruby>箱<rt>はこ</rt></ruby>、Attribute =<ruby>楕円<rt>だえん</rt></ruby>、Relationship =<ruby>菱形<rt>ひしがた</rt></ruby>。<br>*(3 thành phần.)* |
| Đại | (whiteboard) <br>```<br>[Student] -- M:N -- [Course]<br>          |              |<br>      enrollment_id<br>```<br> |
| Takahashi | M:N →<ruby>中間<rt>ちゅうかん</rt></ruby>テーブル `enrollments`<ruby>必要<rt>ひつよう</rt></ruby>。<br>*(M:N cần bảng trung gian.)* |

---

## Scene 2 — Normalization · 11:00

| Speaker | Lời thoại |
|---|---|
| Takahashi | 1NF:<ruby>原子値<rt>げんしち</rt></ruby>のみ。セルに<ruby>配列<rt>はいれつ</rt></ruby><ruby>不可<rt>ふか</rt></ruby>。<br>*(1NF atomic, không cho mảng trong ô.)* |
| Takahashi | 2NF: 1NF +<ruby>部分<rt>ぶぶん</rt></ruby><ruby>関数<rt>かんすう</rt></ruby><ruby>従属<rt>じゅうぞく</rt></ruby><ruby>除去<rt>じょきょ</rt></ruby>。<br>*(2NF — loại bỏ phụ thuộc bộ phận.)* |
| Takahashi | 3NF: 2NF +<ruby>推移<rt>すいい</rt></ruby><ruby>従属<rt>じゅうぞく</rt></ruby><ruby>除去<rt>じょきょ</rt></ruby>。<br>*(3NF — loại bỏ phụ thuộc bắc cầu.)* |
| Takahashi | BCNF: 3NFの<ruby>厳格<rt>げんかく</rt></ruby><ruby>版<rt>ばん</rt></ruby>。<br>*(BCNF — bản nghiêm ngặt của 3NF.)* |
| Đại | (ví dụ XẤU) `students(id, name, course1, course2, course3)` ← vi phạm 1NF<br> |
| Đại | (TỐT) `students(id, name) + enrollments(student_id, course_id)`<br> |

---

## Scene 3 — JOIN types · 14:00

| Speaker | Lời thoại |
|---|---|
| Takahashi | INNER JOIN:<ruby>共通<rt>きょうつう</rt></ruby>レコードのみ。<br>*(Bản ghi chung.)* |
| Takahashi | LEFT JOIN:<ruby>左<rt>ひだり</rt></ruby><ruby>全件<rt>ぜんけん</rt></ruby> +<ruby>右<rt>みぎ</rt></ruby><ruby>一致<rt>いっち</rt></ruby><ruby>分<rt>ぶん</rt></ruby>。<br>*(Trái toàn bộ + phải khớp.)* |
| Đại | (SQL)<br>```sql<br>-- All enrolled students with course names<br>SELECT s.name, c.name AS course<br>FROM students s<br>INNER JOIN enrollments e ON s.id = e.student_id<br>INNER JOIN courses c ON e.course_id = c.id;<br><br>-- All students, even without enrollment<br>SELECT s.name, c.name AS course<br>FROM students s<br>LEFT JOIN enrollments e ON s.id = e.student_id<br>LEFT JOIN courses c ON e.course_id = c.id;<br>```<br> |
| Takahashi |<ruby>典型的<rt>てんけいてき</rt></ruby>な<ruby>面接<rt>めんせつ</rt></ruby><ruby>質問<rt>しつもん</rt></ruby>です！<br>*(Câu hỏi phỏng vấn điển hình!)* |

---

## Scene 4 — ACID + Transaction · 16:00

| Speaker | Lời thoại |
|---|---|
| Takahashi | ACID:<ruby>原子性<rt>げんしせい</rt></ruby>・<ruby>一貫性<rt>いっかんせい</rt></ruby>・<ruby>独立性<rt>どくりつせい</rt></ruby>・<ruby>永続性<rt>えいぞくせい</rt></ruby>。<br>*(ACID.)* |
| Đại | (SQL)<br>```sql<br>BEGIN;<br>UPDATE accounts SET balance = balance - 100 WHERE id = 1;<br>UPDATE accounts SET balance = balance + 100 WHERE id = 2;<br>COMMIT;<br>-- if fail anywhere → ROLLBACK<br>```<br> |
| Takahashi |<ruby>銀行<rt>ぎんこう</rt></ruby><ruby>振込<rt>ふりこみ</rt></ruby>が<ruby>典型例<rt>てんけいれい</rt></ruby>。Atomicityが<ruby>命<rt>いのち</rt></ruby>。<br>*(Chuyển khoản ngân hàng là ví dụ kinh điển — Atomicity cốt yếu.)* |

---

## Scene 5 — Index + EXPLAIN · 18:00

| Speaker | Lời thoại |
|---|---|
| Takahashi | EXPLAINでクエリを<ruby>分析<rt>ぶんせき</rt></ruby>します。<br>*(Phân tích truy vấn bằng EXPLAIN.)* |
| Đại | (SQL)<br>```sql<br>EXPLAIN ANALYZE<br>SELECT * FROM students WHERE email = 'dai@osaka-u.ac.jp';<br>-- Seq Scan ... 200ms<br><br>CREATE INDEX idx_students_email ON students(email);<br><br>EXPLAIN ANALYZE<br>SELECT * FROM students WHERE email = 'dai@osaka-u.ac.jp';<br>-- Index Scan ... 0.5ms<br>```<br> |
| Đại | (VN, nội tâm) Y chang lỗi index DB hồi Hack U lúc 2 giờ sáng!<br>*(Đối chiếu.)* |

---

## Scene 6 — Đêm + Mai N2 prep update

| Speaker | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi! Em đăng ký Yamato School lớp N2 từ tháng 9 rồi.<br>*(Mai chuẩn bị N2.)* |
| Đại | (VN) Giỏi quá em! Còn 3 tháng nữa thôi.<br>*(3 tháng.)* |
| Đại | (VN, nhật ký) 7/2027. Học sâu nhập môn DB: ER + 1-3NF + JOIN + ACID + EXPLAIN. Đồ án hệ thống đăng ký SV gồm 5 bảng.<br>*(DB.)* |
| Đại | (VN) Mai bắt đầu ôn N2 từ 9/2027. Anh sẽ hỗ trợ em.<br>*(Mai N2.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| ER diagram | イーアール ダイアグラム | Sơ đồ thực thể - quan hệ |
| Normalization | ノーマライゼーション | Chuẩn hoá 1NF/2NF/3NF/BCNF |
| 中間テーブル | ちゅうかんテーブル | Bảng trung gian M:N |
| INNER JOIN | インナージョイン | Bản ghi chung 2 bảng |
| LEFT JOIN | レフトジョイン | Trái toàn bộ + phải khớp |
| ACID | エーシッド | Nguyên tử / Nhất quán / Độc lập / Bền vững |
| Transaction | トランザクション | Giao dịch DB |
| ROLLBACK | ロールバック | Huỷ giao dịch |
| Index | インデックス | Chỉ mục DB |
| EXPLAIN | エクスプレイン | Phân tích truy vấn |
| Seq Scan | シーケンシャル スキャン | Quét toàn bảng |
| Index Scan | インデックス スキャン | Quét theo chỉ mục |

## Bí quyết chương

- **Nền tảng DB cho năm 2 và Hizashi sau này**: Người học CS sẽ dùng PostgreSQL hằng ngày khi đi làm.
- **Liên hệ Hack U**: Đại đã từng vấp lỗi index DB ở Hack U → giờ học bài bản.

> *"DB入門: ER + Norm + JOIN + ACID + Index. Mai N2 prep 9/2027."*
