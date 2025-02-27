return {
	'Mofiqul/vscode.nvim',
	event = 'VeryLazy',

	opts = {
		transparent = true,
		italic_comments = true,
		disable_nvimtree_bg = true,
		underline_links = true,
		group_overrides = {
			NeoTreeDimText = { bg = nil, guibg = nil },
			StatusLine = { bg = nil, guibg = nil },
			TabLineFill = { bg = nil, guibg = nil },
		},
	},

	init = function()
		vim.cmd.colorscheme 'vscode'
	end,
}
