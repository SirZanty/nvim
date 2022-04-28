local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

  -- theme
  use 'folke/tokyonight.nvim'

  -- lsp
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer'
  }

  -- autocomplete
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/nvim-cmp',
  }

  -- icon
  use 'kyazdani42/nvim-web-devicons'

  -- status line
  use 'nvim-lualine/lualine.nvim'

  -- bufferline
  use 'akinsho/bufferline.nvim'

  -- file explorer
  use 'kyazdani42/nvim-tree.lua'

  -- autopairs
  use 'windwp/nvim-autopairs'

  -- text color
  use 'norcalli/nvim-colorizer.lua'

  -- treesitter hl code
  use 'nvim-treesitter/nvim-treesitter'

  -- indent line
  use "lukas-reineke/indent-blankline.nvim"

  -- gitsigns
  use 'lewis6991/gitsigns.nvim'

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- float terminal
  use 'voldikss/vim-floaterm'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
