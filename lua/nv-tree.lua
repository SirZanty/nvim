require'nvim-tree'.setup{
  view = {
    mappings = {
      custom_only = true,
      list = {
        { key = {"<CR>","<2-LeftMouse>"},       action = "edit" },
        { key = "<C-h>",                        action = "vsplit" },
        { key = "<C-v>",                        action = "split" },
        { key = "<Tab>",                        action = "preview" },
        { key = "R",                            action = "refresh" },
        { key = "a",                            action = "create" },
        { key = "d",                            action = "remove" },
        { key = "r",                            action = "rename" },
        { key = "x",                            action = "cut" },
        { key = "c",                            action = "copy" },
        { key = "p",                            action = "paste" },
        { key = "y",                            action = "copy_name" },
        { key = "Y",                            action = "copy_path" },
        { key = "i",                            action = "toggle_file_info" },
        { key = "<C-_>",                        action = "toggle_help" },
      },
    },
  },
}

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true })
