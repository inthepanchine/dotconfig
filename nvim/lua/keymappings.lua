--
-- Keymappings.
--

local opt = require("options")

-- Base
vim.g.mapleader = opt.leader
vim.api.nvim_set_keymap("i", opt.escRemap, "<ESC>", opt.remapOpt)

