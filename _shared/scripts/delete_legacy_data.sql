-- ==============================================================================
-- Xoá toàn bộ data legacy 8001-8016 (BJT + markdown_book sách 01-08)
-- Để reseed theo schema mới {namespace 8}{book_seq}{...}
--
-- Thứ tự: user refs → junction → content → entity → curriculum tree
-- Tất cả trong 1 transaction. Chạy trên cả LOCAL và PRODUCTION.
--
-- BACKUP TRƯỚC KHI CHẠY:
--   pg_dump --data-only \
--     --table=curricula --table=curriculum_node --table=curriculum_node_content \
--     --table=study_courses --table=study_modules --table=study_course_modules \
--     --table=study_question_sets --table=study_question_set_questions \
--     --table=study_resource_question_sets --table=study_module_contents \
--     --table=reading_passages --table=questions --table=questions_answers \
--     --table=resource_media --table=user_bookshelf --table=user_notes \
--     hizashi_db > /tmp/hizashi_backup_$(date +%Y%m%d_%H%M%S).sql
-- ==============================================================================

BEGIN;

-- ============================================================
-- Verify TRƯỚC khi xoá — show counts
-- ============================================================
SELECT '=== BEFORE DELETE ===' AS info;

SELECT 'curricula 8001-8016' AS tbl, COUNT(*) AS n FROM curricula WHERE id BETWEEN 8001 AND 8016
UNION ALL SELECT 'curriculum_node 8XXX', COUNT(*) FROM curriculum_node WHERE curriculum_id BETWEEN 8001 AND 8016
UNION ALL SELECT 'study_courses 8010-8011', COUNT(*) FROM study_courses WHERE id IN (8010,8011)
UNION ALL SELECT 'study_modules 8012-8015', COUNT(*) FROM study_modules WHERE id BETWEEN 8012 AND 8015
UNION ALL SELECT 'study_question_sets BJT', COUNT(*) FROM study_question_sets WHERE id BETWEEN 80100000 AND 80109999
UNION ALL SELECT 'questions BJT', COUNT(*) FROM questions WHERE id BETWEEN 80000000 AND 87999999
UNION ALL SELECT 'questions_answers BJT', COUNT(*) FROM questions_answers WHERE question_id BETWEEN 80000000 AND 87999999
UNION ALL SELECT 'reading_passages BJT', COUNT(*) FROM reading_passages WHERE id BETWEEN 8010001 AND 8019999
UNION ALL SELECT 'user_bookshelf REF', COUNT(*) FROM user_bookshelf WHERE curriculum_id BETWEEN 8001 AND 8016
UNION ALL SELECT 'user_notes REF', COUNT(*) FROM user_notes WHERE content_id::text ~ '^80(0[1-9]|1[0-6])([0-9]+)?$';

-- ============================================================
-- Layer 0: User data refs (xoá TRƯỚC entity)
-- ============================================================

DELETE FROM user_bookshelf
  WHERE curriculum_id BETWEEN 8001 AND 8016;

DELETE FROM user_notes
  WHERE content_id::text ~ '^80(0[1-9]|1[0-6])([0-9]+)?$';

DELETE FROM user_bookmarks
  WHERE content_id::text ~ '^80(0[1-9]|1[0-6])([0-9]+)?$';

DELETE FROM user_questions
  WHERE question_id BETWEEN 80000000 AND 87999999;

DELETE FROM user_practice_sessions
  WHERE question_set_id BETWEEN 80100000 AND 80109999;

DELETE FROM answer_history
  WHERE question_id BETWEEN 80000000 AND 87999999
     OR question_set_id BETWEEN 80100000 AND 80109999;

DELETE FROM study_question_set_progress
  WHERE question_set_id BETWEEN 80100000 AND 80109999;

DELETE FROM study_course_progress
  WHERE course_id IN (8010, 8011);

DELETE FROM study_module_progress
  WHERE module_id BETWEEN 8012 AND 8015;

DELETE FROM study_user_progress
  WHERE question_id BETWEEN 80000000 AND 87999999;

DELETE FROM ratings
  WHERE (content_type IN ('curriculum','course','module')
         AND content_id::int BETWEEN 8001 AND 8016)
     OR (content_type='reading_passage'
         AND content_id::text ~ '^80100[0-9]+$');

-- ============================================================
-- Layer 1: Junction tables
-- ============================================================

DELETE FROM resource_media
  WHERE (resource_type='module' AND resource_id::int BETWEEN 8012 AND 8015)
     OR (resource_type='course' AND resource_id::int IN (8010, 8011))
     OR (resource_type='curriculum' AND resource_id::int BETWEEN 8001 AND 8016)
     OR (resource_type='question' AND resource_id::int BETWEEN 80000000 AND 87999999);

