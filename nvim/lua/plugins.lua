--[[
-   NOTE      - plugins.lua
-   Author    - Eira Chae
-
-   Created   - 2022.10.21
-   Github    - https://github.com/vine91
-   Contact   - vine9151@gmail.com
]]


-- Automatic install Packer
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()


-- Automatic install Plugins
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])


-- Check error
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end


-- Initialize Packer
packer.init{
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


-- Startup Packer
return packer.startup(
function(use)
    -- Default
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
    --use 'puremourning/vimspector'


    -- === LSP & Syntax Plugins === --
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = 'TSUpdate'
    }
    use 'nvim-treesitter/playground'
    

    -- === Editor Plugins === --
    use {
        'akinsho/toggleterm.nvim',
        tag = '*'
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }
    use {
        'tanvirtin/vgit.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }
    use 'windwp/nvim-autopairs'
    use 'SirVer/ultisnips'


    -- === Others === --
    use 'svermeulen/vim-cutlass'
    use 'lambdalisue/suda.vim'

    -- ================= --
    --    Plugins End    --
    -- ================= --



    -- Check 
    if packer_bootstrap then
        require("packer").sync()
    end
end
)
