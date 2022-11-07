--[[
-   NOTE      - bufferline-configs.lua
-   Author    - Eira Chae
-
-   Created   - 2022.10.31
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]


--vim.opt.termguicolors = true

require("bufferline").setup({
    options = {
        --buffer_close_icon = '',
        --close_icon = '',
        --indicator_icon = ' ',
        --left_trunc_marker = '',
        --modified_icon = '●',
        --right_trunc_marker = '',
        --close_command = 'Bdelete %d',
        --right_mouse_command = 'Bdelete! %d',

        offsets = {{
            filetype = 'NvimTree',
            text = 'EXPLORER',
            text_align = 'center'
        }},

        show_close_icon = false,
        show_tab_indicators = true,
    },

    highlights = {
        fill = {
            fg = { attribute = 'fg', highlight = 'Normal' },
            bg = { attribute = 'bg', highlight = 'StatusLineNC' },
        },
        background = {
            fg = { attribute = 'fg', highlight = 'Normal' },
            bg = { attribute = 'bg', highlight = 'StatusLine' },
        },
        buffer_visible = {
            fg = { attribute = 'fg', highlight = 'Normal' },
            bg = { attribute = 'bg', highlight = 'Normal' },
        },
        buffer_selected = {
            fg = { attribute = 'fg', highlight = 'Normal' },
            bg = { attribute = 'bg', highlight = 'Normal' },
        },
        separator = {
            fg = { attribute = 'bg', highlight = 'Normal' },
            bg = { attribute = 'bg', highlight = 'StatusLine' },
        },
        separator_selected = {
            fg = { attribute = 'fg', highlight = 'Special' },
            bg = { attribute = 'bg', highlight = 'Normal' },
        },
        separator_visible = {
            fg = { attribute = 'fg', highlight = 'Normal' },
            bg = { attribute = 'bg', highlight = 'StatusLineNC' },
        },
        close_button = {
            fg = { attribute = 'fg', highlight = 'Normal' },
            bg = { attribute = 'bg', highlight = 'StatusLine' },
        },
        close_button_selected = {
            fg = { attribute = 'fg', highlight = 'normal' },
            bg = { attribute = 'bg', highlight = 'normal' },
        },
        close_button_visible = {
            fg = { attribute = 'fg', highlight = 'normal' },
            bg = { attribute = 'bg', highlight = 'normal' },
        },
    },
})
