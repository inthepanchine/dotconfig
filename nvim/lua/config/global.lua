--
-- Configuration of plugins whose config is so short they don't need a
-- separate config file.
--

-- === Status line (express_line.nvim) ===
require("el").setup {}

-- === Colorscheme (gruvbuddy.nvim) ===
require("colorbuddy").colorscheme("gruvbuddy")

-- === nvim-web-devicons ===
require("nvim-web-devicons").setup { default = true }

-- === Comments (Comment.nvim) ===
require("Comment").setup {}

-- === LSP installer ===
require("nvim-lsp-installer").setup {}

-- === Git integration (gitsigns.nvim) ===
require("gitsigns").setup()
require("neogit").setup {}
