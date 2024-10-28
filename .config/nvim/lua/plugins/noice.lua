return {
  "folke/noice.nvim",
  event = "VeryLazy",
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
    cmdline = {
      format = {
        filter = { conceal = false, title = "bash" },
        lua = { conceal = false },
      },
    },
    views = {
      cmdline_popup = {
        position = {
          row = "45%",
          col = "50%",
        },
      },
    },
  },
}
