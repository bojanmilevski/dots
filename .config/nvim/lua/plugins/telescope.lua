return {
	'nvim-telescope/telescope.nvim',
	event = 'VeryLazy',

	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'nvim-telescope/telescope-frecency.nvim',
	},

	opts = {
		extensions = {
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
				case_mode = 'smart_case',
			},
		},
	},

	config = function()
		require('telescope').load_extension 'frecency'
	end,

	keys = {
		{
			'<leader>tg',
			function()
				vim.cmd 'Telescope live_grep'
			end,
		},
		{
			'<leader>tf',
			function()
				vim.cmd 'Telescope find_files'
			end,
		},
		{
			'<leader>td',
			function()
				require('telescope.builtin').lsp_definitions()
			end,
		},
		{
			'<leader>tr',
			function()
				vim.cmd 'Telescope frecency'
			end,
		},
	},
}
