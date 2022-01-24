--
-- All of the `set` options.
--

local opt = require("options")

-- Number options.
vim.o.nu = true
vim.o.rnu = true

-- Search options.
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.incsearch = true

-- Indentation.
vim.o.autoindent = true
vim.o.shiftwidth = opt.tabWidth
vim.o.tabstop = opt.tabWidth
vim.o.expandtab = not opt.useTab
vim.o.list = true
vim.o.listchars = "tab:| "

-- Line style.
vim.o.wrap = false

-- Files style.
vim.o.hidden = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath("config").."/undodir"
vim.o.undofile = true

-- Window style.
vim.o.scrolloff = opt.scrolloff
vim.o.cmdheight = 2
vim.o.colorcolumn = "80"
vim.highlight.create("ColorColumn", { ctermbg = 67 }, false)
vim.o.termguicolors = true

