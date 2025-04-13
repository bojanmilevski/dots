vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set

map('n', '<leader>h', vim.cmd.nohlsearch)
map('n', '<leader>s', '<CMD>setlocal spell!<CR>')
map('n', '<C-h>', '<C-w><C-h>') -- focus window left
map('n', '<C-l>', '<C-w><C-l>') -- focus window right
map('n', '<C-j>', '<C-w><C-j>') -- focus window bottom
map('n', '<C-k>', '<C-w><C-k>') -- focus window up
