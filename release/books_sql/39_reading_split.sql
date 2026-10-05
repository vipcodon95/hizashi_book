-- Tách Reading Collection (sách 39) → 5 cuốn theo cấp JLPT
-- Sinh bởi split_reading_collection_by_level.py — KHÔNG sửa tay.
--
-- curricula 839900001..839900005 (giữ tiền tố 839 = định danh sách 39)
-- Native gộp vào N1. Node/passage/question GIỮ NGUYÊN id, chỉ đổi curriculum_id.

BEGIN;

-- 1) 5 curricula mới
INSERT INTO curricula (id, title, introduction, type, level, category, is_system, is_public, is_active, is_deleted, status, context, created_at) VALUES (839900001, 'Luyện đọc N5 — Nhập môn', 'Bộ 60 bài luyện đọc trình độ N5, mỗi bài có bản dịch, hướng dẫn đọc từng câu và câu hỏi trắc nghiệm.', 'book', 'N5', 'reading_collection', TRUE, TRUE, TRUE, FALSE, 'published', '{"book_seq": 39, "jlpt_level": "N5", "total_passages": 60, "passage_id_range": [839000001, 839000060], "title_jp": "読解 N5 — 入門", "split_from": 800000039}'::jsonb, now()) ON CONFLICT (id) DO UPDATE SET title=EXCLUDED.title, introduction=EXCLUDED.introduction, level=EXCLUDED.level, context=EXCLUDED.context, updated_at=now();
INSERT INTO curricula (id, title, introduction, type, level, category, is_system, is_public, is_active, is_deleted, status, context, created_at) VALUES (839900002, 'Luyện đọc N4 — Sơ cấp', 'Bộ 80 bài luyện đọc trình độ N4, mỗi bài có bản dịch, hướng dẫn đọc từng câu và câu hỏi trắc nghiệm.', 'book', 'N4', 'reading_collection', TRUE, TRUE, TRUE, FALSE, 'published', '{"book_seq": 39, "jlpt_level": "N4", "total_passages": 80, "passage_id_range": [839000061, 839000140], "title_jp": "読解 N4 — 初級", "split_from": 800000039}'::jsonb, now()) ON CONFLICT (id) DO UPDATE SET title=EXCLUDED.title, introduction=EXCLUDED.introduction, level=EXCLUDED.level, context=EXCLUDED.context, updated_at=now();
INSERT INTO curricula (id, title, introduction, type, level, category, is_system, is_public, is_active, is_deleted, status, context, created_at) VALUES (839900003, 'Luyện đọc N3 — Sơ trung cấp', 'Bộ 200 bài luyện đọc trình độ N3, mỗi bài có bản dịch, hướng dẫn đọc từng câu và câu hỏi trắc nghiệm.', 'book', 'N3', 'reading_collection', TRUE, TRUE, TRUE, FALSE, 'published', '{"book_seq": 39, "jlpt_level": "N3", "total_passages": 200, "passage_id_range": [839000141, 839000340], "title_jp": "読解 N3 — 初中級", "split_from": 800000039}'::jsonb, now()) ON CONFLICT (id) DO UPDATE SET title=EXCLUDED.title, introduction=EXCLUDED.introduction, level=EXCLUDED.level, context=EXCLUDED.context, updated_at=now();
INSERT INTO curricula (id, title, introduction, type, level, category, is_system, is_public, is_active, is_deleted, status, context, created_at) VALUES (839900004, 'Luyện đọc N2 — Trung cấp', 'Bộ 180 bài luyện đọc trình độ N2, mỗi bài có bản dịch, hướng dẫn đọc từng câu và câu hỏi trắc nghiệm.', 'book', 'N2', 'reading_collection', TRUE, TRUE, TRUE, FALSE, 'published', '{"book_seq": 39, "jlpt_level": "N2", "total_passages": 180, "passage_id_range": [839000341, 839000520], "title_jp": "読解 N2 — 中級", "split_from": 800000039}'::jsonb, now()) ON CONFLICT (id) DO UPDATE SET title=EXCLUDED.title, introduction=EXCLUDED.introduction, level=EXCLUDED.level, context=EXCLUDED.context, updated_at=now();
INSERT INTO curricula (id, title, introduction, type, level, category, is_system, is_public, is_active, is_deleted, status, context, created_at) VALUES (839900005, 'Luyện đọc N1 — Cao cấp & Native', 'Bộ 180 bài luyện đọc trình độ N1, mỗi bài có bản dịch, hướng dẫn đọc từng câu và câu hỏi trắc nghiệm.', 'book', 'N1', 'reading_collection', TRUE, TRUE, TRUE, FALSE, 'published', '{"book_seq": 39, "jlpt_level": "N1", "total_passages": 180, "passage_id_range": [839000521, 839000700], "title_jp": "読解 N1 — 上級・ネイティブ", "split_from": 800000039}'::jsonb, now()) ON CONFLICT (id) DO UPDATE SET title=EXCLUDED.title, introduction=EXCLUDED.introduction, level=EXCLUDED.level, context=EXCLUDED.context, updated_at=now();

-- 2) Trỏ node về cuốn tương ứng (id node KHÔNG đổi)
UPDATE curriculum_node SET curriculum_id = 839900001, updated_at = now() WHERE id BETWEEN 839000001 AND 839000060;  -- N5: 60 bài
UPDATE curriculum_node SET curriculum_id = 839900002, updated_at = now() WHERE id BETWEEN 839000061 AND 839000140;  -- N4: 80 bài
UPDATE curriculum_node SET curriculum_id = 839900003, updated_at = now() WHERE id BETWEEN 839000141 AND 839000340;  -- N3: 200 bài
UPDATE curriculum_node SET curriculum_id = 839900004, updated_at = now() WHERE id BETWEEN 839000341 AND 839000520;  -- N2: 180 bài
UPDATE curriculum_node SET curriculum_id = 839900005, updated_at = now() WHERE id BETWEEN 839000521 AND 839000700;  -- N1: 180 bài

-- 3) Đánh lại order_index trong từng cuốn (1..n) để hiển thị đúng thứ tự
UPDATE curriculum_node n SET order_index = s.rn FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) rn FROM curriculum_node WHERE curriculum_id = 839900001) s WHERE n.id = s.id;  -- N5
UPDATE curriculum_node n SET order_index = s.rn FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) rn FROM curriculum_node WHERE curriculum_id = 839900002) s WHERE n.id = s.id;  -- N4
UPDATE curriculum_node n SET order_index = s.rn FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) rn FROM curriculum_node WHERE curriculum_id = 839900003) s WHERE n.id = s.id;  -- N3
UPDATE curriculum_node n SET order_index = s.rn FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) rn FROM curriculum_node WHERE curriculum_id = 839900004) s WHERE n.id = s.id;  -- N2
UPDATE curriculum_node n SET order_index = s.rn FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) rn FROM curriculum_node WHERE curriculum_id = 839900005) s WHERE n.id = s.id;  -- N1

-- 4) Ẩn cuốn gộp cũ (KHÔNG xoá — giữ để tra cứu / hoàn nguyên)
UPDATE curricula SET is_active = FALSE, is_public = FALSE, status = 'archived', updated_at = now() WHERE id = 800000039;

COMMIT;
