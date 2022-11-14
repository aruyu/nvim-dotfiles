--[[
-   NOTE      - vgit-configs.lua
-   Author    - Ista
-
-   Created   - 2022.11.04
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, vgit = pcall(require, "vgit")
if not status_ok then
  return
end

-- Local variables for config.
vim.o.updatetime = 300
vim.o.incsearch = false
vim.wo.signcolumn = 'yes'
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Empty setup using defaults.
vgit.setup()

-- Configure setup with some options.
vgit.setup({
  settings = {
    hls = {
      GitComment = {
        gui = nil,
        fg = '#636369',
        bg = nil,
        sp = nil,
        override = false,
      },
    },
  },
})
