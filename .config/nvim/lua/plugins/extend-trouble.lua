return {
  "folke/trouble.nvim",
  opts = { use_diagnostic_signs = true },
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle focus=true<cr>", desc = "Diagnostics (Trouble)" },
    { "<leader>xQ", "<cmd>Trouble qflist toggle focus=true<cr>", desc = "Quickfix List (Trouble)" },
  },
}
