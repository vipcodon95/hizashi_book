"""Validate schema toàn bộ 700 bài Reading Collection theo READING_SPEC.md"""
import json, os, re, sys
from collections import defaultdict, Counter

FOLDER_LEVELS = {
    'n5_basic_drafts': (1, 'N5_basic', 'N5'),
    'n5_advanced_drafts': (2, 'N5_advanced', 'N5'),
    'n4_basic_drafts': (3, 'N4_basic', 'N4'),
    'n4_advanced_drafts': (4, 'N4_advanced', 'N4'),
    'n3_basic_drafts': (5, 'N3_basic', 'N3'),
    'n3_advanced_drafts': (6, 'N3_advanced', 'N3'),
    'n2_basic_drafts': (7, 'N2_basic', 'N2'),
    'n2_advanced_drafts': (8, 'N2_advanced', 'N2'),
    'n1_basic_drafts': (9, 'N1_basic', 'N1'),
    'n1_advanced_drafts': (9, 'N1_advanced', 'N1'),
    'native_basic_drafts': (10, 'native_basic', 'Native'),
    'native_advanced_drafts': (10, 'native_advanced', 'Native'),
}

# Sentence count range per level (per spec)
SC_RANGE = {
    1: (6, 8), 2: (8, 10), 3: (10, 12), 4: (12, 14),
    5: (12, 15), 6: (14, 18), 7: (15, 20), 8: (18, 22),
    9: (20, 25), 10: (20, 30),
}
# Question count per level
QC_RANGE = {
    1: (2, 2), 2: (2, 2), 3: (3, 3), 4: (3, 3),
    5: (3, 4), 6: (3, 4), 7: (4, 4), 8: (4, 4),
    9: (5, 5), 10: (5, 5),
}
# Vocabulary count
VOCAB_RANGE = {
    1: (3, 5), 2: (3, 5), 3: (5, 8), 4: (5, 8),
    5: (8, 12), 6: (8, 12), 7: (10, 15), 8: (10, 15),
    9: (12, 20), 10: (12, 20),
}

REQUIRED_META = ['id', 'level', 'level_label', 'jlpt', 'title', 'title_vi',
                 'topic', 'subtopic', 'tags', 'grammar_used', 'sentence_count']
REQUIRED_CONTENT = ['text', 'translation', 'vocabulary', 'process', 'comprehension']
REQUIRED_PROCESS = ['sentence', 'chunks', 'guide', 'translation']
REQUIRED_VOCAB = ['word', 'reading', 'meaning']
REQUIRED_QUESTION = ['id', 'question', 'question_vi', 'answers', 'explanation']
REQUIRED_ANSWER = ['text', 'text_vi', 'is_correct']


def has_vn_diacritics(s):
    """Check if Vietnamese string seems to have diacritics."""
    if not s or not isinstance(s, str):
        return True
    # Has non-ASCII Vietnamese chars
    return bool(re.search(r'[àáảãạăằắẳẵặâầấẩẫậèéẻẽẹêềếểễệìíỉĩịòóỏõọôồốổỗộơờớởỡợùúủũụưừứửữựỳýỷỹỵđ]', s, re.IGNORECASE))


