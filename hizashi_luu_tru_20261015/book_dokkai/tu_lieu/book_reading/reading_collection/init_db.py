"""
Khởi tạo SQLite database để quản lý 1000 bài đọc.
Tracking chủ đề, ngữ pháp, trạng thái tạo/review.

Usage: python init_db.py
"""

import sqlite3
import json
import os
import sys

sys.stdout.reconfigure(encoding='utf-8')

DB_PATH = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'readings.db')

LEVELS = [
    (1, 'N5_basic', 'N5 cơ bản', 30, '6-8', 2),
    (2, 'N5_advanced', 'N5 nâng cao', 30, '8-10', 2),
    (3, 'N4_basic', 'N4 cơ bản', 40, '10-12', 3),
    (4, 'N4_advanced', 'N4 nâng cao', 40, '12-14', 3),
    (5, 'N3_basic', 'N3 cơ bản', 100, '12-15', 3),
    (6, 'N3_advanced', 'N3 nâng cao', 100, '14-18', 4),
    (7, 'N2_basic', 'N2 cơ bản', 120, '15-20', 4),
    (8, 'N2_advanced', 'N2 nâng cao', 120, '18-22', 4),
    (9, 'N1', 'N1', 200, '20-25', 5),
    (10, 'native', 'Native', 200, '20-30', 5),
]

