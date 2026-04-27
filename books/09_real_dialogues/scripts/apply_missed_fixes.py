#!/usr/bin/env python3
"""Apply 10 missed fixes after speaker key bug fix."""

import json
from pathlib import Path

DRAFT = Path(__file__).resolve().parent.parent / "draft"


def fix_in_file(filepath, scene_n, speaker, field, old, new):
    p = DRAFT / filepath
    d = json.loads(p.read_text(encoding="utf-8"))
    scene = next((s for s in d["scenes"] if s["n"] == scene_n), None)
    if scene is None:
        print(f"  ✗ {filepath} sc{scene_n}: scene not found")
        return False
    for line in scene.get("lines", []):
        if line.get("speaker") == speaker and old in line.get(field, ""):
            line[field] = line[field].replace(old, new)
            p.write_text(json.dumps(d, ensure_ascii=False, indent=2), encoding="utf-8")
            print(f"  ✓ {filepath} sc{scene_n} {speaker}.{field}")
            return True
    print(f"  ✗ {filepath} sc{scene_n} {speaker}.{field}: not found '{old[:40]}'")
    return False


# 10 missed fixes
print("=== Missed fix Ch04 ===")
fix_in_file("chương_04_出張_scenes.json", 10, "oogaki_sales", "ja",
    "了解、無理しないで。代替で 10月後半でも全然 OK。",
    "了解、無理しないで。代わりに10月後半でも全然OKだから。")

print("\n=== Missed fix Ch03 ===")
fix_in_file("chương_03_忘年会_scenes.json", 6, "zun", "vi",
    "(nhai)… hmm, lần đầu vị này. Mềm như cream. Em hiểu sao chia phe rồi.",
    "(nhai)… hmm, lần đầu em uống vị này. Mềm như cream. Em hiểu sao chia phe rồi.")

print("\n=== Missed fixes Ch06 ===")
ch06_misses = [
    (2, "oogaki_sales", "vi",
     "(cười) Không không, hôm nay là tôi mời nên tôi chịu. Dũng Tuấn hôm nay với mai chế độ 'khách' hoàn toàn.",
     "(cười) Không không, hôm nay là tôi mời nên tôi chịu. Dũng, Tuấn, hôm nay với cả ngày mai cứ ở chế độ 'khách' hoàn toàn nhé."),
    (5, "oogaki_sales", "vi",
     "(chỉ tay) Cái này cua kobako. Đặc sản Hokuriku. Thịt cua + nội tử + ngoại tử, 3 lớp. Cho hết vào miệng 1 lần.",
     "(chỉ tay) Cái này là cua kobako, đặc sản vùng Hokuriku. Thịt cua, trứng trong, trứng ngoài — 3 lớp. Cho hết vào miệng 1 lần."),
    (6, "oogaki_sales", "vi",
     "(ngâm tới vai) Phù, thiên đường… hôm qua đến giờ họp ngân sách Tokyo mệt rã rời, cái này reset.",
     "(ngâm tới vai) Phù, thiên đường… hôm qua đến giờ họp ngân sách Tokyo mệt rã rời, cái này reset luôn."),
    (6, "oogaki_sales", "vi",
     "Cởi đồ = cởi địa vị, người Nhật nói vậy. Giám đốc với nhân viên mới cùng bồn.",
     "Người Nhật có câu: cởi quần áo là cởi cả địa vị. Giám đốc với nhân viên mới cũng chung một bồn nước."),
    (9, "oogaki_sales", "vi",
     "Ừ. Công việc bận, ít về quê. 3 năm cuối, ước gì nói chuyện nhiều hơn, giờ vẫn nghĩ. Nên muốn nói Dũng 1 câu.",
     "Ừ. Công việc bận quá, ít khi về quê được. Ba năm cuối, giờ tôi vẫn cứ nghĩ — giá mà mình nói chuyện với ông nhiều hơn. Nên muốn nói Dũng một câu."),
    (2, "oogaki_sales", "vi",
     "(rút bento) Tada, 'Fukagawa-meshi' mua ở ga Tokyo. Mỗi người 1 hộp, ăn trên tàu.",
     "(rút bento) Tèn ten, 'Fukagawa-meshi' mua ở ga Tokyo. Mỗi người 1 hộp, ăn trên tàu."),
    (3, "oogaki_sales", "vi",
     "(cười) Dũng à, người Nam Việt Nam đi Kanto giữa đông, 'HeatTech' bắt buộc đó. Inner của Uniqlo.",
     "(cười) Dũng à, người Nam Việt Nam đi Kanto giữa đông, 'HeatTech' là phải có nha cậu. Inner của Uniqlo."),
    (8, "oogaki_sales", "vi",
     "(cười) Khôn. Vậy nửa.",
     "(cười) Khôn ghê. Vậy rót nửa thôi."),
]
for sn, sp, fld, old, new in ch06_misses:
    fix_in_file("chương_06_温泉_scenes.json", sn, sp, fld, old, new)
