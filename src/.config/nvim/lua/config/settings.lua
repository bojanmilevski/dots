local o = vim.o
local opt = vim.opt

-- column numbers
o.number = true
o.relativenumber = true

-- indentation
local spaces = 2
o.autoindent = true
o.shiftwidth = spaces
o.smartindent = true
o.softtabstop = spaces
o.tabstop = spaces
opt.expandtab = true

-- scroll offset
local scroll_offset = 8
o.sidescrolloff = scroll_offset
o.scrolloff = scroll_offset
o.sidescroll = 1

-- backup
o.backup = true
o.backupdir = vim.fn.stdpath 'data' .. '/backup'

-- undo
o.undodir = vim.fn.stdpath 'data' .. '/undo'
o.undofile = true

-- swap
o.directory = vim.fn.stdpath 'data' .. '/swap'
o.swapfile = true
o.updatetime = 250

-- folding
o.foldcolumn = '0'
o.foldenable = true
o.foldexpr = 'v:lua.vim.lsp.foldexpr()'
o.foldlevel = 99
o.foldlevelstart = 99
o.foldmethod = 'expr'
o.foldtext = ''

-- text width
local textwidth = 80
o.textwidth = textwidth
o.colorcolumn = textwidth .. ''
o.cursorline = true
vim.cmd [[highlight CursorLine cterm=NONE ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE]]

-- search
o.hlsearch = true
o.ignorecase = true
o.incsearch = true
o.smartcase = true

-- other
o.background = 'dark'
o.clipboard = 'unnamedplus'
o.cmdheight = 0
o.compatible = false
o.errorbells = false
o.hidden = true
o.inccommand = 'split'
o.modeline = false
o.mouse = 'a'
o.mousemodel = 'extend'
o.pumblend = 0
o.showcmd = true
o.showmode = false
o.showtabline = 1
o.signcolumn = 'yes'
o.spelllang = 'en_us'
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.timeout = true
o.timeoutlen = 300
o.visualbell = false
o.winblend = 0
o.wrap = false
opt.completeopt = { 'menu', 'menuone', 'noselect' }
opt.fillchars:append { eob = ' ' }
opt.formatoptions:remove { 'c', 'r', 'o' }
opt.whichwrap:append 'hl'
