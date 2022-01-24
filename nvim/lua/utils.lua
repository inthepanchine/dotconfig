--
-- Set of utility used in NeoVim configuration.
--

local M = {}

-- Merge two tables into one and return it.
function M.merge(t1, t2)
	for k, v in pairs(t2) do
		t1[k] = v
	end

	return t1
end

-- Dump table.
function M.dump(t)
	for k,v in pairs(t) do
		print(k, "-->", v)
	end
end

return M
