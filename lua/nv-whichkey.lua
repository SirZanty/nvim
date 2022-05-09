require("which-key").setup {
  triggers = { "<leader>" },
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
  w = {
    name = "Window",
    h = {"<C-w>h", "Select Window Left"},
    j = {"<C-w>j", "Select Window Down"},
    k = {"<C-w>k", "Select Window Up"},
    l = {"<C-w>l", "Select Window Right"},
    r = {
      name = "Resize Window",
      ["1"] = {"<cmd>resize +5<CR>", "Resize Vertical +5"},
      ["2"] = {"<cmd>resize -5<CR>", "Resize Vertical -5"},
      ["3"] = {"<cmd>vertical resize +5<CR>", "Resize Horizontal +5"},
      ["4"] = {"<cmd>vertical resize -5<CR>", "Resize Horizontal -5"},
    }
  },
  --[[
  c = {
    name = "Commentary",
    c = {"<cmd>Commentary<CR>", "Toggle Comment Line"},
  }
  --]]
}, { prefix = "<leader>" })
