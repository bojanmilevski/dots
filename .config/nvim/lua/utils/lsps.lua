local servers = {
	bashls = {},
	cmake = {},
	cssls = {},
	emmet_ls = {},
	eslint = {},
	hls = {},
	html = {},
	jsonls = {},
	lua_ls = {},
	pylsp = {},
	pyright = {},
	tailwindcss = {},
	ts_ls = {},
	yamlls = {},

	clangd = {
		cmd = {
			'clangd',
			'--background-index',
			'--clang-tidy',
		},
	},
}

return servers
