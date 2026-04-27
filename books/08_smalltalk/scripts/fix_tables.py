#!/usr/bin/env python3
"""
Fix dialogue table format in sách 08:
- Move bối cảnh from speaker cell *(...)* into italic line ABOVE table
- Remove L1/L2/L3... column entirely

Before:
    | | Speaker | Câu |
    |--|---------|-----|
    | L1 | **A** *(8:55, đợi khách)* | 「...」 |
    | L2 | **B** | 「...」 |

After:
    *8:55, đợi khách.*

    | Speaker | Câu |
    |---------|-----|
    | **A** | 「...」 |
    | **B** | 「...」 |
"""
import re
from pathlib import Path


def transform(text: str) -> str:
    lines = text.split("\n")
    out = []
    i = 0
    while i < len(lines):
        line = lines[i]
        # 3-col header: | | Speaker | Câu |
        header_re = re.compile(r"^\|\s*\|\s*Speaker\s*\|\s*(?:Câu|セリフ|発話|Lời|台詞)\s*\|\s*$")
        sep_re = re.compile(r"^\|[\s\-:|]+\|[\s\-:|]+\|[\s\-:|]+\|\s*$")
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
                col_a = cells[0]  # was L1/L2 — but sometimes used as context-only marker
                speaker_cell = cells[1]
                cau_cell = cells[2]
                # Extract bối cảnh italic *(...)*  from speaker_cell
                ctx_match = re.search(r"\*\((.*?)\)\*", speaker_cell)
                if ctx_match:
                    contexts.append(ctx_match.group(1).strip())
                    speaker_cell = re.sub(r"\s*\*\(.*?\)\*", "", speaker_cell).strip()
                # Some original rows had context-only (no speaker, no câu) — skip if both empty
                if not speaker_cell and not cau_cell:
                    continue
                # Some rows had context in col_a (cells[0]) instead — handle that too
                if not speaker_cell and not cau_cell.strip("「」"):
                    # purely context-only row, skip
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
    return "\n".join(out)


def main():
    ROOT = Path(__file__).parent.parent / "nội_dung"
    count_files = 0
    count_tables = 0
    for md in sorted(ROOT.glob("phần_*/rule_*/rule.md")):
        src = md.read_text(encoding="utf-8")
        tables_before = len(re.findall(r"^\|\s*\|\s*Speaker\s*\|", src, re.M))
        if tables_before == 0:
            continue
        new = transform(src)
        if new != src:
            md.write_text(new, encoding="utf-8")
            count_files += 1
            count_tables += tables_before
            print(f"  ✓ {md.relative_to(ROOT)}: {tables_before} tables")
    print(f"\nDone: {count_files} files, {count_tables} tables transformed")


if __name__ == "__main__":
    main()
