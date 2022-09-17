--[[
*******************
*  Keymapping wk  *
*******************
]]
local wk = require('which-key')

local wk_opts_normal = {
    mode = 'n',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true
}

local wk_opts_visual = {
    mode = 'v',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true
}

-- Normal Mode
wk.register({
    -- Split Window
    s = {
        name = 'Split Window',
        v = { ':vsplit<CR>', 'Split Window Horizontal' },
        x = { ':split<CR>', 'Split Window Vertical' },
    },

    -- Disable Highlight
    ['<CR>'] = { ':nohlsearch<CR>', 'Disable Highlight' },

    -- Telescope
    f = {
        name = 'Telescope',
        f = { ':Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>', 'Find File' },
        g = { ':Telescope live_grep<CR>', 'Find Word' },
        b = { ':Telescope buffers<CR>', 'Find Buffer' },
        h = { ':Telescope help_tags<CR>', 'Find Documentation Vim' },
        t = { ':Telescope treesitter<CR>', 'Telescope Treesitter Picker' },
        r = { ':Telescope file_browser<CR>', 'Telescope File Browser'},
    },

    -- Bufferline
    b = {
        name = 'Bufferline',
        c = {
            name = 'Close',
            p = { ':BufferLinePickClose<CR>', 'Buffer Pick Close' },
            l = { ':BufferLineCloseLeft<CR>', 'Buffer Close Left' },
            r = { ':BufferLineCloseRight<CR>', 'Buffer Close Right' },
        },
        g = {
            function()
                local number_buffer = vim.fn.input('Number Buffer:', ' ', 'file')
                vim.cmd('BufferLineGoToBuffer' .. number_buffer)
            end,
            'Go To Buffer'
        },
        s = {
            name = 'Sort',
            e = { ':BufferLineSortByExtension<CR>', 'Buffer Sort By Extension' },
            d = { ':BufferLineSortByDirectory<CR>', 'Buffer Sort By Directory' },
        },
        p = { ':BufferLineTogglePin<CR>', 'Buffer Toggle Pin' }
    },

    -- Gitsigns
    g = {
        name = 'Git',
        s = { ':Gitsigns stage_hunk<CR>', 'Git Stage Hunk' },
        r = { ':Gitsigns reset_hunk<CR>', 'Git Reset Hunk' },
        S = { ':Gitsigns stage_buffer<CR>', 'Git Stage Buffer' },
        u = { ':Gitsigns undo_stage_hunk<CR>', 'Git Undo Stage Buffer' },
        R = { ':Gitsigns reset_buffer<CR>', 'Git Reset Buffer' },
        p = { ':Gitsigns preview_hunk<CR>', 'Git Preview Hunk' },
        b = { ':lua require\'gitsigns\'.blame_line{full=true}<CR>', 'Git Blame Line Full' },
        d = { ':Gitsigns diffthis<CR>', 'Git Diff This' },
        D = { ':lua require\'gitsigns\'.diffthis(\'~\')<CR>', 'Git Diff This' },
        n = { ':Gitsigns next_hunk<CR>', 'Git Next Hunk' },
        N = { ':Gitsigns prev_hunk<CR>', 'Git Previous Hunk' },
    },

    -- Hop
    j = {
        name = 'Jump',
        w = { ':HopWord<CR>', 'Jump Word' },
        c = {
            name = 'Jump Char',
            ['1'] = { ':HopChar1<CR>', 'Jump Char 1' },
            ['2'] = { ':HopChar2<CR>', 'Jump Char 2' },
        },
        l = {
            name = 'Jump Line',
            l = { ':HopLine<CR>', 'Jump Line' },
            s = { ':HopLineStart<CR>', 'Jump Line Start' },
        },
        p = { ':HopPattern<CR>', 'Jump Pattern' },
    },

    -- Terminal
    t = {
        name = 'Terminal',
        f = { ':ToggleTerm direction=float<CR>', 'Open Terminal Float' },
        h = { ':ToggleTerm direction=horizontal<CR>', 'Open Terminal Horizontal' },
        v = { ':ToggleTerm direction=vertical<CR>', 'Open Terminal Vertical' },
        t = { ':ToggleTerm direction=tab<CR>', 'Open Terminal Tab' },
    },

    -- Lsp
    l = {
        name = 'LSP',
        g = {
            name = 'LSP Go To',
            D = { ':lua vim.lsp.buf.declaration()<CR>', 'LSP Go To Declaration' },
            d = { ':lua vim.lsp.buf.definition()<CR>', 'LSP Go To Definition' },
            i = { ':lua vim.lsp.buf.implementation()<CR>', 'LSP Go To Implementation' },
            r = { ':lua vim.lsp.buf.references()<CR>', 'LSP Go To References' },
        },
        D = { ':lua vim.lsp.buf.type_definition()<CR>', 'LSP Go To Type Definition' },
        e = { ':lua vim.diagnostic.open_float()<CR>', 'LSP Open Float Diagnostic' },
        q = { ':TroubleToggle document_diagnostics<CR>', 'LSP Open Trouble Diagnostic' },
        a = { ':lua vim.lsp.buf.code_action()<CR>', 'LSP Code Action' },
        r = { ':lua vim.lsp.buf.rename()<CR>', 'LSP Rename' },
        f = { ':lua vim.lsp.buf.formatting()<CR>', 'LSP Formatting' },
        h = { ':lua vim.lsp.buf.signature_help()<CR>', 'LSP Signature Help' },
        k = { ':lua vim.lsp.buf.hover()<CR>', 'LSP Hover' },
    },

    -- Debug
    d = {
        name = 'Debug',
        u = { ':lua require\'dapui\'.toggle()<CR>', 'Open Debug UI' },
        i = { ':lua require\'dapui\'.eval()<CR>', 'Open Debug Eval' },
        b = { ':lua require\'dap\'.toggle_breakpoint()<CR>', 'Debug Toggle Breakpoint' },
    },
}, wk_opts_normal)

-- Visual Mode
wk.register({
    -- Gitsigns
    g = {
        name = 'Git',
        s = { ':Gitsigns stage_hunk<CR>', 'Git Stage Hunk' },
        r = { ':Gitsigns reset_hunk<CR>', 'Git Reset Hunk' },
    },
}, wk_opts_visual)
