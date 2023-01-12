--[[
-   NOTE      - plugins.lua
-   Author    - Asta
-
-   Created   - 2022.10.21
-   Github    - https://github.com/astaos
-   Contact   - vine9151@gmail.com
]]


-- Automatic install Packer.
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


-- Automatic install Plugins.
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- Check error.
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end


-- Initialize Packer.
packer.init {
  opt_default = false, -- Default to using opt (as opposed to start) plugins
  display = {
    open_fn = function()
      return require("packer.util").float { border = 'rounded' }
    end,

    working_sym = '⟳', -- The symbol for a plugin being installed/updated
    error_sym = '✗', -- The symbol for a plugin with an error in installation/updating
    done_sym = '✓', -- The symbol for a plugin which has completed installation/updating
    removed_sym = '-', -- The symbol for an unused plugin which was removed
    moved_sym = '→', -- The symbol for a plugin which was moved (e.g. from opt to start)
    header_sym = '━', -- The symbol for the header line in packer's display
    show_all_info = true, -- Should packer show all update details automatically?
    prompt_border = 'double', -- Border style of prompt popups.
  }
}


-- Startup Packer.
return packer.startup(
  function(use)
    -- Default call.
    use 'wbthomason/packer.nvim'



    -- ================= --
    --   Plugins Start   --
    -- ================= --

    -- === Themes Plugins === --
    use 'Mofiqul/vscode.nvim'
    --use 'ryanoasis/vim-devicons'
    use {
      'nvim-lualine/lualine.nvim',
      requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
      'romgrk/barbar.nvim',
      requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
      'nvim-tree/nvim-tree.lua',
      requires = 'nvim-tree/nvim-web-devicons', -- optional, for file icons
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'preservim/tagbar'
    --use 'liuchengxu/vista.vim'
    --use 'puremourning/vimspector'


    -- === Editor Plugins === --
    use {
      'nvim-telescope/telescope.nvim',
      requires = 'nvim-lua/plenary.nvim'
    }
    use {
      'akinsho/toggleterm.nvim',
      tag = '*'
    }
    use {
      'lewis6991/gitsigns.nvim',
      --tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    use 'lukas-reineke/indent-blankline.nvim'
    --use 'nmac427/guess-indent.nvim'
    --use 'anuvyklack/pretty-fold.nvim'


    -- === LSP & Snips Plugins === --
    use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    }
    use {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp'
    }
    use {
      'quangnguyen30192/cmp-nvim-ultisnips',
      requires = 'SirVer/ultisnips'
    }


    -- Syntax Plugins === --
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/playground'


    -- === Others === --
    use 'windwp/nvim-autopairs'
    use 'astaos/nvim-indentconfig'
    use 'lambdalisue/suda.vim'

    -- ================= --
    --    Plugins End    --
    -- ================= --



    -- Check call.
    if packer_bootstrap then
      require("packer").sync()
    end
  end
)
