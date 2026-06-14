#!/usr/bin/env python3
"""Hậu xử lý EPUB: đưa front matter (ch001) lên TRƯỚC mục lục (nav) trong spine.

Pandoc mặc định xếp: cover → nav (mục lục) → ch001 (front matter) → nội dung.
Sách Hizashi muốn: cover → front matter → nav (mục lục) → nội dung.

Script đổi thứ tự itemref trong content.opf: di chuyển itemref của ch001
lên ngay sau cover, trước nav. KHÔNG đụng nội dung các trang.

Dùng: python3 reorder_frontmatter.py <file.epub>
"""
import re
import sys
import zipfile
import shutil
from pathlib import Path


def reorder(opf: str) -> tuple[str, bool]:
    # Lấy block <spine>...</spine>
    m = re.search(r"(<spine[^>]*>)(.*?)(</spine>)", opf, re.S)
    if not m:
        return opf, False
    head, body, tail = m.group(1), m.group(2), m.group(3)

    items = re.findall(r"<itemref[^>]*/>", body)
    if not items:
        return opf, False

    def idref(it):
        mm = re.search(r'idref="([^"]+)"', it)
        return mm.group(1) if mm else ""

    # Tìm front matter (ch001) và nav
    fm = next((it for it in items if idref(it) == "ch001_xhtml"), None)
    nav = next((it for it in items if idref(it) == "nav"), None)
    if not fm or not nav:
        return opf, False

    # Nếu fm đã đứng trước nav rồi thì thôi
    if items.index(fm) < items.index(nav):
        return opf, False

    # Bỏ fm khỏi vị trí cũ, chèn ngay trước nav
    items.remove(fm)
    nav_i = items.index(nav)
    items.insert(nav_i, fm)

    new_body = "\n    " + "\n    ".join(items) + "\n  "
    return opf[:m.start()] + head + new_body + tail + opf[m.end():], True


def main(epub_path: str) -> None:
    p = Path(epub_path)
    tmp = p.with_suffix(".reorder.tmp")
    changed = False

    with zipfile.ZipFile(p, "r") as zin:
        names = zin.namelist()
        with zipfile.ZipFile(tmp, "w", zipfile.ZIP_DEFLATED) as zout:
            for name in names:
                data = zin.read(name)
                if name.endswith(".opf"):
                    text = data.decode("utf-8")
                    text, ok = reorder(text)
                    changed = changed or ok
                    data = text.encode("utf-8")
                if name == "mimetype":
                    zout.writestr(name, data, compress_type=zipfile.ZIP_STORED)
                else:
                    zout.writestr(name, data)

    shutil.move(tmp, p)
    if changed:
        print(f"✓ Đưa front matter lên trước mục lục: {p.name}")
    else:
        print(f"  (không đổi — front matter đã đúng vị trí hoặc không tìm thấy): {p.name}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit("Dùng: python3 reorder_frontmatter.py <file.epub>")
    main(sys.argv[1])
