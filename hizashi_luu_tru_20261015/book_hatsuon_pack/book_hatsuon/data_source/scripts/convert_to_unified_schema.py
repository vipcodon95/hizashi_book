"""
Converter: Chuyển đổi JSON exercises sang unified schema
"""

import json
from pathlib import Path
from typing import Dict, List, Any, Optional
import hashlib

# Type mapping từ 121 types cũ sang 8 base types
TYPE_MAPPING = {
    # single_choice
    "choose_one": "single_choice",
    "identify_form": "single_choice",
    "identify_pattern": "single_choice",
    "identify_sound": "single_choice",
    "identify_intonation": "single_choice",
    "identify_emotion": "single_choice",
    "identify_devoicing": "single_choice",
    "identify_focus": "single_choice",
    "identify_particle": "single_choice",
    "identify_downstep": "single_choice",
    "word_choice": "single_choice",
    "word_identification": "single_choice",
    "fu_recognition": "single_choice",
    "shi_chi_distinction": "single_choice",
    "three_way_choice": "single_choice",
    "question_or_statement": "single_choice",
    "formal_question": "single_choice",
    "wh_question": "single_choice",
    "emotion_recognition": "single_choice",
    "focus_identification": "single_choice",
    "pattern_recognition": "single_choice",
    "alphabet": "single_choice",
    "sokuon": "single_choice",
    "chouon": "single_choice",
    "yoon": "single_choice",
    "sokuon_chouon": "single_choice",
    "speed_recognition": "single_choice",
    "speed_comprehension": "single_choice",
    "speed_understanding": "single_choice",
    "native_speed_word": "single_choice",
    "native_speed_sentence": "single_choice",
    "compound_pitch": "single_choice",
    "particle_identification": "single_choice",
    "particle_recognition": "single_choice",
    "rendaku_recognition": "single_choice",
    "ji_zu_distinction": "single_choice",
    "identify_all_dakuon": "single_choice",
    "position_identification": "single_choice",
    "identify_first_mora": "single_choice",
    "identify_word_by_pitch": "single_choice",
    "heiban_vs_odaka": "single_choice",
    "particle_pitch_prediction": "single_choice",
    "sentence_pitch": "single_choice",
    "accent_number_identification": "single_choice",
    "word_class_pitch": "single_choice",
    "compound_word_pitch": "single_choice",
    "negative_form": "single_choice",
    "fill_blank": "single_choice",
    "identify_meaning": "single_choice",
    "nuance_recognition": "single_choice",
    "formal_to_casual": "single_choice",
    "polite_vs_casual": "single_choice",
    "identify_features": "single_choice",
    "yoon_chouon_recognition": "single_choice",
    "complex_word_analysis": "single_choice",
    "word_building": "single_choice",
    "n_variant_in_context": "single_choice",
    "n_vs_na_advanced": "single_choice",
    "complex_n_words": "single_choice",
    "fill_in_dialogue": "single_choice",
    "identify_devoiced": "single_choice",
    "sentence_devoicing": "single_choice",
    "fast_contraction_recognition": "single_choice",
    "multiple_contractions": "single_choice",
    "shadowing_prep": "single_choice",
    "sentence_comprehension": "single_choice",
    "sentence_listening": "single_choice",
    "mixed_practice": "single_choice",
    "word_with_special_sounds": "single_choice",
    "katakana_fu_variations": "single_choice",
    "mixed_special_sounds": "single_choice",
    "error_detection": "single_choice",
    "speed_test": "single_choice",
    "ultimate_speed_test": "single_choice",
    "ultimate_analysis": "single_choice",
    "sentence_with_complex_words": "single_choice",
    "incomplete_sentence": "single_choice",
    "listing_pattern": "single_choice",

    # same_different
    "same_or_different": "same_different",
    "same_or_different_pitch": "same_different",
    "voiced_voiceless": "same_different",
    "slow_vs_natural": "same_different",

    # minimal_pair
    "minimal_pair": "minimal_pair",
    "minimal_pair_choice": "minimal_pair",
    "minimal_pair_complex": "minimal_pair",
    "minimal_pair_yoon": "minimal_pair",
    "minimal_pair_sentence": "minimal_pair",
    "three_way_distinction": "minimal_pair",

    # counting
    "count_mora": "counting",
    "mora_counting": "counting",
    "count_sound": "counting",
    "count_dakuon": "counting",
    "count_high_mora": "counting",

    # dictation
    "dictation": "dictation",
    "dictation_with_pitch": "dictation",
    "dictation_advanced": "dictation",
    "dictation_with_difficult_sounds": "dictation",

    # matching
    "match_pairs": "matching",
    "ne_vs_yo": "matching",
    "function_matching": "matching",
    "tone_matching": "matching",
    "pitch_pattern_matching": "matching",

    # dialogue
    "dialogue_comprehension": "dialogue",
    "listening_dialogue": "dialogue",
    "situational_dialogue": "dialogue",
    "extended_dialogue": "dialogue",
    "multi_speaker_dialogue": "dialogue",
    "multi_speaker": "dialogue",
    "fast_dialogue": "dialogue",
    "comprehensive_listening": "dialogue",
    "comprehensive_test": "dialogue",
    "dialogue_pitch_awareness": "dialogue",
    "natural_conversation": "dialogue",
    "inference_questions": "dialogue",

    # announcement
    "announcement_comprehension": "announcement",
    "announcement_listening": "announcement",
    "monologue_comprehension": "announcement",
    "weather_comprehension": "announcement",
    "listening_comprehension": "announcement",
    "final_challenge": "announcement",
}


