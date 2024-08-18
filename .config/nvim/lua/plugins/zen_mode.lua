return {
	'folke/zen-mode.nvim',
	event = 'VeryLazy',

	opts = {
		window = {
			width = 90,
			height = 1,
		},
	},

	keys = {
		{ '<leader>z', vim.cmd.ZenMode },
	},
}
