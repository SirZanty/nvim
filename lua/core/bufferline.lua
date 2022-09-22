require('bufferline').setup({
    options = {
        numbers = 'ordinal',
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = true,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return '('..count..')'
        end,
        offsets = {
            {
                filetype = 'NvimTree',
                text = 'File Explorer',
                text_align = 'center',
                highlight = 'Directory',
                separator = true
            }
        },
    }
})
