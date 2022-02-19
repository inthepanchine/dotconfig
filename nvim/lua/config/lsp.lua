--
-- LSP + nvim-cmp plugin configuration.
-- Note: Some language server have a separated file.
--

local opt = require("options")
local utils = require("utils")
local remapAttach = utils.merge(opt.remapOpt, { buffer = 0 })

-- Capabilities
local capabilities = require("cmp_nvim_lsp").update_capabilities(
	vim.lsp.protocol.make_client_capabilities()
)

-- === Language server config ===
-- On attach function. Defines keymappings for the LS.
local attach = function()
	-- Hover + rename
	vim.keymap.set("n", "K", vim.lsp.buf.hover, remapAttach)
	vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, remapAttach)

	-- Definitions
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, remapAttach)
	vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, remapAttach)

	-- Diagnostics
	vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, remapAttach)
	vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, remapAttach)
	vim.keymap.set("n", "ca", vim.lsp.buf.code_action, remapAttach)
end

-- GoLang
require("lspconfig").gopls.setup{
	on_attach = attach,
	capabilities = capabilities
}

-- C/C++
require("lspconfig").clangd.setup{
	on_attach = attach,
	capabilities = capabilities
}

-- Typescript
require("lspconfig").tsserver.setup{
	on_attach = attach,
	capabilities = capabilities
}

-- Rust
require("lspconfig").rust_analyzer.setup{
	on_attach = attach,
	capabilities = capabilities
}

-- Lua
require("lspconfig").sumneko_lua.setup {
	on_attach = attach,
	settings = require("lsp/lua").settings,
	capabilities = capabilities
}

-- Latex
require("lspconfig").ltex.setup {
	on_attach = attach,
	capabilities = capabilities,
	settings = require("lsp/ltex").settings
}
require("lspconfig").texlab.setup {
	on_attach = attach,
	capabilities = capabilities,
	settings = {
		latex = {
			build = {
				onSave = true
			}
		}
	}
}

-- Python
require("lspconfig").pylsp.setup {
	on_attach = attach,
	capabilities = capabilities,
}

-- === Config nvim-cmp ===
local cmp = require("cmp")
vim.opt.completeopt = {"menu", "menuone", "noselect"}

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = {
		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		["<C-e>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	})
})
