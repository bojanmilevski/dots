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
		local capabilities = vim.lsp.protocol.make_client_capabilities()

		capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())
		capabilities.textDocument.completion.completionItem.snippetSupport = true
		capabilities.textDocument.foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		}

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

		for _, server in ipairs(servers) do
			lspconfig[server].setup {
				capabilities = capabilities,
				on_attach = on_attach,
			}
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
		{ '<leader>a', vim.lsp.buf.code_action },
		{ '<leader>r', vim.lsp.buf.rename },
		{ 'gr', vim.lsp.buf.references },
		{ 'gd', vim.lsp.buf.definition },
		{ 'gt', vim.lsp.buf.type_definition },
		{
			'<leader>i',
			function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end,
			desc = 'Toggle LSP inlay hints',
		},
	},
}
