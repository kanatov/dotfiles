return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Corrected typo from TSUpdade to TSUpdate
  opts = {
    ensure_installed = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
      "bash",
      "html",
      "javascript",
      "json",
      "python",
      "regex",
      "tsx",
      "typescript",
      "yaml",
    },
    auto_install = true,
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },

    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<Enter>",
        node_incremental = "<Enter>",
        node_decremental = "<Backspace>",
      },
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
