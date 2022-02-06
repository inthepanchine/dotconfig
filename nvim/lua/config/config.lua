--
-- General config file for plugins that require small configuration.
--

-- Options
local opt = require("options")

-- WebIcons
require("nvim-web-devicons").setup{ default = true }

-- Colorscheme
vim.o.background = "dark"
require("onedarkpro").load()

-- Autopairs
require("nvim-autopairs").setup()

-- Lua line
require("lualine").setup({
	options = {
		theme = "onedark",
	}
})

-- Tex options
vim.g["tex_flavor"] = "latex"

-- UndoTree
vim.keymap.set("n", "<leader>ut", ":UndotreeToggle<CR>", opt.remapOpt)

-- Grammar guard
require("grammar-guard").init()
