return {
  {
    "mason-org/mason.nvim",
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
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<esc>"] = require("telescope.actions").close,
            },
          },
        },
      })
    end,
  },

  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
      }
    end,
  },

  {
    "gbprod/cutlass.nvim",
    opts = {
      cut_key = "x",
      override_del = true, -- your configuration comes here
      -- or don't set opts to use the default settings
      -- refer to the configuration section below
    },
  },

  {
    "folke/snacks.nvim",
    event = "VeryLazy", -- Load the plugin later for faster startup
    opts = {
      picker = {
        hidden = true, -- Shows hidden (dot) files
        ignored = true, -- Shows files ignored by .gitignore
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
      animate = {
        duration = 20,
        easing = "linear",
        fps = 60,
      },
      keys = {
        {
          "<leader>se",
          function()
            require("snacks.picker").explorer()
          end,
          desc = "Snacks Explorer",
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = { enable = true },
      highlight = { enable = true },
      folds = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "diff",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "printf",
        "python",
        "query",
        "regex",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          -- 'c-space' (which is the default) to start the selection
          init_selection = "<c-space>",
          -- '<CR>' to expand the selection (grow)
          node_incremental = "<cr>",
          -- '<BS>' to shrink the selection
          node_decremental = "<bs>",
          -- '<c-s>' to expand the selection to the next scope
          scope_incremental = "<c-s>",
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    opts = {
      move = {
        enable = true,
        set_jumps = true,
        keys = {
          goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer", ["]a"] = "@parameter.inner" },
          goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer", ["]A"] = "@parameter.inner" },
          goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer", ["[a"] = "@parameter.inner" },
          goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer", ["[A"] = "@parameter.inner" },
        },
      },
      select = {
        enable = true,
        lookahead = true,
      },
    },
  },
}
