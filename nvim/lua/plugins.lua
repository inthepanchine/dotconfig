--
-- Plugins.
-- Note: This isn"t a configuration file for a specific plugin. For configuring
--       a plugin see under `lua/config`
--

local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	Packer_bootstrap = fn.system({
		"git", "clone", "--depth", "1",
		"https://github.com/wbthomason/packer.nvim", install_path
	})
end

return require("packer").startup(function(use)
	-- Packer
	use "wbthomason/packer.nvim"

	-- LSP + syntax
	use {
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
		"williamboman/nvim-lsp-installer",
		"brymer-meneses/grammar-guard.nvim",
		run = ":TSUpdate",
	}

	-- Code completition + snippet
	use {
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path"
	}

	-- Fuzzy finder
	use {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-lua/popup.nvim",
		{"nvim-telescope/telescope-fzf-native.nvim", run = "make" }
	}

	-- Colorscheme + icons
	use { "olimorris/onedarkpro.nvim", "kyazdani42/nvim-web-devicons"}

	-- Autopairs
	use { "windwp/nvim-autopairs" }

	-- Lualine
	use { "nvim-lualine/lualine.nvim"  }

	-- Git support
	use { "tpope/vim-fugitive", "airblade/vim-gitgutter" }

	-- Undo tree
	use { "mbbill/undotree" }

	-- Rust intergration
	use { "rust-lang/rust.vim" }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if Packer_bootstrap then
		require("packer").sync()
	end
end)

