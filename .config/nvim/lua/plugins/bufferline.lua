return {
	'akinsho/bufferline.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = 'VeryLazy',

	opts = {
		options = {
			separator_style = 'thin',
			always_show_bufferline = false,
			diagnostics = 'lsp',
			numbers = 'ordinal',
			color_icons = true,
		},
	},
}
