local config = {
    window = {
        border = 'single',
        position = 'bottom',
        margin = { 1, 0, 1, 0 },
        padding = { 2, 2, 2, 2 },
        winblend = 0
    },
    ignore_missing = true,
    triggers = {'<leader>'},
}

require('which-key').setup(config)
