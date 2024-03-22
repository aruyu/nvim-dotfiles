--[[
-   NOTE      - plugins.lua
-   Author    - Aru
-
-   Created   - 2022.10.21
-   Github    - https://github.com/aruyu
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
    use {
      'Mofiqul/vscode.nvim',
      commit = '22a2177f6556b8b8dcbafeb873a40c64c7214491'
    }
    --use 'ryanoasis/vim-devicons'
    use {
      'nvim-lualine/lualine.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      commit = 'b5e8bb642138f787a2c1c5aedc2a78cb2cebbd67'
    }
    use {
      'romgrk/barbar.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      commit = '51a5284ac74dc16a8808c4406823d9c15eb238f8'
    }
    use {
      'nvim-tree/nvim-tree.lua',
      requires = 'nvim-tree/nvim-web-devicons', -- optional, for file icons
      tag = 'v1.1'
    }
    use 'preservim/tagbar'
    --use 'simrat39/symbols-outline.nvim'
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
      'glepnir/dashboard-nvim',
      requires = 'nvim-tree/nvim-web-devicons'
    }
    use {
      'lewis6991/gitsigns.nvim',
      --tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    use {
      'lukas-reineke/indent-blankline.nvim',
      tag = 'v2.20.8'
    }
    use 'aruyu/nvim-ultivisual'
    use 'karb94/neoscroll.nvim'
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


    -- === Syntax Plugins === --
    use {
      'nvim-treesitter/nvim-treesitter',
      tag = 'v0.9.0' --Only for NVIM <= v0.9.5
      --tag = 'v0.9.1' --for NVIM v0.10.0
      --commit = '7b04e8b67eec7d92daadf9f0717dd272ddfc81a3' --Nightly version has bug
    }
    use {
      'nvim-treesitter/playground',
      commit = '934cb4c4adc2e7f4f351846a63c9532018c996ed' --Only for NVIM <= v0.9.5 (#120)
      --commit = '2b81a018a49f8e476341dfcb228b7b808baba68b' --for NVIM v0.10.0
    }
    use 'norcalli/nvim-colorizer.lua'


    -- === Others === --
    use 'windwp/nvim-autopairs'
    use 'aruyu/nvim-indentconfig'
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
