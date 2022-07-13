--
-- Utility functions.
--

local M = {}

-- Merges two tables into one and return it.
-- @param t1 The table to join `t2` with
-- @param t2 The table to join `t1` with
-- @returns The merged table
function M.merge(t1, t2)
	for k, v in pairs(t2) do
		t1[k] = v
	end

	return t1
end

return M
