-- return {
--   "catppuccin/nvim",
--   lazy = false,
--   name = "catppuccin",
--   priority = 1000,
--
--   config = function()
--     vim.cmd.colorscheme "catppuccin"
--   end
-- }
--
return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	},

	config = function()
		vim.cmd.colorscheme("tokyonight")
	end,
}
