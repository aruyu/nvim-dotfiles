--[[
-   NOTE      - mason-lspconfig-configs.lua
-   Author    - Aru
-
-   Created   - 2022.11.07
-   Github    - https://github.com/aruyu
-   Contact   - vine9151@gmail.com
]]



-- ================================================== --
-- Check error.
local status1_ok, mason = pcall(require, "mason")
if not status1_ok then
  return
end
local status2_ok, lspconfig = pcall(require, "lspconfig")
if not status2_ok then
  return
end

-- Local variables for config.
local mason_lspconfig = require("mason-lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- ================================================== --


-- =========================== --
--   Additional User Configs   --
-- =========================== --
-- Empty setup using defaults.
mason.setup()
mason_lspconfig.setup()

-- Configure setup with some options.
mason.setup({
  ui = {
    -- Whether to automatically check for new versions when opening the :Mason window.
    check_outdated_packages_on_open = true,

    -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
    border = 'none',

    icons = {
      -- The list icon to use for installed packages.
      package_installed = '✓',
      -- The list icon to use for packages that are installing, or queued for installation.
      package_pending = '➜',
      -- The list icon to use for packages that are not installed.
      package_uninstalled = '✗',
    },

    keymaps = {
      -- Keymap to expand a package
      toggle_package_expand = '<CR>',
      -- Keymap to install the package under the current cursor position
      install_package = 'i',
      -- Keymap to reinstall/update the package under the current cursor position
      update_package = 'u',
      -- Keymap to check for new version for the package under the current cursor position
      check_package_version = 'c',
      -- Keymap to update all installed packages
      update_all_packages = 'U',
      -- Keymap to check which installed packages are outdated
      check_outdated_packages = 'C',
      -- Keymap to uninstall a package
      uninstall_package = 'X',
      -- Keymap to cancel a package installation
      cancel_installation = '<C-c>',
      -- Keymap to apply language filter
      apply_language_filter = '<C-f>',
    },
  }
})

mason_lspconfig.setup({
  -- A list of servers to automatically install if they're not already installed. Example: { 'rust_analyzer@nightly', 'sumneko_lua' }
  -- This setting has no relation with the `automatic_installation` setting.
  ensure_installed = {},

  -- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
  -- This setting has no relation with the `ensure_installed` setting.
  -- Can either be:
  --   - false: Servers are not automatically installed.
  --   - true: All servers set up via lspconfig are automatically installed.
  --   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
  --       Example: automatic_installation = { exclude = { 'rust_analyzer', 'solargraph' } }
  automatic_installation = true
})

-- Neovim's diagnostic config.
vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  --underline = true,
  --update_in_insert = true,
})


-- =========================== --
--         LSP Configs         --
-- =========================== --
-- LSP for bash.
lspconfig.bashls.setup {
  capabilities = capabilities
}

-- LSP for C/C++.
lspconfig.clangd.setup {
  capabilities = capabilities
}

-- LSP for C#.
lspconfig.omnisharp.setup {
  capabilities = capabilities
}

-- LSP for css.
lspconfig.cssls.setup {
  capabilities = capabilities
}

-- LSP for html.
lspconfig.html.setup {
  capabilities = capabilities
}

-- LSP for java.
lspconfig.jdtls.setup {
  capabilities = capabilities
}

-- LSP for lua.
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
    },
  },

  capabilities = capabilities
}

-- LSP for python.
lspconfig.jedi_language_server.setup {
  capabilities = capabilities
}

--[[
-- LSP for ruby.
lspconfig.solargraph.setup {
  capabilities = capabilities
}
]]

-- LSP for rust.
lspconfig.rust_analyzer.setup {
  capabilities = capabilities,
}

-- LSP for system verilog.
lspconfig.hdl_checker.setup {
  capabilities = capabilities
}
