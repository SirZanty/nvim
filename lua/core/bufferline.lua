require('bufferline').setup({
    options = {
        numbers = 'ordinal',
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = true,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return '('..count..')'
        end
    }
})
