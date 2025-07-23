--  require("lazy").setup({
--    {
--      "supermaven-inc/supermaven-nvim",
--      config = function()
--        require("supermaven-nvim").setup({})
--      end,
--    },
--  }, {})

return {
	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({})
		end,
	},
}
