-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.breakindent = true
vim.o.signcolumn = "no"
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.formatoptions:append({ "r" })
vim.opt.wrap = true
vim.opt.list = true
vim.opt.listchars = {
  eol = "↵", -- End of Line
  trail = "·", -- Trailing spaces (use '·' for a dot, or '~' as in your example)
  tab = "▸ ", -- Tab character (display as '▸' and a space, or '>-' as in your example)
  nbsp = "␣", -- Non-breaking space
  extends = "»", -- Line wraps but continues on next display line
  precedes = "«", -- Previous display line wraps onto this line
  space = "·", -- Regular space (optional, common to leave off for clarity)
}
