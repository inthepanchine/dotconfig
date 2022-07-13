--
-- LSP global config.
--

local opt = require("options")
local utils = require("utils")

-- Remaps options for attach function
local remap_attach = utils.merge(opt.remap_opt, { buffer = 0 })

-- Capabilities
local capabilities = require("cmp_nvim_lsp").update_capabilities(
	vim.lsp.protocol.make_client_capabilities()
)

-- === Language server config ===
-- Defines keymappings for the LS.
local attach = function()
	-- Hover + rename
	vim.keymap.set("n", "K", vim.lsp.buf.hover, remap_attach)
	vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, remap_attach)

	-- Definitions
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, remap_attach)
	vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, remap_attach)

	-- Diagnostics
	vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, remap_attach)
	vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, remap_attach)
	vim.keymap.set("n", "ca", vim.lsp.buf.code_action, remap_attach)
end

-- LS with default options
local LS = { "gopls", "tsserver", "rust_analyzer", "texlab" }

for _, server in pairs(LS) do
	require("lspconfig")[server].setup {
		on_attach = attach,
		capabilities = capabilities,
	}
end

-- Lua
require("lspconfig")["sumneko_lua"].setup {
	on_attach = attach,
	capabilities = capabilities,
	settings = require("lsp.lua").settings
}

-- LTex
require("lspconfig")["ltex"].setup {
	on_attach = attach,
	capabilities = capabilities,
	settings = {
		ltex = {
			language = "it"
		}
	}
}
