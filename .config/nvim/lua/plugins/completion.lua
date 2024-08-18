return {
	'hrsh7th/nvim-cmp',
	event = 'VeryLazy',

	dependencies = {
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-nvim-lsp-signature-help',
		'hrsh7th/cmp-nvim-lua',
		'hrsh7th/cmp-path',
		{
			'onsails/lspkind.nvim',
			dependencies = 'nvim-tree/nvim-web-devicons',
		},
	},

	opts = function()
		local cmp = require 'cmp'

		local function border(hl_name)
			return {
				{ '╭', hl_name },
				{ '─', hl_name },
				{ '╮', hl_name },
				{ '│', hl_name },
				{ '╯', hl_name },
				{ '─', hl_name },
				{ '╰', hl_name },
				{ '│', hl_name },
			}
		end

		cmp.setup {
			sources = {
				{ name = 'nvim_lsp' },
				{ name = 'nvim_lsp_signature_help' },
				{ name = 'luasnip' },
				{ name = 'nvim_lua' },
				{ name = 'path' },
			},

			completion = {
				completeopt = 'menu,menuone',
			},

			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},

			window = {
				completion = {
					border = border 'CmpBorder',
				},

				documentation = {
					border = border 'CmpDocBorder',
					winhighlight = 'Normal:CmpDoc',
				},
			},

			formatting = {
				format = require('lspkind').cmp_format {
					with_text = true,
				},
			},

			mapping = {
				['<Enter>'] = cmp.mapping.confirm {
					behavior = cmp.ConfirmBehavior.Insert,
					select = true,
				},

				['<Tab>'] = function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end,

				['<S-Tab>'] = function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					else
						fallback()
					end
				end,
			},
		}
	end,
}
