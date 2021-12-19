local gl = require('galaxyline')
local condition = require('galaxyline.condition')
local gls = gl.section

gl.short_line_list = {'NvimTree','vim-plug', 'qf'}

local colors = {
  bg         = '#282828',
  -- section_bg = '#504945',
  gray       = '#a89984',
  fg         = '#ebdbb2',
  blue       = '#458588',
  green      = '#98971a',
  -- activegray = '#7c6f64',
  orange     = '#d65d0e',
  yellow     = '#d79921',
  red        = '#cc241d',
  aqua       = '#689d6a'
}
gls.left[1] = {
  RainbowRed = {
    provider = function() return '▊ ' end,
    highlight = {colors.blue,colors.bg}
  },
}

gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      -- n = Nomal
      -- i = Insert
      -- v = Vitual
      -- R = repeat
      -- s = select
      local mode_color = {
        n = colors.gray,
        i = colors.blue,
        v=colors.orange, [''] = colors.orange, V=colors.orange,
        c = colors.red,
        R = colors.red,
        -- Rv = colors.red,
        -- no = colors.red,
        s = colors.orange, S=colors.orange, [''] = colors.orange,
        -- ic = colors.yellow,
        -- cv = colors.red,ce=colors.red, r = colors.red,
        -- rm = colors.aqua, ['r?'] = colors.aqua,
        -- ['!']  = colors.red,t = colors.red
      }
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return '  '
    end,
    highlight = {colors.fg,colors.bg,'bold'},
    -- separator = "▊",
    -- separator_highlight = {colors.section_bg, colors.section_bg}
  },
}

gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
  },
}

gls.left[4] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg,'bold'}
  }
}

gls.left[5] = {
  FileSize = {
    provider = 'FileSize',
    condition = condition.buffer_not_empty,
    -- separator = " ",
    highlight = {colors.fg,colors.bg, 'bold'},
    -- separator_highlight = {colors.section_bg, colors.bg}
  }
}

gls.left[6] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    highlight = {colors.red, colors.bg}
  }
}

gls.left[7] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    -- separator = '  ',
    highlight = {colors.fg, colors.bg}
  }
}

gls.left[8] = {
  Space = {
    provider = function() return ' ' end,
    highlight = {colors.bg, colors.bg}
  }
}

gls.left[9] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.check_git_workspace,
    icon = ' ',
    highlight = {colors.green, colors.bg}
  }
}

gls.left[10] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.check_git_workspace,
    icon = ' ',
    highlight = {colors.orange, colors.bg}
  }
}

gls.left[11] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.check_git_workspace,
    icon = ' ',
    highlight = {colors.red, colors.bg}
  }
}

gls.right[1] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}

gls.right[2] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
}

gls.right[3] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.aqua,colors.bg},
  }
}

gls.right[4] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}

gls.right[5] = {
  FileFormat = {
    provider = function() return vim.bo.filetype end,
    highlight = { colors.fg, colors.bg },
  }
}

gls.right[6] = {
  Space = {
    provider = function() return ' ' end,
    highlight = {colors.bg, colors.bg}
  }
}

gls.right[7] = {
  RainbowBlue = {
    provider = function() return ' ▊' end,
    highlight = {colors.blue,colors.bg}
  },
}
