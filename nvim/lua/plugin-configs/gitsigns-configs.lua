--[[
-   NOTE      - gitsigns-configs.lua
-   Author    - Ista
-
-   Created   - 2022.11.08
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]


-- ================================================== --
-- Check error.
local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
  return
end

-- Local variables for config.
vim.o.signcolumn = 'yes'
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
gitsigns.setup({
  signs = {
    add          = { hl = 'GitSignsAdd',    text = '│', numhl = 'GitSignsAddNr',    linehl = 'GitSignsAddLn' },
    change       = { hl = 'GitSignsChange', text = '┆', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
    changedelete = { hl = 'GitSignsChange', text = '┆', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
    delete       = { hl = 'GitSignsDelete', text = '_', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
    topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
    untracked    = { hl = 'GitSignsAdd',    text = '',  numhl = 'GitSignsAddNr',    linehl = 'GitSignsAddLn' },
  },

  signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`

  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },

  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    virt_text_priority = 100,
    delay = 300,
    ignore_whitespace = false,
  },

  current_line_blame_formatter = '     <author>, <author_time> • <summary>',
  current_line_blame_formatter_nc = '     <author>',
  current_line_blame_formatter_opts = {
    relative_time = true,
  },

  sign_priority = 6,
  attach_to_untracked = true,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)

  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1,
  },

  yadm = {
    enable = false
  }
})
