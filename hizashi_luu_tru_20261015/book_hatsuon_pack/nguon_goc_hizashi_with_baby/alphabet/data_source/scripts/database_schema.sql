-- ============================================================
-- DATABASE SCHEMA - Hệ thống bài tập nghe tiếng Nhật
-- Thiết kế tối giản: 3 bảng chính
-- ============================================================

-- ============================================================
-- BẢNG 1: questions - Tất cả câu hỏi
-- ============================================================
CREATE TABLE questions (
    id VARCHAR(100) PRIMARY KEY,

    -- Phân loại
    base_type VARCHAR(20) NOT NULL,  -- 8 loại: single_choice, same_different, minimal_pair, counting, dictation, matching, dialogue, announcement
    sub_type VARCHAR(50),            -- Loại chi tiết gốc (để phân tích)
    source_file VARCHAR(100),        -- File nguồn

    -- Nội dung
    prompt TEXT NOT NULL,            -- Câu hỏi/hướng dẫn
    audio_ids JSON,                  -- ["audio1", "audio2"] - ID các audio cần phát

    -- Đáp án
    options JSON,                    -- [{"id":"a","text":"...","is_correct":true}, ...]
    correct_answer TEXT,             -- Cho dictation, counting (nếu không dùng options)

    -- Metadata
    difficulty VARCHAR(10) DEFAULT 'medium',  -- easy, medium, hard
    topic VARCHAR(50),               -- Chủ đề: pitch_accent, sokuon, etc.
    metadata JSON,                   -- Các thông tin bổ sung: meaning, romaji, explanation...

    -- Timestamps
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Indexes
    INDEX idx_base_type (base_type),
    INDEX idx_difficulty (difficulty),
    INDEX idx_topic (topic),
    INDEX idx_source (source_file)
);

-- ============================================================
-- BẢNG 2: audios - Quản lý audio files
-- ============================================================
CREATE TABLE audios (
    id VARCHAR(100) PRIMARY KEY,     -- ID = nội dung text hoặc hash

    -- Nội dung
    text_content TEXT NOT NULL,      -- Nội dung được nói: "あ", "おばあさん", etc.
    romaji VARCHAR(255),             -- Phiên âm: "a", "obaasan"

    -- Thông tin phát âm
    pitch_pattern VARCHAR(50),       -- OJAD format: "LHH", "HLL", etc.
    mora_count INT,                  -- Số mora

    -- File
    file_path VARCHAR(255),          -- Path đến file audio (có thể NULL nếu chưa generate)

    -- Metadata
    speaker VARCHAR(50),             -- Giọng: male, female, etc.
    speed VARCHAR(20) DEFAULT 'normal',  -- slow, normal, fast

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    INDEX idx_text (text_content(50))
);

-- ============================================================
-- BẢNG 3: user_progress - Tiến độ học của user
-- ============================================================
CREATE TABLE user_progress (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(100) NOT NULL,
    question_id VARCHAR(100) NOT NULL,

    -- Kết quả
    is_correct BOOLEAN,
    user_answer TEXT,                -- Đáp án user chọn

    -- Thời gian
    answered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    time_spent_ms INT,               -- Thời gian làm bài (ms)

    -- Số lần thử
    attempt_number INT DEFAULT 1,

    FOREIGN KEY (question_id) REFERENCES questions(id),
    INDEX idx_user (user_id),
    INDEX idx_user_question (user_id, question_id)
);


-- ============================================================
-- VIEWS hữu ích
-- ============================================================

-- View: Thống kê theo base_type
CREATE VIEW stats_by_type AS
SELECT
    base_type,
    COUNT(*) as total_questions,
    SUM(CASE WHEN difficulty = 'easy' THEN 1 ELSE 0 END) as easy_count,
    SUM(CASE WHEN difficulty = 'medium' THEN 1 ELSE 0 END) as medium_count,
    SUM(CASE WHEN difficulty = 'hard' THEN 1 ELSE 0 END) as hard_count
FROM questions
GROUP BY base_type;

-- View: Thống kê theo topic
CREATE VIEW stats_by_topic AS
SELECT
    topic,
    COUNT(*) as total_questions,
    base_type
FROM questions
WHERE topic IS NOT NULL
GROUP BY topic, base_type;


-- ============================================================
-- SAMPLE QUERIES
-- ============================================================

-- Lấy 10 câu hỏi single_choice độ khó medium
-- SELECT * FROM questions
-- WHERE base_type = 'single_choice' AND difficulty = 'medium'
-- ORDER BY RAND() LIMIT 10;

-- Lấy câu hỏi theo topic
-- SELECT * FROM questions WHERE topic = 'pitch_accent';

-- Lấy tiến độ của user
-- SELECT q.base_type, COUNT(*) as answered, SUM(up.is_correct) as correct
-- FROM user_progress up
-- JOIN questions q ON up.question_id = q.id
-- WHERE up.user_id = 'user123'
-- GROUP BY q.base_type;

-- Lấy câu hỏi user chưa làm
-- SELECT q.* FROM questions q
-- LEFT JOIN user_progress up ON q.id = up.question_id AND up.user_id = 'user123'
-- WHERE up.id IS NULL
-- LIMIT 10;
