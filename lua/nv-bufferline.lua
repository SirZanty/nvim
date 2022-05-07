local wk = require("which-key")

require("bufferline").setup{}

wk.register({
  b = {
    name = "Buffer Line",
    ["."] = {"<cmd>BufferLineCycleNext<CR>", "Next Buffer"}, -- buffer next
    [","] = {"<cmd>BufferLineCyclePrev<CR>", "Prev Buffer"}, -- buffer prev
    [">"] = {"<cmd>BufferLineMoveNext<CR>", "Move Next Buffer"}, -- buffer move next
    ["<"] = {"<cmd>BufferLineMovePrev<CR>", "Move Prev Buffer"}, -- buffer move prev
    c = {
      name = "Close Buffer",
      p = {"<cmd>BufferLinePickClose<CR>", "Pick Close Buffer"},
      l = {"<cmd>BufferLineCloseLeft<CR>", "Close Left Buffer"},
      r = {"<cmd>BufferLineCloseRight<CR>", "Close Right Buffer"},
    }, -- buffer close
    g = {"<cmd>BufferLinePick<CR>", "Goto Buffer Pick"},
    p = {"<cmd>BufferLineTogglePin<CR>", "Buffer Toggle Pin"},

  },
}, { prefix = "<leader>" })
