return {
	"rebelot/kanagawa.nvim",
	lazy = false, -- Load this during startup
	priority = 1000, -- Load this before all other plugins
	config = function()
		require("kanagawa").setup({
			theme = "dragon", -- Set the theme variant to dragon (the black version)
			background = { -- map the value of 'background' option to a theme
				dark = "dragon", -- try "wave" if you prefer the default dark
				light = "lotus"
			},
		})
		vim.cmd("colorscheme kanagawa")
	end,
}
