-- Local mapping
local opts = { noremap=true, silent=true }
local keymap = vim.keymap.set

-- Setting base
vim.opt.syntax = 'off'

-- Usage mouse
vim.opt.mouse = 'a'

-- vim.opt.spell = true

-- Folding
vim.opt.foldmethod = 'manual'

vim.cmd[[
    augroup folds
        autocmd!
        autocmd BufWinLeave ?* mkview
        autocmd BufWinEnter ?* silent! loadview
    augroup END
]]

-- Set mapping leader
vim.g.mapleader = ' '

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.backspace = 'start,eol,indent'

vim.cmd[[
    autocmd Filetype cs setlocal ts=4 sw=4
    autocmd Filetype lua setlocal ts=4 sw=4
    autocmd Filetype markdown setlocal ts=4 sw=4
]]

vim.opt.laststatus = 2
vim.opt.cursorline = true

vim.opt.number = true
vim.opt.ruler = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.completeopt = 'menu,menuone,noselect'

keymap('v', '>', '>gv', opts)
keymap('v', '<', '<gv', opts)

keymap('n', 'n', 'nzzzv', opts)
keymap('n', 'N', 'Nzzzv', opts)

keymap('n', '<leader>v', ':vsplit<CR>', opts) -- doc
keymap('n', '<leader>x', ':split<CR>', opts) -- ngang

keymap('n', '<leader>sv', ':source $MYVIMRC<CR>', opts) -- source reload

keymap('v', 'J', ':m \'>+1<CR>gv=gv', opts)
keymap('v', 'K', ':m \'<-2<CR>gv=gv', opts)

keymap('n', '<leader><CR>', ':nohlsearch<CR>', opts)

-- Select split window
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Increment/Decrement
keymap('n', '+', '<C-a>', opts)
keymap('n', '-', '<C-x>', opts)

-- Select all
keymap('n', '<C-a>', 'gg<S-v>G', opts)

vim.opt.signcolumn = 'yes'

vim.opt.clipboard = 'unnamed,unnamedplus'

-- Auto trim space
vim.cmd[[autocmd BufWritePre *.* %s/\s\+$//e]]

-- load plugin
require('plugins')

-- fix undercurl
vim.cmd[[
    let &t_Cs = "\e[4:3m"
    let &t_Ce = "\e[4:0m"
]]

-- enable gui color
vim.opt.termguicolors = true

-- set background
vim.opt.background = 'dark'

-- Tokyonight
vim.g.tokyonight_style = 'night'
vim.cmd[[colorscheme tokyonight]]

-- nvim-tree
require('nvim-tree').setup {
    view = {
        mappings = {
            list = {
                { key = '?', action = 'toggle_help' },
            },
        },
    },
}
keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opts)

-- lsp-installer
require('nvim-lsp-installer').setup {
    ensure_installed = {
        'omnisharp',
        'cssls',
        'html',
        'emmet_ls',
        'jsonls',
        'tsserver',
        'eslint',
        'tailwindcss'
    },
}

-- lspconfig
keymap('n', '<leader>e', vim.diagnostic.open_float, opts)
keymap('n', '[d', vim.diagnostic.goto_prev, opts)
keymap('n', ']d', vim.diagnostic.goto_next, opts)
keymap('n', '<leader>q', ':TroubleToggle document_diagnostics<CR>', opts)

local on_attach = function(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    keymap('n', 'gD', vim.lsp.buf.declaration, bufopts)
    keymap('n', 'gd', vim.lsp.buf.definition, bufopts)
    keymap('n', 'gi', vim.lsp.buf.implementation, bufopts)
    keymap('n', 'gr', vim.lsp.buf.references, bufopts)
    keymap('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)

    keymap('n', 'K', vim.lsp.buf.hover, bufopts)
    keymap('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)

    keymap('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
    keymap('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    keymap('n', '<leader>fm', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

-- Lsp config server
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Lsp borders
local border = {
    {"╭", "FloatBorder"},
    {"─", "FloatBorder"},
    {"╮", "FloatBorder"},
    {"│", "FloatBorder"},
    {"╯", "FloatBorder"},
    {"─", "FloatBorder"},
    {"╰", "FloatBorder"},
    {"│", "FloatBorder"},
}

-- To instead border override globally
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or border
    return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

-- Change diagnostic symbols in the sign column (gutter)
local signs = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }
for type, icon in pairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- List server
local servers = {
    'tsserver',
    'eslint',
    'tailwindcss',
    'html',
    'cssls',
    'emmet_ls',
    'jsonls',
    'clangd'
}

-- Start config lsp server
for _, lsp in ipairs(servers) do
    require('lspconfig')[lsp].setup {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = lsp_flags,
    }
end

-- Fix omnisharp `textDocument/definition`
require('lspconfig')['omnisharp'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = {
        ['textDocument/definition'] = require('omnisharp_extended').handler,
    },
}

-- Customizing how diagnostics are displayed
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
})

-- Trouble log list
require('trouble').setup()

-- Auto Completion
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    }),
    formatting = {
        format = require('lspkind').cmp_format({
            mode = 'symbol_text',
            maxwidth = 50,
        })
    }
})

-- Set configuration for specific file type.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' },
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

-- luasnip
require('luasnip.loaders.from_vscode').lazy_load({ paths = { './snippets' } })

vim.cmd[[
    imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
    inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
    snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
    snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
]]

