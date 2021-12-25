" TODO: Theme Gruvbox
set background=dark
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_sign_column="bg0"
colorscheme gruvbox

" Setting Transparent Background
" hi! Normal ctermbg=NONE guibg=NONE
" hi! SignColumn ctermbg=NONE guibg=NONE

" TODO: Explorer (nvim-tree)
let g:nvim_tree_indent_markers = 1
nnoremap <C-n> :NvimTreeToggle<CR>

" TODO: Find file use Telescope
" Using Lua functions
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>

" TODO: Tabline Buffer use barbar.nvim
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
