--[[
-   NOTE      - lualine-configs.lua
-   Author    - Aru
-
-   Created   - 2022.10.31
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status1_ok, lualine = pcall(require, "lualine")
if not status1_ok then
  return
end
local status2_ok, colors = pcall(require, "vscode.colors")
if not status2_ok then
  return
else
  colors = colors.get_colors()
end

-- Local variables for config lualine.
local vsc_white = '#F3F3F3'
local vsc_red = '#EE6666'
local vsc_yellow = '#F0CF74'

-- Local functions for config lualine.
local get_info = function()
  local is_blank_buffer = vim.api.nvim_eval('&filetype') == ''
  local is_expandtab = vim.api.nvim_eval('&expandtab') == 1
  local total_line = vim.api.nvim_buf_line_count(0)
  local total_indent = tostring(vim.api.nvim_eval('&shiftwidth'))
  local file_format = tostring(vim.api.nvim_eval('&fileformat'))
  local line_string, indent_string, format_string, bar_string

  if total_line <= 1 then
    line_string = total_line .. ' line  '
  else
    line_string = total_line .. ' lines  '
  end

  if is_expandtab then
    indent_string = '  spaces: ' .. total_indent
  else
    indent_string = '  tabs: ' .. total_indent
  end

  if file_format == 'unix' then
    format_string = '    LF'
  elseif file_format == 'dos' then
    format_string = '    CRLF'
  end

  if is_blank_buffer then
    bar_string = ''
  else
    bar_string = '  '
  end

  return line_string .. indent_string .. format_string .. bar_string
end

local get_time = function()
  return os.date('%H:%M')
end

local get_present_line = function()
  local line_value = '' .. tostring(vim.fn.line('.'))
  local column_value = '' .. tostring(vim.fn.col('.'))
  return '' .. line_value .. column_value .. ' '
end

-- Apply transitional separator for the component.
local empty = require("lualine.component"):extend()
function empty:draw(default_highlight)
  self.status = ''
  self.applied_separator = ''
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

-- Put proper separators and gaps between components in sections.
local function process_sections(sections)
  for name, section in pairs(sections) do
    local left = name:sub(9, 10) < 'x'
    for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
      if #section == 4 then
        table.insert(section, pos * 2, { empty, color = { fg = vsc_white, bg = vsc_white } })
      end
    end
    for id, comp in ipairs(section) do
      if type(comp) ~= 'table' then
        comp = { comp }
        section[id] = comp
      end
      comp.separator = left and { right = '' }
    end
  end
  return sections
end

local function search_result()
  if vim.v.hlsearch == 0 then
    return ''
  end
  local last_search = vim.fn.getreg('/')
  if not last_search or last_search == '' then
    return ''
  end
  local searchcount = vim.fn.searchcount { maxcount = 9999 }
  return last_search .. ': ' .. searchcount.current .. ' of ' .. searchcount.total .. '  '
end

local function modified()
  if vim.bo.modified then
    return ''
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return ''
  end
  return ''
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'vscode',
    component_separators = '',
    section_separators = { left = ' ', right = ' ' },
    disabled_filetypes = {
      'NvimTree',
      'tagbar',
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },

  sections = process_sections {
    lualine_a = {
      {
        'branch',
        icon = '',
      },
    },
    lualine_b = {
      {
        'diff',
        diff_color = {
          -- Same color values as the general color option can be used here.
          added    = { fg = colors.vscGreen, bg = colors.vscLeftMid },  -- Changes the diff's added color
          modified = { fg = colors.vscBlue, bg = colors.vscLeftMid },   -- Changes the diff's modified color
          removed  = { fg = colors.vscRed, bg = colors.vscLeftMid },    -- Changes the diff's removed color you
        },
        symbols = { added = '  ', modified = '  ', removed = '  ' },
      },
      {
        'diagnostics',
        sources = { 'nvim_diagnostic', 'nvim_lsp' },
        sections = { 'error' },
        diagnostics_color = { error = { fg = colors.vscLeftMid, bg = vsc_red } },
        symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
        update_in_insert = true,
      },
      {
        'diagnostics',
        sources = { 'nvim_diagnostic', 'nvim_lsp' },
        sections = { 'warn' },
        diagnostics_color = { warn = { fg = colors.vscLeftMid, bg = vsc_yellow } },
        symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
        update_in_insert = true,
      },
      {
        modified,
        color = { fg = colors.vscLeftMid, bg = colors.vscGreen }
      }
    },
    lualine_c = {},
    lualine_x = { search_result, get_info, 'filetype' },
    lualine_y = { get_time },
    lualine_z = { get_present_line },
  },

  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'filetype' },
  },

  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
