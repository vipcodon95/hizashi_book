-- Pandoc Lua filter cho Sách 02 — Điện thoại.
-- 1. Reset width colspec về ColWidthDefault → xoá <col style="width:..%"> inline
--    tùy tiện của pandoc, để CSS kiểm soát tỉ lệ cột.
-- 2. Gắn class theo header:
--    a) Bảng CHUẨN (xử lý thủ công, tỉ lệ cố định trong epub_phone.css):
--       - Vai|Câu → 20/80 (KHÔNG gắn class, dùng selector :nth-last-child(2))
--       - 漢字|よみ|Nghĩa → 30/30/40
--       - 4 cột có "Tính cách" → .cast-table
--       - 2 cột không có 「」 (đối chiếu) → .compare-table
--    b) Bảng ĐẶC BIỆT (tỉ lệ đo tự động): so khớp header với bảng tra
--       _tables_gen.lua (do analyze_tables.py sinh) → gắn class .t-xxx tương ứng.
-- KHÔNG xoá colspecs (sẽ mất <td>).

-- Bảng tra class tự sinh: { {cols=N, header="a|b|c", cls="t-xxx"}, ... }
-- pandoc cung cấp PANDOC_SCRIPT_FILE = đường dẫn filter này → suy ra thư mục.
local SCRIPT_DIR = (PANDOC_SCRIPT_FILE or ""):match("(.*/)") or "./"
local ok, GEN = pcall(dofile, SCRIPT_DIR .. "_tables_gen.lua")
if not ok or type(GEN) ~= "table" then GEN = {} end

-- ── Lấy text thuần 1 cell (gộp inline → chuỗi, bỏ furigana rt) ──
local function cell_text(cell)
  local buf = {}
  local function walk(inlines)
    for _, el in ipairs(inlines) do
      if el.t == "Str" then buf[#buf+1] = el.text
      elseif el.t == "Space" then buf[#buf+1] = " "
      elseif el.content then walk(el.content) end
    end
  end
  for _, blk in ipairs(cell.contents or {}) do
    if blk.content then walk(blk.content) end
  end
  return (table.concat(buf):gsub("^%s+", ""):gsub("%s+$", ""))
end

local function header_cells(el)
  local head = el.head
  if not head or not head.rows or #head.rows == 0 then return {} end
  local out = {}
  for _, c in ipairs(head.rows[1].cells) do out[#out+1] = cell_text(c) end
  return out
end

local function header_key(el)
  return table.concat(header_cells(el), "|")
end

local function body_text(el)
  local buf = {}
  for _, body in ipairs(el.bodies or {}) do
    for _, row in ipairs(body.body or {}) do
      for _, c in ipairs(row.cells) do buf[#buf+1] = cell_text(c) end
    end
  end
  return table.concat(buf, " ")
end

-- Lookup class đặc biệt theo header (so khớp chính xác bộ header).
local GEN_MAP = {}
for _, e in ipairs(GEN) do GEN_MAP[e.header] = e.cls end

function Table(el)
  local ncols = #el.colspecs
  for i, spec in ipairs(el.colspecs) do
    el.colspecs[i] = {spec[1], "ColWidthDefault"}
  end

  local hcells = header_cells(el)
  local htext = table.concat(hcells, " ")
  local hkey = table.concat(hcells, "|")

  -- (a) Bảng CHUẨN — tỉ lệ cố định
  if ncols == 4 and htext:find("Tính cách") then
    el.attr.classes:insert("cast-table")
    return el
  end
  if ncols == 2 and hcells[1] == "Tình huống" and htext:find("OK") then
    el.attr.classes:insert("compare-table")
    return el
  end
  -- Vai|Câu (20/80) và 漢字|よみ|Nghĩa (30/30/40): để CSS selector mặc định xử lý
  if hkey == "Vai|Câu" or hkey == "漢字|よみ|Nghĩa" then
    return el
  end
  -- Bảng từ vựng 4 cột → 22/22/22/34 (cố định)
  if hkey == "Từ|Cách đọc|Hán Việt|Nghĩa Việt" then
    el.attr.classes:insert("vocab4-table")
    return el
  end
  -- Bảng từ vựng 5 cột (+ Lần đầu xuất hiện) → chia đều 20×5
  if hkey == "Từ|Cách đọc|Hán Việt|Nghĩa Việt|Lần đầu xuất hiện" then
    el.attr.classes:insert("vocab5-table")
    return el
  end
  -- Bảng checklist 3 cột (# | nhãn | nội dung) → custom 10/20/70
  if hkey == "#|Mục|Câu hỏi tự kiểm" or hkey == "#|Tình huống|Câu chuẩn" then
    el.attr.classes:insert("checklist-table")
    return el
  end
  -- Bảng hội thoại 5 bước (# | Vai | Câu | Bước) → custom 10/15/60/15
  if hkey == "#|Vai|Câu|Bước" then
    el.attr.classes:insert("dialog-step-table")
    return el
  end
  -- Bảng tự chấm (# | Câu hỏi tự chấm | / | Rule liên quan) → custom 10/61/13/16
  if hkey == "#|Câu hỏi tự chấm|/|Rule liên quan" then
    el.attr.classes:insert("selfcheck-table")
    return el
  end
  -- Bảng 2 cột không có câu thoại 「」 → đối chiếu 50/50
  if ncols == 2 and not body_text(el):find("「") and not GEN_MAP[hkey] then
    el.attr.classes:insert("compare-table")
    return el
  end

  -- (b) Bảng ĐẶC BIỆT — class tự sinh theo header
  local cls = GEN_MAP[hkey]
  if cls then
    el.attr.classes:insert(cls)
    return el
  end

  -- Dự phòng: bảng ≥6 cột chưa khớp → wide-table
  if ncols >= 6 then
    el.attr.classes:insert("wide-table")
  end
  return el
end
