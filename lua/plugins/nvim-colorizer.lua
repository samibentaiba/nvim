return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      "*", -- Highlight all file types
      css = { rgb_fn = true }, -- Enable RGB function highlighting in CSS files
    })
  end,
}
