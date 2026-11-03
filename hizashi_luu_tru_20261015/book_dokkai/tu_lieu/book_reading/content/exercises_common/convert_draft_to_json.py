"""
Chuyển đổi file exercise draft (.md) sang JSON chuẩn.

Format draft:
    ## [type] | [difficulty]
    [sentence]
    [translation]
    [question_text]
    > [answers phân cách bằng |]
    = [đáp án: text/index cho select, thứ tự cho order]
    ? [hint - optional]
    ! [explanation]
    # [tags phân cách bằng space]

Sử dụng:
    python convert_draft_to_json.py lesson_02_draft.md lesson_02.json
"""

import json
import sys
import random
import re
import os


def parse_draft(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    blocks = re.split(r'\n## ', content)
    questions = []

    # Lấy lesson_id từ tên file
    basename = os.path.basename(filepath)
    lesson_match = re.search(r'lesson_(\d+)', basename)
    lesson_id = int(lesson_match.group(1)) if lesson_match else 0

    for i, block in enumerate(blocks):
        block = block.strip()
        if not block or not '|' in block.split('\n')[0]:
            continue

        lines = block.split('\n')

        # Header: type | difficulty
        header = lines[0].strip()
        parts = header.split('|')
        q_type = parts[0].strip()
        difficulty = int(parts[1].strip()) if len(parts) > 1 else 1

        # Parse các dòng
        sentence = ''
        translation = ''
        question_text = ''
        raw_answers = []
        correct_answer = ''
        hint = None
        explanation = ''
        tags = []

        line_idx = 1
        # Sentence (dòng không bắt đầu bằng ký tự đặc biệt)
        content_lines = []
        while line_idx < len(lines):
            line = lines[line_idx].strip()
            if line.startswith('>') or line.startswith('=') or line.startswith('?') or line.startswith('!') or line.startswith('#'):
                break
            if line:
                content_lines.append(line)
            line_idx += 1

        if len(content_lines) >= 3:
            sentence = content_lines[0]
            translation = content_lines[1]
            question_text = content_lines[2]
        elif len(content_lines) == 2:
            sentence = content_lines[0]
            translation = content_lines[1]
            question_text = content_lines[0]  # mặc định = sentence

        # Parse metadata lines
        while line_idx < len(lines):
            line = lines[line_idx].strip()
            if line.startswith('> '):
                raw_answers = [a.strip() for a in line[2:].split('|')]
            elif line.startswith('= '):
                correct_answer = line[2:].strip()
            elif line.startswith('? '):
                hint = line[2:].strip()
            elif line.startswith('! '):
                explanation = line[2:].strip()
            elif line.startswith('# '):
                tags = line[2:].strip().split()
            line_idx += 1

        # Xác định answer_mode và tạo answers
        if q_type in ['chunking', 'reorder']:
            answer_mode = 'order'
            if q_type == 'chunking':
                # answers = chunks theo thứ tự đúng
                answers = [
                    {"text": a, "is_correct": True, "order": idx + 1}
                    for idx, a in enumerate(raw_answers)
                ]
            else:
                # reorder: correct_answer chứa thứ tự đúng
                correct_parts = [a.strip() for a in correct_answer.split('|')]
                answers = []
                for a in raw_answers:
                    if a in correct_parts:
                        order = correct_parts.index(a) + 1
                    else:
                        order = None
                    answers.append({"text": a, "is_correct": True, "order": order})
        else:
            answer_mode = 'select'
            answers = []
            for a in raw_answers:
                if q_type == 'prediction':
                    # correct_answer là index (0-based)
                    idx = raw_answers.index(a)
                    is_correct = str(idx) == correct_answer
                else:
                    is_correct = (a == correct_answer)
                answers.append({"text": a, "is_correct": is_correct, "order": None})

        # Tạo ID
        type_prefix = {
            'fill_particle': 'FP',
            'prediction': 'PR',
            'chunking': 'CH',
            'pair_distinction': 'PD',
            'packaging': 'PK',
            'reorder': 'RO',
            'quick_translate': 'QT'
        }
        prefix = type_prefix.get(q_type, 'XX')
        q_id = f"L{lesson_id:02d}_{prefix}_{i:02d}"

        # Xác định question_description
        descriptions = {
            'fill_particle': 'Điền trợ từ đúng',
            'prediction': 'Dự đoán khi gặp trợ từ',
            'chunking': 'Chia khối đúng',
            'pair_distinction': 'Phân biệt trợ từ',
            'packaging': 'Chọn hình ảnh đóng gói đúng',
            'reorder': 'Sắp xếp thứ tự',
            'quick_translate': 'Dịch nhanh'
        }

        question = {
            "id": q_id,
            "lesson_id": lesson_id,
            "question_type": q_type,
            "answer_mode": answer_mode,
            "difficulty": difficulty,
            "sentence": sentence,
            "sentence_translation": translation,
            "question_text": question_text,
            "question_description": descriptions.get(q_type, ''),
            "answers": answers,
            "explanation": explanation,
            "hint": hint,
            "tags": tags
        }
        questions.append(question)

    return questions


def shuffle_select_answers(questions, seed=46):
    """Shuffle đáp án cho câu hỏi dạng select"""
    random.seed(seed)
    for q in questions:
        if q['answer_mode'] == 'select':
            random.shuffle(q['answers'])
    return questions


def main():
    if len(sys.argv) < 3:
        print("Usage: python convert_draft_to_json.py <input.md> <output.json>")
        print("Example: python convert_draft_to_json.py lesson_02_draft.md lesson_02.json")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2]

    questions = parse_draft(input_file)
    questions = shuffle_select_answers(questions)

    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(questions, f, ensure_ascii=False, indent=2)

    # Stats
    types = {}
    for q in questions:
        t = q['question_type']
        types[t] = types.get(t, 0) + 1

    print(f"Converted {len(questions)} questions from {input_file} -> {output_file}")
    for t, c in sorted(types.items()):
        print(f"  {t}: {c}")


if __name__ == '__main__':
    main()
