#\!/usr/bin/env python3
"""
Apply VN review fix: JP customer self-reference "anh"/"em" → "tôi" in conversation.json.

Targets the bug from sách 06: JP customers (Matsumoto, Nakamura, Ōgaki, etc.) self-referring
as "anh" or "em" in VN translation instead of "tôi".

Strategy:
- Walk all conversation.json files
- For each line where speaker is in JP customer list, examine ja+vi
- For each candidate "anh/em" → "tôi" pattern: only apply when the JA source clearly indicates
  self-reference (NOT 2nd-person address to Dũng).
- Heuristic: a "Em ..." or "anh ..." occurrence at sentence start that maps to a JA self-ref
  marker like 私/俺/僕 OR an unmarked 1st-person verb (Japanese drops 私 freely).
- We use BOTH ja and vi to disambiguate:
  - If JA contains addressing markers (ズンさん、ズンくん、奥様、お子さん、君、お前) AND no self-ref
    pronoun, the "em" in VN is 2nd-person address — SKIP.
  - Otherwise apply replacement.

Usage: python3 scripts/apply_review_fixes.py [--dry-run] [--verbose]
"""

import json
import re
import sys
from pathlib import Path

BOOK_ROOT = Path(__file__).parent.parent
NOI_DUNG = BOOK_ROOT / "nội_dung"

# JP customer speaker keys whose self-ref must be "tôi"
JP_CUSTOMER_KEYS = {
    "matsumoto",
    "nakamura_cfo",
    "oogaki_sales",
    "tanaka_pmo",
    "hiroshi_chugoku",
    "yamamoto_kansai",
    "sato_kyushu",
    "kobayashi_okinawa",
    "ito_nagoya",
    "kato_gifu",
    "reception_hakuo",
}

# JP markers that say "you" addressing Dũng (so "em" in VN is 2nd person)
ADDRESS_DUNG_JP_MARKERS = [
    r"ズンさん",
    r"ズンくん",
    r"ヅンさん",
    r"奥様",
    r"奥さん",
    r"お子さん",
    r"お子様",
    r"君は",
    r"君の",
    r"ベトナム",  # like "ベトナムでは" referencing Dũng's country
]

# Patterns considered self-action: when JA likely refers to JP speaker themselves
# We pair each (vi_pattern, vi_replace) with optional ja_hint that boosts confidence
PATTERNS = [
    # Verbs of self-action with "anh" — these are very strong signals (anh = senior
    # JP cannot say about himself — wrong). Apply unconditionally for JP customer.
    (r"\banh ngủ\b", "tôi ngủ"),
    (r"\bAnh ngủ\b", "Tôi ngủ"),
    (r"\banh dẫn\b", "tôi dẫn"),
    (r"\bAnh dẫn\b", "Tôi dẫn"),
    (r"\banh chụp\b", "tôi chụp"),
    (r"\bAnh chụp\b", "Tôi chụp"),
    (r"\banh sẽ\b", "tôi sẽ"),
    (r"\bAnh sẽ\b", "Tôi sẽ"),
    (r"\banh rất\b", "tôi rất"),
    (r"\bAnh rất\b", "Tôi rất"),
    (r"\banh cũng\b", "tôi cũng"),
    (r"\bAnh cũng\b", "Tôi cũng"),
    (r"\banh thấy\b", "tôi thấy"),
    (r"\bAnh thấy\b", "Tôi thấy"),
    (r"\banh nghĩ\b", "tôi nghĩ"),
    (r"\bAnh nghĩ\b", "Tôi nghĩ"),
    (r"\banh biết\b", "tôi biết"),
    (r"\bAnh biết\b", "Tôi biết"),
    (r"\banh muốn\b", "tôi muốn"),
    (r"\bAnh muốn\b", "Tôi muốn"),
    (r"\banh thích\b", "tôi thích"),
    (r"\bAnh thích\b", "Tôi thích"),
    (r"\banh đã\b", "tôi đã"),
    (r"\bAnh đã\b", "Tôi đã"),
    (r"\banh hay\b", "tôi hay"),
    (r"\bAnh hay\b", "Tôi hay"),
    (r"\banh không\b", "tôi không"),
    (r"\bAnh không\b", "Tôi không"),
    (r"\banh chưa\b", "tôi chưa"),
    (r"\bAnh chưa\b", "Tôi chưa"),
    (r"\banh đi\b", "tôi đi"),
    (r"\bAnh đi\b", "Tôi đi"),
    (r"\banh ăn\b", "tôi ăn"),
    (r"\bAnh ăn\b", "Tôi ăn"),
    (r"\banh uống\b", "tôi uống"),
    (r"\bAnh uống\b", "Tôi uống"),
    (r"\banh nhớ\b", "tôi nhớ"),
    (r"\bAnh nhớ\b", "Tôi nhớ"),
    (r"\banh từng\b", "tôi từng"),
    (r"\bAnh từng\b", "Tôi từng"),
    (r"\banh là\b", "tôi là"),
    (r"\bAnh là\b", "Tôi là"),
    (r"\banh có\b", "tôi có"),
    (r"\bAnh có\b", "Tôi có"),
    (r"\banh nói\b", "tôi nói"),
    (r"\bAnh nói\b", "Tôi nói"),
    (r"\banh nghe\b", "tôi nghe"),
    (r"\bAnh nghe\b", "Tôi nghe"),
    (r"\banh hiểu\b", "tôi hiểu"),
    (r"\bAnh hiểu\b", "Tôi hiểu"),
    # "Bên anh" (own side) → "bên tôi" when self-ref by JP customer
    (r"\bBên anh\b", "Bên tôi"),
    (r"\bbên anh\b", "bên tôi"),
]

