local lualine = require('lualine')

local colors = {
  -- Gruvbox
  bg       = '#282828',
  fg       = '#ebdbb2',
  yellow   = '#d79921',
  aqua     = '#689d6a',
  green    = '#98971a',
  orange   = '#d65d0e',
  purple   = '#b16286',
  blue     = '#458588',
  red      = '#cc241d',
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    disabled_filetypes = { 'NvimTree' },
    theme = {
      normal = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left({
  function()
    return '▊'
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { right = 1 }, -- We don't need space before this
})

ins_left {
  function()
    return ''
  end,
  color = { fg = colors.red },
  padding = { right = 1 },
}

ins_left({
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.purple, gui = 'bold' },
})

ins_left({
  -- filesize component
  'filesize',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.fg, gui = 'bold' },
})

ins_left({
  'branch',
  icon = '',
  color = { fg = colors.red, gui = 'bold' },
})

ins_left({
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = ' ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
})

ins_left({
  function()
    return '%='
  end,
})

ins_right({
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.aqua },
  },
})

ins_right({ 'location' })

ins_right({ 'progress', color = { fg = colors.fg, gui = 'bold' } })

ins_right({ 'filetype' })

ins_right({
  function()
    return '▊'
  end,
  color = { fg = colors.blue },
  padding = { left = 1 },
})

-- Now don't forget to initialize lualine
lualine.setup(config)
