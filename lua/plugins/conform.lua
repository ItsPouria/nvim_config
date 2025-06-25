return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			log_level = vim.log.levels.DEBUG,
			formatters_by_ft = {
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				svelte = { "prettierd" },
				css = { "prettierd" },
				html = { "prettierd" },
				json = { "prettierd" },
				yaml = { "yamlfmt", "prettierd" },
				markdown = { "prettierd" },
				lua = { "stylua" },
				htmlangular = { "prettierd" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>gf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
			})
		end, { desc = "Format file or rage (in visual mode)" })
	end,
}
