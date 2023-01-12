--[[
-   NOTE      - nvim-cmp-configs.lua
-   Author    - Asta
-
-   Created   - 2022.11.07
-   Github    - https://github.com/astaos
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
  return
end

-- Local functions for config.
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Configure setup with some options.
cmp.setup {
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn['UltiSnips#Anon'](args.body) -- For `ultisnips` users.
      --vim.fn['vsnip#anonymous'](args.body) -- For `vsnip` users.
      --require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      --require('snippy').expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  sources = cmp.config.sources({
    { name = 'ultisnips' }, -- For ultisnips users.
    --{ name = 'vsnip' }, -- For vsnip users.
    --{ name = 'luasnip' }, -- For luasnip users.
    --{ name = 'snippy' }, -- For snippy users.
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  }),
  window = {
    --completion = cmp.config.window.bordered(),
    --documentation = cmp.config.window.bordered(),
  },
  experimental = {
    ghost_text = { hl_group = 'NonText' },
    native_menu = false,
  },
  completion = {
    completeopt = 'menu,menuone'
  },

  mapping = cmp.mapping.preset.insert({
    ['<TAB>'] = cmp.mapping({
      c = function()
        if cmp.visible() then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
        else
          cmp.complete()
        end
      end,
      i = function(fallback)
        if cmp.visible() then
          cmp.confirm({ behavior = cmp.ConfirmBehavior.Insert })
        elseif vim.fn['UltiSnips#CanJumpForwards']() == 1 then
          vim.api.nvim_feedkeys(t('<Plug>(ultisnips_jump_forward)'), 'm', true)
        else
          fallback()
        end
      end,
      s = function(fallback)
        if vim.fn['UltiSnips#CanJumpForwards']() == 1 then
          vim.api.nvim_feedkeys(t('<Plug>(ultisnips_jump_forward)'), 'm', true)
        else
          fallback()
        end
      end
    }),
    ['<S-TAB>'] = cmp.mapping({
      c = function()
        if cmp.visible() then
          cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
        else
          cmp.complete()
        end
      end,
      i = function(fallback)
        if cmp.visible() then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
        elseif vim.fn['UltiSnips#CanJumpBackwards']() == 1 then
          return vim.api.nvim_feedkeys(t('<Plug>(ultisnips_jump_backward)'), 'm', true)
        else
          fallback()
        end
      end,
      s = function(fallback)
        if vim.fn['UltiSnips#CanJumpBackwards']() == 1 then
          return vim.api.nvim_feedkeys(t('<Plug>(ultisnips_jump_backward)'), 'm', true)
        else
          fallback()
        end
      end
    }),
    ['<Down>'] = cmp.mapping({
      c = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      i = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select })
    }),
    ['<Up>'] = cmp.mapping({
      c = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      i = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })
    }),
    ['<C-n>'] = cmp.mapping({
      c = function()
        if cmp.visible() then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        else
          vim.api.nvim_feedkeys(t('<Down>'), 'n', true)
        end
      end,
      i = function(fallback)
        if cmp.visible() then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        else
          fallback()
        end
      end
    }),
    ['<C-p>'] = cmp.mapping({
      c = function()
        if cmp.visible() then
          cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
        else
          vim.api.nvim_feedkeys(t('<Up>'), 'n', true)
        end
      end,
      i = function(fallback)
        if cmp.visible() then
          cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
        else
          fallback()
        end
      end
    }),
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({ i = cmp.mapping.close(), c = cmp.mapping.close() }),
    ['<CR>'] = cmp.mapping({ i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert }) }),
    ['<ESC>'] = cmp.mapping({
      i = function(fallback)
        if cmp.visible() then
          cmp.close()
        else
          fallback()
        end
      end
    })
  })
}

-- Configure setup for specific filetype.
cmp.setup.filetype('gitcommit', {
  completion = { completeopt = 'menu,menuone' },
  sources = cmp.config.sources({
    { name = 'ultisnips' },
    { name = 'path', option = { trailing_slash = true } },
  }, {
    { name = 'buffer' },
  })
})

-- Configure setup for '/'.
cmp.setup.cmdline({ '/', '?' }, {
  completion = { completeopt = 'menu,menuone,noselect' },
  sources = {
    { name = 'buffer' }
    --{ name = 'buffer', option = { keyword_pattern = [=[[^[:blank:]].*]=] } }
  }
})

--  Configure setup for ':'.
cmp.setup.cmdline(':', {
  completion = { completeopt = 'menu,menuone,noselect' },
  sources = cmp.config.sources({
    { name = 'path', option = { trailing_slash = true } },
  }, {
    { name = 'cmdline' },
  })
})