# 30 chủ đề chính, mỗi chủ đề có sub-topics
TOPICS = {
    # === Đời sống hàng ngày ===
    'daily_life': {
        'name': 'Đời sống hàng ngày',
        'subtopics': ['buổi sáng', 'bữa ăn', 'mua sắm', 'dọn dẹp', 'nấu ăn', 'thói quen', 'cuối tuần'],
        'levels': [1, 2, 3, 4]
    },
    'family': {
        'name': 'Gia đình',
        'subtopics': ['giới thiệu', 'kỷ niệm', 'nuôi con', 'thế hệ', 'truyền thống gia đình'],
        'levels': [1, 2, 3, 4, 5]
    },
    'school': {
        'name': 'Trường học',
        'subtopics': ['lớp học', 'bạn bè', 'câu lạc bộ', 'thi cử', 'tốt nghiệp', 'kỷ niệm học đường'],
        'levels': [1, 2, 3, 4, 5]
    },
    'work': {
        'name': 'Công việc',
        'subtopics': ['phỏng vấn', 'đồng nghiệp', 'họp', 'email', 'thăng tiến', 'nghỉ việc', 'freelance', 'startup'],
        'levels': [3, 4, 5, 6, 7, 8]
    },
    'travel': {
        'name': 'Du lịch',
        'subtopics': ['lên kế hoạch', 'khách sạn', 'hỏi đường', 'trải nghiệm', 'sự cố', 'review'],
        'levels': [2, 3, 4, 5, 6]
    },
    'health': {
        'name': 'Sức khỏe',
        'subtopics': ['bệnh viện', 'tập thể dục', 'dinh dưỡng', 'stress', 'giấc ngủ', 'sức khỏe tâm thần'],
        'levels': [3, 4, 5, 6, 7]
    },
    'food': {
        'name': 'Ẩm thực',
        'subtopics': ['món Nhật', 'nấu ăn', 'nhà hàng', 'review', 'văn hóa ăn uống', 'rượu sake'],
        'levels': [2, 3, 4, 5, 6]
    },
    'hobby': {
        'name': 'Sở thích',
        'subtopics': ['thể thao', 'âm nhạc', 'đọc sách', 'game', 'thủ công', 'nhiếp ảnh', 'làm vườn'],
        'levels': [1, 2, 3, 4, 5]
    },

    # === Văn hóa & Xã hội ===
    'japanese_culture': {
        'name': 'Văn hóa Nhật Bản',
        'subtopics': ['lễ hội', 'kimono', 'trà đạo', 'onsen', 'bốn mùa', 'phép lịch sự', 'omotenashi'],
        'levels': [3, 4, 5, 6, 7, 8]
    },
    'society': {
        'name': 'Xã hội',
        'subtopics': ['già hóa', 'ít con', 'đô thị hóa', 'bình đẳng giới', 'nhập cư', 'cô đơn', 'hikikomori'],
        'levels': [5, 6, 7, 8, 9, 10]
    },
    'education': {
        'name': 'Giáo dục',
        'subtopics': ['hệ thống GD Nhật', 'juku', 'du học', 'đồng phục', 'bắt nạt', 'cải cách GD'],
        'levels': [4, 5, 6, 7, 8, 9]
    },
    'environment': {
        'name': 'Môi trường',
        'subtopics': ['ô nhiễm', 'tái chế', 'biến đổi khí hậu', 'năng lượng', 'thiên tai', 'bảo tồn'],
        'levels': [5, 6, 7, 8, 9, 10]
    },
    'technology': {
        'name': 'Công nghệ',
        'subtopics': ['AI', 'robot', 'smartphone', 'IoT', 'mạng xã hội', 'xe tự lái', 'metaverse'],
        'levels': [5, 6, 7, 8, 9, 10]
    },
    'economy': {
        'name': 'Kinh tế',
        'subtopics': ['lạm phát', 'thất nghiệp', 'startup', 'thương mại', 'đồng yên', 'kinh tế số'],
        'levels': [6, 7, 8, 9, 10]
    },

    # === Nghệ thuật & Giải trí ===
    'literature': {
        'name': 'Văn học',
        'subtopics': ['truyện ngắn', 'haiku', 'tiểu thuyết', 'tác giả nổi tiếng', 'phê bình văn học'],
        'levels': [6, 7, 8, 9, 10]
    },
    'manga_anime': {
        'name': 'Manga & Anime',
        'subtopics': ['review', 'phân tích nhân vật', 'ngành công nghiệp', 'ảnh hưởng văn hóa', 'cosplay'],
        'levels': [4, 5, 6, 7, 8]
    },
    'film_drama': {
        'name': 'Phim & Drama',
        'subtopics': ['review phim', 'đạo diễn', 'diễn viên', 'phân tích cốt truyện', 'so sánh văn hóa'],
        'levels': [5, 6, 7, 8, 9]
    },
    'music': {
        'name': 'Âm nhạc',
        'subtopics': ['J-pop', 'enka', 'nhạc cụ truyền thống', 'lời bài hát', 'festival'],
        'levels': [4, 5, 6, 7, 8]
    },

    # === Tư duy & Triết lý ===
    'philosophy': {
        'name': 'Triết lý',
        'subtopics': ['ikigai', 'wabi-sabi', 'mono no aware', 'bushido', 'zen', 'ý nghĩa cuộc sống'],
        'levels': [7, 8, 9, 10]
    },
    'psychology': {
        'name': 'Tâm lý học',
        'subtopics': ['motivation', 'quan hệ', 'cô đơn', 'hạnh phúc', 'trauma', 'tâm lý đám đông'],
        'levels': [6, 7, 8, 9, 10]
    },
    'ethics': {
        'name': 'Đạo đức & Tranh luận',
        'subtopics': ['tử hình', 'an tử', 'AI ethics', 'privacy', 'tự do ngôn luận', 'trách nhiệm xã hội'],
        'levels': [8, 9, 10]
    },

    # === Lịch sử & Địa lý ===
    'history': {
        'name': 'Lịch sử',
        'subtopics': ['thời Edo', 'Meiji', 'WWII', 'hậu chiến', 'samurai', 'nhân vật lịch sử'],
        'levels': [6, 7, 8, 9, 10]
    },
    'geography': {
        'name': 'Địa lý & Vùng miền',
        'subtopics': ['Tokyo', 'Kyoto', 'Okinawa', 'Hokkaido', 'nông thôn', 'thành phố nhỏ'],
        'levels': [3, 4, 5, 6, 7]
    },

    # === Khoa học ===
    'science': {
        'name': 'Khoa học',
        'subtopics': ['vũ trụ', 'y học', 'sinh học', 'vật lý', 'phát minh', 'Nobel'],
        'levels': [7, 8, 9, 10]
    },
    'nature': {
        'name': 'Thiên nhiên',
        'subtopics': ['động vật', 'thực vật', 'biển', 'núi', 'thời tiết', 'thiên tai'],
        'levels': [2, 3, 4, 5, 6, 7]
    },

    # === Thực tế & Đời sống Nhật ===
    'living_in_japan': {
        'name': 'Sống ở Nhật',
        'subtopics': ['thuê nhà', 'visa', 'ngân hàng', 'bệnh viện', 'rác', 'hàng xóm', 'thủ tục'],
        'levels': [3, 4, 5, 6, 7]
    },
    'news': {
        'name': 'Tin tức',
        'subtopics': ['thời sự', 'tai nạn', 'phát hiện', 'sự kiện', 'chính trị', 'quốc tế'],
        'levels': [5, 6, 7, 8, 9, 10]
    },
    'business': {
        'name': 'Kinh doanh',
        'subtopics': ['email', 'đàm phán', 'presentation', 'báo cáo', 'chiến lược', 'marketing'],
        'levels': [6, 7, 8, 9, 10]
    },
    'sports': {
        'name': 'Thể thao',
        'subtopics': ['bóng chày', 'sumo', 'judo', 'Olympics', 'VĐV', 'tinh thần thể thao'],
        'levels': [3, 4, 5, 6, 7, 8]
    },
    'relationship': {
        'name': 'Quan hệ & Tình cảm',
        'subtopics': ['tình bạn', 'tình yêu', 'kết hôn', 'chia tay', 'cô đơn', 'gia đình xa'],
        'levels': [4, 5, 6, 7, 8, 9]
    },
}


