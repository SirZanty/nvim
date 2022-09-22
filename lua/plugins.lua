return require('packer').startup({function()
    -- theme
    use 'folke/tokyonight.nvim'
    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'Hoffs/omnisharp-extended-lsp.nvim' -- fix omnisharp `textDocument/definition`
    use 'simrat39/symbols-outline.nvim'
    -- auto complete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    -- kinds
    use 'onsails/lspkind.nvim'
    -- snippet
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- highline code
    use 'nvim-treesitter/nvim-treesitter'
    -- git line
    use 'lewis6991/gitsigns.nvim'
    -- icon
    use 'kyazdani42/nvim-web-devicons'
    -- explorer
    use 'kyazdani42/nvim-tree.lua'
    -- file line
    use 'akinsho/bufferline.nvim'
    -- status line
    use 'nvim-lualine/lualine.nvim'
    -- find file
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'nvim-lua/plenary.nvim'
    -- markdown align
    use 'junegunn/vim-easy-align'
    -- comment
    use 'numToStr/Comment.nvim'
    -- debug
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    -- hex color
    use 'norcalli/nvim-colorizer.lua'
    --  EasyMotion
    use 'phaazon/hop.nvim'
    -- Autopairs (),{},[],...
    use 'windwp/nvim-autopairs'
    -- Surround
    use 'tpope/vim-surround'
    -- Repeat command with dot (.)
    use 'tpope/vim-repeat'
    -- Indent
    use 'lukas-reineke/indent-blankline.nvim'
    -- Scroll smooth
    use 'karb94/neoscroll.nvim'
    -- Format code
    use 'sbdchd/neoformat'
    -- Terminal
    use 'akinsho/toggleterm.nvim'
    -- Transparent
    use 'xiyaowong/nvim-transparent'
    -- Dashboard/Alpha
    use 'goolord/alpha-nvim'
    -- Ibus
    use 'phamhiep2506/ibus.nvim'
    -- which-key
    use 'folke/which-key.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end,
config = {
    display = {
        prompt_border = 'single',
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    },
}
})
