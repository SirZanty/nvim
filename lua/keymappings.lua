--[[
*******************
* Keymapping Base *
*******************
]]

local opts = { noremap=true, silent=true }
local keymap = vim.keymap.set

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

-- Save
keymap('n', '<C-s>', ':update<CR>', opts)

-- Bufferline
keymap('n', '<A-.>', ':BufferLineCycleNext<CR>', opts) -- bnext
keymap('n', '<A-,>', ':BufferLineCyclePrev<CR>', opts) -- bprevious
keymap('n', '<A->>', ':BufferLineMoveNext<CR>', opts) -- move bnext
keymap('n', '<A-<>', ':BufferLineMovePrev<CR>', opts) -- move bprevious
keymap('n', '<A-c>', ':bdelete<CR>', opts)

-- Nvim-tree
keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opts)

--[[
*******************
*  Keymapping wk  *
*******************
]]
local wk = require('which-key')

local wk_opts = {
    mode = 'n',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true
}

wk.register({
    -- Telescope
    f = {
        name = 'Telescope',
        f = { ':Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>', 'Find File' },
        g = { ':Telescope live_grep<CR>', 'Find Word' },
        b = { ':Telescope buffers<CR>', 'Find Buffer' },
        h = { ':Telescope help_tags<CR>', 'Find Documentation Vim' },
        t = { ':Telescope treesitter<CR>', 'Treesitter Picker' },
    },

    -- Bufferline
    b = {
        name = 'Bufferline',
        c = {
            name = 'Close',
            p = { ':BufferLinePickClose<CR>', 'Pick' },
            l = { ':BufferLineCloseLeft<CR>', 'Side Left' },
            r = { ':BufferLineCloseRight<CR>', 'Side Right' },
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
            e = { ':BufferLineSortByExtension<CR>', 'By Extension' },
            d = { ':BufferLineSortByDirectory<CR>', 'By Directory' },
        },
        p = { ':BufferLineTogglePin<CR>', 'Toggle Pin' }
    },
}, wk_opts)
