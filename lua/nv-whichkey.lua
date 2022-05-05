require("which-key").setup {
  plugins = {
    marks = false, -- shows a list of your marks on ' and `
    registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = false, -- default bindings on <c-w>
      nav = false, -- misc bindings to work with windows
      z = false, -- bindings for folds, spelling and others prefixed with z
      g = false, -- bindings for prefixed with g
    },
  },
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

