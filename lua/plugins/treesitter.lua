return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")

    config.setup({
      ensure_installed = { "svelte", "lua", "javascript", "dockerfile", "angular", "html", "css", "typescript" },
      highlight = { enable = true },
      indent = { enable = true },
      matchup = { enable = true },
    })
  end
}
