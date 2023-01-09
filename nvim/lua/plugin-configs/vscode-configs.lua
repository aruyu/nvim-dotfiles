--[[
-   NOTE      - vscode-configs.lua
-   Author    - Ista
-
-   Created   - 2022.10.31
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, vscode = pcall(require, "vscode")
if not status_ok then
  return
end

-- Local variables for config.
local colors = require("vscode.colors").get_colors()
local hl = vim.api.nvim_set_hl
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Dark theme.
vim.o.background = 'dark'
vscode.change_style('dark')

--[[
-- Light theme.
  vim.o.background = 'light'
  vscode.change_style('light')
]]


-- Syntax colors.
--[[
  vscLeftDark = '#252526',
  vscLeftMid = '#373737',
  vscLeftLight = '#636369',

  vscFront = '#D4D4D4',
  vscGray = '#808080',
  vscViolet = '#646695',
  vscBlue = '#569CD6',
  vscDarkBlue = '#223E55',
  vscMediumBlue = '#18A2FE',
  vscLightBlue = '#9CDCFE',
  vscGreen = '#6A9955',
  vscBlueGreen = '#4EC9B0',
  vscLightGreen = '#B5CEA8',
  vscRed = '#F44747',
  vscOrange = '#CE9178',
  vscLightRed = '#D16969',
  vscYellowOrange = '#D7BA7D',
  vscYellow = '#DCDCAA',
  vscPink = '#C586C0',
]]


-- Theme Syntax.
hl(0, 'GitSignsAdd', { fg = colors.vscGreen, bg = 'NONE' })
hl(0, 'GitSignsAddNr', { fg = colors.vscGreen, bg = 'NONE' })
hl(0, 'GitSignsAddLn', { fg = colors.vscGreen, bg = 'NONE' })

hl(0, 'GitSignsChange', { fg = colors.vscBlue, bg = 'NONE' })
hl(0, 'GitSignsChangeNr', { fg = colors.vscBlue, bg = 'NONE' })
hl(0, 'GitSignsChangeLn', { fg = colors.vscBlue, bg = 'NONE' })

hl(0, 'GitSignsDelete', { fg = colors.vscRed, bg = 'NONE' })
hl(0, 'GitSignsDeleteNr', { fg = colors.vscRed, bg = 'NONE' })
hl(0, 'GitSignsDeleteLn', { fg = colors.vscRed, bg = 'NONE' })

hl(0, 'DiagnosticUnderlineError',{ fg = colors.vscRed,  bg = '#1e1e1e', sp = colors.vscRed, undercurl = true })
hl(0, 'DiagnosticUnderlineWarn', { fg = '#fe8019',      bg = '#1e1e1e', sp = '#fe8019',     undercurl = true })
hl(0, 'DiagnosticUnderlineInfo', { fg = 'NONE',         bg = '#1e1e1e', sp = 'NONE',        undercurl = true })
hl(0, 'DiagnosticUnderlineHint', { fg = 'NONE',         bg = '#1e1e1e', sp = 'NONE',        undercurl = true })

hl(0, 'DiagnosticError', { fg = colors.vscRed })
hl(0, 'DiagnosticWarn', { fg = '#fe8019' })


-- Universal Syntax.
hl(0, 'NonText', { fg = '#5a5a5a', bg = 'NONE', italic = true })
hl(0, 'SpecialChar', { fg = colors.vscYellowOrange, bg = 'NONE' })


-- C Syntax.
hl(0, '@c_variable', { fg = colors.vscLightBlue, bg = 'NONE' })

hl(0, '@c_keyword_value', { fg = colors.vscBlueGreen, bg = 'NONE' })
hl(0, '@c_attribute', { fg = colors.vscBlueGreen, bg = 'NONE' })

hl(0, '@c_type', { fg = colors.vscBlue, bg = 'NONE' })
hl(0, '@c_boolean', { fg = colors.vscBlue, bg = 'NONE' })
hl(0, '@c_keyword', { fg = colors.vscBlue, bg = 'NONE' })
hl(0, '@c_constant', { fg = colors.vscBlue, bg = 'NONE' })

hl(0, '@c_function', { fg = colors.vscYellow, bg = 'NONE' })
hl(0, '@c_function_call', { fg = colors.vscYellow, bg = 'NONE' })

hl(0, '@c_repeat', { fg = colors.vscPink, bg = 'NONE' })
hl(0, '@c_conditional', { fg = colors.vscPink, bg = 'NONE' })
hl(0, '@c_preproc', { fg = colors.vscPink, bg = 'NONE' })

hl(0, '@c_bracket', { fg = colors.vscFront, bg = 'NONE' })
hl(0, '@c_operator', { fg = colors.vscFront, bg = 'NONE' })
hl(0, '@c_punctuation', { fg = colors.vscFront, bg = 'NONE' })

hl(0, '@c_string', { fg = colors.vscOrange, bg = 'NONE' })
hl(0, '@c_special_string', { fg = colors.vscYellowOrange, bg = 'NONE' })


-- Verilog Syntax.
hl(0, '@v_variable', { fg = colors.vscLightBlue, bg = 'NONE' })

hl(0, '@v_module_value', { fg = colors.vscBlueGreen, bg = 'NONE' })

hl(0, '@v_type', { fg = colors.vscBlue, bg = 'NONE' })

hl(0, '@v_module', { fg = colors.vscYellow, bg = 'NONE' })
hl(0, '@v_function', { fg = colors.vscYellow, bg = 'NONE' })
hl(0, '@v_task', { fg = colors.vscYellow, bg = 'NONE' })

hl(0, '@v_keyword', { fg = colors.vscPink, bg = 'NONE' })
hl(0, '@v_repeat', { fg = colors.vscPink, bg = 'NONE' })
hl(0, '@v_conditional', { fg = colors.vscPink, bg = 'NONE' })
hl(0, '@v_preproc', { fg = colors.vscPink, bg = 'NONE' })

hl(0, '@v_bracket', { fg = colors.vscYellowOrange, bg = 'NONE' })
hl(0, '@v_operator', { fg = colors.vscFront, bg = 'NONE' })
hl(0, '@v_punctuation', { fg = colors.vscFront, bg = 'NONE' })

hl(0, '@v_string', { fg = colors.vscOrange, bg = 'NONE' })
