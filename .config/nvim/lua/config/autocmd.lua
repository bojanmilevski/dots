vim.loader.enable()

vim.api.nvim_create_autocmd('BufEnter', {
	command = 'set formatoptions-=cro',
	pattern = '*',
})

vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
})
