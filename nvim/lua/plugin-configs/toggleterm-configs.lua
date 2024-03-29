--[[
-   NOTE      - toggleterm-configs.lua
-   Author    - Aru
-
-   Created   - 2022.11.03
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Empty setup using defaults.
toggleterm.setup()

-- Configure setup with some options.
toggleterm.setup({
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true,

  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    --border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    -- like `size`, width and height can be a number or function which is passed the current terminal
    width = math.floor(vim.o.columns * 0.79),
    height = math.floor(vim.o.lines * 0.75),
  },
})

-- Configure terminal keymaps.
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<F10>', '<CMD>close<CR>', opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
vim.api.nvim_set_keymap('n', 'tt', ':ToggleTerm dir=~/ direction=float<CR>', { noremap = true, silent = true })

-- Configure lazygit.
local Terminal = require("toggleterm.terminal").Terminal
local lazygit  = Terminal:new({
  cmd = 'lazygit',
  dir = 'git_dir',
  direction = 'float',
  float_opts = {
    border = 'double',
  },
  -- function to run on opening the terminal.
  on_open = function(term)
    vim.cmd('startinsert!')
    vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', '<CMD>close<CR>', { noremap = true, silent = true })
  end,
  -- function to run on closing the terminal.
  on_close = function()
    vim.cmd('startinsert!')
  end,
})
function _G.toggle_lazygit()
  lazygit:toggle()
end

vim.api.nvim_set_keymap('n', '<F8>', '<CMD>lua toggle_lazygit()<CR>', { noremap = true, silent = true })
