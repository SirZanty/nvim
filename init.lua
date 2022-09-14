require('bootstrap')

-- Local mapping
local opts = { noremap=true, silent=true }
local keymap = vim.keymap.set

require('settings')

require('keymappings')

-- load plugin
require('plugins')

-- Tokyonight
require('core.tokyonight')

-- nvim-tree
require('core.nvim-tree')

-- lsp-installer
require('core.nvim-lsp-installer')

-- lspconfig
--[[
keymap('n', '<leader>e', vim.diagnostic.open_float, opts)
keymap('n', '[d', vim.diagnostic.goto_prev, opts)
keymap('n', ']d', vim.diagnostic.goto_next, opts)
keymap('n', '<leader>q', ':TroubleToggle document_diagnostics<CR>', opts)
]]

require('core.lsp')

-- Trouble log list
require('trouble').setup()

-- Auto Completion
require('core.cmp')

-- luasnip
require('core.luasnip')

-- Treesitter
require('core.treesitter')

-- Gitsigns
require('core.gitsigns')

--[[
keymap('n', '<leader>gn', ':Gitsigns next_hunk<CR>', opts)
keymap('n', '<leader>gN', ':Gitsigns prev_hunk<CR>', opts)
keymap('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', opts)
keymap('n', '<leader>gd', ':Gitsigns diffthis<CR>', opts)
keymap('n', '<leader>gi', ':Gitsigns blame_line<CR>', opts)
]]
-- lualine
require('core.lualine')

-- bufferline
require('core.bufferline')

-- Telescope
require('core.telescope')

-- Comment
require('core.Comment')

-- Debug
require('core.dap')
require('dapui')

--[[
keymap('n', '<leader>dui', ':lua require(\'dapui\').toggle()<CR>', opts)
keymap('n', '<leader>di', ':lua require(\'dapui\').eval()<CR>', opts)

keymap('n', '<leader>db', ':lua require(\'dap\').toggle_breakpoint()<CR>', opts)
keymap('n', '<F5>', ':lua require(\'dap\').continue()<CR>', opts)
keymap('n', '<F10>', ':lua require(\'dap\').step_over()<CR>', opts)
keymap('n', '<F11>', ':lua require(\'dap\').step_into()<CR>', opts)
keymap('n', '<F12>', ':lua require(\'dap\').step_out()<CR>', opts)
]]
-- Color hex
require('core.colorizer')

-- EasyMotion
require('core.hop')

--[[
keymap('n', '<leader>cc', ':HopChar2<CR>', opts)
keymap('n', '<leader>l', ':HopLine<CR>', opts)
keymap('n', '<leader>/', ':HopPattern<CR>', opts)
]]

-- Autopairs
require('core.autopairs')

-- Indent
require('core.indent')

-- Scroll smooth
require('core.neoscroll')

-- Formatting
require('core.neoformat')

-- Toggle terminal
require('core.toggleterm')
-- Disable signcolumn & cursorline terminal
--[[
keymap('n', '<leader>tb', ':ToggleTerm direction=horizontal<CR>', opts)
keymap('n', '<leader>tt', ':ToggleTerm direction=float<CR>', opts)

keymap('t', '<C-\\>', '<C-\\><C-n>', opts)
keymap('t', '<C-h>', '<C-w>h', opts)
keymap('t', '<C-j>', '<C-w>j', opts)
keymap('t', '<C-k>', '<C-w>k', opts)
keymap('t', '<C-l>', '<C-w>l', opts)
-- Split terminal for example: 2<C-t> will open terminal 2
keymap('t', '<C-t>', ':exe v:count1 . \'ToggleTerm\'<CR>', opts)
]]
-- Transparent
require('core.transparent')

-- Dashboard/Alpha
require('core.alpha')

-- Ibus
require('core.ibus')

-- Which-key
require('core.which-key')
