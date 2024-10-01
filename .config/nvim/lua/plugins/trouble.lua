return {
	'folke/trouble.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = 'VeryLazy',

	opts = function()
		local icons = require 'utils.icons'

		signs = {
			error = icons['ERROR'],
			warning = icons['WARN'],
			hint = icons['HINT'],
			information = icons['INFO'],
			other = icons['OTHER'],
		}
	end,

	keys = {
		{ '<leader>e', '<cmd>Trouble diagnostics toggle focus=true<cr>' },
	},
}
