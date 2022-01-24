--
-- General config file for plugins that require small configuration.
--

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

