local wk = require("which-key")

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules", ".git", "vendor"}
  }
}

wk.register({
  f = {
    name = "File",
    f = {"<cmd>Telescope find_files<CR>", "Find File"},
    g = {"<cmd>Telescope live_grep<CR>", "Live Grep"},
    b = {"<cmd>Telescope buffers<CR>", "Find Buffers"},
  }
}, { prefix = "<leader>" })
