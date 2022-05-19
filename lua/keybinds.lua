-- set 'Space' key as leader key
vim.g.mapleader = ' '

--  move block of text
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent=true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent=true })

-- disable arrow keys
vim.api.nvim_set_keymap('', '<Up>', '', { noremap = true, silent=true })
vim.api.nvim_set_keymap('i', '<Up>', '', { noremap = true, silent=true })
vim.api.nvim_set_keymap('', '<Down>', '', { noremap = true, silent=true })
vim.api.nvim_set_keymap('i', '<Down>', '', { noremap = true, silent=true })
vim.api.nvim_set_keymap('', '<Left>', '', { noremap = true, silent=true })
vim.api.nvim_set_keymap('i', '<Left>', '', { noremap = true, silent=true })
vim.api.nvim_set_keymap('', '<Right>', '', { noremap = true, silent=true })
vim.api.nvim_set_keymap('i', '<Right>', '', { noremap = true, silent=true })

-- select all
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent=true })

-- move bettween windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent=true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent=true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent=true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent=true })

-- save file
vim.api.nvim_set_keymap('n', '<C-s>', ':update<CR>', { noremap = true, silent=true })

-- Disable highlight
vim.api.nvim_set_keymap('n', '<leader><cr>', ':nohl<CR>', { noremap = true, silent=true })

-- keep search matches in the middle of the window.
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true, silent=true })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true, silent=true })

-- Move visual block
vim.api.nvim_set_keymap('v', 'J', ':move \'>+1<CR>gv=gv', { noremap = true, silent=true })
vim.api.nvim_set_keymap('v', 'K', ':move \'<-2<CR>gv=gv', { noremap = true, silent=true })

-- Auto Trim WhiteSpace
vim.cmd[[
  autocmd BufWritePre *.* %s/\s\+$//e
]]