def generate_id(source_file: str, index: int, content: str) -> str:
    """Tạo ID duy nhất cho câu hỏi"""
    base = source_file.replace('.json', '').replace('_exercises', '')
    return f"{base}_{index:04d}"


def get_base_type(old_type: Optional[str]) -> str:
    """Map type cũ sang base type mới"""
    if not old_type or old_type == "unknown":
        return "single_choice"  # Default
    return TYPE_MAPPING.get(old_type, "single_choice")


def convert_options(options: List[Any], correct_answer: Any = None, answer: Any = None) -> List[Dict]:
    """Chuyển đổi options sang format mới"""
    result = []

    # Xác định đáp án đúng
    correct_idx = None
    if correct_answer is not None:
        if isinstance(correct_answer, int):
            correct_idx = correct_answer
        elif isinstance(correct_answer, str) and correct_answer.isdigit():
            correct_idx = int(correct_answer)

    # Nếu có answer field (format cũ)
    correct_text = answer

    for i, opt in enumerate(options):
        opt_text = opt if isinstance(opt, str) else str(opt)

        # Xác định is_correct
        is_correct = False
        if correct_idx is not None and i == correct_idx:
            is_correct = True
        elif correct_text and opt_text == correct_text:
            is_correct = True

        result.append({
            "id": chr(97 + i),  # a, b, c, d...
            "text": opt_text,
            "is_correct": is_correct
        })

    return result


def extract_audio_id(audio_data: Any, question_id: str) -> List[str]:
    """Trích xuất audio IDs"""
    if not audio_data:
        return [f"{question_id}_audio"]

    if isinstance(audio_data, str):
        return [audio_data]
    elif isinstance(audio_data, list):
        return audio_data
    else:
        return [f"{question_id}_audio"]


def convert_simple_exercise(ex: Dict, source_file: str, index: int) -> Dict:
    """Chuyển đổi exercise đơn giản (format cũ không có type)"""
    q_id = generate_id(source_file, index, str(ex))

    options = ex.get('options', [])
    answer = ex.get('answer')

    converted_options = []
    for i, opt in enumerate(options):
        opt_text = opt if isinstance(opt, str) else str(opt)
        is_correct = (opt_text == answer) if answer else (i == 0)
        converted_options.append({
            "id": chr(97 + i),
            "text": opt_text,
            "is_correct": is_correct
        })

    result = {
        "id": q_id,
        "base_type": "single_choice",
        "sub_type": None,
        "audio_ids": extract_audio_id(ex.get('audio'), q_id),
        "prompt": "Chọn đáp án đúng",
        "difficulty": "medium",
        "options": converted_options,
        "metadata": {}
    }

    # Thêm metadata
    if ex.get('meaning'):
        result['metadata']['meaning'] = ex['meaning']
    if ex.get('romaji'):
        result['metadata']['romaji'] = ex['romaji']
    if ex.get('breakdown'):
        result['metadata']['breakdown'] = ex['breakdown']

    return result


