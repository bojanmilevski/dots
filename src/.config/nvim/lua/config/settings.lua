-- column numbers
vim.o.number = true
vim.o.relativenumber = true

-- indentation
local spaces = 2
vim.o.autoindent = true
vim.o.shiftwidth = spaces
vim.o.smartindent = true
vim.o.softtabstop = spaces
vim.o.tabstop = spaces
vim.opt.expandtab = true

-- scroll offset
local scroll_offset = 8
vim.o.sidescrolloff = scroll_offset
vim.o.scrolloff = scroll_offset
vim.o.sidescroll = 1

-- backup
vim.o.backup = true
vim.o.backupdir = vim.fn.stdpath 'data' .. '/backup'

-- undo
vim.o.undodir = vim.fn.stdpath 'data' .. '/undo'
vim.o.undofile = true

-- swap
vim.o.directory = vim.fn.stdpath 'data' .. '/swap'
vim.o.swapfile = true
vim.o.updatetime = 250

-- folding
vim.o.foldcolumn = '0'
vim.o.foldenable = true
vim.o.foldexpr = 'v:lua.vim.lsp.foldexpr()'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldmethod = 'expr'
vim.o.foldtext = ''

-- text width
local textwidth = 80
vim.o.textwidth = textwidth
vim.o.colorcolumn = textwidth .. ''
vim.o.cursorline = true
vim.cmd [[highlight CursorLine cterm=NONE ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE]]

-- search
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.smartcase = true

-- other
vim.o.background = 'dark'
vim.o.clipboard = 'unnamedplus'
vim.o.cmdheight = 0
vim.o.compatible = false
vim.o.errorbells = false
vim.o.hidden = true
vim.o.inccommand = 'split'
vim.o.modeline = false
vim.o.mouse = 'a'
vim.o.mousemodel = 'extend'
vim.o.pumblend = 0
vim.o.showcmd = true
vim.o.showmode = false
vim.o.showtabline = 1
vim.o.signcolumn = 'yes'
vim.o.spelllang = 'en_us'
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.visualbell = false
vim.o.winblend = 0
vim.o.wrap = false
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.fillchars:append { eob = ' ' }
vim.opt.formatoptions:remove { 'c', 'r', 'o' }
vim.opt.whichwrap:append 'hl'