def create_db():
    conn = sqlite3.connect(DB_PATH)
    c = conn.cursor()

    # Bảng levels
    c.execute('''CREATE TABLE IF NOT EXISTS levels (
        level_id INTEGER PRIMARY KEY,
        level_key TEXT UNIQUE,
        level_name TEXT,
        target_count INTEGER,
        sentence_range TEXT,
        questions_per_reading INTEGER
    )''')

    # Bảng topics
    c.execute('''CREATE TABLE IF NOT EXISTS topics (
        topic_key TEXT PRIMARY KEY,
        topic_name TEXT,
        subtopics TEXT,
        applicable_levels TEXT
    )''')

    # Bảng readings (chính)
    c.execute('''CREATE TABLE IF NOT EXISTS readings (
        id TEXT PRIMARY KEY,
        level_id INTEGER,
        topic_key TEXT,
        subtopic TEXT,
        title TEXT,
        title_vi TEXT,
        grammar_used TEXT,
        sentence_count INTEGER,
        question_count INTEGER,
        status TEXT DEFAULT 'planned',
        created_at TIMESTAMP,
        reviewed_at TIMESTAMP,
        file_path TEXT,
        notes TEXT,
        FOREIGN KEY (level_id) REFERENCES levels(level_id),
        FOREIGN KEY (topic_key) REFERENCES topics(topic_key)
    )''')

    # Bảng grammar tracking
    c.execute('''CREATE TABLE IF NOT EXISTS grammar_usage (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        reading_id TEXT,
        grammar_pattern TEXT,
        grammar_level TEXT,
        FOREIGN KEY (reading_id) REFERENCES readings(id)
    )''')

    # Insert levels
    for lv in LEVELS:
        c.execute('INSERT OR REPLACE INTO levels VALUES (?,?,?,?,?,?)', lv)

    # Insert topics
    for key, info in TOPICS.items():
        c.execute('INSERT OR REPLACE INTO topics VALUES (?,?,?,?)',
                  (key, info['name'],
                   json.dumps(info['subtopics'], ensure_ascii=False),
                   json.dumps(info['levels'])))

    conn.commit()

    # Print summary
    c.execute('SELECT COUNT(*) FROM levels')
    print(f'Levels: {c.fetchone()[0]}')
    c.execute('SELECT COUNT(*) FROM topics')
    print(f'Topics: {c.fetchone()[0]}')
    c.execute('SELECT SUM(target_count) FROM levels')
    print(f'Target readings: {c.fetchone()[0]}')

    # Print level breakdown
    print('\nPhân bổ:')
    c.execute('SELECT level_id, level_name, target_count, sentence_range, questions_per_reading FROM levels ORDER BY level_id')
    for row in c.fetchall():
        print(f'  Cấp {row[0]}: {row[1]} - {row[2]} bài, {row[3]} câu, {row[4]} câu hỏi/bài')

    # Print topic count per level
    print('\nChủ đề theo cấp:')
    for lv_id in range(1, 11):
        topics_for_level = []
        for key, info in TOPICS.items():
            if lv_id in info['levels']:
                topics_for_level.append(info['name'])
        print(f'  Cấp {lv_id}: {len(topics_for_level)} chủ đề')

    conn.close()
    print(f'\nDatabase created: {DB_PATH}')


