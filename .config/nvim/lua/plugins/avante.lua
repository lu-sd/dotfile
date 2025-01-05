return {
  "yetone/avante.nvim",
  --event = "VeryLazy",
  -- lazy = false,
  -- enabled = false,
  build = "make", -- This is Optional, only if you want to use tiktoken_core to calculate tokens count
  opts = {
    -- add any opts here
    provider = "copilot",
    behaviour = {
      auto_suggestions = false,
    },
    -- mappings = {
    --   diff = {
    --     ours = "<leader>ao",
    --     theirs = "<leader>al",
    --     both = "cb",
    --     cursor = "cc",
    --     next = "]x",
    --     prev = "[x",
    --   },
    -- },
    hints = { enabled = false },
  },
  keys = {
    {
      "<leader>aa",
      function()
        require("avante.api").ask()
      end,
      mode = { "n", "v" },
      desc = "avante: ask",
    },
  },
  -- highlights = {
  --   ---@type AvanteConflictHighlights
  --   diff = {
  --     current = "DiffChange",
  --     incoming = "DiffAdd",
  --   },
  -- },
  dependencies = {
    -- "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "echasnovski/mini.icons",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below is optional, make sure to setup it properly if you have lazy=true
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
