--[[
-   NOTE      - lualine-configs.lua
-   Author    - Eira Chae
-
-   Created   - 2022.10.31
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

-- Local functions for config.
local get_words = function()
    return tostring(vim.fn.wordcount().words) .. ' words'
end

local get_time = function()
    return os.date('%H:%M')
end

local get_lines = function()
    local line_value = '' .. tostring(vim.fn.line('.'))
    local column_value = '' .. tostring(vim.fn.col('.'))
    return ' ' .. line_value .. column_value .. ' '
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
        component_separators = { left = ' ', right = ' ' },
        section_separators = { left = ' ', right = ' ' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
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

    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { get_words, 'filetype' },
        lualine_y = { get_time },
        lualine_z = { get_lines },
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = { 'filetype' },
        lualine_y = {},
        lualine_z = {},
    },

    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
}
