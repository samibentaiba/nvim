local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    {
      "razak17/tailwind-fold.nvim",
      opts = {},
      dependencies = { "nvim-treesitter/nvim-treesitter" },
      ft = { "html", "svelte", "astro", "vue", "typescriptreact", "php", "blade" },
    },
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "plugins" },

    {
      "sainnhe/sonokai",
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.sonokai_style = "espresso" -- or 'shusia', 'maia', etc.
        vim.g.sonokai_enable_italic = 1
        vim.g.sonokai_better_performance = 1
        vim.g.sonokai_transparent_background = 1
        vim.g.sonokai_disable_italic_comment = 0
        vim.g.sonokai_cursor = "auto"
        vim.cmd([[colorscheme sonokai]])
      end,
    },

    {
      "IogaMaster/neocord",
      lazy = false,
      config = function()
        require("neocord").setup({})
      end,
    },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  install = { colorscheme = { "sonokai" } },
  checker = { enabled = true, notify = false },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
