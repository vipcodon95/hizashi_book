#!/usr/bin/env python3
"""Canonicalize speaker_role across all 60 conversation.json files."""
import json
import glob
import re
from pathlib import Path

ROOT = Path(__file__).parent.parent / "nội_dung"

CANON_ROLE = {
    'zun': 'BD担当',
    'fuon': '副部長',
    'tuan_leader': 'チームリーダー',
    'loan_keiri': '経理部長',
    'hai': 'FE/DevOps',
    'ha_cto': 'CTO',
    'matsumoto': 'PM (白鷗株式会社)',
    'reception_hakuo': '受付 (白鷗株式会社)',
    'nakamura_cfo': 'CFO (白鷗株式会社)',
    'unknown_caller': '発信者 (社外)',
}

PRESERVE_KEYWORDS = ['司会', '留守電', '独り言', '発信', 'アンミュート', '怒り', 'online', '録音', '不在']


def canonicalize_role(speaker, role):
    canonical = CANON_ROLE.get(speaker, role)
    m = re.search(r'(\([^)]+\))$', role)
    if m:
        suffix = m.group(1)
        if 'ティエンファット' in suffix or '白鷗' in suffix:
            return canonical
        if any(k in suffix for k in PRESERVE_KEYWORDS):
            return f"{canonical} {suffix}"
    return canonical


changes = 0
files_changed = 0
for f in sorted(glob.glob(str(ROOT / 'phần_*/rule_*/conversation.json'))):
    data = json.load(open(f, encoding='utf-8'))
    file_modified = False
    for conv in data.get('conversations', []):
        for line in conv.get('conversation_lines', []):
            sp = line.get('speaker', '')
            old_role = line.get('speaker_role', '')
            new_role = canonicalize_role(sp, old_role)
            if old_role != new_role:
                line['speaker_role'] = new_role
                changes += 1
                file_modified = True
    if file_modified:
        files_changed += 1
        with open(f, 'w', encoding='utf-8') as out:
            json.dump(data, out, ensure_ascii=False, indent=2)
            out.write('\n')

print(f"Speaker roles canonicalized: {changes} lines in {files_changed} files")
