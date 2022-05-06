local wk = require("which-key")

require('gitsigns').setup {
  current_line_blame = true
}

wk.register({
  g = {
    name = "Gitsigns",
    -- next hunk
    ["."] = {"<cmd>Gitsigns next_hunk<CR>", "Git Next Hunk"},
    -- prev hunk
    [","] = {"<cmd>Gitsigns prev_hunk<CR>", "Git Prev Hunk"},
    -- git preview hunk
    p = {"<cmd>Gitsigns preview_hunk<CR>", "Git Preview Hunk"},
    -- git preview diff
    d = {"<cmd>Gitsigns diffthis<CR>", "Git Preview Diff"},
    -- show info blame line
    b = {"<cmd>Gitsigns blame_line<CR>", "Git Show Blame Line"},
  },
}, { prefix = "<leader>" })
