local opts = { noremap=true, silent=true }
local keymap = vim.keymap.set

local on_attach = function(client, bufnr)
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

