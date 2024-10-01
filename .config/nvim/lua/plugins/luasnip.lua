return {
	'L3MON4D3/LuaSnip',
	event = 'VeryLazy',

	dependencies = {
		'rafamadriz/friendly-snippets',
		'saadparwaiz1/cmp_luasnip',
	},

	opts = {
		enable_autosnippets = true,
		history = true,
		updateevents = 'TextChanged,TextChangedI',
		function()
			require('luasnip.loaders.from_vscode').lazy_load()
		end,
	},

	keys = {
		{
			'<C-j>',
			function()
				require('luasnip').jump(-1)
			end,
			mode = 'i',
		},
		{
			'<C-k>',
			function()
				require('luasnip').jump(1)
			end,
			mode = 'i',
		},
	},
}
