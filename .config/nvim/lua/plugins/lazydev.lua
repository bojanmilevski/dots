return {
	'folke/lazydev.nvim',
	event = 'VeryLazy',
	ft = 'lua',
	opts = {
		library = {
			{ path = '${3rd}/luv/library', words = { 'vim%.uv' } },
		},
	},
}
