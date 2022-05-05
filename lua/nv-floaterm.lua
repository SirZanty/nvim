local wk = require("which-key")

vim.cmd[[ hi! FloatermBorder guibg=NONE guifg=#bbc2cf ]]

vim.g.floaterm_width = 0.5
vim.g.floaterm_height = 0.6
vim.g.floaterm_position = 'topright'

wk.register({
  t = {
    name = "Float Terminal",
    t = { "<cmd>FloatermToggle<CR>", "Float Terminal Toggle" },
    c = {
      name = "Compile",
      ["1"] = {"<cmd>FloatermNew --autoclose=0 gcc % -o %< && ./%<<CR>", "Compile & Run C"},
      ["2"] = {"<cmd>FloatermNew --autoclose=0 g++ % -o %< && ./%<<CR>", "Compile & Run C++"},
      ["3"] = {"<cmd>:FloatermNew --autoclose=0 node %<CR>", "Run Javascript"},
    }
  },
}, { prefix = "<leader>" })
