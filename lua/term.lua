vim.cmd[[ hi! FloatermBorder guibg=NONE guifg=#bbc2cf ]]

vim.g.floaterm_width = 0.5
vim.g.floaterm_height = 0.6
vim.g.floaterm_position = 'topright'
vim.g.floaterm_keymap_toggle = '<F12>'

vim.cmd [[
  autocmd FileType c nnoremap <F10> :FloatermNew --autoclose=0 gcc % -o %< && ./%<<CR>
  autocmd FileType cpp nnoremap <F10> :FloatermNew --autoclose=0 g++ % -o %< && ./%<<CR>
  autocmd FileType javascript nnoremap <F10> :FloatermNew --autoclose=0 node %<CR>
]]
