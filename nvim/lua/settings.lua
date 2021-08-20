--
-- Settings file
--

-- Variables
-- Tab size
local tabSize = 4

-- Scrolloff size, the amount of row left before cmd
local scrolloff = 8

-- Settings
-- Files and buffers
vim.o.hidden = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath("config").."/undodir"
vim.o.undofile = true

-- Row numbers and style
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false

-- Indentation
vim.o.tabstop = tabSize
vim.o.shiftwidth = tabSize
vim.o.smartindent = true
vim.o.list = true
vim.o.listchars = "tab:| "

-- In-file search
vim.o.hlsearch = false
vim.o.incsearch = true

-- Window style
vim.o.errorbells = false
vim.o.scrolloff = scrolloff
vim.o.cmdheight = 2
vim.o.colorcolumn = "80"
vim.highlight.create("ColorColumn", { ctermbg = 67 }, false)
