-- set 'Space' key as leader key
vim.g.mapleader = ' '

--  move block of text
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })

-- disable arrow keys
vim.api.nvim_set_keymap('', '<Up>', '', { noremap = true })
vim.api.nvim_set_keymap('i', '<Up>', '', { noremap = true })
vim.api.nvim_set_keymap('', '<Down>', '', { noremap = true })
vim.api.nvim_set_keymap('i', '<Down>', '', { noremap = true })
vim.api.nvim_set_keymap('', '<Left>', '', { noremap = true })
vim.api.nvim_set_keymap('i', '<Left>', '', { noremap = true })
vim.api.nvim_set_keymap('', '<Right>', '', { noremap = true })
vim.api.nvim_set_keymap('i', '<Right>', '', { noremap = true })

-- select all
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true })

-- move bettween windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- resize window
vim.api.nvim_set_keymap('n', '<A-h>', ':vertical resize +2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-j>', ':resize +2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-l>', ':vertical resize -2<CR>', { noremap = true })

-- buffers :bnext and :bprevious
vim.api.nvim_set_keymap('n', '<A-.>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-,>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- move the current buffer backwards or forwards
vim.api.nvim_set_keymap('n', '<A->>', ':BufferLineMoveNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-<>', ':BufferLineMovePrev<CR>', { noremap = true, silent = true })

-- close buffer
vim.api.nvim_set_keymap('n', '<A-c>', ':BufferLinePickClose<CR>', { noremap = true, silent = true })

-- save file
vim.api.nvim_set_keymap('n', '<C-s>', ':update<CR>', { noremap = true })

-- keep search matches in the middle of the window.
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true })

-- Move visual block
vim.api.nvim_set_keymap('v', 'J', ':move \'>+1<CR>gv=gv', { noremap = true })
vim.api.nvim_set_keymap('v', 'K', ':move \'<-2<CR>gv=gv', { noremap = true })

-- Auto Trim WhiteSpace
vim.cmd[[
  autocmd BufWritePre *.* %s/\s\+$//e
]]
