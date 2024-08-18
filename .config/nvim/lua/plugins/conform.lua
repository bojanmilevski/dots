return {
	'stevearc/conform.nvim',
	event = 'VeryLazy',

	opts = {
		format_after_save = {
			lsp_fallback = true,
		},

		formatters_by_ft = {
			['*'] = { 'trim_whitespace' },
			['_'] = { 'trim_whitespace' },
			bash = { 'shfmt' },
			c = { 'clang_format' },
			cpp = { 'clang_format' },
			html = { 'prettier' },
			javascript = { 'prettier' },
			javascriptreact = { 'prettier' },
			json = { 'prettier' },
			lua = { 'stylua' },
			markdown = { 'prettier' },
			python = { 'ruff_format' },
			rust = { 'rustfmt' },
			sh = { 'shfmt' },
			typescript = { 'prettier' },
			typescriptreact = { 'prettier' },
			yaml = { 'prettier' },
		},
	},

	keys = {
		{
			'<leader>f',
			function()
				require('conform').format { async = true, lsp_fallback = true }
			end,
		},
	},
}
