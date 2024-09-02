return {
  -- { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "folke/noice.nvim",
    enabled = true,
    commit = "d9328ef903168b6f52385a751eb384ae7e906c6f",
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
