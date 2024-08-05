--[[
-   NOTE      - rust-tools-configs.lua
-   Author    - Aru
-
-   Created   - 2024.08.02
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, rust_tools = pcall(require, "rust-tools")
if not status_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Empty setup using defaults.
rust_tools.setup()

-- Configure setup with some options.
rust_tools.setup({
  -- These apply to the default RustSetInlayHints command
  inlay_hints = {
    -- The color of the hints
    highlight = "NonText",
  },

  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rust_tools.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