def generate_reading_plan():
    """Tạo kế hoạch phân bổ bài đọc theo level + topic"""
    conn = sqlite3.connect(DB_PATH)
    c = conn.cursor()

    reading_id = 1
    for lv_id, lv_key, lv_name, target, _, _ in LEVELS:
        # Lấy danh sách topics cho level này
        available_topics = []
        for key, info in TOPICS.items():
            if lv_id in info['levels']:
                for sub in info['subtopics']:
                    available_topics.append((key, sub))

        if not available_topics:
            continue

        # Phân bổ đều
        per_topic = max(1, target // len(available_topics))
        count = 0

        for topic_key, subtopic in available_topics:
            if count >= target:
                break
            num = min(per_topic, target - count)
            for i in range(num):
                rid = f'R_{reading_id:04d}'
                c.execute('''INSERT OR IGNORE INTO readings
                    (id, level_id, topic_key, subtopic, status)
                    VALUES (?,?,?,?,?)''',
                    (rid, lv_id, topic_key, subtopic, 'planned'))
                reading_id += 1
                count += 1

        # Fill remaining nếu chưa đủ
        idx = 0
        while count < target:
            topic_key, subtopic = available_topics[idx % len(available_topics)]
            rid = f'R_{reading_id:04d}'
            c.execute('''INSERT OR IGNORE INTO readings
                (id, level_id, topic_key, subtopic, status)
                VALUES (?,?,?,?,?)''',
                (rid, lv_id, topic_key, subtopic, 'planned'))
            reading_id += 1
            count += 1
            idx += 1

    conn.commit()

    # Summary
    c.execute('SELECT COUNT(*) FROM readings')
    total = c.fetchone()[0]
    print(f'\nĐã tạo kế hoạch: {total} bài đọc')

    c.execute('''SELECT l.level_name, COUNT(r.id)
                 FROM readings r JOIN levels l ON r.level_id = l.level_id
                 GROUP BY l.level_id ORDER BY l.level_id''')
    for name, cnt in c.fetchall():
        print(f'  {name}: {cnt} bài')

    # Topic distribution
    c.execute('''SELECT t.topic_name, COUNT(r.id)
                 FROM readings r JOIN topics t ON r.topic_key = t.topic_key
                 GROUP BY t.topic_name ORDER BY COUNT(r.id) DESC LIMIT 10''')
    print('\nTop 10 chủ đề:')
    for name, cnt in c.fetchall():
        print(f'  {name}: {cnt} bài')

    conn.close()


if __name__ == '__main__':
    create_db()
    generate_reading_plan()
