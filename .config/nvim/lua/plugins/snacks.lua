return {
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
    },
    -- Optional: Keymaps if you want to quickly open the explorer
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
}