-- Treesitter
require('nvim-treesitter.configs').setup{
    ensure_installed = {
        'c',
        'bash',
        'c_sharp',
        'css',
        'scss',
        'comment',
        'html',
        'javascript',
        'tsx',
        'typescript',
        'json',
        'lua',
        'markdown'
    },
    highlight = {
        enable = true,
        -- additional_vim_regex_highlighting = false,
    }
}

-- Gitsigns
require('gitsigns').setup()

keymap('n', '<leader>gn', ':Gitsigns next_hunk<CR>', opts)
keymap('n', '<leader>gN', ':Gitsigns prev_hunk<CR>', opts)
keymap('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', opts)
keymap('n', '<leader>gd', ':Gitsigns diffthis<CR>', opts)
keymap('n', '<leader>gi', ':Gitsigns blame_line<CR>', opts)

-- lualine
require('nv-lualine')

-- bufferline
require('bufferline').setup()

-- buffers :bnext and :bprevious
keymap('n', '<A-.>', ':BufferLineCycleNext<CR>', opts)
keymap('n', '<A-,>', ':BufferLineCyclePrev<CR>', opts)

-- move the current buffer backwards or forwards
keymap('n', '<A->>', ':BufferLineMoveNext<CR>', opts)
keymap('n', '<A-<>', ':BufferLineMovePrev<CR>', opts)

-- close buffer
keymap('n', '<A-c>', ':BufferLinePickClose<CR>', opts)

-- telescope
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {'node_modules', '.git', 'vendor', 'obj', 'bin'}
    }
}

keymap('n', '<leader>ff', ':Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>', opts)
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
keymap('n', '<leader>ft', ':Telescope treesitter<CR>', opts)

-- comment
require('Comment').setup()

-- Debug
local dap = require('dap')

vim.fn.sign_define('DapBreakpoint', { text = '', texthl = 'DiagnosticSignError', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointRejected', { text = '', texthl = 'DiagnosticSignWarn', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '', texthl = 'DiagnosticSignInfo', linehl = 'DiagnosticSignInfo', numhl = 'DiagnosticSignInfo' })

require('dapui').setup()

keymap('n', '<leader>dui', ':lua require(\'dapui\').toggle()<CR>', opts)
keymap('n', '<leader>di', ':lua require(\'dapui\').eval()<CR>', opts)

keymap('n', '<leader>db', ':lua require(\'dap\').toggle_breakpoint()<CR>', opts)
keymap('n', '<F5>', ':lua require(\'dap\').continue()<CR>', opts)
keymap('n', '<F10>', ':lua require(\'dap\').step_over()<CR>', opts)
keymap('n', '<F11>', ':lua require(\'dap\').step_into()<CR>', opts)
keymap('n', '<F12>', ':lua require(\'dap\').step_out()<CR>', opts)

dap.adapters.coreclr = {
    type = 'executable',
    command = 'netcoredbg',
    args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
    {
        type = 'coreclr',
        name = 'launch - netcoredbg',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to dll ', vim.fn.getcwd() .. '/bin/Debug/net6.0/', 'file')
        end,
    },
}

-- Color hex
require('colorizer').setup()

-- EasyMotion
require('hop').setup()

keymap('n', '<leader>cc', ':HopChar2<CR>', opts)
keymap('n', '<leader>l', ':HopLine<CR>', opts)
keymap('n', '<leader>/', ':HopPattern<CR>', opts)

-- Autopairs
require('nvim-autopairs').setup()

-- Indent
require('indent_blankline').setup {
    show_current_context = true,
}

-- Scroll smooth
require('neoscroll').setup()

-- Formatting
vim.g.neoformat_try_node_exe = 1

-- Toggle terminal
require('toggleterm').setup {
    open_mapping = '<C-t>',
    -- Transparent terminal
    highlights = {
        Normal = {
            link = 'Normal',
        },
        NormalFloat = {
            link = 'NormalFloat',
        },
        FloatBorder = {
            link = 'FloatBorder',
        },
    },
    start_in_insert = false,
}
-- Disable signcolumn & cursorline terminal
vim.cmd[[
    autocmd TermOpen * setlocal signcolumn=no
    autocmd TermOpen * setlocal nocursorline
]]

keymap('n', '<leader>tb', ':ToggleTerm direction=horizontal<CR>', opts)
keymap('n', '<leader>tt', ':ToggleTerm direction=float<CR>', opts)

keymap('t', '<C-\\>', '<C-\\><C-n>', opts)
keymap('t', '<C-h>', '<C-w>h', opts)
keymap('t', '<C-j>', '<C-w>j', opts)
keymap('t', '<C-k>', '<C-w>k', opts)
keymap('t', '<C-l>', '<C-w>l', opts)
-- Split terminal for example: 2<C-t> will open terminal 2
keymap('t', '<C-t>', ':exe v:count1 . \'ToggleTerm\'<CR>', opts)

-- Transparent
require('transparent').setup({
    enable = true,
    extra_groups = {
        'NvimTreeNormal',
        'NvimTreeNormalNC',
        'TelescopeNormal',
        'TelescopeNormalNC',
        'TelescopeBorder',
        'NormalFloat',
        'FloatBorder',
        'TroubleNormal',
    }
})

-- Dashboard/Alpha
require('alpha').setup(require'alpha.themes.startify'.config)

-- Fix ibus
require('ibus').setup({
    ibus_engine_normal_mode = 'BambooUs::Candy',
    ibus_engine_insert_mode = 'Bamboo::Candy',
    ibus_engine_auto_mode = false,
})
