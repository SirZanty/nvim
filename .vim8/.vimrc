syntax on
set mouse=a

" Tab
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

" Status
set laststatus=2

" Set timeout switch mode
set ttimeoutlen=100

set number
set ruler

" Searching
set hlsearch
set incsearch

" Vmap for maintain Visual Mode after shifting > and <
vnoremap < <gv
vnoremap > >gv

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Save
nnoremap <c-s> :update<cr>

" Auto Trim WhiteSpace
autocmd BufWritePre *.* %s/\s\+$//e

" Copy Clipboard
set clipboard=unnamedplus

" Theme
set background=dark
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

" Gvim
set guioptions-=T " Toolbar
set guioptions-=m " Menubar
set guioptions-=r " Scrollbar

" Netrw
let g:netrw_liststyle = 3
