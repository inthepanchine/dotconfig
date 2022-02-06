--
-- All of the general `set` options.
--

local opt = require("options")

-- Number options.
vim.opt.nu = true
vim.opt.rnu = true

-- Search options.
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Indentation.
vim.opt.autoindent = true
vim.opt.shiftwidth = opt.tabWidth
vim.opt.tabstop = opt.tabWidth
vim.opt.expandtab = not opt.useTab
vim.opt.list = true
vim.opt.listchars = "tab:| "

-- Line style.
vim.opt.wrap = false

-- Files style.
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("config").."/undodir"
vim.opt.undofile = true

-- Window style.
vim.opt.scrolloff = opt.scrolloff
vim.opt.cmdheight = 2
vim.opt.colorcolumn = "80"
vim.highlight.create("ColorColumn", { ctermbg = 67 }, false)
vim.opt.termguicolors = true
