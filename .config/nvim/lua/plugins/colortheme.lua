return {
	'Mofiqul/vscode.nvim',
	event = 'VeryLazy',
	priority = 1000,

	opts = {
		transparent = true,
		italic_comments = true,
		disable_nvimtree_bg = true,
	},

	init = function()
		vim.cmd.colorscheme 'vscode'
	end,
}
