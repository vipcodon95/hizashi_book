"""
Import unified JSON vào database
Hỗ trợ: SQLite, MySQL, PostgreSQL
"""

import json
import sqlite3
from pathlib import Path
from typing import List, Dict


def create_sqlite_db(db_path: str = "alphabet_exercises.db"):
    """Tạo SQLite database"""
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Tạo bảng questions
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS questions (
            id TEXT PRIMARY KEY,
            base_type TEXT NOT NULL,
            sub_type TEXT,
            source_file TEXT,
            prompt TEXT NOT NULL,
            audio_ids TEXT,
            options TEXT,
            correct_answer TEXT,
            difficulty TEXT DEFAULT 'medium',
            topic TEXT,
            metadata TEXT,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        )
    """)

    # Tạo bảng audios
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS audios (
            id TEXT PRIMARY KEY,
            text_content TEXT NOT NULL,
            romaji TEXT,
            pitch_pattern TEXT,
            mora_count INTEGER,
            file_path TEXT,
            speaker TEXT,
            speed TEXT DEFAULT 'normal',
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        )
    """)

    # Tạo bảng user_progress
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS user_progress (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            user_id TEXT NOT NULL,
            question_id TEXT NOT NULL,
            is_correct INTEGER,
            user_answer TEXT,
            answered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            time_spent_ms INTEGER,
            attempt_number INTEGER DEFAULT 1,
            FOREIGN KEY (question_id) REFERENCES questions(id)
        )
    """)

    # Tạo indexes
    cursor.execute("CREATE INDEX IF NOT EXISTS idx_base_type ON questions(base_type)")
    cursor.execute("CREATE INDEX IF NOT EXISTS idx_difficulty ON questions(difficulty)")
    cursor.execute("CREATE INDEX IF NOT EXISTS idx_topic ON questions(topic)")
    cursor.execute("CREATE INDEX IF NOT EXISTS idx_user ON user_progress(user_id)")

    conn.commit()
    return conn


def import_questions(conn, json_path: str):
    """Import questions từ JSON file"""
    cursor = conn.cursor()

    with open(json_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    questions = data.get('questions', [])
    source_file = data.get('metadata', {}).get('source_file', '')

    imported = 0
    skipped = 0

    for q in questions:
        try:
            cursor.execute("""
                INSERT OR REPLACE INTO questions
                (id, base_type, sub_type, source_file, prompt, audio_ids, options, correct_answer, difficulty, topic, metadata)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            """, (
                q.get('id'),
                q.get('base_type'),
                q.get('sub_type'),
                source_file,
                q.get('prompt'),
                json.dumps(q.get('audio_ids', []), ensure_ascii=False),
                json.dumps(q.get('options', []), ensure_ascii=False),
                q.get('correct_answer'),
                q.get('difficulty', 'medium'),
                q.get('topic'),
                json.dumps(q.get('metadata', {}), ensure_ascii=False)
            ))
            imported += 1
        except Exception as e:
            print(f"Error importing {q.get('id')}: {e}")
            skipped += 1

    conn.commit()
    return imported, skipped


def extract_and_import_audios(conn, json_path: str):
    """Trích xuất audio IDs từ questions và import vào bảng audios"""
    cursor = conn.cursor()

    with open(json_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    audio_set = set()
    for q in data.get('questions', []):
        for audio_id in q.get('audio_ids', []):
            if audio_id and isinstance(audio_id, str) and audio_id.strip():
                audio_set.add(audio_id.strip())

        # Cũng lấy từ metadata nếu có
        metadata = q.get('metadata', {})
        if metadata.get('audio_1'):
            audio_set.add(metadata['audio_1'])
        if metadata.get('audio_2'):
            audio_set.add(metadata['audio_2'])

    imported = 0
    for audio_text in audio_set:
        try:
            cursor.execute("""
                INSERT OR IGNORE INTO audios (id, text_content)
                VALUES (?, ?)
            """, (audio_text, audio_text))
            if cursor.rowcount > 0:
                imported += 1
        except Exception as e:
            pass

    conn.commit()
    return imported


def main():
    # Config
    unified_dir = Path('exercises_unified')
    db_path = 'alphabet_exercises.db'

    # Tạo database
    print("=" * 60)
    print("IMPORT TO SQLITE DATABASE")
    print("=" * 60)
    print()

    conn = create_sqlite_db(db_path)
    print(f"Created database: {db_path}")

    total_imported = 0
    total_skipped = 0

    # Import từ file tổng hợp
    all_questions_path = unified_dir / '_all_questions.json'
    if all_questions_path.exists():
        print(f"\nImporting from {all_questions_path.name}...")
        imported, skipped = import_questions(conn, str(all_questions_path))
        total_imported += imported
        total_skipped += skipped
        print(f"  Imported: {imported}, Skipped: {skipped}")

        # Import audios
        audio_count = extract_and_import_audios(conn, str(all_questions_path))
        print(f"  Extracted {audio_count} unique audio texts")

    # Thống kê
    cursor = conn.cursor()

    print("\n" + "=" * 60)
    print("STATISTICS")
    print("=" * 60)

    # By base_type
    print("\nBy base_type:")
    cursor.execute("""
        SELECT base_type, COUNT(*) as cnt
        FROM questions
        GROUP BY base_type
        ORDER BY cnt DESC
    """)
    for row in cursor.fetchall():
        print(f"  {row[0]:<20} {row[1]:>5}")

    # By difficulty
    print("\nBy difficulty:")
    cursor.execute("""
        SELECT difficulty, COUNT(*) as cnt
        FROM questions
        GROUP BY difficulty
        ORDER BY cnt DESC
    """)
    for row in cursor.fetchall():
        print(f"  {row[0]:<20} {row[1]:>5}")

    # Total
    cursor.execute("SELECT COUNT(*) FROM questions")
    total = cursor.fetchone()[0]
    print(f"\nTOTAL QUESTIONS: {total}")

    cursor.execute("SELECT COUNT(*) FROM audios")
    audio_total = cursor.fetchone()[0]
    print(f"TOTAL AUDIOS: {audio_total}")

    conn.close()
    print(f"\nDatabase saved to: {db_path}")


if __name__ == '__main__':
    main()
