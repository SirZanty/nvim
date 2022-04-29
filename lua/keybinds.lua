-- disable 'Space' key
vim.api.nvim_set_keymap('n', '<Space>', '', { noremap = true })

-- set 'Space' key as leader key
vim.g.mapleader = ' '

-- keymap nohl
vim.api.nvim_set_keymap('n', '<Leader><CR>', ':nohl<CR>', { noremap = true })

-- disable arrow keys
vim.api.nvim_set_keymap('', '<Up>', '', { noremap = true })
vim.api.nvim_set_keymap('i', '<Up>', '', { noremap = true })
vim.api.nvim_set_keymap('', '<Down>', '', { noremap = true })
vim.api.nvim_set_keymap('i', '<Down>', '', { noremap = true })
vim.api.nvim_set_keymap('', '<Left>', '', { noremap = true })
vim.api.nvim_set_keymap('i', '<Left>', '', { noremap = true })
vim.api.nvim_set_keymap('', '<Right>', '', { noremap = true })
vim.api.nvim_set_keymap('i', '<Right>', '', { noremap = true })

-- move bettween windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- resize window
vim.api.nvim_set_keymap('n', '<A-h>', ':vertical resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-j>', ':resize +2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-l>', ':vertical resize +2<CR>', { noremap = true })

-- open split window
vim.api.nvim_set_keymap('n', '<Leader>v', ':split<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>s', ':vsplit<CR>', { noremap = true })

--  move block of text
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })

-- select all
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true })

-- save file
vim.api.nvim_set_keymap('n', '<C-s>', ':update<CR>', { noremap = true })

-- keep search matches in the middle of the window.
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true })

-- Auto Trim WhiteSpace
vim.api.nvim_exec([[
  autocmd BufWritePre *.* %s/\s\+$//e
]], true)
