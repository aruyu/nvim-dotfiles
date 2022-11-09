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

-- Local functions for config lualine.
local get_words = function()
    return tostring(vim.fn.wordcount().words) .. ' words '
end

local get_time = function()
    return os.date('%H:%M')
end

local get_lines = function()
    local line_value = '' .. tostring(vim.fn.line('.'))
    local column_value = '' .. tostring(vim.fn.col('.'))
    return '' .. line_value .. column_value .. ' '
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
        component_separators = { left = ' ', right = '' },
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

    sections = {
        lualine_a = {
            {
                'branch',
                icon = '',
            },
            {
                'diff',
                diff_color = {
                    -- Same color values as the general color option can be used here.
                    added    = 'DiffAdd',       -- Changes the diff's added color
                    modified = 'DiffChange',    -- Changes the diff's modified color
                    removed  = 'DiffDelete',    -- Changes the diff's removed color you
                },
                symbols = { added = '  ', modified = '  ', removed = '  ' },
            }
        },
        lualine_b = {
            {
                'diagnostics',
                sources = { 'nvim_diagnostic', 'nvim_lsp' },
                sections = { 'error', 'warn' },
                symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
                update_in_insert = true,
                always_visible = true,
            }
        },
        lualine_c = {},
        lualine_x = {
            get_words,
            {
                'filetype',
                icon_only = true,
                icon = { align = 'right' },
            },
            {
                'filename',
                symbols = {
                    modified = '',             -- Text to show when the file is modified.
                    readonly = '',             -- Text to show when the file is non-modifiable or readonly.
                },
            }
        },
        lualine_y = { get_time },
        lualine_z = { get_lines },
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = { 'filetype' },
        lualine_z = {},
    },

    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
