return {
	'ggandor/leap.nvim',
	dependencies = 'tpope/vim-repeat',
	event = 'VeryLazy',

	opts = {
		highlight_unlabeled_phase_one_targets = true,
	},

	keys = {
		{
			's',
			function()
				require('leap').leap {
					target_windows = {
						vim.fn.win_getid(),
					},
				}
			end,
		},
	},
}
