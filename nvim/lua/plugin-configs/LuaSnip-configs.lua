--[[
-   NOTE      - LuaSnip-configs.lua
-   Author    - Eira Chae
-
-   Created   - 2022.11.07
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]



vim.cmd([[
    " press <Tab> to expand or jump in a snippet. These can also be mapped separately
    " via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
    imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
    " -1 for jumping backwards.
    inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
    
    snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
    snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
    
    " For changing choices in choiceNodes (not strictly necessary for a basic setup).
    imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
    smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
]])


--require("luasnip.loaders.from_snipmate").lazy_load({paths = "~/.config/nvim/snippets"})
--require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/snippets"})

--require("luasnip.loaders").edit_snippet_files(opts:table|nil)
