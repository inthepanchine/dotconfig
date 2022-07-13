--
-- NeoVim configuration entry file.
--

-- Base
require("keymappings")
require("settings")
require("plugins")

-- Treesitter + nvim-cmp / LSP
require("config.treesitter")
require("lsp.cmp")
require("lsp.global")

-- Plugins config
require("config.global")
require("config.telescope")
