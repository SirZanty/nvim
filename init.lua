require('bootstrap')

require('settings')

require('keymappings')

-- load plugin
require('plugins')

-- Tokyonight
require('core.tokyonight')

-- nvim-tree
require('core.nvim-tree')

-- lsp-installer
require('core.lsp-installer')

-- lspconfig
require('core.lsp')

-- outline
require('core.outline')

-- Auto Completion
require('core.cmp')

-- luasnip
require('core.luasnip')

-- Treesitter
require('core.treesitter')

-- Gitsigns
require('core.gitsigns')

-- lualine
require('core.lualine')

-- bufferline
require('core.bufferline')

-- Telescope
require('core.telescope')

-- Comment
require('core.comment')

-- Debug
require('core.dap')
require('dapui').setup()

-- Color hex
require('core.colorizer')

-- EasyMotion
require('core.hop')

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

-- Transparent
require('core.transparent')

-- Dashboard/Alpha
require('core.alpha')

-- Ibus
require('core.ibus')

-- Which-key
require('core.which-key')

-- Key Mappings Which-key
require('keymappings_wk')
