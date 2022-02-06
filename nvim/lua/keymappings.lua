--
-- Keymappings.
--

local opt = require("options")

-- Base
vim.g.mapleader = opt.leader
vim.keymap.set("i", opt.escRemap, "<ESC>", opt.remapOpt)

