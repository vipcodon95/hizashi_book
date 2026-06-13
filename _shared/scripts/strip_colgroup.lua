-- Pandoc Lua filter: reset width của colspecs về "default"
-- KHÔNG xoá colspecs (sẽ làm mất <td>), chỉ xoá width để CSS bên ngoài kiểm soát

function Table(el)
  -- Reset width của từng colspec về ColWidthDefault
  for i, spec in ipairs(el.colspecs) do
    el.colspecs[i] = {spec[1], "ColWidthDefault"}
  end
  return el
end
