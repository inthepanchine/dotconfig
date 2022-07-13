--
-- Treesitter config.
--

require("nvim-treesitter.configs").setup {
	ensure_installed = { "lua", "rust", "typescript", "latex" }
}
