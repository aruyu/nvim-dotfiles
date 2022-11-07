--[[
-   NOTE      - nvim-tree-configs.lua
-   Author    - Eira Chae
-
-   Created   - 2022.10.21
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]


-- reposition tagbar
--vim.g.tagbar_left = 1
--vim.g.tagbar_width = 20
vim.g.tagbar_position = 'rightbelow'

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- Check error
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end


-- empty setup using defaults
nvim_tree.setup()

-- OR setup with some options
nvim_tree.setup({
    view = {
        width = 40,

        mappings = {
            list = {
                { key = 'u', action = 'dir_up' },
                { key = '1', action = 'refresh' },
                { key = '2', action = 'refresh' },
                { key = '3', action = 'refresh' },
                { key = '4', action = 'refresh' },
                { key = '5', action = 'refresh' },
                { key = '6', action = 'refresh' },
                { key = '7', action = 'refresh' },
                { key = '8', action = 'refresh' },
                { key = '9', action = 'refresh' },
                { key = '0', action = 'refresh' },
            },
        },
    },

    renderer = {
        icons = {
            glyphs = {
                default = '',
                symlink = '',
                bookmark = '',
                folder = {
                    arrow_closed = '',
                    arrow_open = '',
                    default = '',
                    open = '',
                    empty = '',
                    empty_open = '',
                    symlink = '',
                    symlink_open = '', 
                },
            },
        },
    },
})
