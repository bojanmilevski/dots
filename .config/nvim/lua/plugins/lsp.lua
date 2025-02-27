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

		local on_attach = function(client, _)
			if client.server_capabilities.documentHighlightProvider then
				vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
					callback = vim.lsp.buf.document_highlight,
				})

				vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
					callback = vim.lsp.buf.clear_references,
				})
			end
		end

		for server, config in pairs(servers) do
			config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
			config.on_attach = on_attach
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
	},
}
