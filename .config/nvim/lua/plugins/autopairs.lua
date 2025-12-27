return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			check_ts = true, -- enable Treesitter integration

			ts_config = {
				lua = { "string", "comment" },
				rust = { "string", "comment" },
			},

			disable_filetype = {
				"TelescopePrompt",
				"spectre_panel",
			},

			fast_wrap = {}, -- disabled by default (can enable later)
		},
	},
}
