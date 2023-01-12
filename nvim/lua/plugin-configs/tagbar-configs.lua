--[[
-   NOTE      - tagbar-configs.lua
-   Author    - Asta
-
-   Created   - 2022.11.08
-   Github    - https://github.com/astaos
-   Contact   - vine9151@gmail.com
]]


-- Configure tagbar --
vim.g.tagbar_position = 'rightbelow'
--vim.g.tagbar_left = 1
--vim.g.tagbar_width = 20
vim.g.tagbar_compact = 1
vim.g.tagbar_iconchars = { ' ', ' ' }
vim.g.tagbar_silent = 1
vim.cmd(' autocmd FileType snippets let b:tagbar_ignore = 1 ')
