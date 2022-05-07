-- set 'Space' key as leader key
vim.g.mapleader = ' '

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

-- Move visual block
vim.api.nvim_set_keymap('v', 'J', ':move \'>+1<CR>gv=gv', { noremap = true })
vim.api.nvim_set_keymap('v', 'K', ':move \'<-2<CR>gv=gv', { noremap = true })

-- Auto Trim WhiteSpace
vim.cmd[[
  autocmd BufWritePre *.* %s/\s\+$//e
]]