def convert_typed_exercise(ex: Dict, source_file: str, index: int) -> Dict:
    """Chuyển đổi exercise có type"""
    old_type = ex.get('type', 'unknown')
    base_type = get_base_type(old_type)

    q_id = ex.get('question_id') or ex.get('id') or generate_id(source_file, index, str(ex))
    if not isinstance(q_id, str):
        q_id = str(q_id)

    # Xử lý prompt
    prompt = ex.get('prompt') or ex.get('instruction') or "Chọn đáp án đúng"

    # Xử lý difficulty
    difficulty = ex.get('difficulty', 'medium')
    if difficulty not in ['easy', 'medium', 'hard']:
        difficulty = 'medium'

    result = {
        "id": q_id,
        "base_type": base_type,
        "sub_type": old_type,
        "audio_ids": extract_audio_id(ex.get('audio'), q_id),
        "prompt": prompt,
        "difficulty": difficulty,
        "topic": ex.get('topic'),
        "metadata": {}
    }

    # Xử lý options
    if 'options' in ex:
        result['options'] = convert_options(
            ex['options'],
            ex.get('correct_answer'),
            ex.get('answer')
        )

    # Xử lý items (format với items array)
    if 'items' in ex and isinstance(ex['items'], list):
        result['items'] = ex['items']
        # Nếu không có options nhưng có items, tạo từ items
        if 'options' not in result:
            result['metadata']['has_items'] = True

    # Xử lý pairs (cho matching type)
    if 'pairs' in ex:
        result['pairs'] = ex['pairs']

    # Xử lý dialogues
    if 'dialogues' in ex:
        result['dialogues'] = ex['dialogues']
    if 'dialogue' in ex:
        result['dialogue'] = ex['dialogue']

    # Thêm các metadata khác
    for key in ['explanation', 'note', 'actual_word', 'actual_sentence',
                'context', 'text', 'key_phrase', 'pitch', 'mora_comparison']:
        if key in ex:
            result['metadata'][key] = ex[key]

    # Clean up empty metadata
    if not result['metadata']:
        del result['metadata']

    return result


def convert_items_based_exercise(ex: Dict, source_file: str, index: int) -> List[Dict]:
    """Chuyển đổi exercise dạng items thành nhiều questions"""
    old_type = ex.get('type', 'unknown')
    base_type = get_base_type(old_type)
    instruction = ex.get('instruction', '')

    results = []
    items = ex.get('items', [])

    for i, item in enumerate(items):
        if not isinstance(item, dict):
            continue

        q_id = f"{generate_id(source_file, index, str(ex))}_{i:02d}"

        # Tạo options từ item
        options = []
        if 'options' in item:
            for j, opt in enumerate(item['options']):
                opt_text = opt if isinstance(opt, str) else str(opt)
                is_correct = False
                if 'answer' in item:
                    is_correct = (opt_text == item['answer'])
                elif 'correct' in item:
                    is_correct = (j == item['correct'])
                options.append({
                    "id": chr(97 + j),
                    "text": opt_text,
                    "is_correct": is_correct
                })

        # Tạo prompt từ item
        prompt = item.get('question') or item.get('word') or instruction
        if item.get('audio'):
            audio_text = item['audio']
            if isinstance(audio_text, str) and len(audio_text) < 50:
                prompt = f"Nghe '{audio_text}' và {instruction.lower()}" if instruction else f"Nghe: {audio_text}"

        result = {
            "id": q_id,
            "base_type": base_type,
            "sub_type": old_type,
            "audio_ids": extract_audio_id(item.get('audio'), q_id),
            "prompt": prompt,
            "difficulty": item.get('difficulty', 'medium'),
            "topic": ex.get('topic') or ex.get('section'),
        }

        if options:
            result['options'] = options

        # Metadata
        metadata = {}
        for key in ['meaning', 'romaji', 'breakdown', 'pitch', 'note',
                    'answer', 'answer_text', 'category', 'pattern']:
            if key in item:
                metadata[key] = item[key]

        if metadata:
            result['metadata'] = metadata

        results.append(result)

    return results


