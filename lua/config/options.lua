-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
vim.cmd("highlight SignColumn guibg=NONE")
vim.cmd("highlight VertSplit guibg=NONE")
vim.cmd("highlight LineNr guibg=NONE")
vim.cmd("highlight CursorLineNr guibg=NONE")
vim.cmd("highlight StatusLine guibg=NONE")
vim.cmd("highlight StatusLineNC guibg=NONE")
vim.cmd("highlight CursorLine guibg=NONE ctermbg=NONE")
vim.cmd("highlight Visual guibg=NONE ctermbg=NONE")
vim.opt.shell = "/usr/bin/fish"
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  float = {
    source = true,
    focusable = true,
  },
})
