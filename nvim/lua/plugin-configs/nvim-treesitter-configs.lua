--[[
-   NOTE      - nvim-treesitter-configs.lua
-   Author    - Aru
-
-   Created   - 2022.10.21
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, nvim_treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
nvim_treesitter.setup({
  ensure_installed = {
    'bash', 'c', 'cpp', 'css', 'c_sharp', 'dart', 'gitcommit', 'vimdoc', 'html',
    'javascript', 'lua', 'make', 'markdown', 'python', 'query', 'verilog', 'vim', 'yaml',
  },
  sync_install = false,
  auto_install = true,
  ignore_install = { '' },

  indent = {
    enable = true
  },

  highlight = {
    enable = true,
    --disable = { '' },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  playground = {
    enable = true,
    disable = {},
    updatetime = 24, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions

    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },
})
