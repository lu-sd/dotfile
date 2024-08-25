return {
  -- { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        signature = {
          opts = {
            size = {
              max_height = 15,
            },
          },
        },
      },
    },
  },
}
