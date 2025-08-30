-- ~/.config/nvim/lua/utils/split_right.lua

local M = {}

function M.move_current_buffer_to_new_vsplit()
  print("--- move_current_buffer_to_new_vsplit START (Corrected) ---")
  local original_buffer_id = vim.api.nvim_get_current_buf()
  local original_window_id = vim.api.nvim_get_current_win()
  print("Original buffer ID: " .. original_buffer_id)
  print("Original window ID: " .. original_window_id)
  print("Before vsplit. Number of windows: " .. #vim.api.nvim_list_wins())

  -- 1. Create a new vertical split.
  -- After this, the current window (where the cursor is) will be the NEW split (on the right).
  vim.cmd("vsplit")
  local new_right_window_id = vim.api.nvim_get_current_win()
  print("vsplit executed. New right window ID: " .. new_right_window_id)
  print("Number of windows after vsplit: " .. #vim.api.nvim_list_wins())
  print("New right window is currently displaying buffer ID: " .. vim.api.nvim_get_current_buf())

  -- At this point, the cursor is in the NEW right split, which correctly shows original_buffer_id.
  -- So, this split is "buffer 2 (active)".

  -- 2. Move back to the ORIGINAL (left) window.
  vim.api.nvim_set_current_win(original_window_id)
  print("Moved back to original (left) window ID: " .. vim.api.nvim_get_current_win())
  print("Original (left) window is currently displaying buffer ID: " .. vim.api.nvim_get_current_buf())

  -- 3. Now, in the original (left) window, open a *different* buffer.
  -- This is where you decide how to pick "buffer 1, buffer 3".
  -- Common choices:
  --   a) Go to the next buffer in the buffer list:
  vim.cmd("bnext")
  --   b) Go to the previous buffer in the buffer list:
  -- vim.cmd("bprevious")
  --   c) Go to a scratch buffer (if you just want to clear it):
  -- vim.cmd("enew")
  --   d) More advanced: Cycle *through* non-original buffers or use Telescope.
  -- For now, `bnext` is the simplest to test.

  print("Original (left) window now displaying buffer ID: " .. vim.api.nvim_get_current_buf())

  -- 4. Optionally, move cursor back to the new right split (where 'buffer 2' is).
  -- This is often desired after setting up the splits.
  vim.api.nvim_set_current_win(new_right_window_id)
  print("Moved cursor to new right window ID: " .. vim.api.nvim_get_current_win())
  print("--- move_current_buffer_to_new_vsplit END ---")
end

return M
