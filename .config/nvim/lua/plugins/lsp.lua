return {
	'neovim/nvim-lspconfig',
	lazy = false,

	dependencies = {
		{
			'j-hui/fidget.nvim',
			event = 'VeryLazy',
			opts = {},
		},
	},

	config = function()
		local servers = require 'utils.lsps'
		local lspconfig = require 'lspconfig'
		for server, config in pairs(servers) do
			config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
			lspconfig[server].setup(config)
		end
	end,

	keys = {
		{
			'<leader>i',
			function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end,
		},
		{ '<leader>r', vim.lsp.buf.rename },
		{ 'gd', vim.lsp.buf.definition },
	},
}
