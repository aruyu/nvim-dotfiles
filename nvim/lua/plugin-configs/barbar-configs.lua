--[[
-   NOTE      - barbar-configs.lua
-   Author    - Eira Chae
-
-   Created   - 2022.11.01
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status1_ok, bufferline = pcall(require, "bufferline")
if not status1_ok then
    return
end
local status2_ok, nvim_tree_events = pcall(require, "nvim-tree.events")
if not status2_ok then
    return
end

-- Local functions for config.
local get_tree_size = function()
    return require"nvim-tree.view".View.width + 2
end

-- Local variables for config.
local bufferline_api = require("bufferline.api")
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
bufferline.setup {
    -- Enable/disable animations
    animation = true,

    -- Enable/disable auto-hiding the tab bar when there is a single buffer
    auto_hide = false,

    -- Enable/disable current/total tabpages indicator (top right corner)
    tabpages = true,

    -- Enable/disable close button
    closable = true,

    -- Enables/disable clickable tabs
    --  - left-click: go to buffer
    --  - middle-click: delete buffer
    clickable = true,

    -- Excludes buffers from the tabline
    exclude_ft = {'javascript'},
    exclude_name = {'package.json'},

    -- Show every buffer
    hide = {current = false, inactive = false, visible = false},


    -- Enable/disable icons
    -- if set to 'numbers', will show buffer index in the tabline
    -- if set to 'both', will show buffer index and icons in the tabline
    icons = 'both',

    -- If set, the icon color will follow its corresponding buffer
    -- highlight group. By default, the Buffer*Icon group is linked to the
    -- Buffer* group (see Highlighting below). Otherwise, it will take its
    -- default value as defined by devicons.
    icon_custom_colors = false,

    -- Configure icons on the bufferline.
    icon_separator_active = '▎',
    icon_separator_inactive = '',
    icon_close_tab = '',
    icon_close_tab_modified = '●',
    icon_pinned = '',

    -- If true, new buffers will be inserted at the start/end of the list.
    -- Default is to insert after current buffer.
    insert_at_end = false,
    insert_at_start = false,

    -- Sets the maximum padding width with which to surround each tab
    maximum_padding = 1,

    -- Sets the minimum padding width with which to surround each tab
    minimum_padding = 1,

    -- Sets the maximum buffer name length.
    maximum_length = 30,

    -- If set, the letters for each buffer in buffer-pick mode will be
    -- assigned based on their name. Otherwise or in case all letters are
    -- already assigned, the behavior is to assign letters in order of
    -- usability (see order below)
    semantic_letters = true,

    -- New buffer letters are assigned in this order. This order is
    -- optimal for the qwerty keyboard layout but might need adjustement
    -- for other layouts.
    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

    -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
    -- where X is the buffer number. But only a static string is accepted here.
    no_name_title = nil,
}

-- Configure nvim-tree offset.
nvim_tree_events.subscribe('TreeOpen', function()
    bufferline_api.set_offset(get_tree_size(), '')
    vim.api.nvim_command('TagbarOpen')
end)

nvim_tree_events.subscribe('Resize', function()
    bufferline_api.set_offset(get_tree_size(), '')
    vim.api.nvim_command('TagbarOpen')
end)

nvim_tree_events.subscribe('TreeClose', function()
    bufferline_api.set_offset(0)
    vim.api.nvim_command('TagbarClose')
end)
