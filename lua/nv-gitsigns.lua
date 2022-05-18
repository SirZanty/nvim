require('gitsigns').setup {
  current_line_blame = true
}

-- next & prev huck
vim.api.nvim_set_keymap('n', ']g', ':Gitsigns next_hunk<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '[g', ':Gitsigns prev_hunk<CR>', { noremap = true })
