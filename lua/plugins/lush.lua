return {
  {
    "rktjmp/lush.nvim",
    lazy = true,
  },
  {
    "rmehri01/onenord.nvim", -- One Dark theme for lush.nvim
    dependencies = { "rktjmp/lush.nvim" },
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme onedark")
    end,
  },
}
