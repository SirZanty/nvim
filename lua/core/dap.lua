local dap = require('dap')

vim.fn.sign_define('DapBreakpoint', { text = '', texthl = 'DiagnosticSignError', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointRejected', { text = '', texthl = 'DiagnosticSignWarn', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '', texthl = 'DiagnosticSignInfo', linehl = 'DiagnosticSignInfo', numhl = 'DiagnosticSignInfo' })

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
            return vim.fn.input('Path to dll ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        end,
    },
}

-- Disable cursorline
vim.cmd[[
    autocmd Filetype dapui_* setlocal nocursorline
    autocmd Filetype dap-repl setlocal nocursorline
]]