DELETE FROM study_resource_question_sets
  WHERE (resource_type='module' AND resource_id::int BETWEEN 8012 AND 8015)
     OR (resource_type='course' AND resource_id::int IN (8010, 8011));

DELETE FROM study_question_set_questions
  WHERE study_question_set_id BETWEEN 80100000 AND 80109999;

DELETE FROM study_course_modules
  WHERE course_id IN (8010, 8011)
     OR module_id BETWEEN 8012 AND 8015;

DELETE FROM study_module_contents
  WHERE module_id BETWEEN 8012 AND 8015;

-- ============================================================
-- Layer 2: Content tables
-- ============================================================

DELETE FROM questions_answers
  WHERE question_id BETWEEN 80000000 AND 87999999;

DELETE FROM questions
  WHERE id BETWEEN 80000000 AND 87999999;

DELETE FROM reading_passages
  WHERE id BETWEEN 8010001 AND 8019999;

DELETE FROM study_question_sets
  WHERE id BETWEEN 80100000 AND 80109999;

-- ============================================================
-- Layer 3: Entity tables
-- ============================================================

DELETE FROM study_modules
  WHERE id BETWEEN 8012 AND 8015;

DELETE FROM study_courses
  WHERE id IN (8010, 8011);

-- ============================================================
-- Layer 4: Curriculum tree (node trước curricula vì FK)
-- ============================================================

DELETE FROM curriculum_node_content
  WHERE curriculum_node_id IN (
    SELECT id FROM curriculum_node WHERE curriculum_id BETWEEN 8001 AND 8016
  );

DELETE FROM curriculum_node
  WHERE curriculum_id BETWEEN 8001 AND 8016;

DELETE FROM curricula
  WHERE id BETWEEN 8001 AND 8016;

-- ============================================================
-- Verify SAU khi xoá — tất cả phải = 0
-- ============================================================
SELECT '=== AFTER DELETE (phải = 0) ===' AS info;

SELECT 'curricula 8001-8016' AS tbl, COUNT(*) AS n FROM curricula WHERE id BETWEEN 8001 AND 8016
UNION ALL SELECT 'curriculum_node 8XXX', COUNT(*) FROM curriculum_node WHERE curriculum_id BETWEEN 8001 AND 8016
UNION ALL SELECT 'study_courses 8010-8011', COUNT(*) FROM study_courses WHERE id IN (8010,8011)
UNION ALL SELECT 'study_modules 8012-8015', COUNT(*) FROM study_modules WHERE id BETWEEN 8012 AND 8015
UNION ALL SELECT 'study_question_sets BJT', COUNT(*) FROM study_question_sets WHERE id BETWEEN 80100000 AND 80109999
UNION ALL SELECT 'questions BJT', COUNT(*) FROM questions WHERE id BETWEEN 80000000 AND 87999999
UNION ALL SELECT 'questions_answers BJT', COUNT(*) FROM questions_answers WHERE question_id BETWEEN 80000000 AND 87999999
UNION ALL SELECT 'reading_passages BJT', COUNT(*) FROM reading_passages WHERE id BETWEEN 8010001 AND 8019999
UNION ALL SELECT 'user_bookshelf REF', COUNT(*) FROM user_bookshelf WHERE curriculum_id BETWEEN 8001 AND 8016
UNION ALL SELECT 'user_notes REF', COUNT(*) FROM user_notes WHERE content_id::text ~ '^80(0[1-9]|1[0-6])([0-9]+)?$';

-- ============================================================
-- Verify NON-LEGACY data CÒN NGUYÊN
-- ============================================================
SELECT '=== NON-LEGACY data (phải CÒN nguyên) ===' AS info;

SELECT 'reading_passages test data <1k' AS tbl, COUNT(*) AS n FROM reading_passages WHERE id < 1000
UNION ALL SELECT 'reading_passages notice 81100', COUNT(*) FROM reading_passages WHERE id BETWEEN 81100000 AND 81109999
UNION ALL SELECT 'reading_passages JLPT 712M-753M', COUNT(*) FROM reading_passages WHERE id BETWEEN 712000000 AND 753999999
UNION ALL SELECT 'questions JLPT 911M-954M', COUNT(*) FROM questions WHERE id BETWEEN 911000000 AND 954999999
UNION ALL SELECT 'questions_answers JLPT 211M-245M', COUNT(*) FROM questions_answers WHERE id BETWEEN 211000000 AND 245999999;

-- ============================================================
-- COMMIT nếu kết quả OK
-- ============================================================
COMMIT;
