#!/usr/bin/env python3
"""
Sinh SQL seed phần lý thuyết MD của course Business Japanese (8010).

Theo pattern course "hizashi_reading_n4" (course id=3001):
  curricula (hidden, id=8016)
    └─ curriculum_node (markdown_book, 5 row, id=8016001..8016005)
         └─ resource_media (resource_type='module', resource_id=801N,
                            media_type='curriculum_node',
                            media_id='80160NN', in_table='curriculum_node',
                            context={'label': 'Lý thuyết', 'node_type': 'markdown_book'})

Nguồn: books/business_japanese/<module_dir>/*.md (file gốc, đọc trực tiếp).
node_content lưu nguyên markdown (đã chuẩn hoá heading qua normalize_text).

Output: release/business_japanese_sql/business_japanese_theory.sql

Re-runnable qua ON CONFLICT.
"""

from __future__ import annotations

import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
SOURCE_DIR = ROOT / "books" / "business_japanese"
SQL_OUT_DIR = ROOT / "release" / "business_japanese_sql"

sys.path.insert(0, str(Path(__file__).resolve().parent))
from normalize_release import normalize_text  # noqa: E402

CURRICULUM_ID = 8016
CURRICULUM_TITLE = "Tiếng Nhật Thương Mại — Lý thuyết Kính ngữ"
CURRICULUM_INTRO = "Bộ lý thuyết hỗ trợ khoá học Business Japanese — Kính ngữ (course 8010)."

# Map module_id ↔ folder ↔ tên hiển thị.
MODULE_MAPPING: list[dict] = [
    {
        "module_id": 8011,
        "node_id": 8016001,
        "folder": "2.1.0_keigo_phan_loai",
        "node_title": "Phân loại Kính ngữ — Tổng quan",
    },
    {
        "module_id": 8012,
        "node_id": 8016002,
        "folder": "2.1.4_juzu_doushi",
        "node_title": "Động từ cho/nhận (授受動詞)",
    },
    {
        "module_id": 8013,
        "node_id": 8016003,
        "folder": "2.1.5_uchi_soto",
        "node_title": "Uchi/Soto — In-group / Out-group",
    },
    {
        "module_id": 8014,
        "node_id": 8016004,
        "folder": "2.1.6_ukemi_shieki",
        "node_title": "Bị động & Sai khiến (受動・使役)",
    },
    {
        "module_id": 8015,
        "node_id": 8016005,
        "folder": "2.1.7_tong_hop_so_sanh",
        "node_title": "Tổng hợp & So sánh",
    },
]


def sql_escape(text: str | None) -> str:
    if text is None:
        return "NULL"
    return "'" + text.replace("'", "''") + "'"


def sql_text_or_null(text: str | None) -> str:
    if text is None or text == "":
        return "NULL"
    return sql_escape(text)


def sql_jsonb(obj) -> str:
    if obj is None:
        return "NULL"
    return sql_escape(json.dumps(obj, ensure_ascii=False)) + "::jsonb"


def find_md_in_module(folder: Path) -> Path:
    md_files = list(folder.glob("*.md"))
    if not md_files:
        raise FileNotFoundError(f"Không có .md trong {folder}")
    if len(md_files) > 1:
        raise RuntimeError(f"Nhiều hơn 1 .md trong {folder}: {md_files}")
    return md_files[0]


def build_curriculum_sql() -> str:
    return (
        "INSERT INTO curricula ("
        "id, level, type, category, title, introduction, "
        "tenant_id, is_system, is_public, is_active, is_deleted, "
        "free_preview_count, status, created_at, created_by"
        ") VALUES ("
        f"{CURRICULUM_ID}, "
        "NULL, "
        "'markdown_book', "
        "'business', "
        f"{sql_escape(CURRICULUM_TITLE)}, "
        f"{sql_escape(CURRICULUM_INTRO)}, "
        "'system', "
        "TRUE, FALSE, TRUE, FALSE, "
        "5, "
        "'published', "
        "NOW(), 'system'"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "type = EXCLUDED.type, "
        "title = EXCLUDED.title, "
        "introduction = EXCLUDED.introduction, "
        "category = EXCLUDED.category, "
        "tenant_id = EXCLUDED.tenant_id, "
        "is_system = EXCLUDED.is_system, "
        "is_public = EXCLUDED.is_public, "
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "free_preview_count = EXCLUDED.free_preview_count, "
        "status = EXCLUDED.status, "
        "updated_at = NOW();"
    )