def process_old_format_exercises(exercises_dict: Dict, level_name: str, source_file: str, start_index: int) -> List[Dict]:
    """Xử lý format cũ: exercises là dict với keys như same_or_different, choose_one..."""
    results = []
    index = start_index

    for ex_type, ex_data in exercises_dict.items():
        if not isinstance(ex_data, dict):
            continue

        instruction = ex_data.get('instruction', '')
        base_type = get_base_type(ex_type)

        # Xử lý pairs (same_or_different)
        if 'pairs' in ex_data:
            for i, pair in enumerate(ex_data['pairs']):
                q_id = f"{source_file.replace('.json', '')}_{level_name}_{ex_type}_{index:04d}"

                answer = pair.get('answer', '')
                options = [
                    {"id": "a", "text": "Giống nhau (Same)", "is_correct": answer == "same"},
                    {"id": "b", "text": "Khác nhau (Different)", "is_correct": answer == "different"}
                ]

                results.append({
                    "id": q_id,
                    "base_type": "same_different",
                    "sub_type": ex_type,
                    "audio_ids": [pair.get('audio_1', ''), pair.get('audio_2', '')],
                    "prompt": instruction or "Hai âm này giống hay khác nhau?",
                    "difficulty": "easy",
                    "options": options,
                    "metadata": {
                        "audio_1": pair.get('audio_1'),
                        "audio_2": pair.get('audio_2')
                    }
                })
                index += 1

        # Xử lý questions (choose_one, etc.)
        if 'questions' in ex_data:
            for i, q in enumerate(ex_data['questions']):
                q_id = f"{source_file.replace('.json', '')}_{level_name}_{ex_type}_{index:04d}"

                options = []
                answer = q.get('answer')
                for j, opt in enumerate(q.get('options', [])):
                    opt_text = opt if isinstance(opt, str) else str(opt)
                    options.append({
                        "id": chr(97 + j),
                        "text": opt_text,
                        "is_correct": opt_text == answer
                    })

                result = {
                    "id": q_id,
                    "base_type": base_type,
                    "sub_type": ex_type,
                    "audio_ids": [q.get('audio', '')] if q.get('audio') else [],
                    "prompt": instruction or "Chọn đáp án đúng",
                    "difficulty": "medium",
                    "options": options
                }

                # Metadata
                metadata = {}
                for key in ['meaning', 'romaji', 'mora', 'breakdown', 'note']:
                    if key in q:
                        metadata[key] = q[key]
                if metadata:
                    result['metadata'] = metadata

                results.append(result)
                index += 1

        # Xử lý items
        if 'items' in ex_data:
            for i, item in enumerate(ex_data['items']):
                q_id = f"{source_file.replace('.json', '')}_{level_name}_{ex_type}_{index:04d}"

                options = []
                answer = item.get('answer')
                for j, opt in enumerate(item.get('options', [])):
                    opt_text = opt if isinstance(opt, str) else str(opt)
                    options.append({
                        "id": chr(97 + j),
                        "text": opt_text,
                        "is_correct": opt_text == answer
                    })

                result = {
                    "id": q_id,
                    "base_type": base_type,
                    "sub_type": ex_type,
                    "audio_ids": [item.get('audio', '')] if item.get('audio') else [],
                    "prompt": instruction or "Chọn đáp án đúng",
                    "difficulty": "medium",
                }

                if options:
                    result['options'] = options

                # Correct answer cho counting, dictation
                if 'answer' in item and not options:
                    result['correct_answer'] = item['answer']

                metadata = {}
                for key in ['meaning', 'romaji', 'mora', 'breakdown', 'note', 'actual', 'category']:
                    if key in item:
                        metadata[key] = item[key]
                if metadata:
                    result['metadata'] = metadata

                results.append(result)
                index += 1

    return results


