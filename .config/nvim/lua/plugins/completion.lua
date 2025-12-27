return {
	{
		'saghen/blink.cmp',
		version = 'v0.*', -- Recommended to use a specific version or tag
		lazy = false,
		dependencies = {
			'L3MON4D3/LuaSnip',
			'folke/lazydev.nvim',
		},
		opts = {
			keymap = {
				preset = 'default',
				-- Use <C-y> to accept completion, <C-n>/<C-p> to navigate
			},

			appearance = {
				nerd_font_variant = 'mono',
			},

			sources = {
				default = { 'lsp', 'path', 'snippets', 'lazydev' },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
						score_offset = 100,
					},
				},
			},

			snippets = { preset = 'luasnip' },

			signature = { enabled = true },
		},
	},
}
