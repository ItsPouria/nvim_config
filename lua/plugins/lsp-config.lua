return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
		dependencies = {
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"angularls",
				"svelte",
				"rust_analyzer",
				"cssls",
				"css_variables",
				"cssmodules_ls",
			},
			automatic_installation = true,
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		--	config = function()
		--		require("mason-lspconfig").setup({
		--			ensure_installed = {
		--				"lua_ls",
		--				"ts_ls",
		--				"angularls",
		--				"svelte",
		--				"rust_analyzer",
		--				"cssls",
		--				"css_variables",
		--				"cssmodules_ls",
		--			},
		--		})
		--	end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			local mason_tool_installer = require("mason-tool-installer")

			mason_tool_installer.setup({
				ensure_installed = {
					"prettier",
					"stylua",
					"eslint_d",
				},
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.svelte.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.angularls.setup({
				capabilities = capabilities,
			})

			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})
			lspconfig.angularls.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.css_variables.setup({
				capabilities = capabilities,
			})
			lspconfig.cssmodules_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
			vim.diagnostic.config({ virtual_test = true })
		end,
	},
}
