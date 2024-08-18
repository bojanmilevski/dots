return {
	'folke/trouble.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = 'VeryLazy',

	opts = {
		signs = {
			error = '',
			warning = '',
			hint = '󰌵',
			information = '',
			other = '',
		},
	},

	keys = {
		{ '<leader>e', '<cmd>Trouble diagnostics toggle focus=true<cr>' },
	},
}