def process_file(filepath: Path) -> Dict:
    """Xử lý một file JSON"""
    with open(filepath, 'r', encoding='utf-8') as f:
        data = json.load(f)

    source_file = filepath.name
    questions = []
    index = 0

    def process_exercises(exercises: List, parent_info: Dict = None):
        nonlocal index
        for ex in exercises:
            if not isinstance(ex, dict):
                continue

            # Merge parent info nếu có
            if parent_info:
                for k, v in parent_info.items():
                    if k not in ex:
                        ex[k] = v

            # Quyết định cách convert
            if 'items' in ex and isinstance(ex['items'], list) and len(ex['items']) > 0:
                # Items-based: expand thành nhiều questions
                converted = convert_items_based_exercise(ex, source_file, index)
                questions.extend(converted)
                index += len(converted)
            elif 'type' in ex or 'question_id' in ex:
                # Có type hoặc question_id
                converted = convert_typed_exercise(ex, source_file, index)
                questions.append(converted)
                index += 1
            elif 'options' in ex and 'audio' in ex:
                # Format đơn giản (files cũ)
                converted = convert_simple_exercise(ex, source_file, index)
                questions.append(converted)
                index += 1

    # Xử lý các cấu trúc khác nhau

    # 1. Direct exercises array
    if 'exercises' in data and isinstance(data['exercises'], list):
        process_exercises(data['exercises'])

    # 2. Levels as LIST
    if 'levels' in data and isinstance(data['levels'], list):
        for level in data['levels']:
            if isinstance(level, dict) and 'exercises' in level:
                parent_info = {'difficulty': level.get('difficulty', 'medium')}
                process_exercises(level['exercises'], parent_info)

    # 3. Levels as DICT (OLD FORMAT: L1, L2, L3...)
    if 'levels' in data and isinstance(data['levels'], dict):
        for level_key, level_data in data['levels'].items():
            if isinstance(level_data, dict) and 'exercises' in level_data:
                exercises_data = level_data['exercises']
                # Check if exercises is dict (old format) or list
                if isinstance(exercises_data, dict):
                    converted = process_old_format_exercises(
                        exercises_data, level_key, source_file, index
                    )
                    questions.extend(converted)
                    index += len(converted)
                elif isinstance(exercises_data, list):
                    parent_info = {'difficulty': level_data.get('difficulty', 'medium')}
                    process_exercises(exercises_data, parent_info)

    # 4. level_1, level_2... structure
    for key in data.keys():
        if key.startswith('level_') and isinstance(data[key], dict):
            level_data = data[key]
            if 'exercises' in level_data:
                if isinstance(level_data['exercises'], list):
                    parent_info = {'difficulty': level_data.get('difficulty', 'medium')}
                    process_exercises(level_data['exercises'], parent_info)
                elif isinstance(level_data['exercises'], dict):
                    converted = process_old_format_exercises(
                        level_data['exercises'], key, source_file, index
                    )
                    questions.extend(converted)
                    index += len(converted)

    # 5. section_A, section_B... structure (graduation test)
    for key in data.keys():
        if key.startswith('section_') and isinstance(data[key], dict):
            section_data = data[key]
            if 'questions' in section_data:
                parent_info = {'topic': section_data.get('title')}
                process_exercises(section_data['questions'], parent_info)

    # 6. sections dict with A, B, C, D keys (stage1_final_test format)
    if 'sections' in data and isinstance(data['sections'], dict):
        for section_key, section_data in data['sections'].items():
            if isinstance(section_data, dict) and 'exercises' in section_data:
                exercises_data = section_data['exercises']
                if isinstance(exercises_data, dict):
                    converted = process_old_format_exercises(
                        exercises_data, f"section_{section_key}", source_file, index
                    )
                    questions.extend(converted)
                    index += len(converted)

    # Tạo output
    result = {
        "metadata": {
            "source_file": source_file,
            "original_title": data.get('metadata', {}).get('title', source_file),
            "total_questions": len(questions),
            "schema_version": "2.0"
        },
        "questions": questions
    }

    return result


def main():
    exercises_dir = Path('exercises')
    output_dir = Path('exercises_unified')
    output_dir.mkdir(exist_ok=True)

    all_questions = []
    file_stats = []

    print("=" * 60)
    print("CONVERTING JSON TO UNIFIED SCHEMA")
    print("=" * 60)
    print()

    for filepath in sorted(exercises_dir.glob('*.json')):
        print(f"Processing: {filepath.name}...", end=" ")

        try:
            result = process_file(filepath)
            count = len(result['questions'])

            # Save individual file
            output_path = output_dir / filepath.name
            with open(output_path, 'w', encoding='utf-8') as f:
                json.dump(result, f, ensure_ascii=False, indent=2)

            all_questions.extend(result['questions'])
            file_stats.append({
                'file': filepath.name,
                'questions': count
            })

            print(f"OK ({count} questions)")

        except Exception as e:
            print(f"ERROR: {e}")

    # Save combined file
    combined = {
        "metadata": {
            "title": "All Alphabet Exercises - Unified Schema",
            "total_questions": len(all_questions),
            "schema_version": "2.0",
            "files_processed": len(file_stats)
        },
        "questions": all_questions
    }

    combined_path = output_dir / '_all_questions.json'
    with open(combined_path, 'w', encoding='utf-8') as f:
        json.dump(combined, f, ensure_ascii=False, indent=2)

    # Summary
    print()
    print("=" * 60)
    print("SUMMARY")
    print("=" * 60)
    print()
    for stat in file_stats:
        print(f"  {stat['file']:<45} {stat['questions']:>4} questions")
    print()
    print(f"  {'TOTAL':<45} {len(all_questions):>4} questions")
    print()
    print(f"Output directory: {output_dir.absolute()}")
    print(f"Combined file: {combined_path.name}")

    # Stats by base_type
    print()
    print("BY BASE TYPE:")
    type_counts = {}
    for q in all_questions:
        bt = q.get('base_type', 'unknown')
        type_counts[bt] = type_counts.get(bt, 0) + 1

    for bt, count in sorted(type_counts.items(), key=lambda x: -x[1]):
        print(f"  {bt:<20} {count:>4}")


if __name__ == '__main__':
    main()