# Patterns where the JA must NOT contain a 2nd-person addressing marker
# (because "em" can be 2nd person to Dũng — keep it then)
EM_PATTERNS_NEEDS_NO_ADDRESS = [
    (r"\bEm chả\b", "Tôi chả"),
    (r"\bem chả\b", "tôi chả"),
    (r"\bEm muốn xem\b", "Tôi muốn xem"),
    (r"\bem muốn xem\b", "tôi muốn xem"),
]


def ja_addresses_dung(ja: str) -> bool:
    """Returns True if JA line addresses Dũng (so 'em' in VN is 2nd person)."""
    for m in ADDRESS_DUNG_JP_MARKERS:
        if re.search(m, ja):
            return True
    return False


def fix_vi_line(vi: str, ja: str) -> tuple:
    """Apply patterns. Returns (new_vi, list_of_changes_descriptions)."""
    new_vi = vi
    changes = []
    addresses_dung = ja_addresses_dung(ja)

    # Always apply "anh" patterns (anh = senior/own; JP customer cannot self-ref as anh)
    for pattern, repl in PATTERNS:
        if re.search(pattern, new_vi):
            new_vi2 = re.sub(pattern, repl, new_vi)
            if new_vi2 != new_vi:
                changes.append(pattern.replace("\\b", ""))
                new_vi = new_vi2

    # "em" patterns: only apply when JA does NOT address Dũng
    if not addresses_dung:
        for pattern, repl in EM_PATTERNS_NEEDS_NO_ADDRESS:
            if re.search(pattern, new_vi):
                new_vi2 = re.sub(pattern, repl, new_vi)
                if new_vi2 != new_vi:
                    changes.append(pattern.replace("\\b", "") + "(JP-em)")
                    new_vi = new_vi2

    return new_vi, changes


def process_conversation_file(jp_path: Path, dry_run: bool = False):
    """Process a single conversation.json. Returns details."""
    try:
        data = json.load(open(jp_path, encoding="utf-8"))
    except Exception as e:
        print(f"  warn: {jp_path}: {e}")
        return (jp_path, 0, 0, [])

    lines_fixed = 0
    total_changes = 0
    change_log = []

    for conv in data.get("conversations", []):
        for line in conv.get("lines", []):
            speaker = line.get("speaker", "")
            if speaker not in JP_CUSTOMER_KEYS:
                continue
            vi = line.get("vi", "")
            ja = line.get("ja", "")
            if not vi:
                continue
            new_vi, changes = fix_vi_line(vi, ja)
            if changes:
                lines_fixed += 1
                total_changes += len(changes)
                change_log.append({
                    "speaker": speaker,
                    "ja": ja,
                    "before": vi,
                    "after": new_vi,
                    "changes": changes,
                })
                if not dry_run:
                    line["vi"] = new_vi

    if lines_fixed and not dry_run:
        with open(jp_path, "w", encoding="utf-8") as f:
            json.dump(data, f, ensure_ascii=False, indent=2)

    return (jp_path, lines_fixed, total_changes, change_log)


def main():
    dry_run = "--dry-run" in sys.argv
    verbose = "--verbose" in sys.argv

    files = sorted(NOI_DUNG.glob("phần_*/rule_*/conversation.json"))
    print(f"Scanning {len(files)} conversation.json files...")
    print(f"Mode: {'DRY-RUN' if dry_run else 'APPLY'}")
    print()

    total_files_changed = 0
    total_lines_fixed = 0
    total_changes = 0
    detail_logs = []

    for f in files:
        result = process_conversation_file(f, dry_run=dry_run)
        path, lines_fixed, changes, change_log = result
        if lines_fixed:
            total_files_changed += 1
            total_lines_fixed += lines_fixed
            total_changes += changes
            rel = path.relative_to(BOOK_ROOT)
            print(f"  {rel}: {lines_fixed} lines, {changes} changes")
            detail_logs.append((str(rel), change_log))

    print()
    print("=== SUMMARY ===")
    print(f"  files changed: {total_files_changed}/{len(files)}")
    print(f"  lines fixed:   {total_lines_fixed}")
    print(f"  total changes: {total_changes}")

    if verbose:
        print()
        print("=== DETAILED LOG ===")
        for rel, log in detail_logs:
            for entry in log:
                print(f"\n  [{rel}] speaker={entry['speaker']} changes={entry['changes']}")
                print(f"    JA:     {entry['ja']}")
                print(f"    BEFORE: {entry['before']}")
                print(f"    AFTER:  {entry['after']}")


if __name__ == "__main__":
    main()
