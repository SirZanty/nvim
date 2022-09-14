require('transparent').setup({
    enable = true,
    extra_groups = {
        'NvimTreeNormal', -- nvim bg
        'NvimTreeNormalNC',
        'TelescopeNormal', -- telescope bg
        'TelescopeNormalNC',
        'TelescopeBorder',
        'NormalFloat', -- float bg
        'FloatBorder',
        'TroubleNormal',
        'MsgArea', -- msg mode command bg
        'WhichKey',
        'WhichKeyFloat',
        'WhichKeyBorder',
    }
})
