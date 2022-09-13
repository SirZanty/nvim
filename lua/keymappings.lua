-- Local mapping
local opts = { noremap=true, silent=true }
local keymap = vim.keymap.set

keymap('n', '<C-s>', ':update<CR>', opts)
