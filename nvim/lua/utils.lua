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
	for k, v in pairs(t) do
		print(k, "-->", v)
	end
end

-- Read files passed as param.
function M.readFiles(files)
	local dict = {}
	for _,file in ipairs(files) do
		if not file then return nil end

		for line in io.lines(file) do
			table.insert(dict, line)
		end
	end
	return dict
end

return M
