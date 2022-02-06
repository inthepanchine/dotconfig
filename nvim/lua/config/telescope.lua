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
	local ok = pcall(require("telescope.builtin").git_files, opts)
	if not ok then require("telescope.builtin").find_files(opts) end
end

-- Open finder in ~/.config.
M.search_dotfiles = function()
	M.project_files({
		prompt_title = "< ~/.config >",
		cwd = vim.env.CONFIG,
	})
end

-- Remaps
vim.keymap.set(
	"n",
	"<leader>tp",
	function() require("config/telescope").project_files({}) end,
	opt.remapOpt
)
vim.keymap.set(
	"n",
	"<leader>dl",
	function() return require("telescope.builtin").diagnostics() end,
	opt.remapOpt
)
vim.keymap.set("n", "<leader>vrc", M.search_dotfiles, opt.remapOpt)
vim.keymap.set(
	"n",
	"<leader>tf",
	function() return require("telescope.builtin").current_buffer_fuzzy_find() end,
	opt.remapOpt
)

-- Setup
require("telescope").setup({
	defaults = {
		prompt_prefix = " $ "
	}
})

-- Plugins
require("telescope").load_extension("fzf")

return M
