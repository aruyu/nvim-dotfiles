--[[
-   NOTE      - dashboard-configs.lua
-   Author    - Aru
-
-   Created   - 2023.08.11
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, dashboard = pcall(require, "dashboard")
if not status_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
dashboard.setup({
  theme = 'hyper',
  event = 'VimEnter',
  config = {
    week_header = {
      enable = true,
    },
    shortcut = {
      { desc = '󰊳 Update', group = '@property', action = 'PackerSync', key = 'u' },
      {
        desc = ' Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        desc = ' Grep',
        group = 'Label',
        action = 'Telescope live_grep',
        key = 'g',
      },
      {
        desc = ' Quit Dashboard',
        group = 'DiagnosticHint',
        action = 'e! ./new_file | BufferClose',
        key = 'q',
      },
      {
        desc = ' Dotfiles',
        group = 'Number',
        action = 'e! ~/Documents/new_file | cd ~/Documents | BufferClose',
        key = 'd',
      },
    },
  },
})
