require("which-key").setup {
  triggers = {"<leader>"},
}

local wk = require("which-key")

wk.register({
  -- No Highlight
  ["<CR>"] = {"<cmd>nohl<CR>", "Disable Highlight"},
  -- open split window
  s = {
    name = "Split",
    v = {"<cmd>split<CR>", "Split Vertical"},
    h = {"<cmd>vsplit<CR>", "Split Horizontal"}
  },
}, { prefix = "<leader>" })

