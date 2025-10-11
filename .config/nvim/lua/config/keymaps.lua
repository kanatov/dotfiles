local keymap = vim.keymap
local opts = { noremap = true, silent = true }
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<c-left>", "<c-W>h")
keymap.set("n", "<c-right>", "<C-W>l")

local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-i>"] = function(prompt_bufnr)
          local picker = action_state.get_current_picker(prompt_bufnr)
          picker:set_prompt(picker.prompt_prefix .. " (no-ignore)")
          actions.close(prompt_bufnr)
          require("telescope.builtin").live_grep({ no_ignore = true })
        end,
      },
    },
  },
})
keymap.set("n", "<D-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
keymap.set("n", "<D-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
