--
-- Telescope plugin configuration.
--

local opt = require("options")
local utils = require("utils")

local M = {}

-- Open project file, if a .git dir is present use git_files, else use
-- find_files.
-- If some extra options are specfied, pass them as param.
M.project_files = function(add_opts)
	local opts = utils.merge({ hidden = true }, add_opts)
	local ok = pcall(require"telescope.builtin".git_files, opts)
	if not ok then require"telescope.builtin".find_files(opts) end
end

-- Open finder in ~/.config.
M.search_dotfiles = function()
	M.project_files({
		prompt_title = "< ~/.config >",
		cwd = vim.env.CONFIG,
	})
end

-- Remaps
vim.api.nvim_set_keymap(
	"n",
	"<leader>tp",
	":lua require(\"config/telescope\").project_files({})<CR>",
	opt.remapOpt
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>vrc",
	":lua require(\"config/telescope\").search_dotfiles()<CR>",
	opt.remapOpt
)

return M
