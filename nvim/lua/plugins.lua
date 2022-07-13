--
-- Plugins installation via packer.nvim
-- 

-- Check if packer is already insalled
local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	Packer_bootstrap = fn.system({
		"git", "clone", "--depth", "1",
		"https://github.com/wbthomason/packer.nvim", install_path
	})
end

-- Run :PackerCompile when this file is modified
vim.api.nvim_create_augroup("packer_config", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "plugins.lua" },
	command = "source <afile> | PackerCompile",
	group = "packer_config"
})

return require("packer").startup(function(use)
	-- Packer
	use "wbthomason/packer.nvim"

	-- Syntax highlight + LSP / LSP installer
	use {
		"neovim/nvim-lspconfig",
		"williamboman/nvim-lsp-installer",
		{ "nvim-treesitter/nvim-treesitter", run = "<cmd>TSUpdate" },
		{
			"hrsh7th/cmp-nvim-lsp",
			requires = { "hrsh7th/nvim-cmp", "L3MON4D3/LuaSnip" }
		}
	}

	-- Colorscheme + Statusline
	use {
		{ "tjdevries/gruvbuddy.nvim", requires = "tjdevries/colorbuddy.nvim" },
		{ "tjdevries/express_line.nvim", requires = "nvim-lua/plenary.nvim" }
	}

	-- Fuzzy finding
	use {
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",
			"kyazdani42/nvim-web-devicons",
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
		}
	}

	-- Comments
	use "numToStr/Comment.nvim"

	-- LS plugins
	use { "rust-lang/rust.vim", "lervag/vimtex" }

	-- git integration
	use {
		"lewis6991/gitsigns.nvim",
		{ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" }
	}

	-- Automatically set up configuration after cloning packer.nvim
	if Packer_bootstrap then
		require("packer").sync()
	end
end)
