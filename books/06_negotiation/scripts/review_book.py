#!/usr/bin/env python3
"""Sanity review for Hizashi sách 02 — check for common issues across 60 rules."""
import json
import re
import glob
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).parent.parent

issues = []

# Load voice_profiles
vp = json.load(open(ROOT / 'nội_dung/voice_profiles.json'))
valid_speakers = set()
if isinstance(vp, dict):
    if 'speakers' in vp:
        sp = vp['speakers']
        valid_speakers = set(sp.keys()) if isinstance(sp, dict) else set(s.get('key', s.get('id', '')) for s in sp)
    elif 'profiles' in vp:
        valid_speakers = set(vp['profiles'].keys())
    else:
        valid_speakers = set(vp.keys())

print(f"Valid speakers ({len(valid_speakers)}): {sorted(valid_speakers)}")
print()

files = sorted(glob.glob(str(ROOT / 'nội_dung/phần_*/rule_*/conversation.json')))
all_speakers_used = Counter()
all_levels = Counter()
all_skills = Counter()
total_lines = 0
total_kp = 0
total_bjt = 0
rule_ids = []
phan_counts = Counter()

for f in files:
    rel = str(Path(f).relative_to(ROOT))
    data = json.load(open(f))
    rid = data.get('rule_id', '')
    rule_ids.append(rid)

    # Track which phần
    phan_match = re.search(r'phần_([IV]+)', rel)
    if phan_match:
        phan_counts[phan_match.group(1)] += 1

    folder_match = re.search(r'rule_(\d+)', rel)
    if folder_match:
        expected = f"rule_{folder_match.group(1)}"
        if rid != expected:
            issues.append(f"{rel}: rule_id '{rid}' != folder '{expected}'")

    # Required top-level fields
    for req in ['rule_id', 'rule_slug', 'title', 'rule_context', 'conversations']:
        if req not in data:
            issues.append(f"{rel}: thiếu field top-level '{req}'")

    # title bilingual
    title = data.get('title', {})
    if not title.get('ja') or not title.get('vi'):
        issues.append(f"{rel}: title thiếu ja hoặc vi")

    # conversations
    convs = data.get('conversations', [])
    if not convs:
        issues.append(f"{rel}: không có conversation nào")
    has_good = any(c.get('section') == 'good_example' for c in convs)
    if not has_good:
        issues.append(f"{rel}: thiếu good_example")

    for conv in convs:
        for line in conv.get('conversation_lines', []):
            total_lines += 1
            sp = line.get('speaker', '')
            all_speakers_used[sp] += 1
            if sp and valid_speakers and sp not in valid_speakers:
                issues.append(f"{rel}: speaker '{sp}' không có trong voice_profiles")

            for req in ['speaker', 'speaker_role', 'gender', 'sentence', 'sentence_translation']:
                if not line.get(req):
                    issues.append(f"{rel} {line.get('line_id', '?')}: thiếu '{req}'")

            vi = line.get('sentence_translation', '')
            if vi and not re.search(r'[a-zA-ZáàảãạăâêôơưđÁÀẢÃẠ]', vi):
                issues.append(f"{rel} {line.get('line_id')}: sentence_translation không có chữ VN")

    for kp in data.get('key_phrases', []):
        total_kp += 1
        for req in ['phrase_id', 'sentence', 'sentence_translation']:
            if not kp.get(req):
                issues.append(f"{rel}: key_phrase thiếu '{req}'")

    for q in data.get('bjt_practice', []):
        total_bjt += 1
        lvl = q.get('level', '?')
        all_levels[lvl] += 1
        all_skills[q.get('skill', '?')] += 1
        correct = q.get('correct', '')
        opts = q.get('options', [])
        if correct and len(opts) >= 1:
            if correct not in 'ABCDE'[:len(opts)]:
                issues.append(f"{rel} {q.get('question_id')}: correct '{correct}' invalid")

dups = [r for r, c in Counter(rule_ids).items() if c > 1]
if dups:
    issues.append(f"Trùng rule_id: {dups}")

expected = {f"rule_{i:02d}" for i in range(1, 46)}  # sách 03: 50 rules
missing = expected - set(rule_ids)
extra = set(rule_ids) - expected
if missing:
    issues.append(f"Thiếu rule: {sorted(missing)}")
if extra:
    issues.append(f"Rule lạ: {sorted(extra)}")

# Check rule.md exists for each (skip placeholder-only folders)
for rule_dir in sorted(ROOT.glob('nội_dung/phần_*/rule_*')):
    if rule_dir.is_dir():
        # Skip empty / placeholder-only folders (kept due to sandbox restrictions)
        contents = [p for p in rule_dir.iterdir() if not p.name.startswith('.')]
        if not contents:
            continue  # empty placeholder, ignore
        if not (rule_dir / 'rule.md').exists():
            issues.append(f"{rule_dir.name}: thiếu rule.md")
        if not (rule_dir / 'conversation.json').exists():
            issues.append(f"{rule_dir.name}: thiếu conversation.json")

print(f"=== STATS ===")
print(f"Total rules: {len(files)}")
print(f"Phần distribution: {dict(phan_counts)}")
print(f"Total conversation_lines: {total_lines}")
print(f"Total key_phrases: {total_kp}")
print(f"Total BJT questions: {total_bjt}")
print(f"BJT levels: {dict(all_levels)}")
print(f"BJT skills: {dict(all_skills)}")
print(f"Speakers (top): {dict(all_speakers_used.most_common(15))}")
print()
print(f"=== ISSUES: {len(issues)} ===")
for i, msg in enumerate(issues[:80], 1):
    print(f"{i}. {msg}")
if len(issues) > 80:
    print(f"... and {len(issues)-80} more")
