-- lsp/servers.lua
-- Add or remove servers here. Each key is server name recognized by mason-lspconfig.
return {
	lua_ls = {
		settings = {
			Lua = {
				completion = { callSnippet = 'Replace' },
			},
		},
	},

	-- add pyright for python:
	pyright = {},
	r_language_server = {},
	-- add rust_analyzer, clangd, etc:
	rust_analyzer = {},
}
