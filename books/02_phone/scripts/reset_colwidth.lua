-- Pandoc Lua filter cho Sách 02 — Điện thoại.
-- 1. Reset width colspec về ColWidthDefault → xoá <col style="width:..%"> inline
--    tùy tiện của pandoc, để epub_phone.css kiểm soát tỉ lệ cột theo số cột.
-- 2. Gắn class "wide-table" cho bảng ≥6 cột (vd bảng quản lý cuộc gọi 6 cột) để
--    CSS dùng auto-layout + font nhỏ + cuộn ngang.
-- KHÔNG xoá colspecs (sẽ mất <td>).

function Table(el)
  local ncols = #el.colspecs
  for i, spec in ipairs(el.colspecs) do
    el.colspecs[i] = {spec[1], "ColWidthDefault"}
  end
  if ncols >= 6 then
    el.attr.classes:insert("wide-table")
  end
  return el
end
