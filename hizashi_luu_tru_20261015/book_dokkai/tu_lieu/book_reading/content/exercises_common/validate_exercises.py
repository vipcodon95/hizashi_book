"""
Validate exercise JSON files against EXERCISE_SPEC rules.

Usage:
    python validate_exercises.py lesson_09.json
    python validate_exercises.py *.json
    python validate_exercises.py ../part_01/exercises/*.json ../part_02/exercises/*.json
"""

import json
import sys
import glob
import os
import re

VALID_TYPES = ['fill_particle', 'prediction', 'chunking', 'pair_distinction', 'packaging', 'reorder', 'quick_translate']
SELECT_TYPES = ['fill_particle', 'prediction', 'pair_distinction', 'packaging', 'quick_translate']
ORDER_TYPES = ['chunking', 'reorder']

REQUIRED_FIELDS = ['id', 'lesson_id', 'question_type', 'answer_mode', 'difficulty', 'sentence', 'sentence_translation', 'question_text', 'question_description', 'answers', 'explanation', 'tags']


def validate_exercise(q, idx, filename):
    errors = []
    warnings = []
    qid = q.get('id', f'#{idx}')

    # 1. Required fields
    for field in REQUIRED_FIELDS:
        if field not in q:
            errors.append(f"Missing field: {field}")
        elif q[field] is None and field not in ['hint']:
            errors.append(f"Field '{field}' is null")

    # 2. Question type
    qtype = q.get('question_type', '')
    if qtype not in VALID_TYPES:
        errors.append(f"Invalid question_type: '{qtype}'")

    # 3. Answer mode
    amode = q.get('answer_mode', '')
    if qtype in SELECT_TYPES and amode != 'select':
        errors.append(f"Type '{qtype}' should have answer_mode='select', got '{amode}'")
    if qtype in ORDER_TYPES and amode != 'order':
        errors.append(f"Type '{qtype}' should have answer_mode='order', got '{amode}'")

    # 4. Difficulty
    diff = q.get('difficulty', 0)
    if diff not in [1, 2, 3]:
        errors.append(f"Invalid difficulty: {diff} (should be 1-3)")

    # 5. Answers validation
    answers = q.get('answers', [])
    if not answers:
        errors.append("No answers provided")
    elif amode == 'select':
        correct_count = sum(1 for a in answers if a.get('is_correct'))
        if correct_count == 0:
            errors.append("No correct answer marked (is_correct=true)")
        elif correct_count > 1:
            errors.append(f"Multiple correct answers: {correct_count} (should be 1 for select)")
        if len(answers) < 2:
            errors.append(f"Too few answers: {len(answers)} (need at least 2)")
        # Check for null order in select
        for a in answers:
            if a.get('order') is not None:
                warnings.append(f"Answer '{a['text']}' has order={a['order']} but mode is 'select'")
    elif amode == 'order':
        orders = [a.get('order') for a in answers]
        if None in orders:
            errors.append("Order answers must have 'order' field set")
        elif sorted([o for o in orders if o]) != list(range(1, len(answers) + 1)):
            warnings.append(f"Order values not sequential 1..{len(answers)}: {orders}")

    # 6. Empty content checks
    sentence = q.get('sentence', '')
    translation = q.get('sentence_translation', '')
    question_text = q.get('question_text', '')
    explanation = q.get('explanation', '')

    if not sentence.strip():
        errors.append("Empty sentence")
    if not translation.strip():
        errors.append("Empty sentence_translation")
    if not question_text.strip():
        errors.append("Empty question_text")
    if not explanation.strip():
        warnings.append("Empty explanation")

    # 7. Tags
    tags = q.get('tags', [])
    if not tags:
        warnings.append("No tags")

    # 8. ID format check
    qid_str = q.get('id', '')
    if not re.match(r'^L\d{2}_[A-Z]{2}_\d{2}$', qid_str):
        warnings.append(f"ID format unusual: '{qid_str}' (expected LXX_XX_XX)")

    # 9. Lesson ID consistency
    lesson_id = q.get('lesson_id', 0)
    id_match = re.search(r'L(\d{2})_', qid_str)
    if id_match and int(id_match.group(1)) != lesson_id:
        errors.append(f"ID prefix L{id_match.group(1)} doesn't match lesson_id={lesson_id}")

    # 10. Vietnamese diacritics check (basic)
    viet_text = translation + ' ' + explanation
    if viet_text.strip() and not any(c in viet_text for c in 'àáảãạèéẻẽẹìíỉĩịòóỏõọùúủũụỳýỷỹỵăắằẳẵặâấầẩẫậêếềểễệôốồổỗộơớờởỡợưứừửữựđ'):
        warnings.append("No Vietnamese diacritics found in translation/explanation")

    # 11. Duplicate answer text
    answer_texts = [a.get('text', '') for a in answers]
    if len(answer_texts) != len(set(answer_texts)):
        errors.append(f"Duplicate answer texts: {answer_texts}")

    # 12. Sentence should contain Japanese
    if sentence.strip() and not any('\u3040' <= c <= '\u309f' or '\u30a0' <= c <= '\u30ff' or '\u4e00' <= c <= '\u9fff' for c in sentence):
        warnings.append("Sentence doesn't contain Japanese characters")

    return errors, warnings


