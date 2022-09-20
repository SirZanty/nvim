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
        flags = lsp_flags,
    }
end

-- Fix omnisharp `textDocument/definition`
require('lspconfig')['omnisharp'].setup {
    capabilities = capabilities,
    flags = lsp_flags,
    handlers = {
        ['textDocument/definition'] = require('omnisharp_extended').handler,
    }
}

-- Customizing how diagnostics are displayed
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
})
