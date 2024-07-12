return {
	"nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "svelte","html", "json", "yaml", "markdown", "css", "scss", "javascript", "typescript" },
        }),
        require("none-ls.diagnostics.eslint_d"),
        require("none-ls.formatting.eslint_d"),
        require("none-ls.code_actions.eslint_d"),
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