def build_node_sql(module: dict, content: str) -> str:
    return (
        "INSERT INTO curriculum_node ("
        "id, curriculum_id, parent_id, node_type, node_title, node_content, "
        "tenant_id, order_index, access_level, is_active, is_deleted, created_at"
        ") VALUES ("
        f"{module['node_id']}, "
        f"{CURRICULUM_ID}, "
        "NULL, "
        "'markdown_book', "
        f"{sql_escape(module['node_title'])}, "
        f"{sql_text_or_null(content)}, "
        "'system', "
        f"{module['node_id'] - CURRICULUM_ID * 1000}, "
        "'free', "
        "TRUE, FALSE, NOW()"
        ") "
        "ON CONFLICT (id) DO UPDATE SET "
        "curriculum_id = EXCLUDED.curriculum_id, "
        "node_type = EXCLUDED.node_type, "
        "node_title = EXCLUDED.node_title, "
        "node_content = EXCLUDED.node_content, "
        "tenant_id = EXCLUDED.tenant_id, "
        "order_index = EXCLUDED.order_index, "
        "access_level = EXCLUDED.access_level, "
        "is_active = EXCLUDED.is_active, "
        "is_deleted = EXCLUDED.is_deleted, "
        "updated_at = NOW();"
    )


def build_resource_media_sql(module: dict) -> str:
    """Link module → curriculum_node theo pattern course 3001."""
    context = {"label": "Lý thuyết", "node_type": "markdown_book"}
    # resource_media không có unique index — dùng DELETE+INSERT để re-runnable.
    return (
        f"DELETE FROM resource_media "
        f"WHERE resource_type='module' AND resource_id={module['module_id']} "
        f"AND media_type='curriculum_node' AND media_id='{module['node_id']}';\n"
        "INSERT INTO resource_media ("
        "resource_type, resource_id, media_type, media_id, in_table, "
        "order_index, context, is_active, created_at"
        ") VALUES ("
        f"'module', {module['module_id']}, "
        f"'curriculum_node', '{module['node_id']}', 'curriculum_node', "
        f"0, "
        f"{sql_jsonb(context)}, "
        "TRUE, NOW()"
        ");"
    )


def main() -> None:
    if not SOURCE_DIR.is_dir():
        raise FileNotFoundError(SOURCE_DIR)

    SQL_OUT_DIR.mkdir(parents=True, exist_ok=True)

    lines: list[str] = []
    lines.append("-- Hizashi Business Japanese — Lý thuyết MD")
    lines.append(f"-- curriculum_id = {CURRICULUM_ID} (hidden), 5 nodes")
    lines.append("-- link vào module 8011..8015 qua resource_media")
    lines.append("-- KHÔNG sửa thủ công — chạy lại build_sql_business_japanese_theory.py")
    lines.append("")
    lines.append("BEGIN;")
    lines.append("")

    lines.append("-- 1) Curriculum hidden")
    lines.append(build_curriculum_sql())
    lines.append("")

    lines.append("-- 2) Curriculum nodes (lý thuyết)")
    for module in MODULE_MAPPING:
        folder = SOURCE_DIR / module["folder"]
        md_path = find_md_in_module(folder)
        raw = md_path.read_text(encoding="utf-8")
        # Chuẩn hoá heading + nén dòng trống.
        content = normalize_text(raw).strip() + "\n"
        lines.append(f"-- module {module['module_id']} ← {md_path.name}")
        lines.append(build_node_sql(module, content))
        lines.append("")

    lines.append("-- 3) Resource media — link module ↔ curriculum_node")
    for module in MODULE_MAPPING:
        lines.append(build_resource_media_sql(module))
        lines.append("")

    lines.append("COMMIT;")
    lines.append("")

    out_path = SQL_OUT_DIR / "business_japanese_theory.sql"
    out_path.write_text("\n".join(lines), encoding="utf-8")
    print(f"Đã sinh {out_path}")
    print(f"  curriculum: 1 (id={CURRICULUM_ID})")
    print(f"  curriculum_node: {len(MODULE_MAPPING)} (id 8016001..8016005)")
    print(f"  resource_media: {len(MODULE_MAPPING)}")


if __name__ == "__main__":
    main()
