-- string utils
local M = {}

-- endswith simulates a similar python str.endswith behaviour
M.endswith = function(str, val)
  return val == "" or string.sub(str, -#val) == val
end

-- split splits a string by a sep, having space as default separator
M.split = function(str, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for i in string.gmatch(str, "([^" .. sep .. "]+)") do
    table.insert(t, i)
  end

  return t
end

return M