def validate_file(filepath):
    filename = os.path.basename(filepath)
    print(f"\n{'='*60}")
    print(f"  {filename}")
    print(f"{'='*60}")

    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except json.JSONDecodeError as e:
        print(f"  FATAL: Invalid JSON: {e}")
        return 1, 0, 0
    except FileNotFoundError:
        print(f"  FATAL: File not found")
        return 1, 0, 0

    total_errors = 0
    total_warnings = 0
    type_counts = {}

    for idx, q in enumerate(data):
        errors, warnings = validate_exercise(q, idx, filename)
        qid = q.get('id', f'#{idx}')
        qtype = q.get('question_type', '?')
        type_counts[qtype] = type_counts.get(qtype, 0) + 1

        if errors:
            for e in errors:
                print(f"  ERROR  {qid} | {e}")
            total_errors += len(errors)
        if warnings:
            for w in warnings:
                print(f"  WARN   {qid} | {w}")
            total_warnings += len(warnings)

    # Summary
    print(f"\n  Total: {len(data)} exercises")
    print(f"  Types: {', '.join(f'{t}={c}' for t, c in sorted(type_counts.items()))}")

    # Check answer position distribution (select only)
    positions = {}
    select_count = 0
    for q in data:
        if q.get('answer_mode') == 'select':
            select_count += 1
            for i, a in enumerate(q.get('answers', [])):
                if a.get('is_correct'):
                    positions[i + 1] = positions.get(i + 1, 0) + 1

    if positions:
        pos_str = ' / '.join(str(positions.get(p, 0)) for p in range(1, max(positions.keys()) + 1))
        print(f"  Answer positions (select): {pos_str} (total {select_count})")

        # Check for bias
        avg = select_count / max(len(positions), 1)
        for pos, count in positions.items():
            if count > avg * 1.8:
                print(f"  WARN   Position {pos} has {count} correct answers (avg {avg:.1f}) - possible bias")
                total_warnings += 1

    if total_errors == 0 and total_warnings == 0:
        print(f"  PASS")
    else:
        print(f"  Result: {total_errors} errors, {total_warnings} warnings")

    return total_errors, total_warnings, len(data)


def main():
    if len(sys.argv) < 2:
        print("Usage: python validate_exercises.py <file.json> [file2.json ...]")
        print("       python validate_exercises.py ../part_*/exercises/*.json")
        sys.exit(1)

    files = []
    for arg in sys.argv[1:]:
        files.extend(glob.glob(arg))

    if not files:
        print("No files found")
        sys.exit(1)

    grand_errors = 0
    grand_warnings = 0
    grand_total = 0

    for filepath in sorted(files):
        errs, warns, count = validate_file(filepath)
        grand_errors += errs
        grand_warnings += warns
        grand_total += count

    print(f"\n{'='*60}")
    print(f"  GRAND TOTAL: {len(files)} files, {grand_total} exercises")
    print(f"  {grand_errors} errors, {grand_warnings} warnings")
    if grand_errors == 0:
        print(f"  ALL PASSED")
    print(f"{'='*60}")


if __name__ == '__main__':
    main()
