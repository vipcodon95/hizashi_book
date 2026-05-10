#!/usr/bin/env python3
"""
Thêm field `han_viet` vào mỗi vocab entry trong reading JSON.

Cách lấy:
1. Tách word ra từng character, lọc kanji (CJK 0x4E00-0x9FFF, ext A 0x3400-0x4DBF).
2. Mỗi kanji query dict_character.literal:
   - lấy old_han_viet (single value, UPPERCASE), title-case; nếu rỗng → fallback han_viet (split ';', first).
3. Concat lại bằng space (giữ thứ tự kanji).
4. Nếu word KHÔNG có kanji nào (toàn kana/katakana) → han_viet = "" (key vẫn add cho consistent schema).

Usage:
    python3 add_han_viet.py <file_or_glob>      # in-place modify
    python3 add_han_viet.py --dry-run <file>    # preview, không sửa
    python3 add_han_viet.py --all               # toàn bộ batch_*.json trong reading_collection
"""

import json
import sqlite3
import sys
import os
import glob
import re
import argparse

DB_PATH = "/Users/binh/Documents/Project/Hizashi/HizashiWeb/backend/_dictionary/hizashi_db.db"
ROOT = "/Users/binh/Documents/Claude/Projects/Hizashi_book/books/reading_collection"

KANJI_RE = re.compile(r'[㐀-䶿一-鿿]')


def is_kanji(c):
    return bool(KANJI_RE.match(c))


def load_kanji_map(conn):
    """Preload toàn bộ literal → han_viet hợp nhất (1 char/row)."""
    cur = conn.execute("SELECT literal, han_viet, old_han_viet FROM dict_character WHERE literal IS NOT NULL")
    m = {}
    for literal, hv, old in cur:
        if not literal:
            continue
        # Ưu tiên old_han_viet (UPPERCASE chuẩn), fallback han_viet
        # Split cả ';' lẫn ',' (một số entries dùng comma)
        first = ""
        for src in (old, hv):
            if src and src.strip():
                first = re.split(r'[;,]', src)[0].strip()
                if first:
                    break
        if first:
            # Normalize title case (first kí tự hoa, các kí tự sau lower) — old_han_viet thường là UPPERCASE
            first = first[0].upper() + first[1:].lower() if len(first) > 1 else first.upper()
            m[literal] = first
    return m


def word_to_han_viet(word, kanji_map, missing_set):
    """Trả về Hán-Việt cho word. Toàn kana → ''. Có kanji → concat space."""
    parts = []
    for c in word:
        if is_kanji(c):
            hv = kanji_map.get(c)
            if hv:
                parts.append(hv)
            else:
                missing_set.add(c)
                parts.append("?")
    return " ".join(parts)


def process_file(path, kanji_map, missing_set, dry_run=False):
    with open(path, encoding="utf-8") as f:
        data = json.load(f)
    items = data if isinstance(data, list) else data.get("items") or list(data.values())[0]

    changed = 0
    for it in items:
        for v in it.get("vocabulary", []) or []:
            word = v.get("word", "")
            new_hv = word_to_han_viet(word, kanji_map, missing_set)
            if v.get("han_viet") != new_hv:
                v["han_viet"] = new_hv
                changed += 1

    if changed and not dry_run:
        with open(path, "w", encoding="utf-8") as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
    return changed


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("targets", nargs="*", help="files or globs")
    ap.add_argument("--all", action="store_true", help="all batch_*.json in reading_collection")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    if args.all:
        files = sorted(glob.glob(f"{ROOT}/*_drafts/batch_*.json"))
    else:
        files = []
        for t in args.targets:
            if "*" in t:
                files.extend(sorted(glob.glob(t)))
            else:
                files.append(t)
    files = [f for f in files if os.path.exists(f)]
    if not files:
        sys.exit("No files matched.")

    conn = sqlite3.connect(DB_PATH)
    print(f"Loading kanji map from {DB_PATH} ...")
    kanji_map = load_kanji_map(conn)
    print(f"  {len(kanji_map)} kanji loaded.\n")
    conn.close()

    missing = set()
    grand_total = 0
    for path in files:
        n = process_file(path, kanji_map, missing, dry_run=args.dry_run)
        grand_total += n
        rel = os.path.relpath(path, ROOT)
        flag = "(dry)" if args.dry_run else ""
        print(f"  {rel}: {n:4d} vocab updated {flag}")

    print(f"\nTotal: {grand_total} vocab entries updated across {len(files)} files.")
    if missing:
        print(f"\n{len(missing)} kanji không có trong dict_character (rendered as '?'):")
        print("  " + "".join(sorted(missing)[:200]))


if __name__ == "__main__":
    main()
