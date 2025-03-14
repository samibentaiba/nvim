return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.diagnostics.markdownlint.with({
          extra_args = { "--disable", "MD009", "MD013", "blanks-around-fences" },
        }),
      })
    end,
  },
}
