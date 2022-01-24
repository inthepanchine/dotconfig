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
		run = ":TSUpdate",
	}

	-- Code completition
	use {
		"hrsh7th/nvim-cmp",
		requires = { {"hrsh7th/cmp-nvim-lsp"} },
	}

	-- Fuzzy finder
	use {
		"nvim-telescope/telescope.nvim",
		requires = {
			{"nvim-lua/plenary.nvim"}, {"kyazdani42/nvim-web-devicons"}
		}
	}

	-- Colorscheme
	use { "olimorris/onedarkpro.nvim" }

	-- Autopairs
	use { "windwp/nvim-autopairs" }

	-- Lualine
	use { "nvim-lualine/lualine.nvim"  }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if Packer_bootstrap then
		require("packer").sync()
	end
end)

