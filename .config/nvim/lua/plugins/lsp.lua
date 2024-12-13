return {
	'neovim/nvim-lspconfig',
	lazy = false,

	dependencies = {
		{
			'j-hui/fidget.nvim',
			event = 'VeryLazy',
			config = true,
		},
	},

	config = function()
		local servers = require 'utils.lsps'
		local icons = require 'utils.icons'
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

		vim.diagnostic.config {
			severity_sort = true,
			underline = true,
			update_in_insert = true,

			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = icons['ERROR'],
					[vim.diagnostic.severity.WARN] = icons['WARN'],
					[vim.diagnostic.severity.HINT] = icons['HINT'],
					[vim.diagnostic.severity.INFO] = icons['INFO'],
				},
			},

			virtual_text = {
				prefix = function(diagnostic)
					if diagnostic.severity == vim.diagnostic.severity.ERROR then
						return icons['ERROR']
					elseif diagnostic.severity == vim.diagnostic.severity.WARN then
						return icons['WARN']
					elseif diagnostic.severity == vim.diagnostic.severity.INFO then
						return icons['INFO']
					end

					return icons['HINT']
				end,
			},
		}
	end,

	keys = {
		{
			'<leader>i',
			function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end,
			desc = 'Toggle LSP inlay hints',
		},
	},
}
