--[[
--  NOTE      - telescope-configs.lua
--  Author    - Eira Chae
--
--  Created   - 2022.11.02
--  Github    - https://github.com/vine91
--  Contact   - vine9151@gmail.com
/]]


-- Check error
local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

-- Local variables for config
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")


telescope.setup {
    defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
            i = {
                -- map actions.which_key to <C-h> (default: <C-/>)
                -- actions.which_key shows the mappings for your picker,
                -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                ["<TAB>"] = actions.move_selection_previous,
                ["<S-TAB>"] = actions.move_selection_next,
            },
      
            n = {
                -- map actions.which_key to <C-h> (default: <C-/>)
                -- actions.which_key shows the mappings for your picker,
                -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                ["<TAB>"] = actions.move_selection_previous,
                ["<S-TAB>"] = actions.move_selection_next,
            },
        },

        layout_config = {
            horizontal = {
                width = 0.8,
                height = 0.8,
            },
            -- other layout configuration here
        },
    },

    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },

    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
    },
}
