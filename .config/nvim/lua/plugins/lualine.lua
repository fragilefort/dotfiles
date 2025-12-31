return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Custom "Sleepy Hollow" theme colors
		local colors = {
			bg       = '#16161D', -- Deep midnight black
			fg       = '#C8C093', -- Faint parchment white
			yellow   = '#7E9E73', -- Muted moss green
			cyan     = '#7FB4CA', -- Misty blue
			darkblue = '#223249', -- Deep water blue
			gray     = '#2A2A37', -- Foggy gray
			magenta  = '#957FB8', -- Pale twilight purple
		}

		local sleepy_hollow = {
			normal = {
				a = { fg = colors.bg, bg = colors.cyan, gui = 'bold' },
				b = { fg = colors.fg, bg = colors.gray },
				c = { fg = colors.fg, bg = colors.bg },
			},
			insert = { a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' } },
			visual = { a = { fg = colors.bg, bg = colors.magenta, gui = 'bold' } },
			replace = { a = { fg = colors.bg, bg = colors.cyan, gui = 'bold' } },
			inactive = {
				a = { fg = colors.fg, bg = colors.bg },
				b = { fg = colors.fg, bg = colors.bg },
				c = { fg = colors.fg, bg = colors.bg },
			},
		}

		require("lualine").setup({
			options = {
				theme = sleepy_hollow,
				globalstatus = true,
				-- Changed separators to vertical bars
				component_separators = { left = '|', right = '|' },
				section_separators = { left = '', right = '' },
			},
			sections = {
				lualine_a = { 'mode' },
				lualine_b = { 'branch', 'diff', 'diagnostics' },
				lualine_c = { { 'filename', path = 1 } },
				lualine_x = { 'encoding', 'filetype' },
				lualine_y = { 'progress' },
				lualine_z = { 'location' }
			},
		})
	end,
}
