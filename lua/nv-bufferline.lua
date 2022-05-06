local wk = require("which-key")

require("bufferline").setup{}

wk.register({
  b = {
    name = "Buffer Line",
    ["."] = {"<cmd>BufferLineCycleNext<CR>", "Buffer Next"}, -- buffer next
    [","] = {"<cmd>BufferLineCyclePrev<CR>", "Buffer Prev"}, -- buffer prev
    [">"] = {"<cmd>BufferLineMoveNext<CR>", "Buffer Move Next"}, -- buffer move next
    ["<"] = {"<cmd>BufferLineMovePrev<CR>", "Buffer Move Prev"}, -- buffer move prev
    c = {
      p = {"<cmd>BufferLinePickClose<CR>", "Buffer Pick Close"},
      l = {"<cmd>BufferLineCloseLeft<CR>", "Buffer Close Left"},
      r = {"<cmd>BufferLineCloseRight<CR>", "Buffer Close Right"},
    }, -- buffer close
  },
}, { prefix = "<leader>" })
