--
-- General keymappings.
--

local opt = require("options")

-- Base
vim.g.mapleader = opt.leader
vim.keymap.set("i", opt.esc, "<ESC>", opt.remap_opt)
