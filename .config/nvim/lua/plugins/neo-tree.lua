return {
	'nvim-neo-tree/neo-tree.nvim',
	event = 'VeryLazy',

	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'MunifTanjim/nui.nvim',
	},

	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
			},
		},
	},

	keys = {
		{
			'<leader>n',
			function()
				vim.cmd 'Neotree toggle'
			end,
		},
	},
}
