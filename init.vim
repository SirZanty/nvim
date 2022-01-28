syntax on
set mouse=a

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

highlight clear SignColumn
set signcolumn=yes

" neovim complete
set completeopt=menuone,noselect

" set cursorline

" Fix backspace indent
set backspace=indent,eol,start

set nowrap
set shortmess+=c
let mapleader=" "

" Tab
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set autoindent
autocmd FileType php setl tabstop=4 shiftwidth=4

set number
set ruler
" set t_Co=256
if has('termguicolors')
  set termguicolors
endif

" Enable hidden buffers
set hidden

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Fix :wq
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Clean search (highlight)
nnoremap <silent> <leader><cr> :noh<cr>

" Vmap for maintain Visual Mode after shifting > and <
vnoremap < <gv
vnoremap > >gv

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Copy & Paste
set clipboard+=unnamedplus

" Save
nnoremap <silent><c-s> :update<cr>

" Format Code
nnoremap <leader>f :!prettier --write %<cr>

" Auto Trim WhiteSpace
autocmd BufWritePre *.* %s/\s\+$//e

" Load plugins
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/configs.vim

lua << EOF
  require "nv-tree"
  require "nv-treesitter"
  require "nv-colorizer"
  require "nv-lspconfig"
  require "nv-cmp"
  require "nv-telescope"
  require "nv-gitsigns"
  require "nv-lualine"
  require "nv-indentline"
  require "nv-autopairs"
EOF
