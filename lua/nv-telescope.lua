require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules", ".git", "vendor"}
  }
}

vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent=true })
