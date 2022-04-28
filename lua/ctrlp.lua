require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules", ".git", "vendor"}
  }
}

vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true })
