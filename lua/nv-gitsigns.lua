require('gitsigns').setup {
  current_line_blame = true
}

-- next & prev huck
vim.api.nvim_set_keymap('n', ']c', ':Gitsigns next_hunk<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '[c', ':Gitsigns prev_hunk<CR>', { noremap = true })

-- git preview hunk
vim.api.nvim_set_keymap('n', '<Leader>hp', ':Gitsigns preview_hunk<CR>', { noremap = true })

-- git preview diff
vim.api.nvim_set_keymap('n', '<Leader>hd', ':Gitsigns diffthis<CR>', { noremap = true })

-- show info blame line
vim.api.nvim_set_keymap('n', '<Leader>hb', ':Gitsigns blame_line<CR>', { noremap = true })
