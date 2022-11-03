--[[
--  NOTE      - nvim-treesitter-configs.lua
--  Author    - Eira Chae
--
--  Created   - 2022.10.21
--  Github    - https://github.com/vine91
--  Contact   - vine9151@gmail.com
/]]


-- Check error
local status_ok, nvim_treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end


nvim_treesitter.setup({
    ensure_installed = { 'c', 'make', 'verilog', 'lua', 'dart', 'python' },
    sync_install = false,
    auto_install = true,
    ignore_install = { '' },

    highlight = {
        enable = true,
        disable = { '' },
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
