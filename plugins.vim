"*****************************
"" Vim-Plug core
"*****************************
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
if has('win32')&&!has('win64')
  let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
  let curl_exists=expand('curl')
endif

if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

  " Theme Gruvbox
  Plug 'morhetz/gruvbox'

  " Comment code
  Plug 'tpope/vim-commentary'

  " Emmet
  Plug 'mattn/emmet-vim'

  " A Vim alignment plugin
  Plug 'junegunn/vim-easy-align'

  if has("nvim")
    " Icon
    Plug 'kyazdani42/nvim-web-devicons'

    " Explorer use nvim-tree
    Plug 'kyazdani42/nvim-tree.lua'

    " Buffer file line
    Plug 'romgrk/barbar.nvim'

    " Line
    Plug 'nvim-lualine/lualine.nvim'

    " IndentLine
    Plug 'lukas-reineke/indent-blankline.nvim'

    " Git Signs
    Plug 'lewis6991/gitsigns.nvim'

    " Find file use Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Syntax code
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Highline Color
    Plug 'norcalli/nvim-colorizer.lua'

    " Lsp
    Plug 'neovim/nvim-lspconfig'

    " AutoComplete
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/nvim-cmp'

    " Snippet
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

  endif

call plug#end()
