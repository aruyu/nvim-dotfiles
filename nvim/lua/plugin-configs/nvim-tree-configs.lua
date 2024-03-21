--[[
-   NOTE      - nvim-tree-configs.lua
-   Author    - Aru
-
-   Created   - 2022.10.21
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status1_ok, nvim_tree = pcall(require, "nvim-tree")
if not status1_ok then
  return
end
local status2_ok, colors = pcall(require, "vscode.colors")
if not status2_ok then
  return
else
  colors = colors.get_colors()
end

-- Local variables for config.
-- disable netrw at the very start of your init.lua (strongly advised) --
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Local functions for config.
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"
  local hl = vim.api.nvim_set_hl

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '1',     api.tree.reload,                opts('Refresh'))
  vim.keymap.set('n', '2',     api.tree.reload,                opts('Refresh'))
  vim.keymap.set('n', '3',     api.tree.reload,                opts('Refresh'))
  vim.keymap.set('n', '4',     api.tree.reload,                opts('Refresh'))
  vim.keymap.set('n', '5',     api.tree.reload,                opts('Refresh'))
  vim.keymap.set('n', '6',     api.tree.reload,                opts('Refresh'))
  vim.keymap.set('n', '7',     api.tree.reload,                opts('Refresh'))
  vim.keymap.set('n', '8',     api.tree.reload,                opts('Refresh'))
  vim.keymap.set('n', '9',     api.tree.reload,                opts('Refresh'))
  vim.keymap.set('n', '0',     api.tree.reload,                opts('Refresh'))

  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,           opts('Help'))

  -- custom highlights
  hl(0, 'NvimTreeExecFile', { fg = colors.vscYellowOrange, bg = 'NONE', undercurl = true })
  hl(0, 'NvimTreeSpecialFile', { fg = colors.vscPink, bg = 'NONE', undercurl = true })
  hl(0, 'NvimTreeSymlink', { fg = colors.vscPink, bg = 'NONE', undercurl = true })
  hl(0, 'NvimTreeCutHL', { fg = colors.vscPink, bg = 'NONE', undercurl = true })
  hl(0, 'NvimTreeCopiedHL', { fg = colors.vscPink, bg = 'NONE', undercurl = true })
  hl(0, 'NvimTreeBookmarkHL', { fg = colors.vscPink, bg = 'NONE', undercurl = true })

  hl(0, 'NvimTreeGitDeletedIcon', { fg = colors.vscRed, bg = 'NONE' })
  hl(0, 'NvimTreeGitDirtyIcon', { fg = colors.vscYellowOrange, bg = 'NONE' })
  hl(0, 'NvimTreeGitIgnoredIcon', { fg = colors.vscGray, bg = 'NONE' })
  hl(0, 'NvimTreeGitMergeIcon', { fg = colors.vscPink, bg = 'NONE' })
  hl(0, 'NvimTreeGitNewIcon', { fg = colors.vscGreen, bg = 'NONE' })
  hl(0, 'NvimTreeGitRenamedIcon', { fg = colors.vscBlue, bg = 'NONE' })
  hl(0, 'NvimTreeGitStagedIcon', { fg = colors.vscYellowOrange, bg = 'NONE' })
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Empty setup using defaults.
nvim_tree.setup()

-- Configure setup with some options.
nvim_tree.setup({
  view = {
    width = 40,
  },

  renderer = {
    icons = {
      symlink_arrow = '  ',
      glyphs = {
        default = '',
        symlink = '',
        bookmark = '',
        folder = {
          arrow_closed = '',
          arrow_open = '',
          default = '',
          open = '',
          empty = '',
          empty_open = '',
          symlink = '',
          symlink_open = '',
        },
        git = {
          unstaged = '',
          staged = '',
          unmerged = '',
          renamed = '',
          untracked = '',
          deleted = '',
          ignored = '',
        },
      },
    },
  },

  diagnostics = {
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = '',
    },
  },

  --update_focused_file = {
  --  enable = true,
  --  update_root = true,
  --},

  update_cwd = true,
  on_attach = my_on_attach,
})
