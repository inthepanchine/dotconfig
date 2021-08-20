--
-- Keymappings file
--
-- Note: this file contains general keymappings, for plugins-specific
-- keymappings, they are in the plugin's configuration file
--

-- Base keymaps options
local baseOptions = { silent = true, noremap = true }

-- Set leader key to space
vim.g.mapleader = " "

-- <ESC> to jh
vim.api.nvim_set_keymap("i", "jh", "<ESC>", baseOptions)
