--[[
-   NOTE      - vscode-configs.lua
-   Author    - Asta
-
-   Created   - 2022.10.31
-   Github    - https://github.com/astaos
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
-- Light theme.
--vim.o.background = 'light'

-- Configure setup with some options.
vscode.setup({
  -- Alternatively set style in setup
  -- style = 'light'

  -- Enable transparent background
  transparent = false,

  -- Enable italic comment
  italic_comments = false,

  -- Disable nvim-tree background color
  disable_nvimtree_bg = false,

  -- Override colors (see ./lua/vscode/colors.lua)
  color_overrides = {
    --vscLineNumber = '#FFFFFF',
  },

  -- Override highlight groups (see ./lua/vscode/theme.lua)
  group_overrides = {
    -- this supports the same val table as vim.api.nvim_set_hl
    -- use colors from this colorscheme by requiring vscode.colors!
    --Cursor = { fg=colors.vscDarkBlue, bg=colors.vscLightGreen, bold=true },
  }
})
vscode.load()


-- Syntax colors.
--[[
  vscNone = 'NONE',
  vscFront = '#D4D4D4',
  vscBack = '#1E1E1E',
  vscLeftDark = '#252526',
  vscLeftMid = '#373737',
  vscLeftLight = '#636369',

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

local vsc_nontext = '#5A5A5A'
local vsc_red = '#EE6666'
local vsc_yellow = '#F0CF74'


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

hl(0, 'DiagnosticUnderlineError',{ fg = vsc_red,    bg = colors.vscBack, sp = vsc_red,    undercurl = true })
hl(0, 'DiagnosticUnderlineWarn', { fg = vsc_yellow, bg = colors.vscBack, sp = vsc_yellow, undercurl = true })
hl(0, 'DiagnosticUnderlineInfo', { fg = 'NONE',     bg = colors.vscBack, sp = 'NONE',     undercurl = true })
hl(0, 'DiagnosticUnderlineHint', { fg = 'NONE',     bg = colors.vscBack, sp = 'NONE',     undercurl = true })

hl(0, 'DiagnosticError', { fg = vsc_red,    bg = 'NONE' })
hl(0, 'DiagnosticWarn', { fg = vsc_yellow,  bg = 'NONE' })
hl(0, 'DiagnosticInfo', { fg = vsc_nontext, bg = 'NONE' })
hl(0, 'DiagnosticHint', { fg = vsc_nontext, bg = 'NONE' })


-- Universal Syntax.
hl(0, '@error', { fg = vsc_red, bg = 'NONE' })
hl(0, 'NonText', { fg = vsc_nontext, bg = 'NONE', italic = true })
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

hl(0, '@c_bracket', { fg = colors.vscYellowOrange, bg = 'NONE' })
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


-- XML Syntax.
hl(0, 'xmlTag', { fg = colors.vscGray, bg = 'NONE' })
hl(0, 'xmlTagName', { fg = colors.vscGray, bg = 'NONE' })
hl(0, 'xmlNamespace', { fg = colors.vscGray, bg = 'NONE' })

hl(0, 'xmlAttrib', { fg = colors.vscLightBlue, bg = 'NONE' })
hl(0, 'xmlString', { fg = colors.vscBlue, bg = 'NONE' })
hl(0, 'xmlEqual', { fg = colors.vscFront, bg = 'NONE' })
hl(0, 'xmlAttribPunct', { fg = colors.vscFront, bg = 'NONE' })
