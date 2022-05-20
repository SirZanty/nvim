local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function(use)

  -- theme
  use 'morhetz/gruvbox'

  -- lsp
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer'
  }

  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
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

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end,

config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
