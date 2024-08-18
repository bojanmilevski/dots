return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = 'nvim-treesitter/nvim-treesitter-context',
	event = 'VeryLazy',

	opts = {
		highlight = {
			enable = true,
		},

		indent = {
			enable = true,
		},
	},
}
