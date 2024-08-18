vim.api.nvim_create_autocmd('BufEnter', {
	command = 'set formatoptions-=cro',
	pattern = '*',
})

vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd('BufEnter', {
	command = 'hi Pmenu guibg=NONE',
	pattern = '*',
})

-- neovim 0.11 built-in autocompletion
--[[ vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		local methods = vim.lsp.protocol.Methods

		local function keymap(lhs, rhs, opts, mode)
			opts = type(opts) == 'string' and { desc = opts }
				or vim.tbl_extend('error', opts, { buffer = bufnr })
			mode = mode or 'n'
			vim.keymap.set(mode, lhs, rhs, opts)
		end

		local function feedkeys(keys)
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(keys, true, false, true), 'n', true)
		end

		local function pumvisible()
			return tonumber(vim.fn.pumvisible()) ~= 0
		end

		if client.supports_method(methods.textDocument_completion) then
			vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })

			keymap('<cr>', function()
				return pumvisible() and '<C-y>' or '<cr>'
			end, { expr = true }, 'i')

			keymap('/', function()
				return pumvisible() and '<C-e>' or '/'
			end, { expr = true }, 'i')

			keymap('<C-n>', function()
				if pumvisible() then
					feedkeys '<C-n>'
				else
					if next(vim.lsp.get_clients { bufnr = 0 }) then
						vim.lsp.completion.trigger()
					else
						if vim.bo.omnifunc == '' then
							feedkeys '<C-x><C-n>'
						else
							feedkeys '<C-x><C-o>'
						end
					end
				end
			end, 'Trigger/select next completion', 'i')

			keymap('<C-u>', '<C-x><C-n>', { desc = 'Buffer completions' }, 'i')

			keymap('<Tab>', function()
				local copilot = require 'copilot.suggestion'

				if copilot.is_visible() then
					copilot.accept()
				elseif pumvisible() then
					feedkeys '<C-n>'
				elseif vim.snippet.active { direction = 1 } then
					vim.snippet.jump(1)
				else
					feedkeys '<Tab>'
				end
			end, {}, { 'i', 's' })
			keymap('<S-Tab>', function()
				if pumvisible() then
					feedkeys '<C-p>'
				elseif vim.snippet.active { direction = -1 } then
					vim.snippet.jump(-1)
				else
					feedkeys '<S-Tab>'
				end
			end, {}, { 'i', 's' })

			keymap('<BS>', '<C-o>s', {}, 's')
		end
	end,
})
]]
