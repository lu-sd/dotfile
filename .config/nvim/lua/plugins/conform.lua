return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- https://github.com/LazyVim/LazyVim/discussions/4560
      python = { "ruff_format" },
      ["markdown"] = { "prettier" },
    },
  },
}
