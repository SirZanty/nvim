require("bufferline").setup{}

-- buffers :bnext and :bprevious
vim.api.nvim_set_keymap('n', '<A-.>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-,>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- move the current buffer backwards or forwards
vim.api.nvim_set_keymap('n', '<A->>', ':BufferLineMoveNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-<>', ':BufferLineMovePrev<CR>', { noremap = true, silent = true })