def validate_bai(r, folder, exp_lv, exp_lbl, exp_jlpt):
    issues = []
    rid = r.get('id', '?')

    # Required fields
    for f in REQUIRED_META + REQUIRED_CONTENT:
        if f not in r:
            issues.append(f'MISSING_FIELD: {f}')

    # Type checks
    if not re.match(r'^R_\d{4}$', r.get('id', '')):
        issues.append(f'BAD_ID_FORMAT: {r.get("id")}')
    if r.get('level') != exp_lv:
        issues.append(f'LEVEL_MISMATCH: {r.get("level")} (expected {exp_lv})')
    if r.get('level_label') != exp_lbl:
        issues.append(f'LABEL_MISMATCH: {r.get("level_label")} (expected {exp_lbl})')
    if r.get('jlpt') != exp_jlpt:
        issues.append(f'JLPT_MISMATCH: {r.get("jlpt")} (expected {exp_jlpt})')

    # Tags / grammar_used
    if not isinstance(r.get('tags', []), list):
        issues.append('TAGS_NOT_LIST')
    if not isinstance(r.get('grammar_used', []), list):
        issues.append('GRAMMAR_USED_NOT_LIST')

    # Title VN diacritics
    if r.get('title_vi') and not has_vn_diacritics(r['title_vi']):
        issues.append(f'TITLE_VI_NO_DIACRITICS: {r["title_vi"][:30]}')
    if r.get('translation') and not has_vn_diacritics(r['translation']):
        issues.append('TRANSLATION_NO_DIACRITICS')

    # sentence_count = len(process)
    sc = r.get('sentence_count', 0)
    proc = r.get('process', [])
    if sc != len(proc):
        issues.append(f'SC_PROCESS_MISMATCH: sc={sc} proc={len(proc)}')

    # SC range per level
    lo, hi = SC_RANGE[exp_lv]
    if not (lo <= sc <= hi):
        # Relaxed: warn only if outside soft buffer
        soft_lo = max(1, lo - 2)
        soft_hi = hi + 8 if exp_lv >= 7 else hi + 2
        if not (soft_lo <= sc <= soft_hi):
            issues.append(f'SC_OUT_OF_RANGE: sc={sc} (spec {lo}-{hi})')

    # Process structure
    for i, p in enumerate(proc):
        for f in REQUIRED_PROCESS:
            if f not in p:
                issues.append(f'PROCESS[{i}]_MISSING: {f}')
        # process.sentence in text
        if p.get('sentence') and r.get('text') and p['sentence'].strip() not in r['text']:
            issues.append(f'PROCESS[{i}]_NOT_IN_TEXT')
        # process.translation diacritics
        if p.get('translation') and not has_vn_diacritics(p['translation']):
            issues.append(f'PROCESS[{i}]_TRANSLATION_NO_DIACRITICS')
        # guide diacritics
        if p.get('guide') and not has_vn_diacritics(p['guide']):
            issues.append(f'PROCESS[{i}]_GUIDE_NO_DIACRITICS')

    # Vocabulary
    vocab = r.get('vocabulary', [])
    vlo, vhi = VOCAB_RANGE[exp_lv]
    if not (vlo <= len(vocab) <= vhi):
        # Soft check
        if not (vlo - 2 <= len(vocab) <= vhi + 5):
            issues.append(f'VOCAB_COUNT_OUT_OF_RANGE: {len(vocab)} (spec {vlo}-{vhi})')
    for i, v in enumerate(vocab):
        for f in REQUIRED_VOCAB:
            if f not in v:
                issues.append(f'VOCAB[{i}]_MISSING: {f}')
        if v.get('meaning') and not has_vn_diacritics(v['meaning']):
            issues.append(f'VOCAB[{i}]_MEANING_NO_DIACRITICS: {v.get("word")}')

    # Comprehension
    comp = r.get('comprehension', [])
    qlo, qhi = QC_RANGE[exp_lv]
    if not (qlo <= len(comp) <= qhi):
        issues.append(f'COMP_COUNT_OUT_OF_RANGE: {len(comp)} (spec {qlo}-{qhi})')
    for i, q in enumerate(comp):
        for f in REQUIRED_QUESTION:
            if f not in q:
                issues.append(f'Q[{i}]_MISSING: {f}')
        # Q ID format
        qid = q.get('id', '')
        if qid and not re.match(rf'^{re.escape(rid)}_Q\d+$', qid):
            issues.append(f'Q[{i}]_BAD_ID: {qid} (expected {rid}_QN)')
        # answers = 4
        ans = q.get('answers', [])
        if len(ans) != 4:
            issues.append(f'Q[{i}]_ANSWERS_NOT_4: {len(ans)}')
        # Exactly 1 correct
        n_correct = sum(1 for a in ans if a.get('is_correct') is True)
        if n_correct != 1:
            issues.append(f'Q[{i}]_CORRECT_COUNT: {n_correct} (expected 1)')
        for j, a in enumerate(ans):
            for f in REQUIRED_ANSWER:
                if f not in a:
                    issues.append(f'Q[{i}]_ANS[{j}]_MISSING: {f}')
            if a.get('text_vi') and not has_vn_diacritics(a['text_vi']):
                issues.append(f'Q[{i}]_ANS[{j}]_TEXT_VI_NO_DIACRITICS')
        # question_vi diacritics
        if q.get('question_vi') and not has_vn_diacritics(q['question_vi']):
            issues.append(f'Q[{i}]_QUESTION_VI_NO_DIACRITICS')
        # explanation diacritics
        if q.get('explanation') and not has_vn_diacritics(q['explanation']):
            issues.append(f'Q[{i}]_EXPLANATION_NO_DIACRITICS')

    return issues


def main():
    all_issues = []  # (rid, folder, file, issue)
    bai_with_issues = 0
    total = 0

    for folder, (exp_lv, exp_lbl, exp_jlpt) in FOLDER_LEVELS.items():
        if not os.path.isdir(folder):
            print(f'WARNING: folder missing: {folder}')
            continue
        files = sorted([f for f in os.listdir(folder) if f.startswith('batch_') and f.endswith('.json')])
        for fn in files:
            fp = os.path.join(folder, fn)
            try:
                data = json.load(open(fp))
            except Exception as e:
                all_issues.append(('?', folder, fn, f'JSON_PARSE_ERROR: {e}'))
                continue
            items = data if isinstance(data, list) else [data]
            for r in items:
                total += 1
                rid = r.get('id', '?')
                issues = validate_bai(r, folder, exp_lv, exp_lbl, exp_jlpt)
                if issues:
                    bai_with_issues += 1
                    for iss in issues:
                        all_issues.append((rid, folder, fn, iss))

    # Aggregate by issue type
    by_type = Counter(i[3].split(':')[0] for i in all_issues)
    by_folder = defaultdict(int)
    by_bai = defaultdict(int)
    for rid, folder, fn, iss in all_issues:
        by_folder[folder] += 1
        by_bai[rid] += 1

    print(f'\n=== SUMMARY ===')
    print(f'Total bài: {total}')
    print(f'Bài with issues: {bai_with_issues} ({100*bai_with_issues/total:.1f}%)')
    print(f'Total issues: {len(all_issues)}')
    print(f'\n=== ISSUES BY TYPE ===')
    for t, n in by_type.most_common():
        print(f'  {n:5d} × {t}')
    print(f'\n=== ISSUES BY FOLDER ===')
    for f, n in sorted(by_folder.items(), key=lambda x: -x[1]):
        print(f'  {n:5d} × {f}')
    print(f'\n=== TOP 20 BÀI HAVING MOST ISSUES ===')
    for rid, n in sorted(by_bai.items(), key=lambda x: -x[1])[:20]:
        print(f'  {rid}: {n} issues')

    # Save full report
    with open('/tmp/schema_report.json', 'w') as f:
        json.dump({
            'summary': {
                'total': total,
                'with_issues': bai_with_issues,
                'total_issues': len(all_issues),
                'by_type': dict(by_type),
                'by_folder': dict(by_folder),
            },
            'issues': [{'bai': r, 'folder': fl, 'file': fn, 'issue': iss} for r, fl, fn, iss in all_issues]
        }, f, ensure_ascii=False, indent=2)
    print(f'\nFull report: /tmp/schema_report.json')


if __name__ == '__main__':
    main()
