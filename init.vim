syntax on
set mouse=a

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

highlight clear SignColumn
set signcolumn=yes

set cursorline

" Fix backspace indent
set backspace=indent,eol,start

set completeopt=menuone,noselect

set nowrap
set shortmess+=c
let mapleader=" "

" Tab
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set autoindent

set number
set ruler
" set t_Co=256
set termguicolors

" Enable hidden buffers
set hidden

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

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
nnoremap <silent> <leader><space> :noh<cr>

" Vmap for maintain Visual Mode after shifting > and <
vnoremap < <gv
vnoremap > >gv

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Load plugins
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/configs.vim

lua << EOF
require "nv-treesitter"
require "nv-colorizer"
require "nv-lspconfig"
require "nv-compe"
EOF
