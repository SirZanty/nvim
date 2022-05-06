local wk = require("which-key")

require("nvim-lsp-installer").setup {}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'html', 'cssls', 'tsserver', 'clangd' }
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    capabilities = capabilities,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
  }
end

-- Change diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Change prefix/character preceding the diagnostics' virtual text
vim.diagnostic.config({
  virtual_text = {
    prefix = '●', -- Could be '■', '●', '▎', 'x'
  }
})

-- Mapping
wk.register({
  l = {
    name = "Lsp",
    e = {"<cmd>lua vim.diagnostic.open_float()<CR>", "Diagnostic Float"},
    ["."] = {"<cmd>lua vim.diagnostic.goto_next()<CR>", "Diagnostic Next"},
    [","] = {"<cmd>lua vim.diagnostic.goto_prev()<CR>", "Diagnostic Prev"},
    q = {"<cmd>lua vim.diagnostic.setloclist()<CR>", "Diagnostic List"},
    g = {
      name = "Go To",
      d = {"<cmd>lua vim.lsp.buf.definition()<CR>", "Go To Definition"},
      D = {"<cmd>lua vim.lsp.buf.declaration()<CR>", "Go To Declaration"},
      r = {"<cmd>lua vim.lsp.buf.references()<CR>", "Go To References"},
    },
    K = {"<cmd>lua vim.lsp.buf.hover()<CR>", "Hover Documentation"},
    k = {"<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature Help"},
    w = {
      name = "Workspace Folder",
      a = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "Add Workspace Folder"},
      r = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "Remove Workspace Folder"},
      l = {"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "List Workspace Folder"},
    },
    D = {"<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type Definition"},
    r = {"<cmd>lua vim.lsp.buf.rename()<CR>", "Rename"},
    a = {"<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action"},
    f = {"<cmd>lua vim.lsp.buf.formatting()<CR>", "Format Code"},
  },
}, { prefix = "<leader>" })
