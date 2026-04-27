#!/usr/bin/env python3
"""
Fix dialogue table format across ALL Hizashi books (01-08):
- Move bối cảnh from speaker cell *(...)* into italic line ABOVE table
- Remove L1/L2/L3 column entirely (whether bold **L1** or plain L1)
- Drop empty rows that result from context-only header rows

Before:
    | | Speaker | Câu |
    |--|---------|-----|
    | **L1** | **ズン** *(8:55, đợi khách)* | 「...」 |
    | **L2** | **大垣** | 「...」 |

After:
    *8:55, đợi khách*

    | Speaker | Câu |
    |---------|-----|
    | **ズン** | 「...」 |
    | **大垣** | 「...」 |
"""
import re
from pathlib import Path

ROOT = Path(__file__).parent.parent.parent  # Hizashi_book/

BOOKS = ["01_email", "02_phone", "03_meeting", "04_horenso",
         "05_presentation", "06_negotiation", "07_visit_card", "08_smalltalk"]


def transform(text: str) -> str:
    lines = text.split("\n")
    out = []
    i = 0
    header_re = re.compile(r"^\|\s*\|\s*Speaker\s*\|\s*(?:Câu|セリフ|発話|Lời|台詞)\s*\|\s*$")
    sep_re = re.compile(r"^\|[\s\-:|]+\|[\s\-:|]+\|[\s\-:|]+\|\s*$")
    while i < len(lines):
        line = lines[i]
        if header_re.match(line.strip()) and i + 1 < len(lines) and sep_re.match(lines[i + 1].strip()):
            body = []
            j = i + 2
            while j < len(lines):
                row = lines[j]
                if re.match(r"^\|.*\|.*\|.*\|\s*$", row) and not sep_re.match(row.strip()):
                    body.append(row)
                    j += 1
                else:
                    break
            contexts = []
            new_body = []
            for row in body:
                cells = [c.strip() for c in row.strip().strip("|").split("|")]
                if len(cells) < 3:
                    continue
                speaker_cell = cells[1]
                cau_cell = cells[2]
                ctx_match = re.search(r"\*\((.*?)\)\*", speaker_cell)
                if ctx_match:
                    contexts.append(ctx_match.group(1).strip())
                    speaker_cell = re.sub(r"\s*\*\(.*?\)\*", "", speaker_cell).strip()
                # Skip empty rows (context-only)
                if not speaker_cell and not cau_cell:
                    continue
                # Skip "all-bar empty" cells
                if not speaker_cell.strip("*") and not cau_cell.strip():
                    continue
                new_body.append(f"| {speaker_cell} | {cau_cell} |")
            if contexts:
                ctx_str = " · ".join(contexts)
                out.append(f"*{ctx_str}*")
                out.append("")
            out.append("| Speaker | Câu |")
            out.append("|---------|-----|")
            out.extend(new_body)
            i = j
            continue
        out.append(line)
        i += 1
    text2 = "\n".join(out)
    # Final cleanup: drop empty 2-col table rows that survived
    text2 = re.sub(r"^\|\s*\|\s*\|\s*$\n", "", text2, flags=re.M)
    return text2


def main():
    grand_files = 0
    grand_tables = 0
    for book in BOOKS:
        bd = ROOT / "books" / book
        if not bd.is_dir():
            continue
        files_changed = 0
        tables_changed = 0
        # Search recursively under nội_dung
        nd = bd / "nội_dung"
        if not nd.is_dir():
            continue
        for md in sorted(nd.rglob("*.md")):
            if md.name.startswith("_"):  # skip front matter
                # but allow it — front matter probably doesn't have these tables
                pass
            src = md.read_text(encoding="utf-8")
            tables_before = len(re.findall(r"^\|\s*\|\s*Speaker\s*\|", src, re.M))
            if tables_before == 0:
                continue
            new = transform(src)
            if new != src:
                md.write_text(new, encoding="utf-8")
                files_changed += 1
                tables_changed += tables_before
        if files_changed:
            print(f"  {book}: {files_changed} files, {tables_changed} tables")
            grand_files += files_changed
            grand_tables += tables_changed
        else:
            print(f"  {book}: -")
    print(f"\nTotal: {grand_files} files, {grand_tables} tables transformed")


if __name__ == "__main__":
    main()
