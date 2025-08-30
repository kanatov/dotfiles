-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {

 {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "luacheck",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      }
    }
  },

  {
    "mg979/vim-visual-multi",
    branch = 'master',
    init = function ()
      vim.g.VM_maps = {
      ["Find Under"] = "<C-n>"
    }
  end
  },
{
  "gbprod/cutlass.nvim",
  opts = {
      cut_key = "x",
    override_del = true,    -- your configuration comes here
      -- or don't set opts to use the default settings
      -- refer to the configuration section below
    }
}}
