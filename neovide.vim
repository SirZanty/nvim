if exists("g:neovide")
    " Refresh Rate
    let g:neovide_refresh_rate=60

    " Idle Refresh Rate
    let g:neovide_refresh_rate_idle=5

    " Transparency
    let g:neovide_transparency=0.5

    " Font
    set guifont=Hack\ Nerd\ Font:h12

    " Hiding the mouse when typing
    let g:neovide_hide_mouse_when_typing = v:true

    " Antialiasing
    let g:neovide_cursor_antialiasing=v:true

    " Animation Length
    let g:neovide_cursor_animation_length=0.2

    " Animation Trail Size
    let g:neovide_cursor_trail_size=0

    " Cursor Particles
    let g:neovide_cursor_vfx_mode = "ripple"

    "Paste mode cmd
    cmap <C-S-V> <C-R>*
endif
